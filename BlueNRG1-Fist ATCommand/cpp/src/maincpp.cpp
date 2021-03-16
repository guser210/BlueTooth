

#ifdef __cplusplus
extern "C" {
#endif
    #include "maincpp.h"
    #include "clock.h"
    #include "BlueNRG1_gpio.h"
    #include "BlueNRG1_sysCtrl.h"
    #include "BlueNRG1_uart.h"
    #include <string.h>
    #include "AT.h"
    #include "ble_config.h"
    #include "bluenrg1_stack.h"
    #include "bluenrg1_api.h"
    #include "misc.h"
    void atCommandHandler();
#ifdef __cplusplus
}
#endif
void initGPIO(){

    GPIO_InitType initType;
    initType.GPIO_Pin = GPIO_Pin_3;
    initType.GPIO_Mode = GPIO_Output;
    initType.GPIO_Pull = ENABLE;
    initType.GPIO_HighPwr = ENABLE;

    SysCtrl_PeripheralClockCmd(CLOCK_PERIPH_GPIO, ENABLE);

    GPIO_Init(&initType);
}

uint8_t address[] = {0x11,0x11,0x11,0x11,0x11,0x13} ;
uint8_t advName[23];

 uint8_t InitDevice(){
    uint8_t ret = 0;
    char temp[] = {"My BLE Hello World!!"};
    memcpy(advName, temp, sizeof(temp));
    uint16_t hservice;
    uint16_t hcharName;
    uint16_t hcharAppearance;

    ret = aci_hal_write_config_data( 0, sizeof(address), address);

    aci_hal_set_tx_power_level(1, 4);

    ret = aci_gatt_init();

    ret = aci_gap_init(1, 0, sizeof(advName),&hservice, &hcharName, &hcharAppearance);

    ret = aci_gatt_update_char_value_ext(0, hservice, hcharName, 0, sizeof(advName), 0, sizeof(advName), advName);


     return ret;
 }

void App_Tick(){

    uint8_t mdata[5 + sizeof(advName)] = {
        2,
        0x0a,
        0,
        sizeof(advName) + 1,
        9
    };

    memcpy(mdata + 5, advName, sizeof(advName));

    hci_le_set_scan_response_data(sizeof(mdata), mdata);

    aci_gap_set_discoverable(0, 0, 0, 0, 0, sizeof(advName), advName,0, NULL,0, 0);

    aci_gap_update_adv_data(sizeof(mdata), mdata);

}
void initIRQ(){
    NVIC_InitType initType;

    initType.NVIC_IRQChannel = UART_IRQn;
    initType.NVIC_IRQChannelCmd = ENABLE;
    initType.NVIC_IRQChannelPreemptionPriority = LOW_PRIORITY;

    NVIC_Init(&initType);

    UART_ITConfig(UART_IT_RX, ENABLE);
}
AT *ptrPico;
void atCommandHandler(){
    if( UART_GetITStatus(UART_IT_RX) != RESET){
        while( !UART_GetFlagStatus(UART_FLAG_RXFE)){
            char c = (uint8_t) (UART_ReceiveData() & 0xff);
            ptrPico->addChar(c);
        }
    }
}
void maincpp(){

    initGPIO();

    AT pico(115200);
    ptrPico = &pico;
    BlueNRG_Stack_Initialization(&BlueNRG_Stack_Init_params);

    InitDevice();
    initIRQ();
    while(1){
        // Clock_Wait(1000);

        GPIO_ToggleBits(GPIO_Pin_3);

        if( pico.newMessage ){
            pico.newMessage = false;
            pico.parseCommand();

            if( pico.validATCommand()){
                if( strcmp( pico.command, "NAME") == 0){
                    memset(advName, 0, sizeof(advName));
                    memcpy(advName, pico.commandValue, strlen(pico.commandValue));
                }
            }
        }

        BTLE_StackTick();

        App_Tick();
 
    }
}