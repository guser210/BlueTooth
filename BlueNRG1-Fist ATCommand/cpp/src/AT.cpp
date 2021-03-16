
#ifdef __cplusplus
extern "C" {
#endif
    #include "AT.h"
    #include "BlueNRG1_gpio.h"
    #include "BlueNRG1_sysCtrl.h"
    #include "BlueNRG1_uart.h"
    #include <string.h>

    #include <stdarg.h>
#ifdef __cplusplus
}
#endif

AT::AT(uint32_t speed)
{
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

AT::~AT()
{
}

void AT::addChar( char c){
    if( c == '\r' || c == '\n' || bufferCounter >= maxSize){
        memset( rawMessage, 0, maxSize + 1);

        memcpy(message, buffer, maxSize);
        memcpy(rawMessage, buffer, maxSize);

        rawMessage[bufferCounter] = c;

        memset(buffer, 0, maxSize);
        newMessage = true;
        bufferCounter = 0;

    }else{
        buffer[bufferCounter++]  = c;
    }

}

void AT::sendMessage(char *msg, ...){
    char localBuffer[100];

    va_list args;
    va_start(args, msg);

    vsprintf(localBuffer, msg, args);


    va_end(args);

    for( int index = 0; index < strlen(localBuffer); index++){
        while( UART_GetFlagStatus(UART_FLAG_TXFF) == SET) __asm("NOP");

        UART_SendData( localBuffer[index]);
    }
}

void AT::parseCommand(){
    char temp[maxSize];

    memset(fieldName, 0, maxSize);
    memset(command, 0, maxSize);
    memset( commandValue, 0 , maxSize);
    memcpy(temp, message, maxSize);

    char *p;

    p = strtok(temp, ":");
    if( strlen(p) == 0) return;
    sprintf(fieldName, "%s", p);
    
    p = strtok(NULL, ":");
    if( strlen(p) == 0) return;
    sprintf(command, "%s", p);
    
    p = strtok(NULL, ":");
    if( strlen(p) == 0) return;
    sprintf(commandValue, "%s", p);
    

}

bool AT::validATCommand(){
    return  strlen(fieldName) > 0 &&
            strlen(command) > 0 &&
            strlen(commandValue) > 0 &&
            strcmp( fieldName, "AT") == 0;
}