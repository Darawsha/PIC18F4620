/*
 * File:   our_project.c
 * Author: moham
 *
 * Created on April 9, 2026, 10:19 PM
 */


#include "our_project.h"

float tempValue(int raw_value){
    
    // T = raw-value * (Tmax-Tmin)/1023.0 + Tmin.
    float temp = (float)raw_value * (TMAX - TMIN) / 1023.0 + TMIN;
    return temp;
}
