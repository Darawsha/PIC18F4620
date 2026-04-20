opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (Free mode) build 201711160504"

opt pagewidth 120

	opt lm

	processor	18F4620
opt include "C:\Program Files (x86)\Microchip\xc8\v1.45\include\18f4620.cgen.inc"
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 360 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1216 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1328 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1380 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 1824 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 1829 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2051 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2268 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2273 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2497 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2574 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 2794 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 2992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3006 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3013 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3235 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3503 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3510 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3641 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 3752 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 3913 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 3988 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4155 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4359 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 4731 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 4801 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5029 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5036 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5112 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5224 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5327 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5334 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5514 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 5779 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 5947 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 5954 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6039 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6053 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6102 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6109 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6123 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6130 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6137 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6144 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6156 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6170 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6191 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6198 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6505 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6512 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6521 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6528 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6572 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6579 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6692 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6699 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6713 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 360 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1216 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1328 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1380 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 1824 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 1829 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2051 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2268 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2273 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2497 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2574 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 2794 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 2992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3006 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3013 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3235 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3503 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3510 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3641 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 3752 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 3913 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 3988 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4155 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4359 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 4731 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 4801 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5029 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5036 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5112 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5224 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5327 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5334 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5514 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 5779 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 5947 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 5954 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6039 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6053 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6102 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6109 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6123 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6130 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6137 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6144 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6156 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6170 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6191 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6198 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6505 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6512 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6521 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6528 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6572 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6579 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6692 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6699 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6713 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 360 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1216 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1328 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1380 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 1824 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 1829 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2051 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2268 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2273 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2497 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2574 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 2794 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 2992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3006 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3013 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3235 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3503 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3510 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3641 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 3752 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 3913 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 3988 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4155 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4359 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 4731 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 4801 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5029 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5036 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5112 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5224 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5327 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5334 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5514 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 5779 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 5947 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 5954 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6039 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6053 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6102 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6109 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6123 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6130 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6137 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6144 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6156 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6170 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6191 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6198 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6505 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6512 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6521 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6528 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6572 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6579 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6692 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6699 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6713 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 360 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1216 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1328 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1380 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 1824 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 1829 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2051 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2268 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2273 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2497 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2574 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 2794 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 2992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3006 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3013 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3235 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3503 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3510 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3641 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 3752 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 3913 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 3988 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4155 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4359 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 4731 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 4801 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5029 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5036 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5112 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5224 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5327 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5334 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5514 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 5779 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 5947 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 5954 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6039 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6053 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6102 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6109 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6123 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6130 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6137 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6144 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6156 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6170 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6191 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6198 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6505 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6512 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6521 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6528 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6572 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6579 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6692 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6699 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6713 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 360 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1216 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1328 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1380 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 1824 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 1829 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2051 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2268 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2273 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2497 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2574 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 2794 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 2992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3006 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3013 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3235 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3503 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3510 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3641 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 3752 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 3913 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 3988 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4155 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4359 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 4731 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 4801 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5029 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5036 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5112 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5224 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5327 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5334 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5514 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 5779 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 5947 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 5954 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6039 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6053 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6102 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6109 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6123 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6130 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6137 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6144 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6156 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6170 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6191 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6198 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6505 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6512 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6521 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6528 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6572 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6579 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6692 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6699 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6713 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 360 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1216 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1328 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1380 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 1824 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 1829 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2051 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2268 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2273 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2497 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2574 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 2794 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 2992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3006 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3013 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3235 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3503 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3510 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3641 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 3752 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 3913 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 3988 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4155 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4359 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 4731 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 4801 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5029 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5036 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5112 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5224 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5327 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5334 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5514 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 5779 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 5947 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 5954 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6039 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6053 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6102 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6109 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6123 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6130 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6137 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6144 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6156 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6170 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6191 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6198 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6505 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6512 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6521 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6528 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6572 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6579 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6692 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6699 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6713 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,___lwdiv
	FNCALL	_main,___lwmod
	FNCALL	_main,_adc_average_raw
	FNCALL	_main,_adc_raw_to_mv
	FNCALL	_main,_delay_ms
	FNCALL	_main,_execute_part2_radar
	FNCALL	_main,_initADC
	FNCALL	_main,_initPorts
	FNCALL	_main,_initTimer1
	FNCALL	_main,_is_byte_available
	FNCALL	_main,_lcd_clear_line
	FNCALL	_main,_lcd_gotoxy
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_putc
	FNCALL	_main,_lcd_puts
	FNCALL	_main,_lm35_celsius_x10
	FNCALL	_main,_read_byte_no_lib
	FNCALL	_main,_send_byte_no_lib
	FNCALL	_main,_servo_set_angle
	FNCALL	_main,_setupSerial
	FNCALL	_main,_soundBuzzer
	FNCALL	_main,_sprintf
	FNCALL	_soundBuzzer,_buzzer_beep
	FNCALL	_lm35_celsius_x10,___lldiv
	FNCALL	_lm35_celsius_x10,___lmul
	FNCALL	_lcd_init,_delay_ms
	FNCALL	_lcd_init,_lcd_send_byte
	FNCALL	_lcd_init,_lcd_send_nibble
	FNCALL	_lcd_clear_line,_lcd_gotoxy
	FNCALL	_lcd_clear_line,_lcd_putc
	FNCALL	_execute_part2_radar,_buzzer_beep
	FNCALL	_execute_part2_radar,_delay_ms_var
	FNCALL	_execute_part2_radar,_hcsr04_read_filtered
	FNCALL	_execute_part2_radar,_lcd_gotoxy
	FNCALL	_execute_part2_radar,_lcd_puts
	FNCALL	_execute_part2_radar,_radar_next_angle
	FNCALL	_execute_part2_radar,_send_string_no_lib
	FNCALL	_execute_part2_radar,_servo_set_angle
	FNCALL	_execute_part2_radar,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,_isdigit
	FNCALL	_servo_set_angle,_servo_angle_to_us
	FNCALL	_servo_set_angle,_servo_pulse_us
	FNCALL	_servo_pulse_us,_delay_us_var
	FNCALL	_servo_angle_to_us,___lldiv
	FNCALL	_servo_angle_to_us,___lmul
	FNCALL	_send_string_no_lib,_send_byte_no_lib
	FNCALL	_lcd_puts,_lcd_putc
	FNCALL	_lcd_putc,_delay_ms
	FNCALL	_lcd_putc,_lcd_gotoxy
	FNCALL	_lcd_putc,_lcd_send_byte
	FNCALL	_lcd_gotoxy,_lcd_send_byte
	FNCALL	_lcd_send_byte,_delay_cycles
	FNCALL	_lcd_send_byte,_delay_ms
	FNCALL	_lcd_send_byte,_lcd_send_nibble
	FNCALL	_lcd_send_nibble,_delay_cycles
	FNCALL	_hcsr04_read_filtered,_delay_ms
	FNCALL	_hcsr04_read_filtered,_hcsr04_read_once
	FNCALL	_hcsr04_read_filtered,_sort_samples
	FNCALL	_hcsr04_read_once,___lwdiv
	FNCALL	_hcsr04_read_once,_timer1_read_us
	FNCALL	_hcsr04_read_once,_timer1_start_us
	FNCALL	_hcsr04_read_once,_timer1_stop
	FNCALL	_hcsr04_read_once,_timer1_timeout
	FNCALL	_timer1_timeout,_timer1_read_us
	FNCALL	_adc_raw_to_mv,___lldiv
	FNCALL	_adc_raw_to_mv,___lmul
	FNCALL	_adc_average_raw,___lldiv
	FNCALL	_adc_average_raw,_delay_ms
	FNCALL	_adc_average_raw,_readADC_raw
	FNROOT	_main
	global	_LCD_INIT_STRING
	global	_ServoDirection
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"lcd_x8.c"
	line	6

;initializer for _LCD_INIT_STRING
	db	low(028h)
	db	low(0Ch)
	db	low(01h)
	db	low(06h)
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"ourProject.c"
	line	104

;initializer for _ServoDirection
	db	low(01h)
	global	_ADC
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"adc_channels.h"
	line	24
_ADC:
	db	low(0)
	db	low(01h)
	db	low(02h)
	db	low(03h)
	db	low(04h)
	db	low(05h)
	db	low(06h)
	db	low(07h)
	db	low(08h)
	db	low(09h)
	db	low(0Ah)
	db	low(0Bh)
	db	low(0Ch)
	global __end_of_ADC
__end_of_ADC:
	global	_dpowers
psect	smallconst
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\doprnt.c"
	line	354
_dpowers:
	dw	(01h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(064h)&0ffffh
	dw	(03E8h)&0ffffh
	dw	(02710h)&0ffffh
	global __end_of_dpowers
__end_of_dpowers:
	global	_ADC
	global	_dpowers
	global	_counter
	global	_ServoAngle
	global	_TogglePart
	global	_Flags
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISE
_TRISE	set	0xF96
	global	_TRISD
_TRISD	set	0xF95
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISA
_TRISA	set	0xF92
	global	_LATE
_LATE	set	0xF8D
	global	_LATD
_LATD	set	0xF8C
	global	_LATC
_LATC	set	0xF8B
	global	_LATB
_LATB	set	0xF8A
	global	_LATA
_LATA	set	0xF89
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_CVRCON
_CVRCON	set	0xFB5
	global	_CMCON
_CMCON	set	0xFB4
	global	_TMR1L
_TMR1L	set	0xFCE
	global	_TMR1H
_TMR1H	set	0xFCF
	global	_T1CON
_T1CON	set	0xFCD
	global	_PORTCbits
_PORTCbits	set	0xF82
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_TXREG
_TXREG	set	0xFAD
	global	_PIR1bits
_PIR1bits	set	0xF9E
	global	_RCREG
_RCREG	set	0xFAE
	global	_RCSTAbits
_RCSTAbits	set	0xFAB
	global	_RCSTA
_RCSTA	set	0xFAB
	global	_TXSTAbits
_TXSTAbits	set	0xFAC
	global	_SPBRGH
_SPBRGH	set	0xFB0
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_TXSTA
_TXSTA	set	0xFAC
	global	_BAUDCONbits
_BAUDCONbits	set	0xFB8
	global	_IPR1
_IPR1	set	0xF9F
	global	_IPR2
_IPR2	set	0xFA2
	global	_PIR2
_PIR2	set	0xFA1
	global	_PIR1
_PIR1	set	0xF9E
	global	_PIE2
_PIE2	set	0xFA0
	global	_PIE1
_PIE1	set	0xF9D
	global	_INTCON3bits
_INTCON3bits	set	0xFF0
	global	_INTCON3
_INTCON3	set	0xFF0
	global	_INTCON2
_INTCON2	set	0xFF1
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_INTCON
_INTCON	set	0xFF2
	global	_RCONbits
_RCONbits	set	0xFD0
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_ADCON2bits
_ADCON2bits	set	0xFC0
	global	_ADCON2
_ADCON2	set	0xFC0
	global	_ADCON0bits
_ADCON0bits	set	0xFC2
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_lcd
	global	_lcd
_lcd  equ     3971
	
STR_2:
	db	84	;'T'
	db	58	;':'
	db	37
	db	51	;'3'
	db	117	;'u'
	db	46
	db	37
	db	117	;'u'
	db	67	;'C'
	db	32
	db	86	;'V'
	db	58	;':'
	db	37
	db	117	;'u'
	db	46
	db	37
	db	117	;'u'
	db	86	;'V'
	db	32
	db	0
	
STR_5:
	db	78	;'N'
	db	101	;'e'
	db	97	;'a'
	db	114	;'r'
	db	32
	db	65	;'A'
	db	108	;'l'
	db	101	;'e'
	db	114	;'r'
	db	116	;'t'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_7:
	db	65	;'A'
	db	58	;':'
	db	37
	db	51	;'3'
	db	117	;'u'
	db	32
	db	68	;'D'
	db	58	;':'
	db	45
	db	45
	db	45
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_6:
	db	82	;'R'
	db	97	;'a'
	db	100	;'d'
	db	97	;'a'
	db	114	;'r'
	db	32
	db	83	;'S'
	db	119	;'w'
	db	101	;'e'
	db	101	;'e'
	db	112	;'p'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_3:
	db	65	;'A'
	db	58	;':'
	db	37
	db	51	;'3'
	db	117	;'u'
	db	32
	db	68	;'D'
	db	58	;':'
	db	37
	db	51	;'3'
	db	117	;'u'
	db	32
	db	99	;'c'
	db	109	;'m'
	db	32
	db	32
	db	0
	
STR_1:
	db	83	;'S'
	db	116	;'t'
	db	97	;'a'
	db	114	;'r'
	db	116	;'t'
	db	105	;'i'
	db	110	;'n'
	db	103	;'g'
	db	46
	db	46
	db	46
	db	0
	
STR_4:
	db	37
	db	117	;'u'
	db	44
	db	37
	db	117	;'u'
	db	13
	db	10
	db	0
	
STR_8:
	db	37
	db	117	;'u'
	db	44
	db	48	;'0'
	db	13
	db	10
	db	0
STR_9	equ	STR_6+0
; #config settings
global __CFG_OSC$XT
__CFG_OSC$XT equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_PWRT$OFF
__CFG_PWRT$OFF equ 0x0
global __CFG_BOREN$SBORDIS
__CFG_BOREN$SBORDIS equ 0x0
global __CFG_BORV$3
__CFG_BORV$3 equ 0x0
global __CFG_WDT$ON
__CFG_WDT$ON equ 0x0
global __CFG_WDTPS$32768
__CFG_WDTPS$32768 equ 0x0
global __CFG_CCP2MX$PORTC
__CFG_CCP2MX$PORTC equ 0x0
global __CFG_PBADEN$ON
__CFG_PBADEN$ON equ 0x0
global __CFG_LPT1OSC$OFF
__CFG_LPT1OSC$OFF equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_XINST$OFF
__CFG_XINST$OFF equ 0x0
global __CFG_CP0$OFF
__CFG_CP0$OFF equ 0x0
global __CFG_CP1$OFF
__CFG_CP1$OFF equ 0x0
global __CFG_CP2$OFF
__CFG_CP2$OFF equ 0x0
global __CFG_CP3$OFF
__CFG_CP3$OFF equ 0x0
global __CFG_CPB$OFF
__CFG_CPB$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT0$OFF
__CFG_WRT0$OFF equ 0x0
global __CFG_WRT1$OFF
__CFG_WRT1$OFF equ 0x0
global __CFG_WRT2$OFF
__CFG_WRT2$OFF equ 0x0
global __CFG_WRT3$OFF
__CFG_WRT3$OFF equ 0x0
global __CFG_WRTC$OFF
__CFG_WRTC$OFF equ 0x0
global __CFG_WRTB$OFF
__CFG_WRTB$OFF equ 0x0
global __CFG_WRTD$OFF
__CFG_WRTD$OFF equ 0x0
global __CFG_EBTR0$OFF
__CFG_EBTR0$OFF equ 0x0
global __CFG_EBTR1$OFF
__CFG_EBTR1$OFF equ 0x0
global __CFG_EBTR2$OFF
__CFG_EBTR2$OFF equ 0x0
global __CFG_EBTR3$OFF
__CFG_EBTR3$OFF equ 0x0
global __CFG_EBTRB$OFF
__CFG_EBTRB$OFF equ 0x0
	file	"build\codex-v145\lcd_x8.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"lcd_x8.c"
	line	6
	global	_LCD_INIT_STRING
_LCD_INIT_STRING:
       ds      4
psect	bssBANK0,class=BANK0,space=1,noexec,lowdata
global __pbssBANK0
__pbssBANK0:
	global	_counter
_counter:
       ds      2
	global	_ServoAngle
_ServoAngle:
       ds      1
	global	_TogglePart
_TogglePart:
       ds      1
	global	_Flags
_Flags:
       ds      1
psect	dataBANK0,class=BANK0,space=1,noexec,lowdata
global __pdataBANK0
__pdataBANK0:
	file	"ourProject.c"
	line	104
	global	_ServoDirection
_ServoDirection:
       ds      1
	file	"build\codex-v145\lcd_x8.as"
	line	#
psect	cinit
; Initialize objects allocated to BANK0 (1 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataBANK0+0		
; Initialize objects allocated to COMRAM (4 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,4
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
	line	#
; Clear objects allocated to BANK0 (5 bytes)
	global __pbssBANK0
movlb	0
clrf	(__pbssBANK0+4)&0xffh,b
clrf	(__pbssBANK0+3)&0xffh,b
clrf	(__pbssBANK0+2)&0xffh,b
clrf	(__pbssBANK0+1)&0xffh,b
clrf	(__pbssBANK0+0)&0xffh,b
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	main@Buffer
main@Buffer:	; 32 bytes @ 0x0
	ds   32
	global	main@temp_raw
main@temp_raw:	; 2 bytes @ 0x20
	ds   2
	global	main@pot_raw
main@pot_raw:	; 2 bytes @ 0x22
	ds   2
	global	main@volt_mv
main@volt_mv:	; 2 bytes @ 0x24
	ds   2
	global	_main$1699
_main$1699:	; 2 bytes @ 0x26
	ds   2
	global	_main$1700
_main$1700:	; 2 bytes @ 0x28
	ds   2
	global	_main$1701
_main$1701:	; 2 bytes @ 0x2A
	ds   2
	global	_main$1702
_main$1702:	; 2 bytes @ 0x2C
	ds   2
	global	main@temp_x10
main@temp_x10:	; 2 bytes @ 0x2E
	ds   2
	global	main@volt_x10
main@volt_x10:	; 2 bytes @ 0x30
	ds   2
	global	main@update_timer
main@update_timer:	; 2 bytes @ 0x32
	ds   2
	global	main@receivedMsg
main@receivedMsg:	; 1 bytes @ 0x34
	ds   1
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_isdigit:	; 1 bit 
?_buzzer_beep:	; 1 bytes @ 0x0
??_buzzer_beep:	; 1 bytes @ 0x0
?_initPorts:	; 1 bytes @ 0x0
??_initPorts:	; 1 bytes @ 0x0
?_initTimer1:	; 1 bytes @ 0x0
??_initTimer1:	; 1 bytes @ 0x0
?_servo_set_angle:	; 1 bytes @ 0x0
?_execute_part2_radar:	; 1 bytes @ 0x0
??_isdigit:	; 1 bytes @ 0x0
?_delay_ms:	; 1 bytes @ 0x0
?_delay_cycles:	; 1 bytes @ 0x0
??_delay_cycles:	; 1 bytes @ 0x0
?_lcd_send_nibble:	; 1 bytes @ 0x0
?_lcd_init:	; 1 bytes @ 0x0
?_lcd_putc:	; 1 bytes @ 0x0
?_initADC:	; 1 bytes @ 0x0
??_initADC:	; 1 bytes @ 0x0
?_setupSerial:	; 1 bytes @ 0x0
??_setupSerial:	; 1 bytes @ 0x0
?_is_byte_available:	; 1 bytes @ 0x0
??_is_byte_available:	; 1 bytes @ 0x0
?_read_byte_no_lib:	; 1 bytes @ 0x0
??_read_byte_no_lib:	; 1 bytes @ 0x0
?_send_byte_no_lib:	; 1 bytes @ 0x0
??_send_byte_no_lib:	; 1 bytes @ 0x0
?_soundBuzzer:	; 1 bytes @ 0x0
?_lcd_clear_line:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_delay_us_var:	; 1 bytes @ 0x0
?_delay_ms_var:	; 1 bytes @ 0x0
?_timer1_start_us:	; 1 bytes @ 0x0
??_timer1_start_us:	; 1 bytes @ 0x0
?_timer1_stop:	; 1 bytes @ 0x0
??_timer1_stop:	; 1 bytes @ 0x0
?_sort_samples:	; 1 bytes @ 0x0
?_radar_next_angle:	; 1 bytes @ 0x0
??_radar_next_angle:	; 1 bytes @ 0x0
	global	?_readADC_raw
?_readADC_raw:	; 2 bytes @ 0x0
	global	?_timer1_read_us
?_timer1_read_us:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	setupSerial@dummy
setupSerial@dummy:	; 1 bytes @ 0x0
	global	read_byte_no_lib@c
read_byte_no_lib@c:	; 1 bytes @ 0x0
	global	send_byte_no_lib@c
send_byte_no_lib@c:	; 1 bytes @ 0x0
	global	buzzer_beep@cycles
buzzer_beep@cycles:	; 1 bytes @ 0x0
	global	delay_ms@n
delay_ms@n:	; 2 bytes @ 0x0
	global	delay_us_var@us
delay_us_var@us:	; 2 bytes @ 0x0
	global	delay_ms_var@ms
delay_ms_var@ms:	; 2 bytes @ 0x0
	global	sort_samples@samples
sort_samples@samples:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	ds   1
?_send_string_no_lib:	; 1 bytes @ 0x1
	global	buzzer_beep@i
buzzer_beep@i:	; 1 bytes @ 0x1
	global	_isdigit$1305
_isdigit$1305:	; 1 bytes @ 0x1
	global	send_string_no_lib@p
send_string_no_lib@p:	; 2 bytes @ 0x1
	ds   1
??_delay_ms:	; 1 bytes @ 0x2
??_readADC_raw:	; 1 bytes @ 0x2
??_soundBuzzer:	; 1 bytes @ 0x2
??_delay_us_var:	; 1 bytes @ 0x2
??_delay_ms_var:	; 1 bytes @ 0x2
??_timer1_read_us:	; 1 bytes @ 0x2
?_servo_pulse_us:	; 1 bytes @ 0x2
	global	sort_samples@count
sort_samples@count:	; 1 bytes @ 0x2
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x2
	global	delay_ms@x
delay_ms@x:	; 2 bytes @ 0x2
	global	servo_pulse_us@pulse_us
servo_pulse_us@pulse_us:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	ds   1
??_send_string_no_lib:	; 1 bytes @ 0x3
??_sort_samples:	; 1 bytes @ 0x3
	global	delay_cycles@n
delay_cycles@n:	; 1 bytes @ 0x3
	ds   1
??_servo_pulse_us:	; 1 bytes @ 0x4
??___wmul:	; 1 bytes @ 0x4
??___lwdiv:	; 1 bytes @ 0x4
	global	timer1_read_us@low_byte
timer1_read_us@low_byte:	; 1 bytes @ 0x4
	global	delay_cycles@x
delay_cycles@x:	; 2 bytes @ 0x4
	global	readADC_raw@raw_value
readADC_raw@raw_value:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	ds   1
	global	timer1_read_us@high_byte
timer1_read_us@high_byte:	; 1 bytes @ 0x5
	ds   1
??_lcd_send_nibble:	; 1 bytes @ 0x6
?_timer1_timeout:	; 1 bytes @ 0x6
	global	readADC_raw@channel
readADC_raw@channel:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	global	timer1_timeout@timeout_us
timer1_timeout@timeout_us:	; 2 bytes @ 0x6
	ds   1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x7
	global	lcd_send_nibble@n
lcd_send_nibble@n:	; 1 bytes @ 0x7
	global	sort_samples@temp
sort_samples@temp:	; 2 bytes @ 0x7
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x7
	ds   1
?_lcd_send_byte:	; 1 bytes @ 0x8
??_timer1_timeout:	; 1 bytes @ 0x8
?_hcsr04_read_once:	; 1 bytes @ 0x8
??___lmul:	; 1 bytes @ 0x8
	global	lcd_send_byte@n
lcd_send_byte@n:	; 1 bytes @ 0x8
	global	hcsr04_read_once@distance_cm
hcsr04_read_once@distance_cm:	; 2 bytes @ 0x8
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x8
	ds   1
??_lcd_send_byte:	; 1 bytes @ 0x9
	global	lcd_send_byte@cm_data
lcd_send_byte@cm_data:	; 1 bytes @ 0x9
	global	sort_samples@j
sort_samples@j:	; 1 bytes @ 0x9
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x9
	ds   1
??_lcd_init:	; 1 bytes @ 0xA
?_lcd_gotoxy:	; 1 bytes @ 0xA
??_hcsr04_read_once:	; 1 bytes @ 0xA
	global	lcd_init@i
lcd_init@i:	; 1 bytes @ 0xA
	global	lcd_gotoxy@y
lcd_gotoxy@y:	; 1 bytes @ 0xA
	global	sort_samples@i
sort_samples@i:	; 1 bytes @ 0xA
	global	hcsr04_read_once@pulse_us
hcsr04_read_once@pulse_us:	; 2 bytes @ 0xA
	ds   1
??_lcd_gotoxy:	; 1 bytes @ 0xB
??___lwmod:	; 1 bytes @ 0xB
	global	lcd_gotoxy@x
lcd_gotoxy@x:	; 1 bytes @ 0xB
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xB
	ds   1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0xC
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0xC
	global	lcd_gotoxy@address
lcd_gotoxy@address:	; 1 bytes @ 0xC
	global	hcsr04_read_once@cm
hcsr04_read_once@cm:	; 2 bytes @ 0xC
	global	sprintf@sp
sprintf@sp:	; 2 bytes @ 0xC
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0xC
	ds   1
??_lcd_putc:	; 1 bytes @ 0xD
	global	lcd_putc@c
lcd_putc@c:	; 1 bytes @ 0xD
	ds   1
?_lcd_puts:	; 1 bytes @ 0xE
??_lcd_clear_line:	; 1 bytes @ 0xE
?_hcsr04_read_filtered:	; 1 bytes @ 0xE
	global	lcd_clear_line@row
lcd_clear_line@row:	; 1 bytes @ 0xE
	global	lcd_puts@s
lcd_puts@s:	; 2 bytes @ 0xE
	global	hcsr04_read_filtered@distance_cm
hcsr04_read_filtered@distance_cm:	; 2 bytes @ 0xE
	global	sprintf@f
sprintf@f:	; 2 bytes @ 0xE
	ds   1
	global	lcd_clear_line@i
lcd_clear_line@i:	; 1 bytes @ 0xF
	ds   1
??_lcd_puts:	; 1 bytes @ 0x10
??_hcsr04_read_filtered:	; 1 bytes @ 0x10
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x10
	ds   4
??___lldiv:	; 1 bytes @ 0x14
	global	hcsr04_read_filtered@reading
hcsr04_read_filtered@reading:	; 2 bytes @ 0x14
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x14
	ds   2
	global	hcsr04_read_filtered@i
hcsr04_read_filtered@i:	; 1 bytes @ 0x16
	ds   1
	global	hcsr04_read_filtered@samples
hcsr04_read_filtered@samples:	; 6 bytes @ 0x17
	ds   1
??_sprintf:	; 1 bytes @ 0x18
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x18
	ds   1
	global	?_adc_average_raw
?_adc_average_raw:	; 2 bytes @ 0x19
	global	?_lm35_celsius_x10
?_lm35_celsius_x10:	; 2 bytes @ 0x19
	global	?_adc_raw_to_mv
?_adc_raw_to_mv:	; 2 bytes @ 0x19
	global	?_servo_angle_to_us
?_servo_angle_to_us:	; 2 bytes @ 0x19
	global	adc_average_raw@samples
adc_average_raw@samples:	; 1 bytes @ 0x19
	global	adc_raw_to_mv@raw_value
adc_raw_to_mv@raw_value:	; 2 bytes @ 0x19
	global	lm35_celsius_x10@raw_value
lm35_celsius_x10@raw_value:	; 2 bytes @ 0x19
	ds   2
??_adc_average_raw:	; 1 bytes @ 0x1B
??_lm35_celsius_x10:	; 1 bytes @ 0x1B
??_adc_raw_to_mv:	; 1 bytes @ 0x1B
??_servo_angle_to_us:	; 1 bytes @ 0x1B
	global	servo_angle_to_us@pulse_us
servo_angle_to_us@pulse_us:	; 4 bytes @ 0x1B
	ds   1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x1C
	global	adc_average_raw@sum
adc_average_raw@sum:	; 4 bytes @ 0x1C
	ds   1
	global	hcsr04_read_filtered@valid
hcsr04_read_filtered@valid:	; 1 bytes @ 0x1D
	global	sprintf@ap
sprintf@ap:	; 2 bytes @ 0x1D
	ds   2
	global	servo_angle_to_us@angle
servo_angle_to_us@angle:	; 1 bytes @ 0x1F
	global	sprintf@val
sprintf@val:	; 2 bytes @ 0x1F
	ds   1
??_servo_set_angle:	; 1 bytes @ 0x20
	global	adc_average_raw@i
adc_average_raw@i:	; 1 bytes @ 0x20
	global	servo_set_angle@pulse_us
servo_set_angle@pulse_us:	; 2 bytes @ 0x20
	ds   1
	global	adc_average_raw@channel
adc_average_raw@channel:	; 1 bytes @ 0x21
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x21
	ds   1
	global	servo_set_angle@angle
servo_set_angle@angle:	; 1 bytes @ 0x22
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0x22
	ds   1
	global	servo_set_angle@i
servo_set_angle@i:	; 1 bytes @ 0x23
	ds   1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x24
	ds   1
??_execute_part2_radar:	; 1 bytes @ 0x25
	global	execute_part2_radar@SerialBuffer
execute_part2_radar@SerialBuffer:	; 24 bytes @ 0x25
	ds   24
	global	execute_part2_radar@Buffer
execute_part2_radar@Buffer:	; 17 bytes @ 0x3D
	ds   17
	global	execute_part2_radar@distance_cm
execute_part2_radar@distance_cm:	; 2 bytes @ 0x4E
	ds   2
	global	execute_part2_radar@angle_now
execute_part2_radar@angle_now:	; 1 bytes @ 0x50
	ds   1
??_main:	; 1 bytes @ 0x51
;!
;!Data Sizes:
;!    Strings     115
;!    Constant    23
;!    Data        5
;!    BSS         5
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          127     81      85
;!    BANK0           128     53      59
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0
;!    BANK8           256      0       0
;!    BANK9           256      0       0
;!    BANK10          256      0       0
;!    BANK11          256      0       0
;!    BANK12          256      0       0
;!    BANK13          256      0       0
;!    BANK14          256      0       0
;!    BANK15          128      0       0

;!
;!Pointer List with Targets:
;!
;!    sprintf@f	PTR const unsigned char  size(2) Largest target is 20
;!		 -> STR_8(CODE[7]), STR_7(CODE[17]), STR_4(CODE[8]), STR_3(CODE[17]), 
;!		 -> STR_2(CODE[20]), 
;!
;!    sprintf@sp	PTR unsigned char  size(2) Largest target is 32
;!		 -> execute_part2_radar@SerialBuffer(COMRAM[24]), execute_part2_radar@Buffer(COMRAM[17]), main@Buffer(BANK0[32]), 
;!
;!    sprintf@ap	PTR void [1] size(2) Largest target is 2
;!		 -> ?_sprintf(COMRAM[2]), 
;!
;!    hcsr04_read_filtered@distance_cm	PTR unsigned int  size(2) Largest target is 2
;!		 -> execute_part2_radar@distance_cm(COMRAM[2]), 
;!
;!    hcsr04_read_once@distance_cm	PTR unsigned int  size(2) Largest target is 2
;!		 -> hcsr04_read_filtered@reading(COMRAM[2]), 
;!
;!    sort_samples@samples	PTR unsigned int  size(2) Largest target is 6
;!		 -> hcsr04_read_filtered@samples(COMRAM[6]), 
;!
;!    send_string_no_lib@p	PTR const unsigned char  size(2) Largest target is 24
;!		 -> execute_part2_radar@SerialBuffer(COMRAM[24]), 
;!
;!    lcd_puts@s	PTR const unsigned char  size(2) Largest target is 32
;!		 -> STR_9(CODE[17]), STR_6(CODE[17]), STR_5(CODE[17]), execute_part2_radar@Buffer(COMRAM[17]), 
;!		 -> main@Buffer(BANK0[32]), STR_1(CODE[12]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_execute_part2_radar
;!    _soundBuzzer->_buzzer_beep
;!    _lm35_celsius_x10->___lldiv
;!    _lcd_init->_lcd_send_byte
;!    _lcd_clear_line->_lcd_putc
;!    _execute_part2_radar->_sprintf
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    _servo_set_angle->_servo_angle_to_us
;!    _servo_pulse_us->_delay_us_var
;!    _servo_angle_to_us->___lldiv
;!    _send_string_no_lib->_send_byte_no_lib
;!    _lcd_puts->_lcd_putc
;!    _lcd_putc->_lcd_gotoxy
;!    _lcd_gotoxy->_lcd_send_byte
;!    _lcd_send_byte->_lcd_send_nibble
;!    _lcd_send_nibble->_delay_cycles
;!    _hcsr04_read_filtered->_hcsr04_read_once
;!    _hcsr04_read_once->_timer1_timeout
;!    _timer1_timeout->_timer1_read_us
;!    _adc_raw_to_mv->___lldiv
;!    _adc_average_raw->___lldiv
;!    ___lldiv->___lmul
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _main in BANK13
;!
;!    None.
;!
;!Critical Paths under _main in BANK14
;!
;!    None.
;!
;!Critical Paths under _main in BANK15
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                53    53      0   62208
;!                                              0 BANK0     53    53      0
;!                            ___lwdiv
;!                            ___lwmod
;!                    _adc_average_raw
;!                      _adc_raw_to_mv
;!                           _delay_ms
;!                _execute_part2_radar
;!                            _initADC
;!                          _initPorts
;!                         _initTimer1
;!                  _is_byte_available
;!                     _lcd_clear_line
;!                         _lcd_gotoxy
;!                           _lcd_init
;!                           _lcd_putc
;!                           _lcd_puts
;!                   _lm35_celsius_x10
;!                   _read_byte_no_lib
;!                   _send_byte_no_lib
;!                    _servo_set_angle
;!                        _setupSerial
;!                        _soundBuzzer
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _soundBuzzer                                          0     0      0      46
;!                        _buzzer_beep
;! ---------------------------------------------------------------------------------
;! (1) _setupSerial                                          1     1      0       2
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _read_byte_no_lib                                     1     1      0      23
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _lm35_celsius_x10                                     2     0      2    1542
;!                                             25 COMRAM     2     0      2
;!                            ___lldiv
;!                             ___lmul
;! ---------------------------------------------------------------------------------
;! (1) _lcd_init                                             1     1      0    3440
;!                                             10 COMRAM     1     1      0
;!                           _delay_ms
;!                      _lcd_send_byte
;!                    _lcd_send_nibble
;! ---------------------------------------------------------------------------------
;! (1) _lcd_clear_line                                       2     2      0    9198
;!                                             14 COMRAM     2     2      0
;!                         _lcd_gotoxy
;!                           _lcd_putc
;! ---------------------------------------------------------------------------------
;! (1) _is_byte_available                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initTimer1                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initPorts                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initADC                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _execute_part2_radar                                 44    44      0   19638
;!                                             37 COMRAM    44    44      0
;!                        _buzzer_beep
;!                       _delay_ms_var
;!               _hcsr04_read_filtered
;!                         _lcd_gotoxy
;!                           _lcd_puts
;!                   _radar_next_angle
;!                 _send_string_no_lib
;!                    _servo_set_angle
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             34    22     12    3291
;!                                             12 COMRAM    25    13     12
;!                            ___lwdiv
;!                            ___lwmod
;!                             ___wmul
;!                            _isdigit
;! ---------------------------------------------------------------------------------
;! (2) _isdigit                                              3     3      0      68
;!                                              0 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     311
;!                                              0 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     615
;!                                              7 COMRAM     5     1      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _servo_set_angle                                      4     4      0    1967
;!                                             32 COMRAM     4     4      0
;!                  _servo_angle_to_us
;!                     _servo_pulse_us
;! ---------------------------------------------------------------------------------
;! (2) _servo_pulse_us                                       4     2      2     363
;!                                              2 COMRAM     4     2      2
;!                       _delay_us_var
;! ---------------------------------------------------------------------------------
;! (3) _delay_us_var                                         2     0      2     221
;!                                              0 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (2) _servo_angle_to_us                                    7     5      2    1513
;!                                             25 COMRAM     7     5      2
;!                            ___lldiv
;!                             ___lmul
;! ---------------------------------------------------------------------------------
;! (2) _send_string_no_lib                                   2     0      2     219
;!                                              1 COMRAM     2     0      2
;!                   _send_byte_no_lib
;! ---------------------------------------------------------------------------------
;! (1) _send_byte_no_lib                                     1     1      0      22
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _radar_next_angle                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _lcd_puts                                             2     0      2    6782
;!                                             14 COMRAM     2     0      2
;!                           _lcd_putc
;! ---------------------------------------------------------------------------------
;! (2) _lcd_putc                                             1     1      0    6205
;!                                             13 COMRAM     1     1      0
;!                           _delay_ms
;!                         _lcd_gotoxy
;!                      _lcd_send_byte
;! ---------------------------------------------------------------------------------
;! (3) _lcd_gotoxy                                           3     2      1    2903
;!                                             10 COMRAM     3     2      1
;!                      _lcd_send_byte
;! ---------------------------------------------------------------------------------
;! (3) _lcd_send_byte                                        2     1      1    1996
;!                                              8 COMRAM     2     1      1
;!                       _delay_cycles
;!                           _delay_ms
;!                    _lcd_send_nibble
;! ---------------------------------------------------------------------------------
;! (4) _lcd_send_nibble                                      2     2      0      68
;!                                              6 COMRAM     2     2      0
;!                       _delay_cycles
;! ---------------------------------------------------------------------------------
;! (5) _delay_cycles                                         6     6      0      46
;!                                              0 COMRAM     6     6      0
;! ---------------------------------------------------------------------------------
;! (2) _hcsr04_read_filtered                                16    14      2    3932
;!                                             14 COMRAM    16    14      2
;!                           _delay_ms
;!                   _hcsr04_read_once
;!                       _sort_samples
;! ---------------------------------------------------------------------------------
;! (3) _sort_samples                                        11     8      3     705
;!                                              0 COMRAM    11     8      3
;! ---------------------------------------------------------------------------------
;! (3) _hcsr04_read_once                                     6     4      2    1452
;!                                              8 COMRAM     6     4      2
;!                            ___lwdiv
;!                     _timer1_read_us
;!                    _timer1_start_us
;!                        _timer1_stop
;!                     _timer1_timeout
;! ---------------------------------------------------------------------------------
;! (4) _timer1_timeout                                       2     0      2     296
;!                                              6 COMRAM     2     0      2
;!                     _timer1_read_us
;! ---------------------------------------------------------------------------------
;! (5) _timer1_read_us                                       6     4      2      46
;!                                              0 COMRAM     6     4      2
;! ---------------------------------------------------------------------------------
;! (4) _timer1_stop                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (4) _timer1_start_us                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     922
;!                                              0 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (2) _delay_ms_var                                         2     0      2      99
;!                                              0 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (2) _buzzer_beep                                          2     2      0      46
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _adc_raw_to_mv                                        2     0      2    1542
;!                                             25 COMRAM     2     0      2
;!                            ___lldiv
;!                             ___lmul
;! ---------------------------------------------------------------------------------
;! (3) ___lmul                                              12     4      8     674
;!                                              0 COMRAM    12     4      8
;! ---------------------------------------------------------------------------------
;! (1) _adc_average_raw                                      9     7      2    2387
;!                                             25 COMRAM     9     7      2
;!                            ___lldiv
;!                           _delay_ms
;!                        _readADC_raw
;! ---------------------------------------------------------------------------------
;! (2) _readADC_raw                                          7     5      2      45
;!                                              0 COMRAM     7     5      2
;! ---------------------------------------------------------------------------------
;! (4) _delay_ms                                             4     2      2    1262
;!                                              0 COMRAM     4     2      2
;! ---------------------------------------------------------------------------------
;! (3) ___lldiv                                             13     5      8     770
;!                                             12 COMRAM    13     5      8
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___lwdiv
;!   ___lwmod
;!     ___lwdiv (ARG)
;!   _adc_average_raw
;!     ___lldiv
;!       ___lmul (ARG)
;!     _delay_ms
;!     _readADC_raw
;!   _adc_raw_to_mv
;!     ___lldiv
;!       ___lmul (ARG)
;!     ___lmul
;!   _delay_ms
;!   _execute_part2_radar
;!     _buzzer_beep
;!     _delay_ms_var
;!     _hcsr04_read_filtered
;!       _delay_ms
;!       _hcsr04_read_once
;!         ___lwdiv
;!         _timer1_read_us
;!         _timer1_start_us
;!         _timer1_stop
;!         _timer1_timeout
;!           _timer1_read_us
;!       _sort_samples
;!     _lcd_gotoxy
;!       _lcd_send_byte
;!         _delay_cycles
;!         _delay_ms
;!         _lcd_send_nibble
;!           _delay_cycles
;!     _lcd_puts
;!       _lcd_putc
;!         _delay_ms
;!         _lcd_gotoxy
;!           _lcd_send_byte
;!             _delay_cycles
;!             _delay_ms
;!             _lcd_send_nibble
;!               _delay_cycles
;!         _lcd_send_byte
;!           _delay_cycles
;!           _delay_ms
;!           _lcd_send_nibble
;!             _delay_cycles
;!     _radar_next_angle
;!     _send_string_no_lib
;!       _send_byte_no_lib
;!     _servo_set_angle
;!       _servo_angle_to_us
;!         ___lldiv
;!           ___lmul (ARG)
;!         ___lmul
;!       _servo_pulse_us
;!         _delay_us_var
;!     _sprintf
;!       ___lwdiv
;!       ___lwmod
;!         ___lwdiv (ARG)
;!       ___wmul
;!       _isdigit
;!   _initADC
;!   _initPorts
;!   _initTimer1
;!   _is_byte_available
;!   _lcd_clear_line
;!     _lcd_gotoxy
;!       _lcd_send_byte
;!         _delay_cycles
;!         _delay_ms
;!         _lcd_send_nibble
;!           _delay_cycles
;!     _lcd_putc
;!       _delay_ms
;!       _lcd_gotoxy
;!         _lcd_send_byte
;!           _delay_cycles
;!           _delay_ms
;!           _lcd_send_nibble
;!             _delay_cycles
;!       _lcd_send_byte
;!         _delay_cycles
;!         _delay_ms
;!         _lcd_send_nibble
;!           _delay_cycles
;!   _lcd_gotoxy
;!     _lcd_send_byte
;!       _delay_cycles
;!       _delay_ms
;!       _lcd_send_nibble
;!         _delay_cycles
;!   _lcd_init
;!     _delay_ms
;!     _lcd_send_byte
;!       _delay_cycles
;!       _delay_ms
;!       _lcd_send_nibble
;!         _delay_cycles
;!     _lcd_send_nibble
;!       _delay_cycles
;!   _lcd_putc
;!     _delay_ms
;!     _lcd_gotoxy
;!       _lcd_send_byte
;!         _delay_cycles
;!         _delay_ms
;!         _lcd_send_nibble
;!           _delay_cycles
;!     _lcd_send_byte
;!       _delay_cycles
;!       _delay_ms
;!       _lcd_send_nibble
;!         _delay_cycles
;!   _lcd_puts
;!     _lcd_putc
;!       _delay_ms
;!       _lcd_gotoxy
;!         _lcd_send_byte
;!           _delay_cycles
;!           _delay_ms
;!           _lcd_send_nibble
;!             _delay_cycles
;!       _lcd_send_byte
;!         _delay_cycles
;!         _delay_ms
;!         _lcd_send_nibble
;!           _delay_cycles
;!   _lm35_celsius_x10
;!     ___lldiv
;!       ___lmul (ARG)
;!     ___lmul
;!   _read_byte_no_lib
;!   _send_byte_no_lib
;!   _servo_set_angle
;!     _servo_angle_to_us
;!       ___lldiv
;!         ___lmul (ARG)
;!       ___lmul
;!     _servo_pulse_us
;!       _delay_us_var
;!   _setupSerial
;!   _soundBuzzer
;!     _buzzer_beep
;!   _sprintf
;!     ___lwdiv
;!     ___lwmod
;!       ___lwdiv (ARG)
;!     ___wmul
;!     _isdigit
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             F7F      0       0      37        0.0%
;!EEDATA             400      0       0       0        0.0%
;!BITBANK14          100      0       0      32        0.0%
;!BANK14             100      0       0      33        0.0%
;!BITBANK13          100      0       0      30        0.0%
;!BANK13             100      0       0      31        0.0%
;!BITBANK12          100      0       0      28        0.0%
;!BANK12             100      0       0      29        0.0%
;!BITBANK11          100      0       0      26        0.0%
;!BANK11             100      0       0      27        0.0%
;!BITBANK10          100      0       0      24        0.0%
;!BANK10             100      0       0      25        0.0%
;!BITBANK9           100      0       0      22        0.0%
;!BANK9              100      0       0      23        0.0%
;!BITBANK8           100      0       0      20        0.0%
;!BANK8              100      0       0      21        0.0%
;!BITBANK7           100      0       0      18        0.0%
;!BANK7              100      0       0      19        0.0%
;!BITBANK6           100      0       0      16        0.0%
;!BANK6              100      0       0      17        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK15           80      0       0      35        0.0%
;!BANK15              80      0       0      36        0.0%
;!BITBANK0            80      0       0       4        0.0%
;!BANK0               80     35      3B       5       46.1%
;!BITCOMRAM           7F      0       0       0        0.0%
;!COMRAM              7F     51      55       1       66.9%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      90      34        0.0%
;!DATA                 0      0      90       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 148 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Buffer         32    0[BANK0 ] unsigned char [32]
;;  update_timer    2   50[BANK0 ] int 
;;  volt_x10        2   48[BANK0 ] unsigned int 
;;  temp_x10        2   46[BANK0 ] unsigned int 
;;  volt_mv         2   36[BANK0 ] unsigned int 
;;  pot_raw         2   34[BANK0 ] unsigned int 
;;  temp_raw        2   32[BANK0 ] unsigned int 
;;  receivedMsg     1   52[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0      53       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      53       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       53 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_adc_average_raw
;;		_adc_raw_to_mv
;;		_delay_ms
;;		_execute_part2_radar
;;		_initADC
;;		_initPorts
;;		_initTimer1
;;		_is_byte_available
;;		_lcd_clear_line
;;		_lcd_gotoxy
;;		_lcd_init
;;		_lcd_putc
;;		_lcd_puts
;;		_lm35_celsius_x10
;;		_read_byte_no_lib
;;		_send_byte_no_lib
;;		_servo_set_angle
;;		_setupSerial
;;		_soundBuzzer
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"ourProject.c"
	line	148
global __ptext0
__ptext0:
psect	text0
	file	"ourProject.c"
	line	148
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 24
	line	158
	
l2586:
	movlw	high(010h)
	movlb	0	; () banked
	movwf	((main@update_timer+1))&0ffh
	movlw	low(010h)
	movwf	((main@update_timer))&0ffh
	line	160
	
l2588:; BSR set to: 0

	call	_initPorts	;wreg free
	line	162
	
l2590:
	movlw	high(064h)
	movwf	((c:delay_ms@n+1)),c
	movlw	low(064h)
	movwf	((c:delay_ms@n)),c
	call	_delay_ms	;wreg free
	line	164
	
l2592:
	call	_lcd_init	;wreg free
	line	165
	
l2594:
	movlw	high(014h)
	movwf	((c:delay_ms@n+1)),c
	movlw	low(014h)
	movwf	((c:delay_ms@n)),c
	call	_delay_ms	;wreg free
	line	167
	
l2596:
	movlw	(0Ch)&0ffh
	
	call	_lcd_putc
	line	168
	
l2598:
	movlw	high(05h)
	movwf	((c:delay_ms@n+1)),c
	movlw	low(05h)
	movwf	((c:delay_ms@n)),c
	call	_delay_ms	;wreg free
	line	169
	
l2600:
	movlw	(0Ch)&0ffh
	
	call	_lcd_putc
	line	170
	
l2602:
	movlw	high(05h)
	movwf	((c:delay_ms@n+1)),c
	movlw	low(05h)
	movwf	((c:delay_ms@n)),c
	call	_delay_ms	;wreg free
	line	172
	
l2604:
	movlw	low(0)
	movwf	((c:lcd_gotoxy@y)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	173
	
l2606:
		movlw	low(STR_1)
	movwf	((c:lcd_puts@s)),c
	movlw	high(STR_1)
	movwf	((c:lcd_puts@s+1)),c

	call	_lcd_puts	;wreg free
	line	174
	
l2608:
	movlw	high(01F4h)
	movwf	((c:delay_ms@n+1)),c
	movlw	low(01F4h)
	movwf	((c:delay_ms@n)),c
	call	_delay_ms	;wreg free
	line	176
	
l2610:
	call	_setupSerial	;wreg free
	line	177
	
l2612:
	call	_initADC	;wreg free
	line	178
	
l2614:
	call	_initTimer1	;wreg free
	line	179
	
l2616:
	movlw	high(064h)
	movwf	((c:delay_ms@n+1)),c
	movlw	low(064h)
	movwf	((c:delay_ms@n)),c
	call	_delay_ms	;wreg free
	line	181
	
l2618:
	movlb	0	; () banked
	bcf	((_Flags))&0ffh,0
	line	182
	
l2620:; BSR set to: 0

	movlw	high(0)
	movwf	((_counter+1))&0ffh
	movlw	low(0)
	movwf	((_counter))&0ffh
	line	184
	
l280:
	line	185
# 185 "ourProject.c"
clrwdt ;# 
psect	text0
	line	187
	
l2622:
	btfsc	((c:3969)),c,0	;volatile
	goto	u1681
	goto	u1680
u1681:
	goto	l281
u1680:
	line	188
	
l2624:
	movlw	high(014h)
	movwf	((c:delay_ms@n+1)),c
	movlw	low(014h)
	movwf	((c:delay_ms@n)),c
	call	_delay_ms	;wreg free
	line	189
	
l2626:
	btfsc	((c:3969)),c,0	;volatile
	goto	u1691
	goto	u1690
u1691:
	goto	l285
u1690:
	
l2628:
	movlb	0	; () banked
	btfsc	((_Flags))&0ffh,0
	goto	u1701
	goto	u1700
u1701:
	goto	l285
u1700:
	line	190
	
l2630:; BSR set to: 0

	movf	((_TogglePart))&0ffh,w
	btfsc	status,2
	goto	u1711
	goto	u1710
u1711:
	movlw	1
	goto	u1720
u1710:
	movlw	0
u1720:
	movwf	((_TogglePart))&0ffh
	line	191
	
l2632:; BSR set to: 0

	bsf	((_Flags))&0ffh,0
	line	192
	movf	((_TogglePart))&0ffh,w
	btfsc	status,2
	goto	u1731
	goto	u1730
u1731:
	goto	l283
u1730:
	line	193
	
l2634:; BSR set to: 0

	bcf	((c:3970)),c,2	;volatile
	line	194
	bcf	((c:3969)),c,2	;volatile
	line	195
	bcf	((c:3970)),c,1	;volatile
	line	196
	bcf	((c:3970)),c,0	;volatile
	line	197
	
l2636:; BSR set to: 0

	movlw	low(0)
	movwf	((_ServoAngle))&0ffh
	line	198
	movlw	low(01h)
	movwf	((_ServoDirection))&0ffh
	line	199
	
l2638:; BSR set to: 0

	movf	((_ServoAngle))&0ffh,w
	
	call	_servo_set_angle
	line	200
	goto	l2640
	line	201
	
l283:; BSR set to: 0

	line	202
	bcf	((c:3969)),c,2	;volatile
	line	203
	bcf	((c:3970)),c,2	;volatile
	line	204
	bcf	((c:3970)),c,1	;volatile
	goto	l2640
	line	205
	
l284:; BSR set to: 0

	line	207
	
l2640:
	movlw	(0Ch)&0ffh
	
	call	_lcd_putc
	line	208
	movlw	high(05h)
	movwf	((c:delay_ms@n+1)),c
	movlw	low(05h)
	movwf	((c:delay_ms@n)),c
	call	_delay_ms	;wreg free
	line	209
	
l2642:
	movlw	high(010h)
	movlb	0	; () banked
	movwf	((main@update_timer+1))&0ffh
	movlw	low(010h)
	movwf	((main@update_timer))&0ffh
	line	210
	
l2644:; BSR set to: 0

	movlw	high(0)
	movwf	((_counter+1))&0ffh
	movlw	low(0)
	movwf	((_counter))&0ffh
	goto	l285
	line	211
	
l282:; BSR set to: 0

	line	212
	goto	l285
	line	213
	
l281:
	line	214
	movlb	0	; () banked
	bcf	((_Flags))&0ffh,0
	line	215
	
l285:
	line	217
	btfss	((c:4011)),c,1	;volatile
	goto	u1741
	goto	u1740
u1741:
	goto	l2648
u1740:
	line	218
	
l2646:
	bcf	((c:4011)),c,4	;volatile
	line	219
	bsf	((c:4011)),c,4	;volatile
	goto	l2648
	line	220
	
l286:
	line	223
	
l2648:
	movlb	0	; () banked
	movf	((_TogglePart))&0ffh,w
	btfss	status,2
	goto	u1751
	goto	u1750
u1751:
	goto	l2686
u1750:
	line	226
	
l2650:; BSR set to: 0

	btfsc	((main@update_timer+1))&0ffh,7
	goto	u1761
	movf	((main@update_timer+1))&0ffh,w
	bnz	u1760
	movlw	16
	subwf	 ((main@update_timer))&0ffh,w
	btfss	status,0
	goto	u1761
	goto	u1760

u1761:
	goto	l2666
u1760:
	line	227
	
l2652:; BSR set to: 0

	movlw	low(0Ah)
	movwf	((c:adc_average_raw@samples)),c
	movlw	low((_ADC)+01h)
	movwf	tblptrl
	movlw	high((_ADC)+01h)
	movwf	tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_adc_average_raw
	movff	0+?_adc_average_raw,(main@temp_raw)
	movff	1+?_adc_average_raw,(main@temp_raw+1)
	line	228
	
l2654:
	movff	(main@temp_raw),(c:lm35_celsius_x10@raw_value)
	movff	(main@temp_raw+1),(c:lm35_celsius_x10@raw_value+1)
	call	_lm35_celsius_x10	;wreg free
	movff	0+?_lm35_celsius_x10,(main@temp_x10)
	movff	1+?_lm35_celsius_x10,(main@temp_x10+1)
	line	230
	
l2656:
	movlw	low(0Ah)
	movwf	((c:adc_average_raw@samples)),c
	movlw	low((_ADC))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_ADC))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_ADC))
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_adc_average_raw
	movff	0+?_adc_average_raw,(main@pot_raw)
	movff	1+?_adc_average_raw,(main@pot_raw+1)
	line	231
	movff	(main@pot_raw),(c:adc_raw_to_mv@raw_value)
	movff	(main@pot_raw+1),(c:adc_raw_to_mv@raw_value+1)
	call	_adc_raw_to_mv	;wreg free
	movff	0+?_adc_raw_to_mv,(main@volt_mv)
	movff	1+?_adc_raw_to_mv,(main@volt_mv+1)
	line	232
	movlw	low(032h)
	movlb	0	; () banked
	addwf	((main@volt_mv))&0ffh,w
	movwf	((c:___lwdiv@dividend)),c
	movlw	high(032h)
	addwfc	((main@volt_mv+1))&0ffh,w
	movwf	1+((c:___lwdiv@dividend)),c
	movlw	high(064h)
	movwf	((c:___lwdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___lwdiv@divisor)),c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(main@volt_x10)
	movff	1+?___lwdiv,(main@volt_x10+1)
	line	234
	movlw	low(0)
	movwf	((c:lcd_gotoxy@y)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	239
	movff	(main@temp_x10),(c:___lwdiv@dividend)
	movff	(main@temp_x10+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor)),c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(_main$1699)
	movff	1+?___lwdiv,(_main$1699+1)
	movff	(main@temp_x10),(c:___lwmod@dividend)
	movff	(main@temp_x10+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor)),c
	call	___lwmod	;wreg free
	movff	0+?___lwmod,(_main$1700)
	movff	1+?___lwmod,(_main$1700+1)
	movff	(main@volt_x10),(c:___lwdiv@dividend)
	movff	(main@volt_x10+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor)),c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(_main$1701)
	movff	1+?___lwdiv,(_main$1701+1)
	movff	(main@volt_x10),(c:___lwmod@dividend)
	movff	(main@volt_x10+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor)),c
	call	___lwmod	;wreg free
	movff	0+?___lwmod,(_main$1702)
	movff	1+?___lwmod,(_main$1702+1)
	
l2658:
		movlw	low(main@Buffer)
	movwf	((c:sprintf@sp)),c
	movlw	high(main@Buffer)
	movwf	((c:sprintf@sp+1)),c

		movlw	low(STR_2)
	movwf	((c:sprintf@f)),c
	movlw	high(STR_2)
	movwf	((c:sprintf@f+1)),c

	movff	(_main$1699),0+((c:?_sprintf)+04h)
	movff	(_main$1699+1),1+((c:?_sprintf)+04h)
	movff	(_main$1700),0+((c:?_sprintf)+06h)
	movff	(_main$1700+1),1+((c:?_sprintf)+06h)
	movff	(_main$1701),0+((c:?_sprintf)+08h)
	movff	(_main$1701+1),1+((c:?_sprintf)+08h)
	movff	(_main$1702),0+((c:?_sprintf)+0Ah)
	movff	(_main$1702+1),1+((c:?_sprintf)+0Ah)
	call	_sprintf	;wreg free
	line	240
	
l2660:
		movlw	low(main@Buffer)
	movwf	((c:lcd_puts@s)),c
	movlw	high(main@Buffer)
	movwf	((c:lcd_puts@s+1)),c

	call	_lcd_puts	;wreg free
	line	241
	
l2662:
	movlw	low(01h)
	movwf	((c:lcd_gotoxy@y)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	242
	
l2664:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((main@update_timer+1))&0ffh
	movlw	low(0)
	movwf	((main@update_timer))&0ffh
	goto	l2666
	line	243
	
l288:; BSR set to: 0

	line	246
	
l2666:; BSR set to: 0

	call	_is_byte_available	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u1771
	goto	u1770
u1771:
	goto	l2692
u1770:
	line	247
	
l2668:
	call	_read_byte_no_lib	;wreg free
	movlb	0	; () banked
	movwf	((main@receivedMsg))&0ffh
	line	248
	movf	((main@receivedMsg))&0ffh,w
	
	call	_send_byte_no_lib
	line	250
	
l2670:
		movlw	66
	movlb	0	; () banked
	xorwf	((main@receivedMsg))&0ffh,w
	btfss	status,2
	goto	u1781
	goto	u1780

u1781:
	goto	l2674
u1780:
	line	251
	
l2672:; BSR set to: 0

	call	_soundBuzzer	;wreg free
	goto	l2674
	line	252
	
l290:
	line	255
	
l2674:
	movlb	0	; () banked
	btfsc	((_counter+1))&0ffh,7
	goto	u1791
	movf	((_counter+1))&0ffh,w
	bnz	u1790
	movlw	16
	subwf	 ((_counter))&0ffh,w
	btfss	status,0
	goto	u1791
	goto	u1790

u1791:
	goto	l2680
u1790:
	line	256
	
l2676:; BSR set to: 0

	movlw	(01h)&0ffh
	
	call	_lcd_clear_line
	line	257
	
l2678:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_counter+1))&0ffh
	movlw	low(0)
	movwf	((_counter))&0ffh
	goto	l2680
	line	258
	
l291:; BSR set to: 0

	line	260
	
l2680:; BSR set to: 0

	movlw	low(01h)
	movwf	((c:lcd_gotoxy@y)),c
	movf	((_counter))&0ffh,w
	
	call	_lcd_gotoxy
	line	261
	
l2682:
	movlb	0	; () banked
	movf	((main@receivedMsg))&0ffh,w
	
	call	_lcd_putc
	line	262
	
l2684:
	movlb	0	; () banked
	infsnz	((_counter))&0ffh
	incf	((_counter+1))&0ffh
	goto	l2692
	line	264
	
l289:; BSR set to: 0

	line	265
	goto	l2692
	line	266
	
l287:; BSR set to: 0

	line	268
	
l2686:; BSR set to: 0

	btfsc	((main@update_timer+1))&0ffh,7
	goto	u1801
	movf	((main@update_timer+1))&0ffh,w
	bnz	u1800
	movlw	2
	subwf	 ((main@update_timer))&0ffh,w
	btfss	status,0
	goto	u1801
	goto	u1800

u1801:
	goto	l2692
u1800:
	line	269
	
l2688:; BSR set to: 0

	call	_execute_part2_radar	;wreg free
	line	270
	
l2690:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((main@update_timer+1))&0ffh
	movlw	low(0)
	movwf	((main@update_timer))&0ffh
	goto	l2692
	line	271
	
l293:; BSR set to: 0

	goto	l2692
	line	272
	
l292:; BSR set to: 0

	line	274
	
l2692:
	movlb	0	; () banked
	infsnz	((main@update_timer))&0ffh
	incf	((main@update_timer+1))&0ffh
	line	275
	
l2694:; BSR set to: 0

	movlw	high(032h)
	movwf	((c:delay_ms@n+1)),c
	movlw	low(032h)
	movwf	((c:delay_ms@n)),c
	call	_delay_ms	;wreg free
	goto	l280
	line	276
	
l294:
	line	184
	goto	l280
	
l295:
	line	279
	
l296:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_soundBuzzer

;; *************** function _soundBuzzer *****************
;; Defined at:
;;		line 127 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_buzzer_beep
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	line	127
global __ptext1
__ptext1:
psect	text1
	file	"ourProject.c"
	line	127
	global	__size_of_soundBuzzer
	__size_of_soundBuzzer	equ	__end_of_soundBuzzer-_soundBuzzer
	
_soundBuzzer:
;incstack = 0
	opt	stack 29
	line	135
	
l2472:
	movlw	(078h)&0ffh
	
	call	_buzzer_beep
	line	136
	
l270:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_soundBuzzer
	__end_of_soundBuzzer:
	signat	_soundBuzzer,89
	global	_setupSerial

;; *************** function _setupSerial *****************
;; Defined at:
;;		line 3 in file "my_ser.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dummy           1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	file	"my_ser.c"
	line	3
global __ptext2
__ptext2:
psect	text2
	file	"my_ser.c"
	line	3
	global	__size_of_setupSerial
	__size_of_setupSerial	equ	__end_of_setupSerial-_setupSerial
	
_setupSerial:
;incstack = 0
	opt	stack 30
	line	5
	
l2434:
	bcf	((c:4024)),c,3	;volatile
	line	6
	
l2436:
	movlw	low(0)
	movwf	((c:4012)),c	;volatile
	line	7
	movlw	low(019h)
	movwf	((c:4015)),c	;volatile
	line	8
	movlw	low(0)
	movwf	((c:4016)),c	;volatile
	line	9
	
l2438:
	bsf	((c:4012)),c,2	;volatile
	line	10
	
l2440:
	bsf	((c:4012)),c,5	;volatile
	line	12
	movlw	low(0)
	movwf	((c:4011)),c	;volatile
	line	13
	
l2442:
	bsf	((c:4011)),c,4	;volatile
	line	14
	
l2444:
	bsf	((c:4011)),c,7	;volatile
	line	16
	
l2446:
	movff	(c:4014),(c:setupSerial@dummy)	;volatile
	line	17
	
l2448:
	movff	(c:4014),(c:setupSerial@dummy)	;volatile
	goto	l137
	line	18
	
l2450:
	line	19
	
l137:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_setupSerial
	__end_of_setupSerial:
	signat	_setupSerial,89
	global	_read_byte_no_lib

;; *************** function _read_byte_no_lib *****************
;; Defined at:
;;		line 33 in file "my_ser.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  c               1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	line	33
global __ptext3
__ptext3:
psect	text3
	file	"my_ser.c"
	line	33
	global	__size_of_read_byte_no_lib
	__size_of_read_byte_no_lib	equ	__end_of_read_byte_no_lib-_read_byte_no_lib
	
_read_byte_no_lib:
;incstack = 0
	opt	stack 30
	line	35
	
l2466:
	movff	(c:4014),(c:read_byte_no_lib@c)	;volatile
	line	36
	
l2468:
	movf	((c:read_byte_no_lib@c)),c,w
	goto	l148
	
l2470:
	line	37
	
l148:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_read_byte_no_lib
	__end_of_read_byte_no_lib:
	signat	_read_byte_no_lib,89
	global	_lm35_celsius_x10

;; *************** function _lm35_celsius_x10 *****************
;; Defined at:
;;		line 372 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;  raw_value       2   25[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   25[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lldiv
;;		___lmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	file	"ourProject.c"
	line	372
global __ptext4
__ptext4:
psect	text4
	file	"ourProject.c"
	line	372
	global	__size_of_lm35_celsius_x10
	__size_of_lm35_celsius_x10	equ	__end_of_lm35_celsius_x10-_lm35_celsius_x10
	
_lm35_celsius_x10:
;incstack = 0
	opt	stack 29
	line	374
	
l2524:
	movff	(c:lm35_celsius_x10@raw_value),(c:___lmul@multiplier)
	movff	(c:lm35_celsius_x10@raw_value+1),(c:___lmul@multiplier+1)
	clrf	((c:___lmul@multiplier+2)),c
	clrf	((c:___lmul@multiplier+3)),c

	movlw	low(01388h)
	movwf	((c:___lmul@multiplicand)),c
	movlw	high(01388h)
	movwf	((c:___lmul@multiplicand+1)),c
	movlw	low highword(01388h)
	movwf	((c:___lmul@multiplicand+2)),c
	movlw	high highword(01388h)
	movwf	((c:___lmul@multiplicand+3)),c
	call	___lmul	;wreg free
	movlw	0FFh
	addwf	(0+?___lmul),c,w
	movwf	((c:___lldiv@dividend)),c
	movlw	01h
	addwfc	(1+?___lmul),c,w
	movwf	1+((c:___lldiv@dividend)),c
	
	movlw	0
	addwfc	(2+?___lmul),c,w
	movwf	2+((c:___lldiv@dividend)),c
	
	movlw	0
	addwfc	(3+?___lmul),c,w
	movwf	3+((c:___lldiv@dividend)),c
	movlw	low(03FFh)
	movwf	((c:___lldiv@divisor)),c
	movlw	high(03FFh)
	movwf	((c:___lldiv@divisor+1)),c
	movlw	low highword(03FFh)
	movwf	((c:___lldiv@divisor+2)),c
	movlw	high highword(03FFh)
	movwf	((c:___lldiv@divisor+3)),c
	call	___lldiv	;wreg free
	movff	0+?___lldiv,(c:?_lm35_celsius_x10)
	movff	1+?___lldiv,(c:?_lm35_celsius_x10+1)
	goto	l343
	
l2526:
	line	375
	
l343:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lm35_celsius_x10
	__end_of_lm35_celsius_x10:
	signat	_lm35_celsius_x10,4218
	global	_lcd_init

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 56 in file "lcd_x8.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   10[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay_ms
;;		_lcd_send_byte
;;		_lcd_send_nibble
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	file	"lcd_x8.c"
	line	56
global __ptext5
__ptext5:
psect	text5
	file	"lcd_x8.c"
	line	56
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:
;incstack = 0
	opt	stack 27
	line	59
	
l2398:
	bcf	((c:3971)),c,2
	line	62
	bcf	((c:3971)),c,1
	line	64
	bcf	((c:3971)),c,3
	line	66
	
l2400:
	movlw	high(019h)
	movwf	((c:delay_ms@n+1)),c
	movlw	low(019h)
	movwf	((c:delay_ms@n)),c
	call	_delay_ms	;wreg free
	line	67
	
l2402:
	movlw	low(01h)
	movwf	((c:lcd_init@i)),c
	
l2404:
		movlw	04h-1
	cpfsgt	((c:lcd_init@i)),c
	goto	u1561
	goto	u1560

u1561:
	goto	l2408
u1560:
	goto	l2414
	
l2406:
	goto	l2414
	
l29:
	line	68
	
l2408:
	movlw	(03h)&0ffh
	
	call	_lcd_send_nibble
	line	70
	movlw	high(06h)
	movwf	((c:delay_ms@n+1)),c
	movlw	low(06h)
	movwf	((c:delay_ms@n)),c
	call	_delay_ms	;wreg free
	line	67
	
l2410:
	incf	((c:lcd_init@i)),c
	
l2412:
		movlw	04h-1
	cpfsgt	((c:lcd_init@i)),c
	goto	u1571
	goto	u1570

u1571:
	goto	l2408
u1570:
	goto	l2414
	
l30:
	line	73
	
l2414:
	movlw	(02h)&0ffh
	
	call	_lcd_send_nibble
	line	75
	
l2416:
	movlw	low(0)
	movwf	((c:lcd_init@i)),c
	
l2418:
		movlw	04h-1
	cpfsgt	((c:lcd_init@i)),c
	goto	u1581
	goto	u1580

u1581:
	goto	l2422
u1580:
	goto	l33
	
l2420:
	goto	l33
	line	76
	
l31:
	
l2422:
	movf	((c:lcd_init@i)),c,w
	mullw	01h
	movlw	low(_LCD_INIT_STRING)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_LCD_INIT_STRING)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:lcd_send_byte@n)),c
	movlw	(0)&0ffh
	
	call	_lcd_send_byte
	line	75
	
l2424:
	incf	((c:lcd_init@i)),c
	
l2426:
		movlw	04h-1
	cpfsgt	((c:lcd_init@i)),c
	goto	u1591
	goto	u1590

u1591:
	goto	l2422
u1590:
	goto	l33
	
l32:
	line	77
	
l33:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
	signat	_lcd_init,89
	global	_lcd_clear_line

;; *************** function _lcd_clear_line *****************
;; Defined at:
;;		line 138 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;  row             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  row             1   14[COMRAM] unsigned char 
;;  i               1   15[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_gotoxy
;;		_lcd_putc
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=0
	file	"ourProject.c"
	line	138
global __ptext6
__ptext6:
psect	text6
	file	"ourProject.c"
	line	138
	global	__size_of_lcd_clear_line
	__size_of_lcd_clear_line	equ	__end_of_lcd_clear_line-_lcd_clear_line
	
_lcd_clear_line:
;incstack = 0
	opt	stack 25
	movwf	((c:lcd_clear_line@row)),c
	line	141
	
l2474:
	movff	(c:lcd_clear_line@row),(c:lcd_gotoxy@y)
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	142
	
l2476:
	movlw	low(0)
	movwf	((c:lcd_clear_line@i)),c
	
l2478:
		movlw	010h-1
	cpfsgt	((c:lcd_clear_line@i)),c
	goto	u1631
	goto	u1630

u1631:
	goto	l2482
u1630:
	goto	l2488
	
l2480:
	goto	l2488
	
l273:
	line	143
	
l2482:
	movlw	(020h)&0ffh
	
	call	_lcd_putc
	line	142
	
l2484:
	incf	((c:lcd_clear_line@i)),c
	
l2486:
		movlw	010h-1
	cpfsgt	((c:lcd_clear_line@i)),c
	goto	u1641
	goto	u1640

u1641:
	goto	l2482
u1640:
	goto	l2488
	
l274:
	line	145
	
l2488:
	movff	(c:lcd_clear_line@row),(c:lcd_gotoxy@y)
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	146
	
l275:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_clear_line
	__end_of_lcd_clear_line:
	signat	_lcd_clear_line,4217
	global	_is_byte_available

;; *************** function _is_byte_available *****************
;; Defined at:
;;		line 21 in file "my_ser.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=0
	file	"my_ser.c"
	line	21
global __ptext7
__ptext7:
psect	text7
	file	"my_ser.c"
	line	21
	global	__size_of_is_byte_available
	__size_of_is_byte_available	equ	__end_of_is_byte_available-_is_byte_available
	
_is_byte_available:
;incstack = 0
	opt	stack 30
	line	23
	
l2452:
	btfsc	((c:4011)),c,2	;volatile
	goto	u1601
	goto	u1600
u1601:
	goto	l142
u1600:
	
l2454:
	btfss	((c:4011)),c,1	;volatile
	goto	u1611
	goto	u1610
u1611:
	goto	l140
u1610:
	
l142:
	line	25
	bcf	((c:4011)),c,4	;volatile
	line	26
	bsf	((c:4011)),c,4	;volatile
	line	27
	
l140:
	line	29
	btfss	((c:3998)),c,5	;volatile
	goto	u1621
	goto	u1620
u1621:
	goto	l2462
u1620:
	
l2456:
	movlw	(01h)&0ffh
	goto	l144
	
l2458:
	goto	l144
	
l2460:
	goto	l144
	line	30
	
l143:
	
l2462:
	movlw	(0)&0ffh
	goto	l144
	
l2464:
	goto	l144
	
l145:
	line	32
	
l144:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_is_byte_available
	__end_of_is_byte_available:
	signat	_is_byte_available,89
	global	_initTimer1

;; *************** function _initTimer1 *****************
;; Defined at:
;;		line 281 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=0
	file	"ourProject.c"
	line	281
global __ptext8
__ptext8:
psect	text8
	file	"ourProject.c"
	line	281
	global	__size_of_initTimer1
	__size_of_initTimer1	equ	__end_of_initTimer1-_initTimer1
	
_initTimer1:
;incstack = 0
	opt	stack 30
	line	282
	
l2502:
	movlw	low(080h)
	movwf	((c:4045)),c	;volatile
	line	283
	
l2504:
	bcf	((c:3998)),c,0	;volatile
	line	284
	movlw	low(0)
	movwf	((c:4047)),c	;volatile
	line	285
	movlw	low(0)
	movwf	((c:4046)),c	;volatile
	line	286
	
l299:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_initTimer1
	__end_of_initTimer1:
	signat	_initTimer1,89
	global	_initPorts

;; *************** function _initPorts *****************
;; Defined at:
;;		line 591 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=0
	line	591
global __ptext9
__ptext9:
psect	text9
	file	"ourProject.c"
	line	591
	global	__size_of_initPorts
	__size_of_initPorts	equ	__end_of_initPorts-_initPorts
	
_initPorts:
;incstack = 0
	opt	stack 30
	line	593
	
l2490:
	movlw	low(0)
	movwf	((c:4082)),c	;volatile
	line	594
	movlw	low(0)
	movwf	((c:4081)),c	;volatile
	line	596
	movlw	low(07h)
	movwf	((c:4020)),c	;volatile
	line	597
	movlw	low(0)
	movwf	((c:4021)),c	;volatile
	line	598
	movlw	low(0Dh)
	movwf	((c:4033)),c	;volatile
	line	599
	movlw	low(0)
	movwf	((c:3981)),c	;volatile
	movff	(c:3981),(c:3980)	;volatile
	movff	(c:3980),(c:3979)	;volatile
	movff	(c:3979),(c:3978)	;volatile
	movff	(c:3978),(c:3977)	;volatile
	line	600
	
l2492:
	setf	((c:3986)),c	;volatile
	line	601
	movlw	low(0FBh)
	movwf	((c:3987)),c	;volatile
	line	602
	movlw	low(0)
	movwf	((c:3990)),c	;volatile
	movff	(c:3990),(c:3989)	;volatile
	line	603
	movlw	low(088h)
	movwf	((c:3988)),c	;volatile
	line	604
	
l2494:
	bcf	((c:3970)),c,0	;volatile
	line	605
	
l2496:
	bcf	((c:3970)),c,1	;volatile
	line	606
	
l2498:
	bcf	((c:3969)),c,2	;volatile
	line	607
	
l2500:
	bcf	((c:3970)),c,2	;volatile
	line	608
	
l418:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_initPorts
	__end_of_initPorts:
	signat	_initPorts,89
	global	_initADC

;; *************** function _initADC *****************
;; Defined at:
;;		line 3 in file "my_adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0
	file	"my_adc.c"
	line	3
global __ptext10
__ptext10:
psect	text10
	file	"my_adc.c"
	line	3
	global	__size_of_initADC
	__size_of_initADC	equ	__end_of_initADC-_initADC
	
_initADC:
;incstack = 0
	opt	stack 30
	line	4
	
l2428:
	movlw	low(0)
	movwf	((c:4034)),c	;volatile
	line	5
	
l2430:
	bsf	((c:4034)),c,0	;volatile
	line	7
	movlw	low(0)
	movwf	((c:4032)),c	;volatile
	line	8
	
l2432:
	bsf	((c:4032)),c,7	;volatile
	line	9
	movf	((c:4032)),c,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(01h & ((1<<3)-1))<<0
	movwf	((c:4032)),c	;volatile
	line	10
	movf	((c:4032)),c,w	;volatile
	andlw	not (((1<<3)-1)<<3)
	iorlw	(01h & ((1<<3)-1))<<3
	movwf	((c:4032)),c	;volatile
	line	13
	
l78:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_initADC
	__end_of_initADC:
	signat	_initADC,89
	global	_execute_part2_radar

;; *************** function _execute_part2_radar *****************
;; Defined at:
;;		line 546 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  SerialBuffer   24   37[COMRAM] unsigned char [24]
;;  Buffer         17   61[COMRAM] unsigned char [17]
;;  distance_cm     2   78[COMRAM] unsigned int 
;;  angle_now       1   80[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:        44       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        44       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       44 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_buzzer_beep
;;		_delay_ms_var
;;		_hcsr04_read_filtered
;;		_lcd_gotoxy
;;		_lcd_puts
;;		_radar_next_angle
;;		_send_string_no_lib
;;		_servo_set_angle
;;		_sprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=0
	file	"ourProject.c"
	line	546
global __ptext11
__ptext11:
psect	text11
	file	"ourProject.c"
	line	546
	global	__size_of_execute_part2_radar
	__size_of_execute_part2_radar	equ	__end_of_execute_part2_radar-_execute_part2_radar
	
_execute_part2_radar:
;incstack = 0
	opt	stack 24
	line	552
	
l2532:
	movff	(_ServoAngle),(c:execute_part2_radar@angle_now)
	line	553
	
l2534:
	movf	((c:execute_part2_radar@angle_now)),c,w
	
	call	_servo_set_angle
	line	555
	movlw	low(0)
	movwf	((c:lcd_gotoxy@y)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	556
	
l2536:
		movlw	low(execute_part2_radar@distance_cm)
	movwf	((c:hcsr04_read_filtered@distance_cm)),c
	movlw	high(execute_part2_radar@distance_cm)
	movwf	((c:hcsr04_read_filtered@distance_cm+1)),c

	call	_hcsr04_read_filtered	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u1661
	goto	u1660
u1661:
	goto	l411
u1660:
	line	557
	
l2538:
		movlw	low(execute_part2_radar@Buffer)
	movwf	((c:sprintf@sp)),c
	movlw	high(execute_part2_radar@Buffer)
	movwf	((c:sprintf@sp+1)),c

		movlw	low(STR_3)
	movwf	((c:sprintf@f)),c
	movlw	high(STR_3)
	movwf	((c:sprintf@f+1)),c

	movff	(c:execute_part2_radar@angle_now),0+((c:?_sprintf)+04h)
	clrf	(1+((c:?_sprintf)+04h)),c
	movff	(c:execute_part2_radar@distance_cm),0+((c:?_sprintf)+06h)
	movff	(c:execute_part2_radar@distance_cm+1),1+((c:?_sprintf)+06h)
	call	_sprintf	;wreg free
	line	558
	
l2540:
		movlw	low(execute_part2_radar@Buffer)
	movwf	((c:lcd_puts@s)),c
	movlw	high(execute_part2_radar@Buffer)
	movwf	((c:lcd_puts@s+1)),c

	call	_lcd_puts	;wreg free
	line	559
	
l2542:
		movlw	low(execute_part2_radar@SerialBuffer)
	movwf	((c:sprintf@sp)),c
	movlw	high(execute_part2_radar@SerialBuffer)
	movwf	((c:sprintf@sp+1)),c

		movlw	low(STR_4)
	movwf	((c:sprintf@f)),c
	movlw	high(STR_4)
	movwf	((c:sprintf@f+1)),c

	movff	(c:execute_part2_radar@angle_now),0+((c:?_sprintf)+04h)
	clrf	(1+((c:?_sprintf)+04h)),c
	movff	(c:execute_part2_radar@distance_cm),0+((c:?_sprintf)+06h)
	movff	(c:execute_part2_radar@distance_cm+1),1+((c:?_sprintf)+06h)
	call	_sprintf	;wreg free
	line	560
	
l2544:
		movlw	low(execute_part2_radar@SerialBuffer)
	movwf	((c:send_string_no_lib@p)),c
	movlw	high(execute_part2_radar@SerialBuffer)
	movwf	((c:send_string_no_lib@p+1)),c

	call	_send_string_no_lib	;wreg free
	line	562
	
l2546:
		movf	((c:execute_part2_radar@distance_cm+1)),c,w
	bnz	u1671
	movlw	16
	subwf	 ((c:execute_part2_radar@distance_cm)),c,w
	btfsc	status,0
	goto	u1671
	goto	u1670

u1671:
	goto	l412
u1670:
	line	563
	
l2548:
	bsf	((c:3969)),c,2	;volatile
	line	564
	
l2550:
	movlw	low(01h)
	movwf	((c:lcd_gotoxy@y)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	565
	
l2552:
		movlw	low(STR_5)
	movwf	((c:lcd_puts@s)),c
	movlw	high(STR_5)
	movwf	((c:lcd_puts@s+1)),c

	call	_lcd_puts	;wreg free
	line	566
	
l2554:
	movlw	(050h)&0ffh
	
	call	_buzzer_beep
	line	567
	
l2556:
	movlw	high(078h)
	movwf	((c:delay_ms_var@ms+1)),c
	movlw	low(078h)
	movwf	((c:delay_ms_var@ms)),c
	call	_delay_ms_var	;wreg free
	line	568
	goto	l2574
	line	569
	
l412:
	line	570
	bcf	((c:3969)),c,2	;volatile
	line	571
	bcf	((c:3970)),c,2	;volatile
	line	572
	
l2558:
	movlw	low(01h)
	movwf	((c:lcd_gotoxy@y)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	573
	
l2560:
		movlw	low(STR_6)
	movwf	((c:lcd_puts@s)),c
	movlw	high(STR_6)
	movwf	((c:lcd_puts@s+1)),c

	call	_lcd_puts	;wreg free
	goto	l2574
	line	574
	
l413:
	line	575
	goto	l2574
	line	576
	
l411:
	line	577
	bcf	((c:3969)),c,2	;volatile
	line	578
	bcf	((c:3970)),c,2	;volatile
	line	579
	
l2562:
		movlw	low(execute_part2_radar@Buffer)
	movwf	((c:sprintf@sp)),c
	movlw	high(execute_part2_radar@Buffer)
	movwf	((c:sprintf@sp+1)),c

		movlw	low(STR_7)
	movwf	((c:sprintf@f)),c
	movlw	high(STR_7)
	movwf	((c:sprintf@f+1)),c

	movff	(c:execute_part2_radar@angle_now),0+((c:?_sprintf)+04h)
	clrf	(1+((c:?_sprintf)+04h)),c
	call	_sprintf	;wreg free
	line	580
	
l2564:
		movlw	low(execute_part2_radar@Buffer)
	movwf	((c:lcd_puts@s)),c
	movlw	high(execute_part2_radar@Buffer)
	movwf	((c:lcd_puts@s+1)),c

	call	_lcd_puts	;wreg free
	line	581
	
l2566:
		movlw	low(execute_part2_radar@SerialBuffer)
	movwf	((c:sprintf@sp)),c
	movlw	high(execute_part2_radar@SerialBuffer)
	movwf	((c:sprintf@sp+1)),c

		movlw	low(STR_8)
	movwf	((c:sprintf@f)),c
	movlw	high(STR_8)
	movwf	((c:sprintf@f+1)),c

	movff	(c:execute_part2_radar@angle_now),0+((c:?_sprintf)+04h)
	clrf	(1+((c:?_sprintf)+04h)),c
	call	_sprintf	;wreg free
	line	582
	
l2568:
		movlw	low(execute_part2_radar@SerialBuffer)
	movwf	((c:send_string_no_lib@p)),c
	movlw	high(execute_part2_radar@SerialBuffer)
	movwf	((c:send_string_no_lib@p+1)),c

	call	_send_string_no_lib	;wreg free
	line	583
	
l2570:
	movlw	low(01h)
	movwf	((c:lcd_gotoxy@y)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	584
	
l2572:
		movlw	low(STR_9)
	movwf	((c:lcd_puts@s)),c
	movlw	high(STR_9)
	movwf	((c:lcd_puts@s+1)),c

	call	_lcd_puts	;wreg free
	goto	l2574
	line	585
	
l414:
	line	587
	
l2574:
	call	_radar_next_angle	;wreg free
	line	588
	
l415:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_execute_part2_radar
	__end_of_execute_part2_radar:
	signat	_execute_part2_radar,89
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              2   12[COMRAM] PTR unsigned char 
;;		 -> execute_part2_radar@SerialBuffer(24), execute_part2_radar@Buffer(17), main@Buffer(32), 
;;  f               2   14[COMRAM] PTR const unsigned char 
;;		 -> STR_8(7), STR_7(17), STR_4(8), STR_3(17), 
;;		 -> STR_2(20), 
;; Auto vars:     Size  Location     Type
;;  tmpval          4    0        struct .
;;  cp              3    0        PTR const unsigned char 
;;  width           2   34[COMRAM] int 
;;  val             2   31[COMRAM] unsigned int 
;;  ap              2   29[COMRAM] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  len             2    0        unsigned int 
;;  c               1   36[COMRAM] char 
;;  prec            1   33[COMRAM] char 
;;  flag            1   28[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   12[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:        12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         9       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        25       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       25 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		___wmul
;;		_isdigit
;; This function is called by:
;;		_main
;;		_execute_part2_radar
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=0
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\doprnt.c"
	line	492
global __ptext12
__ptext12:
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:
;incstack = 0
	opt	stack 29
	line	533
	
l2258:
		movlw	low(?_sprintf+04h)
	movwf	((c:sprintf@ap)),c
	movlw	high(?_sprintf+04h)
	movwf	((c:sprintf@ap+1)),c

	line	536
	goto	l2326
	
l430:
	line	538
	
l2260:
		movlw	37
	xorwf	((c:sprintf@c)),c,w
	btfsc	status,2
	goto	u1351
	goto	u1350

u1351:
	goto	l2266
u1350:
	line	541
	
l2262:
	movff	(c:sprintf@sp),fsr2l
	movff	(c:sprintf@sp+1),fsr2h
	movff	(c:sprintf@c),indf2

	
l2264:
	infsnz	((c:sprintf@sp)),c
	incf	((c:sprintf@sp+1)),c
	line	542
	goto	l2326
	line	543
	
l431:
	line	546
	
l2266:
	movlw	high(0)
	movwf	((c:sprintf@width+1)),c
	movlw	low(0)
	movwf	((c:sprintf@width)),c
	line	548
	movlw	low(0)
	movwf	((c:sprintf@flag)),c
	line	597
	
l2268:
	movff	(c:sprintf@f),tblptrl
	movff	(c:sprintf@f+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_isdigit
	btfss	status,0
	goto	u1361
	goto	u1360
u1361:
	goto	l2284
u1360:
	line	598
	
l2270:
	movlw	high(0)
	movwf	((c:sprintf@width+1)),c
	movlw	low(0)
	movwf	((c:sprintf@width)),c
	goto	l2272
	line	599
	
l433:
	line	600
	
l2272:
	movff	(c:sprintf@width),(c:___wmul@multiplier)
	movff	(c:sprintf@width+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(c:sprintf@width)
	movff	1+?___wmul,(c:sprintf@width+1)
	line	601
	
l2274:
	movlw	low(-48)
	movwf	(??_sprintf+0+0)&0ffh,c
	movlw	high(-48)
	movwf	1+(??_sprintf+0+0)&0ffh,c
	movff	(c:sprintf@f),tblptrl
	movff	(c:sprintf@f+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	movwf	(??_sprintf+2+0)&0ffh,c
	clrf	(??_sprintf+2+0+1)&0ffh,c

	movf	(??_sprintf+0+0),c,w
	addwf	(??_sprintf+2+0),c
	movf	(??_sprintf+0+1),c,w
	addwfc	(??_sprintf+2+1),c
	movf	(??_sprintf+2+0),c,w
	addwf	((c:sprintf@width)),c
	movf	(??_sprintf+2+1),c,w
	addwfc	((c:sprintf@width+1)),c

	
l2276:
	infsnz	((c:sprintf@f)),c
	incf	((c:sprintf@f+1)),c
	line	602
	
l2278:
	movff	(c:sprintf@f),tblptrl
	movff	(c:sprintf@f+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_isdigit
	btfsc	status,0
	goto	u1371
	goto	u1370
u1371:
	goto	l2272
u1370:
	goto	l2284
	
l434:
	goto	l2284
	line	608
	
l432:
	line	635
	goto	l2284
	line	637
	
l436:
	line	638
	goto	l2328
	line	802
	
l438:
	line	813
	goto	l2326
	line	817
	
l439:
	line	818
	
l2280:
	movlw	(0C0h)&0ffh
	iorwf	((c:sprintf@flag)),c
	line	819
	goto	l2286
	line	822
	
l2282:
	goto	l2286
	line	635
	
l435:
	
l2284:
	movff	(c:sprintf@f),tblptrl
	movff	(c:sprintf@f+1),tblptrh
	infsnz	((c:sprintf@f)),c
	incf	((c:sprintf@f+1)),c
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,(c:sprintf@c)
	movf	((c:sprintf@c)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 117
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l2328
	xorlw	117^0	; case 117
	skipnz
	goto	l2280
	goto	l2326

	line	822
	
l440:
	line	1286
	
l2286:
	movff	(c:sprintf@ap),fsr2l
	movff	(c:sprintf@ap+1),fsr2h
	movff	postinc2,(c:sprintf@val)
	movff	postdec2,(c:sprintf@val+1)
	
l2288:
	movlw	02h
	addwf	((c:sprintf@ap)),c
	movlw	0
	addwfc	((c:sprintf@ap+1)),c
	line	1305
	
l2290:
	movlw	low(01h)
	movwf	((c:sprintf@c)),c
	
l2292:
		movlw	5
	xorwf	((c:sprintf@c)),c,w
	btfss	status,2
	goto	u1381
	goto	u1380

u1381:
	goto	l2296
u1380:
	goto	l2304
	
l2294:
	goto	l2304
	line	1306
	
l441:
	
l2296:
	movf	((c:sprintf@c)),c,w
	mullw	02h
	movlw	low((_dpowers))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_dpowers))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
		tblrd	*+
	movf	tablat,w
	subwf	((c:sprintf@val)),c,w
	tblrd	*+
	movf	tablat,w
	subwfb	((c:sprintf@val+1)),c,w
	btfsc	status,0
	goto	u1391
	goto	u1390

u1391:
	goto	l2300
u1390:
	goto	l2304
	line	1307
	
l2298:
	goto	l2304
	
l443:
	line	1305
	
l2300:
	incf	((c:sprintf@c)),c
	
l2302:
		movlw	5
	xorwf	((c:sprintf@c)),c,w
	btfss	status,2
	goto	u1401
	goto	u1400

u1401:
	goto	l2296
u1400:
	goto	l2304
	
l442:
	line	1381
	
l2304:
	movlw	080h
	btfsc	((c:sprintf@c)),c,7
	movlw	07fh
	movwf	(??_sprintf+0+0)&0ffh,c
	movf	((c:sprintf@width)),c,w
	subwf	((c:sprintf@c)),c,w
	movf	((c:sprintf@width+1)),c,w
	xorlw	80h
	subwfb	(??_sprintf+0+0)&0ffh,c,w
	btfsc	status,0
	goto	u1411
	goto	u1410
u1411:
	goto	l2308
u1410:
	line	1382
	
l2306:
	movf	((c:sprintf@c)),c,w
	subwf	((c:sprintf@width)),c
	movlw	0
	btfsc	((c:sprintf@c)),c,7
	movlw	0ffh
	subwfb	((c:sprintf@width+1)),c

	goto	l2310
	line	1383
	
l444:
	line	1384
	
l2308:
	movlw	high(0)
	movwf	((c:sprintf@width+1)),c
	movlw	low(0)
	movwf	((c:sprintf@width)),c
	goto	l2310
	
l445:
	line	1428
	
l2310:
	movf	((c:sprintf@width)),c,w
iorwf	((c:sprintf@width+1)),c,w
	btfsc	status,2
	goto	u1421
	goto	u1420

u1421:
	goto	l446
u1420:
	goto	l2312
	line	1429
	
l447:
	line	1430
	
l2312:
	movff	(c:sprintf@sp),fsr2l
	movff	(c:sprintf@sp+1),fsr2h
	movlw	low(020h)
	movwf	indf2
	
l2314:
	infsnz	((c:sprintf@sp)),c
	incf	((c:sprintf@sp+1)),c
	line	1431
	
l2316:
	decf	((c:sprintf@width)),c
	btfss	status,0
	decf	((c:sprintf@width+1)),c
	movf	((c:sprintf@width)),c,w
iorwf	((c:sprintf@width+1)),c,w
	btfss	status,2
	goto	u1431
	goto	u1430

u1431:
	goto	l2312
u1430:
	goto	l446
	
l448:
	
l446:
	line	1472
	movff	(c:sprintf@c),(c:sprintf@prec)
	line	1474
	goto	l2324
	
l450:
	line	1489
	
l2318:
	movf	((c:sprintf@prec)),c,w
	mullw	02h
	movlw	low((_dpowers))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_dpowers))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___lwdiv@divisor)
	tblrd*-
	
	movff	tablat,(c:___lwdiv@divisor+1)

	movff	(c:sprintf@val),(c:___lwdiv@dividend)
	movff	(c:sprintf@val+1),(c:___lwdiv@dividend+1)
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:___lwmod@dividend)
	movff	1+?___lwdiv,(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor)),c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod),c,w
	addlw	low(030h)
	movwf	((c:sprintf@c)),c
	line	1524
	
l2320:
	movff	(c:sprintf@sp),fsr2l
	movff	(c:sprintf@sp+1),fsr2h
	movff	(c:sprintf@c),indf2

	
l2322:
	infsnz	((c:sprintf@sp)),c
	incf	((c:sprintf@sp+1)),c
	goto	l2324
	line	1525
	
l449:
	line	1474
	
l2324:
	decf	((c:sprintf@prec)),c
		incf	((c:sprintf@prec)),c,w
	btfss	status,2
	goto	u1441
	goto	u1440

u1441:
	goto	l2318
u1440:
	goto	l2326
	
l451:
	goto	l2326
	line	1533
	
l429:
	line	536
	
l2326:
	movff	(c:sprintf@f),tblptrl
	movff	(c:sprintf@f+1),tblptrh
	infsnz	((c:sprintf@f)),c
	incf	((c:sprintf@f+1)),c
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,(c:sprintf@c)
	movf	((c:sprintf@c)),c,w
	btfss	status,2
	goto	u1451
	goto	u1450
u1451:
	goto	l2260
u1450:
	goto	l2328
	
l452:
	goto	l2328
	line	1535
	
l437:
	line	1538
	
l2328:
	movff	(c:sprintf@sp),fsr2l
	movff	(c:sprintf@sp+1),fsr2h
	movlw	low(0)
	movwf	indf2
	goto	l453
	line	1540
	
l2330:
	line	1541
;	Return value of _sprintf is never used
	
l453:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	_isdigit

;; *************** function _isdigit *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\isdigit.c"
	line	8
global __ptext13
__ptext13:
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\isdigit.c"
	line	8
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:
;incstack = 0
	opt	stack 29
	movwf	((c:isdigit@c)),c
	line	14
	
l2174:
	movlw	low(0)
	movwf	((c:_isdigit$1305)),c
	
l2176:
		movlw	03Ah-0
	cpfslt	((c:isdigit@c)),c
	goto	u1221
	goto	u1220

u1221:
	goto	l2182
u1220:
	
l2178:
		movlw	030h-1
	cpfsgt	((c:isdigit@c)),c
	goto	u1231
	goto	u1230

u1231:
	goto	l2182
u1230:
	
l2180:
	movlw	low(01h)
	movwf	((c:_isdigit$1305)),c
	goto	l2182
	
l783:
	
l2182:
	movff	(c:_isdigit$1305),??_isdigit+0+0
	rrcf	(??_isdigit+0+0),c,w
	goto	l784
	
l2184:
	line	15
	
l784:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
	signat	_isdigit,4216
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMRAM] unsigned int 
;;  multiplicand    2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\Umul16.c"
	line	15
global __ptext14
__ptext14:
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:
;incstack = 0
	opt	stack 29
	line	37
	
l2186:
	movf	((c:___wmul@multiplier)),c,w
	mulwf	((c:___wmul@multiplicand)),c
	movff	prodl,(c:___wmul@product)
	movff	prodh,(c:___wmul@product+1)
	line	38
	movf	((c:___wmul@multiplier)),c,w
	mulwf	(0+((c:___wmul@multiplicand)+01h)),c
	movf	(prodl),c,w
	addwf	((c:___wmul@product+1)),c

	line	39
	movf	(0+((c:___wmul@multiplier)+01h)),c,w
	mulwf	((c:___wmul@multiplicand)),c
	movf	(prodl),c,w
	addwf	((c:___wmul@product+1)),c

	line	52
	
l2188:
	movff	(c:___wmul@product),(c:?___wmul)
	movff	(c:___wmul@product+1),(c:?___wmul+1)
	goto	l456
	
l2190:
	line	53
	
l456:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    7[COMRAM] unsigned int 
;;  divisor         2    9[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwmod.c"
	line	8
global __ptext15
__ptext15:
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwmod.c"
	line	8
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:
;incstack = 0
	opt	stack 29
	line	13
	
l2192:
	movf	((c:___lwmod@divisor)),c,w
iorwf	((c:___lwmod@divisor+1)),c,w
	btfsc	status,2
	goto	u1241
	goto	u1240

u1241:
	goto	l871
u1240:
	line	14
	
l2194:
	movlw	low(01h)
	movwf	((c:___lwmod@counter)),c
	line	15
	goto	l2198
	
l873:
	line	16
	
l2196:
	bcf	status,0
	rlcf	((c:___lwmod@divisor)),c
	rlcf	((c:___lwmod@divisor+1)),c
	line	17
	incf	((c:___lwmod@counter)),c
	goto	l2198
	line	18
	
l872:
	line	15
	
l2198:
	
	btfss	((c:___lwmod@divisor+1)),c,(15)&7
	goto	u1251
	goto	u1250
u1251:
	goto	l2196
u1250:
	goto	l2200
	
l874:
	goto	l2200
	line	19
	
l875:
	line	20
	
l2200:
		movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c,w
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c,w
	btfss	status,0
	goto	u1261
	goto	u1260

u1261:
	goto	l2204
u1260:
	line	21
	
l2202:
	movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c

	goto	l2204
	
l876:
	line	22
	
l2204:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1)),c
	rrcf	((c:___lwmod@divisor)),c
	line	23
	
l2206:
	decfsz	((c:___lwmod@counter)),c
	
	goto	l2200
	goto	l871
	
l877:
	line	24
	
l871:
	line	25
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	26
	
l878:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	_servo_set_angle

;; *************** function _servo_set_angle *****************
;; Defined at:
;;		line 430 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;  angle           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  angle           1   34[COMRAM] unsigned char 
;;  pulse_us        2   32[COMRAM] unsigned int 
;;  i               1   35[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_servo_angle_to_us
;;		_servo_pulse_us
;; This function is called by:
;;		_main
;;		_execute_part2_radar
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=0
	file	"ourProject.c"
	line	430
global __ptext16
__ptext16:
psect	text16
	file	"ourProject.c"
	line	430
	global	__size_of_servo_set_angle
	__size_of_servo_set_angle	equ	__end_of_servo_set_angle-_servo_set_angle
	
_servo_set_angle:
;incstack = 0
	opt	stack 28
	movwf	((c:servo_set_angle@angle)),c
	line	434
	
l2244:
	movf	((c:servo_set_angle@angle)),c,w
	
	call	_servo_angle_to_us
	movff	0+?_servo_angle_to_us,(c:servo_set_angle@pulse_us)
	movff	1+?_servo_angle_to_us,(c:servo_set_angle@pulse_us+1)
	line	436
	
l2246:
	movlw	low(0)
	movwf	((c:servo_set_angle@i)),c
	
l2248:
		movlw	0Fh-1
	cpfsgt	((c:servo_set_angle@i)),c
	goto	u1331
	goto	u1330

u1331:
	goto	l2252
u1330:
	goto	l372
	
l2250:
	goto	l372
	
l370:
	line	437
	
l2252:
	movff	(c:servo_set_angle@pulse_us),(c:servo_pulse_us@pulse_us)
	movff	(c:servo_set_angle@pulse_us+1),(c:servo_pulse_us@pulse_us+1)
	call	_servo_pulse_us	;wreg free
	line	436
	
l2254:
	incf	((c:servo_set_angle@i)),c
	
l2256:
		movlw	0Fh-1
	cpfsgt	((c:servo_set_angle@i)),c
	goto	u1341
	goto	u1340

u1341:
	goto	l2252
u1340:
	goto	l372
	
l371:
	line	439
	
l372:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_servo_set_angle
	__end_of_servo_set_angle:
	signat	_servo_set_angle,4217
	global	_servo_pulse_us

;; *************** function _servo_pulse_us *****************
;; Defined at:
;;		line 420 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;  pulse_us        2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay_us_var
;; This function is called by:
;;		_servo_set_angle
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,group=0
	line	420
global __ptext17
__ptext17:
psect	text17
	file	"ourProject.c"
	line	420
	global	__size_of_servo_pulse_us
	__size_of_servo_pulse_us	equ	__end_of_servo_pulse_us-_servo_pulse_us
	
_servo_pulse_us:
;incstack = 0
	opt	stack 28
	line	421
	
l2104:
	bsf	((c:3970)),c,1	;volatile
	line	422
	
l2106:
	movff	(c:servo_pulse_us@pulse_us),(c:delay_us_var@us)
	movff	(c:servo_pulse_us@pulse_us+1),(c:delay_us_var@us+1)
	call	_delay_us_var	;wreg free
	line	423
	
l2108:
	bcf	((c:3970)),c,1	;volatile
	line	425
	
l2110:
		movlw	32
	subwf	 ((c:servo_pulse_us@pulse_us)),c,w
	movlw	78
	subwfb	((c:servo_pulse_us@pulse_us+1)),c,w
	btfsc	status,0
	goto	u1131
	goto	u1130

u1131:
	goto	l367
u1130:
	line	426
	
l2112:
	movff	(c:servo_pulse_us@pulse_us),??_servo_pulse_us+0+0
	movff	(c:servo_pulse_us@pulse_us+1),??_servo_pulse_us+0+0+1
	comf	(??_servo_pulse_us+0+0),c
	comf	(??_servo_pulse_us+0+1),c
	infsnz	(??_servo_pulse_us+0+0),c
	incf	(??_servo_pulse_us+0+1),c
	movlw	low(04E20h)
	addwf	(??_servo_pulse_us+0+0),c,w
	movwf	((c:delay_us_var@us)),c
	movlw	high(04E20h)
	addwfc	(??_servo_pulse_us+0+1),c,w
	movwf	1+((c:delay_us_var@us)),c
	call	_delay_us_var	;wreg free
	goto	l367
	line	427
	
l366:
	line	428
	
l367:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_servo_pulse_us
	__end_of_servo_pulse_us:
	signat	_servo_pulse_us,4217
	global	_delay_us_var

;; *************** function _delay_us_var *****************
;; Defined at:
;;		line 288 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;  us              2    0[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_servo_pulse_us
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2,group=0
	line	288
global __ptext18
__ptext18:
psect	text18
	file	"ourProject.c"
	line	288
	global	__size_of_delay_us_var
	__size_of_delay_us_var	equ	__end_of_delay_us_var-_delay_us_var
	
_delay_us_var:
;incstack = 0
	opt	stack 28
	line	289
	
l1962:
	goto	l1968
	
l303:
	line	290
	
l1964:
	opt asmopt_push
opt asmopt_off
	movlw	33
u1817:
decfsz	wreg,f
	bra	u1817
	nop
opt asmopt_pop

	line	291
	
l1966:
	movlw	064h
	subwf	((c:delay_us_var@us)),c
	movlw	0
	subwfb	((c:delay_us_var@us+1)),c
	line	292
# 292 "ourProject.c"
clrwdt ;# 
psect	text18
	goto	l1968
	line	293
	
l302:
	line	289
	
l1968:
		movf	((c:delay_us_var@us+1)),c,w
	bnz	u951
	movlw	100
	subwf	 ((c:delay_us_var@us)),c,w
	btfsc	status,0
	goto	u951
	goto	u950

u951:
	goto	l1964
u950:
	goto	l1974
	
l304:
	line	295
	goto	l1974
	
l306:
	line	296
	
l1970:
	opt asmopt_push
opt asmopt_off
	movlw	3
u1827:
decfsz	wreg,f
	bra	u1827
	nop
opt asmopt_pop

	line	297
	
l1972:
	movlw	0Ah
	subwf	((c:delay_us_var@us)),c
	movlw	0
	subwfb	((c:delay_us_var@us+1)),c
	line	298
# 298 "ourProject.c"
clrwdt ;# 
psect	text18
	goto	l1974
	line	299
	
l305:
	line	295
	
l1974:
		movf	((c:delay_us_var@us+1)),c,w
	bnz	u961
	movlw	10
	subwf	 ((c:delay_us_var@us)),c,w
	btfsc	status,0
	goto	u961
	goto	u960

u961:
	goto	l1970
u960:
	goto	l1978
	
l307:
	line	301
	goto	l1978
	
l309:
	line	302
		opt asmopt_push
	opt asmopt_off
	nop
	opt asmopt_pop

	line	303
	
l1976:
	decf	((c:delay_us_var@us)),c
	btfss	status,0
	decf	((c:delay_us_var@us+1)),c
	line	304
# 304 "ourProject.c"
clrwdt ;# 
psect	text18
	goto	l1978
	line	305
	
l308:
	line	301
	
l1978:
	movf	((c:delay_us_var@us)),c,w
iorwf	((c:delay_us_var@us+1)),c,w
	btfss	status,2
	goto	u971
	goto	u970

u971:
	goto	l309
u970:
	goto	l311
	
l310:
	line	306
	
l311:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_delay_us_var
	__end_of_delay_us_var:
	signat	_delay_us_var,4217
	global	_servo_angle_to_us

;; *************** function _servo_angle_to_us *****************
;; Defined at:
;;		line 407 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;  angle           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  angle           1   31[COMRAM] unsigned char 
;;  pulse_us        4   27[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;                  2   25[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lldiv
;;		___lmul
;; This function is called by:
;;		_servo_set_angle
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=0
	line	407
global __ptext19
__ptext19:
psect	text19
	file	"ourProject.c"
	line	407
	global	__size_of_servo_angle_to_us
	__size_of_servo_angle_to_us	equ	__end_of_servo_angle_to_us-_servo_angle_to_us
	
_servo_angle_to_us:
;incstack = 0
	opt	stack 28
	movwf	((c:servo_angle_to_us@angle)),c
	line	410
	
l2094:
		movlw	0B5h-1
	cpfsgt	((c:servo_angle_to_us@angle)),c
	goto	u1121
	goto	u1120

u1121:
	goto	l362
u1120:
	line	411
	
l2096:
	movlw	low(0B4h)
	movwf	((c:servo_angle_to_us@angle)),c
	line	412
	
l362:
	line	414
	movlw	low(03E8h)
	movwf	((c:servo_angle_to_us@pulse_us)),c
	movlw	high(03E8h)
	movwf	((c:servo_angle_to_us@pulse_us+1)),c
	movlw	low highword(03E8h)
	movwf	((c:servo_angle_to_us@pulse_us+2)),c
	movlw	high highword(03E8h)
	movwf	((c:servo_angle_to_us@pulse_us+3)),c
	line	415
	
l2098:
	movf	((c:servo_angle_to_us@angle)),c,w
	movwf	((c:___lmul@multiplier)),c
	clrf	((c:___lmul@multiplier+1)),c
	clrf	((c:___lmul@multiplier+2)),c
	clrf	((c:___lmul@multiplier+3)),c

	movlw	low(03E8h)
	movwf	((c:___lmul@multiplicand)),c
	movlw	high(03E8h)
	movwf	((c:___lmul@multiplicand+1)),c
	movlw	low highword(03E8h)
	movwf	((c:___lmul@multiplicand+2)),c
	movlw	high highword(03E8h)
	movwf	((c:___lmul@multiplicand+3)),c
	call	___lmul	;wreg free
	movff	0+?___lmul,(c:___lldiv@dividend)
	movff	1+?___lmul,(c:___lldiv@dividend+1)
	movff	2+?___lmul,(c:___lldiv@dividend+2)
	movff	3+?___lmul,(c:___lldiv@dividend+3)
	
	movlw	low(0B4h)
	movwf	((c:___lldiv@divisor)),c
	movlw	high(0B4h)
	movwf	((c:___lldiv@divisor+1)),c
	movlw	low highword(0B4h)
	movwf	((c:___lldiv@divisor+2)),c
	movlw	high highword(0B4h)
	movwf	((c:___lldiv@divisor+3)),c
	call	___lldiv	;wreg free
	movf	(0+?___lldiv),c,w
	addwf	((c:servo_angle_to_us@pulse_us)),c
	movf	(1+?___lldiv),c,w
	addwfc	((c:servo_angle_to_us@pulse_us+1)),c
	movf	(2+?___lldiv),c,w
	addwfc	((c:servo_angle_to_us@pulse_us+2)),c
	movf	(3+?___lldiv),c,w
	addwfc	((c:servo_angle_to_us@pulse_us+3)),c

	line	417
	
l2100:
	movff	(c:servo_angle_to_us@pulse_us),(c:?_servo_angle_to_us)
	movff	(c:servo_angle_to_us@pulse_us+1),(c:?_servo_angle_to_us+1)
	goto	l363
	
l2102:
	line	418
	
l363:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_servo_angle_to_us
	__end_of_servo_angle_to_us:
	signat	_servo_angle_to_us,4218
	global	_send_string_no_lib

;; *************** function _send_string_no_lib *****************
;; Defined at:
;;		line 47 in file "my_ser.c"
;; Parameters:    Size  Location     Type
;;  p               2    1[COMRAM] PTR const unsigned char 
;;		 -> execute_part2_radar@SerialBuffer(24), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_send_byte_no_lib
;; This function is called by:
;;		_execute_part2_radar
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2,group=0
	file	"my_ser.c"
	line	47
global __ptext20
__ptext20:
psect	text20
	file	"my_ser.c"
	line	47
	global	__size_of_send_string_no_lib
	__size_of_send_string_no_lib	equ	__end_of_send_string_no_lib-_send_string_no_lib
	
_send_string_no_lib:
;incstack = 0
	opt	stack 28
	line	48
	
l2226:
	goto	l2232
	
l158:
	line	49
	
l2228:
	movff	(c:send_string_no_lib@p),fsr2l
	movff	(c:send_string_no_lib@p+1),fsr2h
	movf	indf2,w
	
	call	_send_byte_no_lib
	line	50
	
l2230:
	infsnz	((c:send_string_no_lib@p)),c
	incf	((c:send_string_no_lib@p+1)),c
	goto	l2232
	line	51
	
l157:
	line	48
	
l2232:
	movff	(c:send_string_no_lib@p),fsr2l
	movff	(c:send_string_no_lib@p+1),fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u1311
	goto	u1310
u1311:
	goto	l2228
u1310:
	goto	l160
	
l159:
	line	52
	
l160:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_send_string_no_lib
	__end_of_send_string_no_lib:
	signat	_send_string_no_lib,4217
	global	_send_byte_no_lib

;; *************** function _send_byte_no_lib *****************
;; Defined at:
;;		line 39 in file "my_ser.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_string_no_lib
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2,group=0
	line	39
global __ptext21
__ptext21:
psect	text21
	file	"my_ser.c"
	line	39
	global	__size_of_send_byte_no_lib
	__size_of_send_byte_no_lib	equ	__end_of_send_byte_no_lib-_send_byte_no_lib
	
_send_byte_no_lib:
;incstack = 0
	opt	stack 30
	movwf	((c:send_byte_no_lib@c)),c
	line	40
	
l2070:
	goto	l151
	
l152:
	line	42
# 42 "my_ser.c"
clrwdt ;# 
psect	text21
	line	43
	
l151:
	line	40
	btfss	((c:4012)),c,1	;volatile
	goto	u1081
	goto	u1080
u1081:
	goto	l152
u1080:
	goto	l2072
	
l153:
	line	44
	
l2072:
	movff	(c:send_byte_no_lib@c),(c:4013)	;volatile
	line	45
	
l154:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_send_byte_no_lib
	__end_of_send_byte_no_lib:
	signat	_send_byte_no_lib,4217
	global	_radar_next_angle

;; *************** function _radar_next_angle *****************
;; Defined at:
;;		line 441 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_execute_part2_radar
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2,group=0
	file	"ourProject.c"
	line	441
global __ptext22
__ptext22:
psect	text22
	file	"ourProject.c"
	line	441
	global	__size_of_radar_next_angle
	__size_of_radar_next_angle	equ	__end_of_radar_next_angle-_radar_next_angle
	
_radar_next_angle:
;incstack = 0
	opt	stack 29
	line	442
	
l2338:
	movlb	0	; () banked
		movf	((_ServoDirection))&0ffh,w
	xorlw	80h
	addlw	-(80h^01h)
	btfss	status,0
	goto	u1471
	goto	u1470

u1471:
	goto	l2348
u1470:
	line	443
	
l2340:; BSR set to: 0

		movlw	0AAh-1
	cpfsgt	((_ServoAngle))&0ffh
	goto	u1481
	goto	u1480

u1481:
	goto	l2346
u1480:
	line	444
	
l2342:; BSR set to: 0

	movlw	low(0B4h)
	movwf	((_ServoAngle))&0ffh
	line	445
	
l2344:; BSR set to: 0

	setf	((_ServoDirection))&0ffh
	line	446
	goto	l381
	line	447
	
l376:; BSR set to: 0

	line	448
	
l2346:; BSR set to: 0

	movlw	(0Ah)&0ffh
	addwf	((_ServoAngle))&0ffh
	goto	l381
	line	449
	
l377:; BSR set to: 0

	line	450
	goto	l381
	line	451
	
l375:; BSR set to: 0

	line	452
	
l2348:; BSR set to: 0

		movlw	0Bh-0
	cpfslt	((_ServoAngle))&0ffh
	goto	u1491
	goto	u1490

u1491:
	goto	l2352
u1490:
	line	453
	
l2350:; BSR set to: 0

	movlw	low(0)
	movwf	((_ServoAngle))&0ffh
	line	454
	movlw	low(01h)
	movwf	((_ServoDirection))&0ffh
	line	455
	goto	l381
	line	456
	
l379:; BSR set to: 0

	line	457
	
l2352:; BSR set to: 0

	movlw	(0Ah)&0ffh
	subwf	((_ServoAngle))&0ffh
	goto	l381
	line	458
	
l380:; BSR set to: 0

	goto	l381
	line	459
	
l378:; BSR set to: 0

	line	460
	
l381:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_radar_next_angle
	__end_of_radar_next_angle:
	signat	_radar_next_angle,89
	global	_lcd_puts

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 121 in file "lcd_x8.c"
;; Parameters:    Size  Location     Type
;;  s               2   14[COMRAM] PTR const unsigned char 
;;		 -> STR_9(17), STR_6(17), STR_5(17), execute_part2_radar@Buffer(17), 
;;		 -> main@Buffer(32), STR_1(12), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_putc
;; This function is called by:
;;		_main
;;		_execute_part2_radar
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2,group=0
	file	"lcd_x8.c"
	line	121
global __ptext23
__ptext23:
psect	text23
	file	"lcd_x8.c"
	line	121
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:; BSR set to: 0

;incstack = 0
	opt	stack 25
	line	122
	
l2208:
	goto	l2214
	
l55:
	line	123
	
l2210:
	movff	(c:lcd_puts@s),tblptrl
	movff	(c:lcd_puts@s+1),tblptrh
	movlw	low highword(__smallconst)
	movwf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1277
	tblrd	*
	
	movf	tablat,w
	bra	u1270
u1277:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u1270:
	
	call	_lcd_putc
	line	124
	
l2212:
	infsnz	((c:lcd_puts@s)),c
	incf	((c:lcd_puts@s+1)),c
	goto	l2214
	line	125
	
l54:
	line	122
	
l2214:
	movff	(c:lcd_puts@s),tblptrl
	movff	(c:lcd_puts@s+1),tblptrh
	movlw	low highword(__smallconst)
	movwf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1287
	tblrd	*
	
	movf	tablat,w
	bra	u1280
u1287:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u1280:
	iorlw	0
	btfss	status,2
	goto	u1291
	goto	u1290
u1291:
	goto	l2210
u1290:
	goto	l57
	
l56:
	line	126
	
l57:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
	signat	_lcd_puts,4217
	global	_lcd_putc

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 107 in file "lcd_x8.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   13[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay_ms
;;		_lcd_gotoxy
;;		_lcd_send_byte
;; This function is called by:
;;		_lcd_puts
;;		_lcd_clear_line
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2,group=0
	line	107
global __ptext24
__ptext24:
psect	text24
	file	"lcd_x8.c"
	line	107
	global	__size_of_lcd_putc
	__size_of_lcd_putc	equ	__end_of_lcd_putc-_lcd_putc
	
_lcd_putc:
;incstack = 0
	opt	stack 25
	movwf	((c:lcd_putc@c)),c
	line	108
	
l2056:
	goto	l2068
	line	109
	
l46:
	
l2058:
	movlw	low(01h)
	movwf	((c:lcd_send_byte@n)),c
	movlw	(0)&0ffh
	
	call	_lcd_send_byte
	line	110
	movlw	high(02h)
	movwf	((c:delay_ms@n+1)),c
	movlw	low(02h)
	movwf	((c:delay_ms@n)),c
	call	_delay_ms	;wreg free
	line	111
	goto	l51
	line	112
	
l48:
	
l2060:
	movlw	low(02h)
	movwf	((c:lcd_gotoxy@y)),c
	movlw	(01h)&0ffh
	
	call	_lcd_gotoxy
	line	113
	goto	l51
	line	114
	
l49:
	
l2062:
	movlw	low(010h)
	movwf	((c:lcd_send_byte@n)),c
	movlw	(0)&0ffh
	
	call	_lcd_send_byte
	line	115
	goto	l51
	line	116
	
l50:
	
l2064:
	movff	(c:lcd_putc@c),(c:lcd_send_byte@n)
	movlw	(01h)&0ffh
	
	call	_lcd_send_byte
	line	117
	goto	l51
	line	118
	
l2066:
	goto	l51
	line	108
	
l45:
	
l2068:
	movf	((c:lcd_putc@c)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 8 to 12
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	8^0	; case 8
	skipnz
	goto	l2062
	xorlw	10^8	; case 10
	skipnz
	goto	l2060
	xorlw	12^10	; case 12
	skipnz
	goto	l2058
	goto	l2064

	line	118
	
l47:
	line	119
	
l51:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
	signat	_lcd_putc,4217
	global	_lcd_gotoxy

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 90 in file "lcd_x8.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;;  y               1   10[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1   11[COMRAM] unsigned char 
;;  address         1   12[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_send_byte
;; This function is called by:
;;		_lcd_putc
;;		_lcd_clear_line
;;		_main
;;		_execute_part2_radar
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2,group=0
	line	90
global __ptext25
__ptext25:
psect	text25
	file	"lcd_x8.c"
	line	90
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:
;incstack = 0
	opt	stack 25
	movwf	((c:lcd_gotoxy@x)),c
	line	93
	
l1944:
	goto	l1956
	line	94
	
l37:
	
l1946:
	movlw	low(080h)
	movwf	((c:lcd_gotoxy@address)),c
	line	95
	goto	l1958
	line	96
	
l39:
	
l1948:
	movlw	low(0C0h)
	movwf	((c:lcd_gotoxy@address)),c
	line	97
	goto	l1958
	line	98
	
l40:
	
l1950:
	movlw	low(090h)
	movwf	((c:lcd_gotoxy@address)),c
	line	99
	goto	l1958
	line	100
	
l41:
	
l1952:
	movlw	low(0D0h)
	movwf	((c:lcd_gotoxy@address)),c
	line	101
	goto	l1958
	line	102
	
l1954:
	goto	l1958
	line	93
	
l36:
	
l1956:
	movf	((c:lcd_gotoxy@y)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l1946
	xorlw	1^0	; case 1
	skipnz
	goto	l1948
	xorlw	2^1	; case 2
	skipnz
	goto	l1950
	xorlw	3^2	; case 3
	skipnz
	goto	l1952
	goto	l1958

	line	102
	
l38:
	line	103
	
l1958:
	movf	((c:lcd_gotoxy@x)),c,w
	addwf	((c:lcd_gotoxy@address)),c
	line	104
	
l1960:
	movf	((c:lcd_gotoxy@address)),c,w
	iorlw	low(080h)
	movwf	((c:lcd_send_byte@n)),c
	movlw	(0)&0ffh
	
	call	_lcd_send_byte
	line	105
	
l42:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
	signat	_lcd_gotoxy,8313
	global	_lcd_send_byte

;; *************** function _lcd_send_byte *****************
;; Defined at:
;;		line 39 in file "lcd_x8.c"
;; Parameters:    Size  Location     Type
;;  cm_data         1    wreg     unsigned char 
;;  n               1    8[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  cm_data         1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay_cycles
;;		_delay_ms
;;		_lcd_send_nibble
;; This function is called by:
;;		_lcd_init
;;		_lcd_gotoxy
;;		_lcd_putc
;;		_Lcd_Shift_Right
;;		_Lcd_Shift_Left
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2,group=0
	line	39
global __ptext26
__ptext26:
psect	text26
	file	"lcd_x8.c"
	line	39
	global	__size_of_lcd_send_byte
	__size_of_lcd_send_byte	equ	__end_of_lcd_send_byte-_lcd_send_byte
	
_lcd_send_byte:
;incstack = 0
	opt	stack 26
	movwf	((c:lcd_send_byte@cm_data)),c
	line	43
	
l1920:
	btfsc	(c:lcd_send_byte@cm_data),c,0
	bra	u935
	bcf	((c:3971)),c,1
	bra	u936
	u935:
	bsf	((c:3971)),c,1
	u936:

	line	44
	
l1922:
	movlw	(01h)&0ffh
	
	call	_delay_cycles
	line	46
	
l1924:
	movlw	(01h)&0ffh
	
	call	_delay_cycles
	line	47
	
l1926:
	bcf	((c:3971)),c,3
	line	48
	
l1928:
	swapf	((c:lcd_send_byte@n)),c,w
	andlw	(0ffh shr 4) & 0ffh
	
	call	_lcd_send_nibble
	line	49
	
l1930:
	movf	((c:lcd_send_byte@n)),c,w
	andlw	low(0Fh)
	
	call	_lcd_send_nibble
	line	50
	
l1932:
	movf	((c:lcd_send_byte@cm_data)),c,w
	btfsc	status,2
	goto	u941
	goto	u940
u941:
	goto	l1936
u940:
	
l1934:
	opt asmopt_push
opt asmopt_off
	movlw	50
u1837:
	clrwdt
decfsz	wreg,f
	bra	u1837
opt asmopt_pop

	goto	l26
	line	51
	
l24:
	line	52
	
l1936:
	movlw	high(02h)
	movwf	((c:delay_ms@n+1)),c
	movlw	low(02h)
	movwf	((c:delay_ms@n)),c
	call	_delay_ms	;wreg free
	goto	l26
	
l25:
	line	54
	
l26:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_send_byte
	__end_of_lcd_send_byte:
	signat	_lcd_send_byte,8313
	global	_lcd_send_nibble

;; *************** function _lcd_send_nibble *****************
;; Defined at:
;;		line 29 in file "lcd_x8.c"
;; Parameters:    Size  Location     Type
;;  n               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  n               1    7[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay_cycles
;; This function is called by:
;;		_lcd_send_byte
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2,group=0
	line	29
global __ptext27
__ptext27:
psect	text27
	file	"lcd_x8.c"
	line	29
	global	__size_of_lcd_send_nibble
	__size_of_lcd_send_nibble	equ	__end_of_lcd_send_nibble-_lcd_send_nibble
	
_lcd_send_nibble:
;incstack = 0
	opt	stack 26
	movwf	((c:lcd_send_nibble@n)),c
	line	31
	
l1910:
	movff	(c:lcd_send_nibble@n),??_lcd_send_nibble+0+0
	swapf	(??_lcd_send_nibble+0+0),c
	movf	((c:3971)),c,w
	xorwf	(??_lcd_send_nibble+0+0),c,w
	andlw	not (((1<<4)-1)<<4)
	xorwf	(??_lcd_send_nibble+0+0),c,w
	movwf	((c:3971)),c
	line	33
	
l1912:
	movlw	(01h)&0ffh
	
	call	_delay_cycles
	line	34
	
l1914:
	bsf	((c:3971)),c,3
	line	35
	
l1916:
		opt asmopt_push
	opt asmopt_off
	clrwdt
	nop	;2 cycle nop
	opt asmopt_pop

	line	36
	
l1918:
	bcf	((c:3971)),c,3
	line	37
	
l21:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_send_nibble
	__end_of_lcd_send_nibble:
	signat	_lcd_send_nibble,4217
	global	_delay_cycles

;; *************** function _delay_cycles *****************
;; Defined at:
;;		line 20 in file "lcd_x8.c"
;; Parameters:    Size  Location     Type
;;  n               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  n               1    3[COMRAM] unsigned char 
;;  x               2    4[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_send_nibble
;;		_lcd_send_byte
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2,group=0
	line	20
global __ptext28
__ptext28:
psect	text28
	file	"lcd_x8.c"
	line	20
	global	__size_of_delay_cycles
	__size_of_delay_cycles	equ	__end_of_delay_cycles-_delay_cycles
	
_delay_cycles:
;incstack = 0
	opt	stack 26
	movwf	((c:delay_cycles@n)),c
	line	22
	
l1898:
	movlw	high(0)
	movwf	((c:delay_cycles@x+1)),c
	movlw	low(0)
	movwf	((c:delay_cycles@x)),c
	goto	l1902
	
l16:
	line	23
# 23 "lcd_x8.c"
clrwdt ;# 
psect	text28
	line	22
	
l1900:
	infsnz	((c:delay_cycles@x)),c
	incf	((c:delay_cycles@x+1)),c
	goto	l1902
	
l15:
	
l1902:
	movf	((c:delay_cycles@n)),c,w
	movwf	(??_delay_cycles+0+0)&0ffh,c
	clrf	(??_delay_cycles+0+0+1)&0ffh,c

		movf	((c:delay_cycles@x)),c,w
	subwf	(??_delay_cycles+0+0),c,w
	movf	(??_delay_cycles+0+1),c,w
	xorlw	80h
	movwf	(??_delay_cycles+2+0)&0ffh,c
	movf	((c:delay_cycles@x+1)),c,w
	xorlw	80h
	subwfb	(??_delay_cycles+2+0)&0ffh,c,w
	btfsc	status,0
	goto	u911
	goto	u910

u911:
	goto	l16
u910:
	goto	l18
	
l17:
	line	26
	
l18:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_delay_cycles
	__end_of_delay_cycles:
	signat	_delay_cycles,4217
	global	_hcsr04_read_filtered

;; *************** function _hcsr04_read_filtered *****************
;; Defined at:
;;		line 513 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;  distance_cm     2   14[COMRAM] PTR unsigned int 
;;		 -> execute_part2_radar@distance_cm(2), 
;; Auto vars:     Size  Location     Type
;;  samples         6   23[COMRAM] unsigned int [3]
;;  reading         2   20[COMRAM] unsigned int 
;;  valid           1   29[COMRAM] unsigned char 
;;  i               1   22[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:        10       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        16       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay_ms
;;		_hcsr04_read_once
;;		_sort_samples
;; This function is called by:
;;		_execute_part2_radar
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2,group=0
	file	"ourProject.c"
	line	513
global __ptext29
__ptext29:
psect	text29
	file	"ourProject.c"
	line	513
	global	__size_of_hcsr04_read_filtered
	__size_of_hcsr04_read_filtered	equ	__end_of_hcsr04_read_filtered-_hcsr04_read_filtered
	
_hcsr04_read_filtered:
;incstack = 0
	opt	stack 26
	line	519
	
l2354:
	movlw	low(0)
	movwf	((c:hcsr04_read_filtered@valid)),c
	line	521
	movlw	low(0)
	movwf	((c:hcsr04_read_filtered@i)),c
	
l2356:
		movlw	03h-1
	cpfsgt	((c:hcsr04_read_filtered@i)),c
	goto	u1501
	goto	u1500

u1501:
	goto	l2360
u1500:
	goto	l2372
	
l2358:
	goto	l2372
	
l402:
	line	522
	
l2360:
		movlw	low(hcsr04_read_filtered@reading)
	movwf	((c:hcsr04_read_once@distance_cm)),c
	movlw	high(hcsr04_read_filtered@reading)
	movwf	((c:hcsr04_read_once@distance_cm+1)),c

	call	_hcsr04_read_once	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u1511
	goto	u1510
u1511:
	goto	l2366
u1510:
	line	523
	
l2362:
	movf	((c:hcsr04_read_filtered@valid)),c,w
	mullw	02h
	movlw	low(hcsr04_read_filtered@samples)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(hcsr04_read_filtered@samples)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:hcsr04_read_filtered@reading),postinc2
	movff	(c:hcsr04_read_filtered@reading+1),postdec2
	line	524
	
l2364:
	incf	((c:hcsr04_read_filtered@valid)),c
	goto	l2366
	line	525
	
l404:
	line	526
	
l2366:
	movlw	high(041h)
	movwf	((c:delay_ms@n+1)),c
	movlw	low(041h)
	movwf	((c:delay_ms@n)),c
	call	_delay_ms	;wreg free
	line	521
	
l2368:
	incf	((c:hcsr04_read_filtered@i)),c
	
l2370:
		movlw	03h-1
	cpfsgt	((c:hcsr04_read_filtered@i)),c
	goto	u1521
	goto	u1520

u1521:
	goto	l2360
u1520:
	goto	l2372
	
l403:
	line	529
	
l2372:
		movlw	03h-0
	cpfslt	((c:hcsr04_read_filtered@valid)),c
	goto	u1531
	goto	u1530

u1531:
	goto	l2390
u1530:
	line	530
	
l2374:
		movlw	2
	xorwf	((c:hcsr04_read_filtered@valid)),c,w
	btfss	status,2
	goto	u1541
	goto	u1540

u1541:
	goto	l2386
u1540:
	line	531
	
l2376:
		movlw	low(hcsr04_read_filtered@samples)
	movwf	((c:sort_samples@samples)),c
	movlw	high(hcsr04_read_filtered@samples)
	movwf	((c:sort_samples@samples+1)),c

	movff	(c:hcsr04_read_filtered@valid),(c:sort_samples@count)
	call	_sort_samples	;wreg free
	line	532
	
l2378:
	movff	(c:hcsr04_read_filtered@samples),??_hcsr04_read_filtered+0+0
	movff	(c:hcsr04_read_filtered@samples+1),??_hcsr04_read_filtered+0+0+1
	comf	(??_hcsr04_read_filtered+0+0),c
	comf	(??_hcsr04_read_filtered+0+1),c
	infsnz	(??_hcsr04_read_filtered+0+0),c
	incf	(??_hcsr04_read_filtered+0+1),c
	movf	(0+((c:hcsr04_read_filtered@samples)+02h)),c,w
	addwf	(??_hcsr04_read_filtered+0+0),c
	movf	(1+((c:hcsr04_read_filtered@samples)+02h)),c,w
	addwfc	(??_hcsr04_read_filtered+0+1),c
		movf	(??_hcsr04_read_filtered+0+1),c,w
	bnz	u1551
	movlw	31
	subwf	 (??_hcsr04_read_filtered+0+0),c,w
	btfsc	status,0
	goto	u1551
	goto	u1550

u1551:
	goto	l2386
u1550:
	line	533
	
l2380:
	movf	((c:hcsr04_read_filtered@samples)),c,w
	addwf	(0+((c:hcsr04_read_filtered@samples)+02h)),c,w
	movwf	(??_hcsr04_read_filtered+0+0)&0ffh,c
	movf	((c:hcsr04_read_filtered@samples+1)),c,w
	addwfc	(1+((c:hcsr04_read_filtered@samples)+02h)),c,w
	movwf	(??_hcsr04_read_filtered+0+0+1)&0ffh,c
	movlw	01h
	addwf	(??_hcsr04_read_filtered+0+0),c
	movlw	0
	addwfc	(??_hcsr04_read_filtered+0+1),c
	bcf	status,0
	rrcf	(??_hcsr04_read_filtered+0+1),c,w
	movwf	(??_hcsr04_read_filtered+2+0+1)&0ffh,c
	rrcf	(??_hcsr04_read_filtered+0+0),c,w
	movwf	(??_hcsr04_read_filtered+2+0)&0ffh,c
	movff	(c:hcsr04_read_filtered@distance_cm),fsr2l
	movff	(c:hcsr04_read_filtered@distance_cm+1),fsr2h
	movff	??_hcsr04_read_filtered+2+0,postinc2
	movff	??_hcsr04_read_filtered+2+1,postdec2

	line	534
	
l2382:
	movlw	(01h)&0ffh
	goto	l408
	
l2384:
	goto	l408
	line	535
	
l407:
	goto	l2386
	line	536
	
l406:
	line	538
	
l2386:
	movlw	(0)&0ffh
	goto	l408
	
l2388:
	goto	l408
	line	539
	
l405:
	line	541
	
l2390:
		movlw	low(hcsr04_read_filtered@samples)
	movwf	((c:sort_samples@samples)),c
	movlw	high(hcsr04_read_filtered@samples)
	movwf	((c:sort_samples@samples+1)),c

	movff	(c:hcsr04_read_filtered@valid),(c:sort_samples@count)
	call	_sort_samples	;wreg free
	line	542
	
l2392:
	movff	(c:hcsr04_read_filtered@distance_cm),fsr2l
	movff	(c:hcsr04_read_filtered@distance_cm+1),fsr2h
	movff	0+((c:hcsr04_read_filtered@samples)+02h),postinc2
	movff	1+((c:hcsr04_read_filtered@samples)+02h),postdec2
	line	543
	
l2394:
	movlw	(01h)&0ffh
	goto	l408
	
l2396:
	line	544
	
l408:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_hcsr04_read_filtered
	__end_of_hcsr04_read_filtered:
	signat	_hcsr04_read_filtered,4217
	global	_sort_samples

;; *************** function _sort_samples *****************
;; Defined at:
;;		line 377 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;  samples         2    0[COMRAM] PTR unsigned int 
;;		 -> hcsr04_read_filtered@samples(6), 
;;  count           1    2[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  temp            2    7[COMRAM] unsigned int 
;;  i               1   10[COMRAM] unsigned char 
;;  j               1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_hcsr04_read_filtered
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2,group=0
	line	377
global __ptext30
__ptext30:
psect	text30
	file	"ourProject.c"
	line	377
	global	__size_of_sort_samples
	__size_of_sort_samples	equ	__end_of_sort_samples-_sort_samples
	
_sort_samples:
;incstack = 0
	opt	stack 28
	line	382
	
l2074:
	movlw	low(0)
	movwf	((c:sort_samples@i)),c
	goto	l2092
	
l347:
	line	383
	
l2076:
	incf	((c:sort_samples@i)),c,w
	movwf	((c:sort_samples@j)),c
	goto	l2088
	
l349:
	line	384
	
l2078:
	movf	((c:sort_samples@i)),c,w
	mullw	02h
	movf	(prodl),c,w
	addwf	((c:sort_samples@samples)),c,w
	movwf	c:fsr2l
	movf	(prodh),c,w
	addwfc	((c:sort_samples@samples+1)),c,w
	movwf	1+c:fsr2l
	movf	((c:sort_samples@j)),c,w
	mullw	02h
	movf	(prodl),c,w
	addwf	((c:sort_samples@samples)),c,w
	movwf	c:fsr1l
	movf	(prodh),c,w
	addwfc	((c:sort_samples@samples+1)),c,w
	movwf	1+c:fsr1l
		movf	postinc2,w
	subwf	postinc1,w
	movf	postinc2,w
	subwfb	postinc1,w
	btfsc	status,0
	goto	u1091
	goto	u1090

u1091:
	goto	l2086
u1090:
	line	385
	
l2080:
	movf	((c:sort_samples@i)),c,w
	mullw	02h
	movf	(prodl),c,w
	addwf	((c:sort_samples@samples)),c,w
	movwf	c:fsr2l
	movf	(prodh),c,w
	addwfc	((c:sort_samples@samples+1)),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:sort_samples@temp)
	movff	postdec2,(c:sort_samples@temp+1)
	line	386
	
l2082:
	movf	((c:sort_samples@j)),c,w
	mullw	02h
	movf	(prodl),c,w
	addwf	((c:sort_samples@samples)),c,w
	movwf	c:fsr2l
	movf	(prodh),c,w
	addwfc	((c:sort_samples@samples+1)),c,w
	movwf	1+c:fsr2l
	movf	((c:sort_samples@i)),c,w
	mullw	02h
	movf	(prodl),c,w
	addwf	((c:sort_samples@samples)),c,w
	movwf	c:fsr1l
	movf	(prodh),c,w
	addwfc	((c:sort_samples@samples+1)),c,w
	movwf	1+c:fsr1l
	movff	postinc2,postinc1
	movff	postdec2,postdec1
	line	387
	
l2084:
	movf	((c:sort_samples@j)),c,w
	mullw	02h
	movf	(prodl),c,w
	addwf	((c:sort_samples@samples)),c,w
	movwf	c:fsr2l
	movf	(prodh),c,w
	addwfc	((c:sort_samples@samples+1)),c,w
	movwf	1+c:fsr2l
	movff	(c:sort_samples@temp),postinc2
	movff	(c:sort_samples@temp+1),postdec2
	goto	l2086
	line	388
	
l350:
	line	383
	
l2086:
	incf	((c:sort_samples@j)),c
	goto	l2088
	
l348:
	
l2088:
		movf	((c:sort_samples@count)),c,w
	subwf	((c:sort_samples@j)),c,w
	btfss	status,0
	goto	u1101
	goto	u1100

u1101:
	goto	l2078
u1100:
	goto	l2090
	
l351:
	line	382
	
l2090:
	incf	((c:sort_samples@i)),c
	goto	l2092
	
l346:
	
l2092:
		movf	((c:sort_samples@count)),c,w
	subwf	((c:sort_samples@i)),c,w
	btfss	status,0
	goto	u1111
	goto	u1110

u1111:
	goto	l2076
u1110:
	goto	l353
	
l352:
	line	391
	
l353:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_sort_samples
	__end_of_sort_samples:
	signat	_sort_samples,8313
	global	_hcsr04_read_once

;; *************** function _hcsr04_read_once *****************
;; Defined at:
;;		line 462 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;  distance_cm     2    8[COMRAM] PTR unsigned int 
;;		 -> hcsr04_read_filtered@reading(2), 
;; Auto vars:     Size  Location     Type
;;  cm              2   12[COMRAM] unsigned int 
;;  pulse_us        2   10[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;;		_timer1_read_us
;;		_timer1_start_us
;;		_timer1_stop
;;		_timer1_timeout
;; This function is called by:
;;		_hcsr04_read_filtered
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2,group=0
	line	462
global __ptext31
__ptext31:
psect	text31
	file	"ourProject.c"
	line	462
	global	__size_of_hcsr04_read_once
	__size_of_hcsr04_read_once	equ	__end_of_hcsr04_read_once-_hcsr04_read_once
	
_hcsr04_read_once:
;incstack = 0
	opt	stack 26
	line	467
	
l2114:
	call	_timer1_start_us	;wreg free
	line	468
	goto	l384
	
l385:
	line	469
	
l2116:
	movlw	high(07530h)
	movwf	((c:timer1_timeout@timeout_us+1)),c
	movlw	low(07530h)
	movwf	((c:timer1_timeout@timeout_us)),c
	call	_timer1_timeout	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u1141
	goto	u1140
u1141:
	goto	l386
u1140:
	line	470
	
l2118:
	call	_timer1_stop	;wreg free
	line	471
	
l2120:
	movlw	(0)&0ffh
	goto	l387
	
l2122:
	goto	l387
	line	472
	
l386:
	line	473
# 473 "ourProject.c"
clrwdt ;# 
psect	text31
	line	474
	
l384:
	line	468
	btfsc	((c:3970)),c,3	;volatile
	goto	u1151
	goto	u1150
u1151:
	goto	l2116
u1150:
	goto	l2124
	
l388:
	line	475
	
l2124:
	call	_timer1_stop	;wreg free
	line	477
	
l2126:
	bcf	((c:3970)),c,0	;volatile
	line	478
	
l2128:
		opt asmopt_push
	opt asmopt_off
	clrwdt
	nop	;2 cycle nop
	opt asmopt_pop

	line	479
	
l2130:
	bsf	((c:3970)),c,0	;volatile
	line	480
	
l2132:
	opt asmopt_push
opt asmopt_off
	movlw	2
u1847:
	clrwdt
decfsz	wreg,f
	bra	u1847
	clrwdt
	nop
opt asmopt_pop

	line	481
	
l2134:
	bcf	((c:3970)),c,0	;volatile
	line	483
	
l2136:
	call	_timer1_start_us	;wreg free
	line	484
	goto	l389
	
l390:
	line	485
	
l2138:
	movlw	high(07530h)
	movwf	((c:timer1_timeout@timeout_us+1)),c
	movlw	low(07530h)
	movwf	((c:timer1_timeout@timeout_us)),c
	call	_timer1_timeout	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u1161
	goto	u1160
u1161:
	goto	l391
u1160:
	line	486
	
l2140:
	call	_timer1_stop	;wreg free
	line	487
	
l2142:
	movlw	(0)&0ffh
	goto	l387
	
l2144:
	goto	l387
	line	488
	
l391:
	line	489
# 489 "ourProject.c"
clrwdt ;# 
psect	text31
	line	490
	
l389:
	line	484
	btfss	((c:3970)),c,3	;volatile
	goto	u1171
	goto	u1170
u1171:
	goto	l2138
u1170:
	goto	l2146
	
l392:
	line	492
	
l2146:
	call	_timer1_start_us	;wreg free
	line	493
	goto	l393
	
l394:
	line	494
	
l2148:
	movlw	high(07530h)
	movwf	((c:timer1_timeout@timeout_us+1)),c
	movlw	low(07530h)
	movwf	((c:timer1_timeout@timeout_us)),c
	call	_timer1_timeout	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u1181
	goto	u1180
u1181:
	goto	l395
u1180:
	line	495
	
l2150:
	call	_timer1_stop	;wreg free
	line	496
	
l2152:
	movlw	(0)&0ffh
	goto	l387
	
l2154:
	goto	l387
	line	497
	
l395:
	line	498
# 498 "ourProject.c"
clrwdt ;# 
psect	text31
	line	499
	
l393:
	line	493
	btfsc	((c:3970)),c,3	;volatile
	goto	u1191
	goto	u1190
u1191:
	goto	l2148
u1190:
	goto	l2156
	
l396:
	line	500
	
l2156:
	call	_timer1_stop	;wreg free
	line	502
	call	_timer1_read_us	;wreg free
	movff	0+?_timer1_read_us,(c:hcsr04_read_once@pulse_us)
	movff	1+?_timer1_read_us,(c:hcsr04_read_once@pulse_us+1)
	line	503
	
l2158:
	movff	(c:hcsr04_read_once@pulse_us),(c:___lwdiv@dividend)
	movff	(c:hcsr04_read_once@pulse_us+1),(c:___lwdiv@dividend+1)
	movlw	high(03Ah)
	movwf	((c:___lwdiv@divisor+1)),c
	movlw	low(03Ah)
	movwf	((c:___lwdiv@divisor)),c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:hcsr04_read_once@cm)
	movff	1+?___lwdiv,(c:hcsr04_read_once@cm+1)
	line	505
	
l2160:
		movf	((c:hcsr04_read_once@cm+1)),c,w
	bnz	u1200
	movlw	3
	subwf	 ((c:hcsr04_read_once@cm)),c,w
	btfss	status,0
	goto	u1201
	goto	u1200

u1201:
	goto	l2164
u1200:
	
l2162:
		movf	((c:hcsr04_read_once@cm+1)),c,w
	bnz	u1210
	movlw	201
	subwf	 ((c:hcsr04_read_once@cm)),c,w
	btfss	status,0
	goto	u1211
	goto	u1210

u1211:
	goto	l2168
u1210:
	goto	l2164
	
l399:
	line	506
	
l2164:
	movlw	(0)&0ffh
	goto	l387
	
l2166:
	goto	l387
	line	507
	
l397:
	line	509
	
l2168:
	movff	(c:hcsr04_read_once@distance_cm),fsr2l
	movff	(c:hcsr04_read_once@distance_cm+1),fsr2h
	movff	(c:hcsr04_read_once@cm),postinc2
	movff	(c:hcsr04_read_once@cm+1),postdec2
	line	510
	
l2170:
	movlw	(01h)&0ffh
	goto	l387
	
l2172:
	line	511
	
l387:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_hcsr04_read_once
	__end_of_hcsr04_read_once:
	signat	_hcsr04_read_once,4217
	global	_timer1_timeout

;; *************** function _timer1_timeout *****************
;; Defined at:
;;		line 338 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;  timeout_us      2    6[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_timer1_read_us
;; This function is called by:
;;		_hcsr04_read_once
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2,group=0
	line	338
global __ptext32
__ptext32:
psect	text32
	file	"ourProject.c"
	line	338
	global	__size_of_timer1_timeout
	__size_of_timer1_timeout	equ	__end_of_timer1_timeout-_timer1_timeout
	
_timer1_timeout:
;incstack = 0
	opt	stack 26
	line	339
	
l1986:
	btfss	((c:3998)),c,0	;volatile
	goto	u981
	goto	u980
u981:
	goto	l1992
u980:
	line	340
	
l1988:
	movlw	(01h)&0ffh
	goto	l330
	
l1990:
	goto	l330
	line	341
	
l329:
	line	343
	
l1992:
	call	_timer1_read_us	;wreg free
		movf	((c:timer1_timeout@timeout_us)),c,w
	subwf	(0+?_timer1_read_us),c,w
	movf	((c:timer1_timeout@timeout_us+1)),c,w
	subwfb	(1+?_timer1_read_us),c,w
	btfss	status,0
	goto	u991
	goto	u990

u991:
	goto	l1998
u990:
	line	344
	
l1994:
	movlw	(01h)&0ffh
	goto	l330
	
l1996:
	goto	l330
	line	345
	
l331:
	line	347
	
l1998:
	movlw	(0)&0ffh
	goto	l330
	
l2000:
	line	348
	
l330:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_timer1_timeout
	__end_of_timer1_timeout:
	signat	_timer1_timeout,4217
	global	_timer1_read_us

;; *************** function _timer1_read_us *****************
;; Defined at:
;;		line 328 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  high_byte       1    5[COMRAM] unsigned char 
;;  low_byte        1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_timer1_timeout
;;		_hcsr04_read_once
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2,group=0
	line	328
global __ptext33
__ptext33:
psect	text33
	file	"ourProject.c"
	line	328
	global	__size_of_timer1_read_us
	__size_of_timer1_read_us	equ	__end_of_timer1_read_us-_timer1_read_us
	
_timer1_read_us:
;incstack = 0
	opt	stack 26
	line	332
	
l1938:
	movff	(c:4046),(c:timer1_read_us@low_byte)	;volatile
	line	333
	movff	(c:4047),(c:timer1_read_us@high_byte)	;volatile
	line	335
	
l1940:
	movf	((c:timer1_read_us@high_byte)),c,w
	movwf	(??_timer1_read_us+0+0)&0ffh,c
	movf	((c:timer1_read_us@low_byte)),c,w
	movwf	((c:?_timer1_read_us)),c
	movff	??_timer1_read_us+0+0,((c:?_timer1_read_us+1))
	goto	l326
	
l1942:
	line	336
	
l326:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_timer1_read_us
	__end_of_timer1_read_us:
	signat	_timer1_read_us,90
	global	_timer1_stop

;; *************** function _timer1_stop *****************
;; Defined at:
;;		line 324 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_hcsr04_read_once
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2,group=0
	line	324
global __ptext34
__ptext34:
psect	text34
	file	"ourProject.c"
	line	324
	global	__size_of_timer1_stop
	__size_of_timer1_stop	equ	__end_of_timer1_stop-_timer1_stop
	
_timer1_stop:
;incstack = 0
	opt	stack 27
	line	325
	
l1984:
	movlw	low(080h)
	movwf	((c:4045)),c	;volatile
	line	326
	
l323:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_timer1_stop
	__end_of_timer1_stop:
	signat	_timer1_stop,89
	global	_timer1_start_us

;; *************** function _timer1_start_us *****************
;; Defined at:
;;		line 316 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_hcsr04_read_once
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2,group=0
	line	316
global __ptext35
__ptext35:
psect	text35
	file	"ourProject.c"
	line	316
	global	__size_of_timer1_start_us
	__size_of_timer1_start_us	equ	__end_of_timer1_start_us-_timer1_start_us
	
_timer1_start_us:
;incstack = 0
	opt	stack 27
	line	317
	
l1980:
	movlw	low(080h)
	movwf	((c:4045)),c	;volatile
	line	318
	
l1982:
	bcf	((c:3998)),c,0	;volatile
	line	319
	movlw	low(0)
	movwf	((c:4047)),c	;volatile
	line	320
	movlw	low(0)
	movwf	((c:4046)),c	;volatile
	line	321
	movlw	low(081h)
	movwf	((c:4045)),c	;volatile
	line	322
	
l320:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_timer1_start_us
	__end_of_timer1_start_us:
	signat	_timer1_start_us,89
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] unsigned int 
;;  divisor         2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[COMRAM] unsigned int 
;;  counter         1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_hcsr04_read_once
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwdiv.c"
	line	8
global __ptext36
__ptext36:
psect	text36
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwdiv.c"
	line	8
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:
;incstack = 0
	opt	stack 29
	line	14
	
l2034:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient)),c
	line	15
	
l2036:
	movf	((c:___lwdiv@divisor)),c,w
iorwf	((c:___lwdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u1051
	goto	u1050

u1051:
	goto	l861
u1050:
	line	16
	
l2038:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter)),c
	line	17
	goto	l2042
	
l863:
	line	18
	
l2040:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor)),c
	rlcf	((c:___lwdiv@divisor+1)),c
	line	19
	incf	((c:___lwdiv@counter)),c
	goto	l2042
	line	20
	
l862:
	line	17
	
l2042:
	
	btfss	((c:___lwdiv@divisor+1)),c,(15)&7
	goto	u1061
	goto	u1060
u1061:
	goto	l2040
u1060:
	goto	l2044
	
l864:
	goto	l2044
	line	21
	
l865:
	line	22
	
l2044:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient)),c
	rlcf	((c:___lwdiv@quotient+1)),c
	line	23
	
l2046:
		movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c,w
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	u1071
	goto	u1070

u1071:
	goto	l2052
u1070:
	line	24
	
l2048:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c

	line	25
	
l2050:
	bsf	(0+(0/8)+(c:___lwdiv@quotient)),c,(0)&7
	goto	l2052
	line	26
	
l866:
	line	27
	
l2052:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1)),c
	rrcf	((c:___lwdiv@divisor)),c
	line	28
	
l2054:
	decfsz	((c:___lwdiv@counter)),c
	
	goto	l2044
	goto	l861
	
l867:
	line	29
	
l861:
	line	30
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	31
	
l868:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_delay_ms_var

;; *************** function _delay_ms_var *****************
;; Defined at:
;;		line 308 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;  ms              2    0[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_execute_part2_radar
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2,group=0
	file	"ourProject.c"
	line	308
global __ptext37
__ptext37:
psect	text37
	file	"ourProject.c"
	line	308
	global	__size_of_delay_ms_var
	__size_of_delay_ms_var	equ	__end_of_delay_ms_var-_delay_ms_var
	
_delay_ms_var:
;incstack = 0
	opt	stack 29
	line	309
	
l2332:
	goto	l314
	
l315:
	line	310
	
l2334:
	opt asmopt_push
opt asmopt_off
	movlw	200
u1857:
	nop2
decfsz	wreg,f
	bra	u1857
opt asmopt_pop

	line	311
	
l2336:
	decf	((c:delay_ms_var@ms)),c
	btfss	status,0
	decf	((c:delay_ms_var@ms+1)),c
	line	312
# 312 "ourProject.c"
clrwdt ;# 
psect	text37
	line	313
	
l314:
	line	309
	movf	((c:delay_ms_var@ms)),c,w
iorwf	((c:delay_ms_var@ms+1)),c,w
	btfss	status,2
	goto	u1461
	goto	u1460

u1461:
	goto	l2334
u1460:
	goto	l317
	
l316:
	line	314
	
l317:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_delay_ms_var
	__end_of_delay_ms_var:
	signat	_delay_ms_var,4217
	global	_buzzer_beep

;; *************** function _buzzer_beep *****************
;; Defined at:
;;		line 393 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;  cycles          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cycles          1    0[COMRAM] unsigned char 
;;  i               1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_soundBuzzer
;;		_execute_part2_radar
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2,group=0
	line	393
global __ptext38
__ptext38:
psect	text38
	file	"ourProject.c"
	line	393
	global	__size_of_buzzer_beep
	__size_of_buzzer_beep	equ	__end_of_buzzer_beep-_buzzer_beep
	
_buzzer_beep:
;incstack = 0
	opt	stack 29
	movwf	((c:buzzer_beep@cycles)),c
	line	396
	
l2234:
	movlw	low(0)
	movwf	((c:buzzer_beep@i)),c
	goto	l2242
	
l357:
	line	397
	bsf	((c:3970)),c,2	;volatile
	line	398
	
l2236:
	opt asmopt_push
opt asmopt_off
	movlw	166
u1867:
decfsz	wreg,f
	bra	u1867
	nop2
opt asmopt_pop

	line	399
	
l2238:
	bcf	((c:3970)),c,2	;volatile
	line	400
	opt asmopt_push
opt asmopt_off
	movlw	166
u1877:
decfsz	wreg,f
	bra	u1877
	nop2
opt asmopt_pop

	line	401
# 401 "ourProject.c"
clrwdt ;# 
psect	text38
	line	396
	
l2240:
	incf	((c:buzzer_beep@i)),c
	goto	l2242
	
l356:
	
l2242:
		movf	((c:buzzer_beep@cycles)),c,w
	subwf	((c:buzzer_beep@i)),c,w
	btfss	status,0
	goto	u1321
	goto	u1320

u1321:
	goto	l357
u1320:
	
l358:
	line	404
	bcf	((c:3970)),c,2	;volatile
	line	405
	
l359:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_buzzer_beep
	__end_of_buzzer_beep:
	signat	_buzzer_beep,4217
	global	_adc_raw_to_mv

;; *************** function _adc_raw_to_mv *****************
;; Defined at:
;;		line 368 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;  raw_value       2   25[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   25[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lldiv
;;		___lmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2,group=0
	line	368
global __ptext39
__ptext39:
psect	text39
	file	"ourProject.c"
	line	368
	global	__size_of_adc_raw_to_mv
	__size_of_adc_raw_to_mv	equ	__end_of_adc_raw_to_mv-_adc_raw_to_mv
	
_adc_raw_to_mv:
;incstack = 0
	opt	stack 29
	line	369
	
l2528:
	movff	(c:adc_raw_to_mv@raw_value),(c:___lmul@multiplier)
	movff	(c:adc_raw_to_mv@raw_value+1),(c:___lmul@multiplier+1)
	clrf	((c:___lmul@multiplier+2)),c
	clrf	((c:___lmul@multiplier+3)),c

	movlw	low(01388h)
	movwf	((c:___lmul@multiplicand)),c
	movlw	high(01388h)
	movwf	((c:___lmul@multiplicand+1)),c
	movlw	low highword(01388h)
	movwf	((c:___lmul@multiplicand+2)),c
	movlw	high highword(01388h)
	movwf	((c:___lmul@multiplicand+3)),c
	call	___lmul	;wreg free
	movlw	0FFh
	addwf	(0+?___lmul),c,w
	movwf	((c:___lldiv@dividend)),c
	movlw	01h
	addwfc	(1+?___lmul),c,w
	movwf	1+((c:___lldiv@dividend)),c
	
	movlw	0
	addwfc	(2+?___lmul),c,w
	movwf	2+((c:___lldiv@dividend)),c
	
	movlw	0
	addwfc	(3+?___lmul),c,w
	movwf	3+((c:___lldiv@dividend)),c
	movlw	low(03FFh)
	movwf	((c:___lldiv@divisor)),c
	movlw	high(03FFh)
	movwf	((c:___lldiv@divisor+1)),c
	movlw	low highword(03FFh)
	movwf	((c:___lldiv@divisor+2)),c
	movlw	high highword(03FFh)
	movwf	((c:___lldiv@divisor+3)),c
	call	___lldiv	;wreg free
	movff	0+?___lldiv,(c:?_adc_raw_to_mv)
	movff	1+?___lldiv,(c:?_adc_raw_to_mv+1)
	goto	l340
	
l2530:
	line	370
	
l340:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_adc_raw_to_mv
	__end_of_adc_raw_to_mv:
	signat	_adc_raw_to_mv,4218
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\Umul32.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[COMRAM] unsigned long 
;;  multiplicand    4    4[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    8[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_adc_raw_to_mv
;;		_lm35_celsius_x10
;;		_servo_angle_to_us
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\Umul32.c"
	line	15
global __ptext40
__ptext40:
psect	text40
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\Umul32.c"
	line	15
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:
;incstack = 0
	opt	stack 28
	line	119
	
l2002:
	movlw	low(0)
	movwf	((c:___lmul@product)),c
	movlw	high(0)
	movwf	((c:___lmul@product+1)),c
	movlw	low highword(0)
	movwf	((c:___lmul@product+2)),c
	movlw	high highword(0)
	movwf	((c:___lmul@product+3)),c
	goto	l2004
	line	120
	
l465:
	line	121
	
l2004:
	
	btfss	((c:___lmul@multiplier)),c,(0)&7
	goto	u1001
	goto	u1000
u1001:
	goto	l2008
u1000:
	line	122
	
l2006:
	movf	((c:___lmul@multiplicand)),c,w
	addwf	((c:___lmul@product)),c
	movf	((c:___lmul@multiplicand+1)),c,w
	addwfc	((c:___lmul@product+1)),c
	movf	((c:___lmul@multiplicand+2)),c,w
	addwfc	((c:___lmul@product+2)),c
	movf	((c:___lmul@multiplicand+3)),c,w
	addwfc	((c:___lmul@product+3)),c
	goto	l2008
	
l466:
	line	123
	
l2008:
	bcf	status,0
	rlcf	((c:___lmul@multiplicand)),c
	rlcf	((c:___lmul@multiplicand+1)),c
	rlcf	((c:___lmul@multiplicand+2)),c
	rlcf	((c:___lmul@multiplicand+3)),c
	line	124
	
l2010:
	bcf	status,0
	rrcf	((c:___lmul@multiplier+3)),c
	rrcf	((c:___lmul@multiplier+2)),c
	rrcf	((c:___lmul@multiplier+1)),c
	rrcf	((c:___lmul@multiplier)),c
	line	125
	movf	((c:___lmul@multiplier)),c,w
iorwf	((c:___lmul@multiplier+1)),c,w
iorwf	((c:___lmul@multiplier+2)),c,w
iorwf	((c:___lmul@multiplier+3)),c,w
	btfss	status,2
	goto	u1011
	goto	u1010

u1011:
	goto	l2004
u1010:
	
l467:
	line	128
	movff	(c:___lmul@product),(c:?___lmul)
	movff	(c:___lmul@product+1),(c:?___lmul+1)
	movff	(c:___lmul@product+2),(c:?___lmul+2)
	movff	(c:___lmul@product+3),(c:?___lmul+3)
	line	129
	
l468:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	_adc_average_raw

;; *************** function _adc_average_raw *****************
;; Defined at:
;;		line 350 in file "ourProject.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;;  samples         1   25[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1   33[COMRAM] unsigned char 
;;  sum             4   28[COMRAM] unsigned long 
;;  i               1   32[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   25[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lldiv
;;		_delay_ms
;;		_readADC_raw
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2,group=0
	file	"ourProject.c"
	line	350
global __ptext41
__ptext41:
psect	text41
	file	"ourProject.c"
	line	350
	global	__size_of_adc_average_raw
	__size_of_adc_average_raw	equ	__end_of_adc_average_raw-_adc_average_raw
	
_adc_average_raw:
;incstack = 0
	opt	stack 29
	movwf	((c:adc_average_raw@channel)),c
	line	354
	
l2506:
	movlw	low(0)
	movwf	((c:adc_average_raw@sum)),c
	movlw	high(0)
	movwf	((c:adc_average_raw@sum+1)),c
	movlw	low highword(0)
	movwf	((c:adc_average_raw@sum+2)),c
	movlw	high highword(0)
	movwf	((c:adc_average_raw@sum+3)),c
	line	357
	
l2508:
	movf	((c:adc_average_raw@channel)),c,w
	
	call	_readADC_raw
	line	358
	
l2510:
	movlw	high(02h)
	movwf	((c:delay_ms@n+1)),c
	movlw	low(02h)
	movwf	((c:delay_ms@n)),c
	call	_delay_ms	;wreg free
	line	360
	
l2512:
	movlw	low(0)
	movwf	((c:adc_average_raw@i)),c
	goto	l2518
	
l335:
	line	361
	
l2514:
	movf	((c:adc_average_raw@channel)),c,w
	
	call	_readADC_raw
	movf	(0+?_readADC_raw),c,w
	addwf	((c:adc_average_raw@sum)),c
	movf	(1+?_readADC_raw),c,w
	addwfc	((c:adc_average_raw@sum+1)),c
	movlw	0
	addwfc	((c:adc_average_raw@sum+2)),c
	movlw	0
	addwfc	((c:adc_average_raw@sum+3)),c

	line	362
	movlw	high(02h)
	movwf	((c:delay_ms@n+1)),c
	movlw	low(02h)
	movwf	((c:delay_ms@n)),c
	call	_delay_ms	;wreg free
	line	360
	
l2516:
	incf	((c:adc_average_raw@i)),c
	goto	l2518
	
l334:
	
l2518:
		movf	((c:adc_average_raw@samples)),c,w
	subwf	((c:adc_average_raw@i)),c,w
	btfss	status,0
	goto	u1651
	goto	u1650

u1651:
	goto	l2514
u1650:
	goto	l2520
	
l336:
	line	365
	
l2520:
	movff	(c:adc_average_raw@samples),??_adc_average_raw+0+0
	bcf	status,0
	rrcf	(??_adc_average_raw+0+0),c

	movf	(??_adc_average_raw+0+0),c,w
	addwf	((c:adc_average_raw@sum)),c,w
	movwf	((c:___lldiv@dividend)),c
	movlw	0
	addwfc	((c:adc_average_raw@sum+1)),c,w
	movwf	1+((c:___lldiv@dividend)),c
	
	movlw	0
	addwfc	((c:adc_average_raw@sum+2)),c,w
	movwf	2+((c:___lldiv@dividend)),c
	
	movlw	0
	addwfc	((c:adc_average_raw@sum+3)),c,w
	movwf	3+((c:___lldiv@dividend)),c
	movf	((c:adc_average_raw@samples)),c,w
	movwf	((c:___lldiv@divisor)),c
	clrf	((c:___lldiv@divisor+1)),c
	clrf	((c:___lldiv@divisor+2)),c
	clrf	((c:___lldiv@divisor+3)),c

	call	___lldiv	;wreg free
	movff	0+?___lldiv,(c:?_adc_average_raw)
	movff	1+?___lldiv,(c:?_adc_average_raw+1)
	goto	l337
	
l2522:
	line	366
	
l337:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_adc_average_raw
	__end_of_adc_average_raw:
	signat	_adc_average_raw,8314
	global	_readADC_raw

;; *************** function _readADC_raw *****************
;; Defined at:
;;		line 15 in file "my_adc.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    6[COMRAM] unsigned char 
;;  raw_value       2    4[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_adc_average_raw
;;		_readADC_voltage
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2,group=0
	file	"my_adc.c"
	line	15
global __ptext42
__ptext42:
psect	text42
	file	"my_adc.c"
	line	15
	global	__size_of_readADC_raw
	__size_of_readADC_raw	equ	__end_of_readADC_raw-_readADC_raw
	
_readADC_raw:
;incstack = 0
	opt	stack 29
	movwf	((c:readADC_raw@channel)),c
	line	19
	
l2216:
	movff	(c:readADC_raw@channel),??_readADC_raw+0+0
	rlncf	(??_readADC_raw+0+0),c
	rlncf	(??_readADC_raw+0+0),c
	movf	((c:4034)),c,w	;volatile
	xorwf	(??_readADC_raw+0+0),c,w
	andlw	not (((1<<4)-1)<<2)
	xorwf	(??_readADC_raw+0+0),c,w
	movwf	((c:4034)),c	;volatile
	line	20
	
l2218:
	bsf	((c:4034)),c,1	;volatile
	line	22
	goto	l81
	
l82:
# 22 "my_adc.c"
clrwdt ;# 
psect	text42
	
l81:
	btfsc	((c:4034)),c,1	;volatile
	goto	u1301
	goto	u1300
u1301:
	goto	l82
u1300:
	goto	l2220
	
l83:
	line	24
	
l2220:
	movf	((c:4036)),c,w	;volatile
	movwf	(??_readADC_raw+0+0)&0ffh,c
	movf	((c:4035)),c,w	;volatile
	movwf	((c:readADC_raw@raw_value)),c
	movff	??_readADC_raw+0+0,((c:readADC_raw@raw_value+1))
	line	25
	
l2222:
	movff	(c:readADC_raw@raw_value),(c:?_readADC_raw)
	movff	(c:readADC_raw@raw_value+1),(c:?_readADC_raw+1)
	goto	l84
	
l2224:
	line	26
	
l84:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_readADC_raw
	__end_of_readADC_raw:
	signat	_readADC_raw,4218
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 12 in file "lcd_x8.c"
;; Parameters:    Size  Location     Type
;;  n               2    0[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  x               2    2[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_send_byte
;;		_lcd_init
;;		_lcd_putc
;;		_main
;;		_adc_average_raw
;;		_hcsr04_read_filtered
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2,group=0
	file	"lcd_x8.c"
	line	12
global __ptext43
__ptext43:
psect	text43
	file	"lcd_x8.c"
	line	12
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:
;incstack = 0
	opt	stack 27
	line	14
	
l1904:
	movlw	high(0)
	movwf	((c:delay_ms@x+1)),c
	movlw	low(0)
	movwf	((c:delay_ms@x)),c
	goto	l9
	
l10:
	line	15
	
l1906:
	opt asmopt_push
opt asmopt_off
	movlw	200
u1887:
	clrwdt
	clrwdt
decfsz	wreg,f
	bra	u1887
opt asmopt_pop

	line	14
	
l1908:
	infsnz	((c:delay_ms@x)),c
	incf	((c:delay_ms@x+1)),c
	
l9:
		movf	((c:delay_ms@x)),c,w
	subwf	((c:delay_ms@n)),c,w
	movf	((c:delay_ms@x+1)),c,w
	subwfb	((c:delay_ms@n+1)),c,w
	btfsc	status,0
	goto	u921
	goto	u920

u921:
	goto	l1906
u920:
	goto	l12
	
l11:
	line	18
	
l12:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4217
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lldiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        4   12[COMRAM] unsigned long 
;;  divisor         4   16[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   20[COMRAM] unsigned long 
;;  counter         1   24[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   12[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        13       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_adc_average_raw
;;		_adc_raw_to_mv
;;		_lm35_celsius_x10
;;		_servo_angle_to_us
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lldiv.c"
	line	8
global __ptext44
__ptext44:
psect	text44
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lldiv.c"
	line	8
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:
;incstack = 0
	opt	stack 28
	line	14
	
l2012:
	movlw	low(0)
	movwf	((c:___lldiv@quotient)),c
	movlw	high(0)
	movwf	((c:___lldiv@quotient+1)),c
	movlw	low highword(0)
	movwf	((c:___lldiv@quotient+2)),c
	movlw	high highword(0)
	movwf	((c:___lldiv@quotient+3)),c
	line	15
	
l2014:
	movf	((c:___lldiv@divisor)),c,w
iorwf	((c:___lldiv@divisor+1)),c,w
iorwf	((c:___lldiv@divisor+2)),c,w
iorwf	((c:___lldiv@divisor+3)),c,w
	btfsc	status,2
	goto	u1021
	goto	u1020

u1021:
	goto	l808
u1020:
	line	16
	
l2016:
	movlw	low(01h)
	movwf	((c:___lldiv@counter)),c
	line	17
	goto	l2020
	
l810:
	line	18
	
l2018:
	bcf	status,0
	rlcf	((c:___lldiv@divisor)),c
	rlcf	((c:___lldiv@divisor+1)),c
	rlcf	((c:___lldiv@divisor+2)),c
	rlcf	((c:___lldiv@divisor+3)),c
	line	19
	incf	((c:___lldiv@counter)),c
	goto	l2020
	line	20
	
l809:
	line	17
	
l2020:
	
	btfss	((c:___lldiv@divisor+3)),c,(31)&7
	goto	u1031
	goto	u1030
u1031:
	goto	l2018
u1030:
	goto	l2022
	
l811:
	goto	l2022
	line	21
	
l812:
	line	22
	
l2022:
	bcf	status,0
	rlcf	((c:___lldiv@quotient)),c
	rlcf	((c:___lldiv@quotient+1)),c
	rlcf	((c:___lldiv@quotient+2)),c
	rlcf	((c:___lldiv@quotient+3)),c
	line	23
	
l2024:
		movf	((c:___lldiv@divisor)),c,w
	subwf	((c:___lldiv@dividend)),c,w
	movf	((c:___lldiv@divisor+1)),c,w
	subwfb	((c:___lldiv@dividend+1)),c,w
	movf	((c:___lldiv@divisor+2)),c,w
	subwfb	((c:___lldiv@dividend+2)),c,w
	movf	((c:___lldiv@divisor+3)),c,w
	subwfb	((c:___lldiv@dividend+3)),c,w
	btfss	status,0
	goto	u1041
	goto	u1040

u1041:
	goto	l2030
u1040:
	line	24
	
l2026:
	movf	((c:___lldiv@divisor)),c,w
	subwf	((c:___lldiv@dividend)),c
	movf	((c:___lldiv@divisor+1)),c,w
	subwfb	((c:___lldiv@dividend+1)),c
	movf	((c:___lldiv@divisor+2)),c,w
	subwfb	((c:___lldiv@dividend+2)),c
	movf	((c:___lldiv@divisor+3)),c,w
	subwfb	((c:___lldiv@dividend+3)),c
	line	25
	
l2028:
	bsf	(0+(0/8)+(c:___lldiv@quotient)),c,(0)&7
	goto	l2030
	line	26
	
l813:
	line	27
	
l2030:
	bcf	status,0
	rrcf	((c:___lldiv@divisor+3)),c
	rrcf	((c:___lldiv@divisor+2)),c
	rrcf	((c:___lldiv@divisor+1)),c
	rrcf	((c:___lldiv@divisor)),c
	line	28
	
l2032:
	decfsz	((c:___lldiv@counter)),c
	
	goto	l2022
	goto	l808
	
l814:
	line	29
	
l808:
	line	30
	movff	(c:___lldiv@quotient),(c:?___lldiv)
	movff	(c:___lldiv@quotient+1),(c:?___lldiv+1)
	movff	(c:___lldiv@quotient+2),(c:?___lldiv+2)
	movff	(c:___lldiv@quotient+3),(c:?___lldiv+3)
	line	31
	
l815:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
