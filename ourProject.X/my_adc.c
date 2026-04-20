#include "my_adc.h"

void initADC(void){
    ADCON0 = 0;
    ADCON0bits.ADON = 1;// turn on the ADC
    
    ADCON2 = 0;
    ADCON2bits.ADFM = 1;
    ADCON2bits.ADCS = 1;
    ADCON2bits.ACQT = 1;
    
    // i will put the ADCON1 in the intitPorts function, because its easier to change the number of analog inputs from therel.
}

int readADC_raw(unsigned char channel){
    
    unsigned int raw_value;
    
    ADCON0bits.CHS = channel;
    ADCON0bits.GO = 1;
    
    while(ADCON0bits.GO) CLRWDT();
    
    raw_value = ((unsigned int)ADRESH << 8) | ADRESL;
    return raw_value;
}

float readADC_voltage(unsigned char channel){
    
    unsigned int raw_value = readADC_raw(channel);
    float voltage = (raw_value * 5.0)/1023.0;// 10 bit ADC.
    return voltage;
}