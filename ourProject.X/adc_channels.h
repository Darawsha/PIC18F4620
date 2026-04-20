
#ifndef XC_HEADER_TEMPLATE_H
#define	XC_HEADER_TEMPLATE_H

#include <xc.h>  

typedef struct {
    const unsigned char CH0;
    const unsigned char CH1;
    const unsigned char CH2;
    const unsigned char CH3;
    const unsigned char CH4;
    const unsigned char CH5;
    const unsigned char CH6;
    const unsigned char CH7;
    const unsigned char CH8;
    const unsigned char CH9;
    const unsigned char CH10;
    const unsigned char CH11;
    const unsigned char CH12;
    
} ADC_Channels;

static const ADC_Channels ADC = {0,1,2,3,4,5,6,7, 8, 9, 10, 11, 12};

#endif	
