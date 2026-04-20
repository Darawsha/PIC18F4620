
#ifndef XC_MY_ADC_H
#define	XC_MY_ADC_H

#include <xc.h> // include processor files - each processor file is guarded.  

void initADC(void);
int readADC_raw(unsigned char channel);
float readADC_voltage(unsigned char channel);

#endif	/*  XC_MY_SER_H */

