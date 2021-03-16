#include <stdio.h>

#ifndef __AT_H__
#define __AT_H__

class AT
{
private:
    const static int maxSize = 100;
    char buffer[maxSize] = {0};
    int bufferCounter = 0;
public: //var
    char message[maxSize] = {0};
    char rawMessage[maxSize] = {0};
    char fieldName[maxSize] = {0};
    char command[maxSize] = {0};
    char commandValue[maxSize] = {0};

    bool newMessage = false;

    void addChar(char c);
    void sendMessage(char *msg, ...);
    void parseCommand();

    bool validATCommand();
         


public: //funcs
public:
    AT(uint32_t speed);
    ~AT();
};



#endif