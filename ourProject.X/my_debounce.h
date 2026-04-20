 
#ifndef XC_MY_DEBOUNCE_H
#define	XC_MY_DEBOUNCE_H

#include <xc.h> // include processor files - each processor file is guarded.  

struct{             // This is used for debouncing
    unsigned b0:1;
    unsigned b1:1;
    unsigned b2:1;
    unsigned b3:1;
    unsigned b4:1;
    unsigned b5:1;
    unsigned b6:1;
    unsigned b7:1;
}Flags;

#endif	/* XC_HEADER_TEMPLATE_H */

