/*
 * File:   my_interrupts.c
 * Author: moham
 *
 * Created on March 29, 2026, 5:49 PM
 */


#include <xc.h>
#include "my_interrupts.h"

// maybe change 
void initInterrupts(void){
    
    
    RCONbits.IPEN = 0;// No priority.
    INTCON = 0;
    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;
    INTCONbits.INT0E = 1;
    INTCONbits.TMR0IE = 1;
    
    INTCON2 = 0;
    INTCON3 = 0;
    INTCON3bits.INT1IE = 1;
    INTCON3bits.INT2IE = 1;
    
    PIE1 = 0b00000000;
    PIE2 = 0b00000000;
    
    PIR1 = 0;
    PIR2 = 0;
    
    IPR2 = 0;
    IPR1 = 0;
       
}

