#include "maincpp.h"
#include "clock.h"
#include "BlueNRG1_gpio.h"
#include "BlueNRG1_sysCtrl.h"
#include "BlueNRG1_uart.h"
#include <string.h>


void initGPIO(){

    GPIO_InitType initType;
    initType.GPIO_Pin = GPIO_Pin_3;
    initType.GPIO_Mode = GPIO_Output;
    initType.GPIO_Pull = ENABLE;
    initType.GPIO_HighPwr = ENABLE;

    SysCtrl_PeripheralClockCmd(CLOCK_PERIPH_GPIO, ENABLE);

    GPIO_Init(&initType);
}

void initUART(uint32_t speed){
    GPIO_InitType initType;
    initType.GPIO_Pin = GPIO_Pin_8;
    initType.GPIO_Mode = Serial1_Mode;
    initType.GPIO_Pull = DISABLE;
    initType.GPIO_HighPwr = DISABLE;

    SysCtrl_PeripheralClockCmd(CLOCK_PERIPH_GPIO | CLOCK_PERIPH_UART, ENABLE);
    GPIO_Init(&initType);
    initType.GPIO_Pin = GPIO_Pin_11;
    GPIO_Init(&initType);

    UART_InitType inituType;
    inituType.UART_BaudRate = speed;
    inituType.UART_WordLengthTransmit = UART_WordLength_8b;
    inituType.UART_WordLengthReceive = UART_WordLength_8b;
    inituType.UART_StopBits = UART_StopBits_1;
    inituType.UART_Parity = UART_Parity_No;
    inituType.UART_Mode = UART_Mode_Rx | UART_Mode_Tx;
    inituType.UART_HardwareFlowControl = UART_HardwareFlowControl_None;
    inituType.UART_FifoEnable = ENABLE;

    UART_Cmd(ENABLE);
    UART_Init(&inituType);

    UART_RxFifoIrqLevelConfig( FIFO_LEV_1_64);


}
void maincpp(){

    initGPIO();

    initUART(115200);   

    char buffer[100] = {"this is a test\r"};
    while(1){
        Clock_Wait(1000);

        GPIO_ToggleBits(GPIO_Pin_3);

        for( int index = 0; index < strlen(buffer); index++){

            UART_SendData(buffer[index]);
        }


    }
}