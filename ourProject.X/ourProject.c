
// PIC18F4620 Configuration Bit Settings

// 'C' source line config statements

// CONFIG1H
#pragma config OSC = XT         // Oscillator Selection bits (XT oscillator)
#pragma config FCMEN = OFF      // Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor disabled)
#pragma config IESO = OFF       // Internal/External Oscillator Switchover bit (Oscillator Switchover mode disabled)

// CONFIG2L
#pragma config PWRT = OFF       // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = SBORDIS  // Brown-out Reset Enable bits (Brown-out Reset enabled in hardware only (SBOREN is disabled))
#pragma config BORV = 3         // Brown Out Reset Voltage bits (Minimum setting)

// CONFIG2H
#pragma config WDT = ON        // Watchdog Timer Enable bit (WDT enabled)
#pragma config WDTPS = 32768    // Watchdog Timer Postscale Select bits (1:32768)

// CONFIG3H
#pragma config CCP2MX = PORTC   // CCP2 MUX bit (CCP2 input/output is multiplexed with RC1)
#pragma config PBADEN = ON      // PORTB A/D Enable bit (PORTB<4:0> pins are configured as analog input channels on Reset)
#pragma config LPT1OSC = OFF    // Low-Power Timer1 Oscillator Enable bit (Timer1 configured for higher power operation)
#pragma config MCLRE = ON       // MCLR Pin Enable bit (MCLR pin enabled; RE3 input pin disabled)

// CONFIG4L
#pragma config STVREN = ON      // Stack Full/Underflow Reset Enable bit (Stack full/underflow will cause Reset)
#pragma config LVP = OFF        // Single-Supply ICSP Enable bit (Single-Supply ICSP enabled)
#pragma config XINST = OFF      // Extended Instruction Set Enable bit (Instruction set extension and Indexed Addressing mode disabled (Legacy mode))

// CONFIG5L
#pragma config CP0 = OFF        // Code Protection bit (Block 0 (000800-003FFFh) not code-protected)
#pragma config CP1 = OFF        // Code Protection bit (Block 1 (004000-007FFFh) not code-protected)
#pragma config CP2 = OFF        // Code Protection bit (Block 2 (008000-00BFFFh) not code-protected)
#pragma config CP3 = OFF        // Code Protection bit (Block 3 (00C000-00FFFFh) not code-protected)

// CONFIG5H
#pragma config CPB = OFF        // Boot Block Code Protection bit (Boot block (000000-0007FFh) not code-protected)
#pragma config CPD = OFF        // Data EEPROM Code Protection bit (Data EEPROM not code-protected)

// CONFIG6L
#pragma config WRT0 = OFF       // Write Protection bit (Block 0 (000800-003FFFh) not write-protected)
#pragma config WRT1 = OFF       // Write Protection bit (Block 1 (004000-007FFFh) not write-protected)
#pragma config WRT2 = OFF       // Write Protection bit (Block 2 (008000-00BFFFh) not write-protected)
#pragma config WRT3 = OFF       // Write Protection bit (Block 3 (00C000-00FFFFh) not write-protected)

// CONFIG6H
#pragma config WRTC = OFF       // Configuration Register Write Protection bit (Configuration registers (300000-3000FFh) not write-protected)
#pragma config WRTB = OFF       // Boot Block Write Protection bit (Boot Block (000000-0007FFh) not write-protected)
#pragma config WRTD = OFF       // Data EEPROM Write Protection bit (Data EEPROM not write-protected)

// CONFIG7L
#pragma config EBTR0 = OFF      // Table Read Protection bit (Block 0 (000800-003FFFh) not protected from table reads executed in other blocks)
#pragma config EBTR1 = OFF      // Table Read Protection bit (Block 1 (004000-007FFFh) not protected from table reads executed in other blocks)
#pragma config EBTR2 = OFF      // Table Read Protection bit (Block 2 (008000-00BFFFh) not protected from table reads executed in other blocks)
#pragma config EBTR3 = OFF      // Table Read Protection bit (Block 3 (00C000-00FFFFh) not protected from table reads executed in other blocks)

// CONFIG7H
#pragma config EBTRB = OFF      // Boot Block Table Read Protection bit (Boot Block (000000-0007FFh) not protected from table reads executed in other blocks)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#define _XTAL_FREQ 4000000UL// always add this, we will use 4MH crystal.

#include <xc.h>
#include <stdio.h>
#include "my_ser.h"
#include "adc_channels.h"
#include "lcd_x8.h"
#include "my_adc.h"
#include "our_project.h"
#include "my_debounce.h"

#define HCSR04_TRIG LATCbits.LATC0
#define SERVO_SIGNAL LATCbits.LATC1
#define HCSR04_ECHO PORTCbits.RC3
#define BUZZER      LATCbits.LATC2
#define ALERT_LED   LATBbits.LATB2

#define HCSR04_TIMEOUT_US 30000U
#define HCSR04_MIN_CM     3U
#define HCSR04_MAX_CM     60U
#define HCSR04_SAMPLES    3U
#define HCSR04_OUTLIER_CM 8U
#define HCSR04_SAMPLE_GAP_MS 60U
#define HCSR04_SETTLE_MS  70U
#define NEAR_DISTANCE_CM  10U

#define PART1_BEEP_CYCLES 120U
#define PART2_BEEP_CYCLES 80U

#define SERVO_MIN_US      1000U
#define SERVO_MAX_US      2000U
#define SERVO_FRAME_US    20000U
#define SERVO_MAX_ANGLE   180U
#define SERVO_STEP_DEG    5U
#define SERVO_HOLD_FRAMES 8U
#define SERVO_MOVE_MS     (SERVO_HOLD_FRAMES * (SERVO_FRAME_US / 1000U))

#define ADC_AVG_SAMPLES   10U
#define ADC_VREF_MV       5000UL

short counter = 0;
unsigned char TogglePart = 0;
unsigned char ServoAngle = 0;
signed char ServoDirection = 1;

void initPorts(void);
void initTimer1(void);
static void delay_us_var(unsigned int us);
static void delay_ms_var(unsigned int ms);
static void timer1_start_us(void);
static void timer1_stop(void);
static unsigned int timer1_read_us(void);
static unsigned char timer1_timeout(unsigned int timeout_us);
static unsigned int adc_average_raw(unsigned char channel, unsigned char samples);
static unsigned int adc_raw_to_mv(unsigned int raw_value);
static unsigned int lm35_celsius_x10(unsigned int raw_value);
static void sort_samples(unsigned int samples[], unsigned char count);
static void buzzer_beep(unsigned char cycles);
static unsigned int servo_angle_to_us(unsigned char angle);
static void servo_pulse_us(unsigned int pulse_us);
static void servo_set_angle(unsigned char angle);
static void radar_next_angle(void);
static unsigned char hcsr04_read_once(unsigned int *distance_cm);
static unsigned char hcsr04_read_filtered(unsigned int *distance_cm);
static void execute_part2_radar(void);

void soundBuzzer() {
    for (int i = 0; i < 5; i++) {
        BUZZER = 1;
        delay_ms(500);
        BUZZER = 0; 
        delay_ms(500);   
        CLRWDT();         
    }
   //  buzzer_beep(PART1_BEEP_CYCLES);
}

void lcd_clear_line(unsigned char row) {
    unsigned char i;
    
    lcd_gotoxy(0, row);
    for (i = 0; i < LCD_LINE_SIZE; i++) {
        lcd_putc(' ');
    }
    lcd_gotoxy(0, row);
}

void main(void) {
    
    char Buffer[32];
    unsigned int temp_raw;
    unsigned int pot_raw;
    unsigned int temp_x10;
    unsigned int volt_mv;
    unsigned int volt_x10;
    char receivedMsg;
    
    int update_timer = 16;
    
    initPorts(); 
    
    delay_ms(100);  

    lcd_init();
    delay_ms(20);

    lcd_putc('\f');
    delay_ms(5);
    lcd_putc('\f');
    delay_ms(5);

    lcd_gotoxy(0,0);
    lcd_puts("Starting...");
    delay_ms(500);
    
    setupSerial();
    initADC();
    initTimer1();
    delay_ms(100);
    
    Flags.b0 = 0;
    counter = 0;
    
    while(1){
        CLRWDT();
        
        if(PORTBbits.RB0 == 0) { 
            delay_ms(20); 
            if(PORTBbits.RB0 == 0 && Flags.b0 == 0) {
                TogglePart = !TogglePart;
                Flags.b0 = 1; 
                if(TogglePart) {
                    BUZZER = 0;
                    ALERT_LED = 0;
                    SERVO_SIGNAL = 0;
                    HCSR04_TRIG = 0;
                    ServoAngle = 0;
                    ServoDirection = 1;
                    servo_set_angle(ServoAngle);
                }
                else {
                    ALERT_LED = 0;
                    BUZZER = 0;
                    SERVO_SIGNAL = 0;
                }
                
                lcd_putc('\f');
                delay_ms(5);
                update_timer = 16; 
                counter = 0;
            }
        }
        else {
            Flags.b0 = 0;
        }

        if(RCSTAbits.OERR) {
            RCSTAbits.CREN = 0;
            RCSTAbits.CREN = 1;
        }
        
     
        if(TogglePart == 0) {
            
           
            if(update_timer >= 16) {
                temp_raw = adc_average_raw(ADC.CH1, ADC_AVG_SAMPLES);
                temp_x10 = lm35_celsius_x10(temp_raw);
                
                pot_raw = adc_average_raw(ADC.CH0, ADC_AVG_SAMPLES);
                volt_mv = adc_raw_to_mv(pot_raw);
                volt_x10 = (volt_mv + 50U) / 100U;
                
                lcd_gotoxy(0, 0);
                sprintf(Buffer, "T:%3u.%uC V:%u.%uV ",
                        temp_x10 / 10U,
                        temp_x10 % 10U,
                        volt_x10 / 10U,
                        volt_x10 % 10U);
                lcd_puts(Buffer);
                lcd_gotoxy(0, 1);           
                update_timer = 0; 
            }

           
            if(is_byte_available()){ 
                receivedMsg = read_byte_no_lib();
                send_byte_no_lib(receivedMsg);
                
                if(receivedMsg == 'B') { 
                    soundBuzzer();
                } 
                
                    
                    if(counter >= LCD_LINE_SIZE){
                        lcd_clear_line(1); 
                        counter = 0;
                    }
                    
                    lcd_gotoxy(counter, 1); 
                    lcd_putc(receivedMsg);
                    counter++;
                
            }
        }
        else {
            
            if(update_timer >= 2) {
                execute_part2_radar();
                update_timer = 0;
            }
        }
        
        update_timer++; 
        delay_ms(50); 
    }
    
    return;
}

void initTimer1(void) {
    T1CON = 0x80;       // RD16 on, Fosc/4 clock, 1:1 prescaler, timer off
    PIR1bits.TMR1IF = 0;
    TMR1H = 0;
    TMR1L = 0;
}

static void delay_us_var(unsigned int us) {
    while(us >= 100U) {
        __delay_us(100);
        us -= 100U;
        CLRWDT();
    }
    
    while(us >= 10U) {
        __delay_us(10);
        us -= 10U;
        CLRWDT();
    }
    
    while(us > 0U) {
        __delay_us(1);
        us--;
        CLRWDT();
    }
}

static void delay_ms_var(unsigned int ms) {
    while(ms > 0U) {
        __delay_ms(1);
        ms--;
        CLRWDT();
    }
}

static void timer1_start_us(void) {
    T1CON = 0x80;
    PIR1bits.TMR1IF = 0;
    TMR1H = 0;
    TMR1L = 0;
    T1CON = 0x81;
}

static void timer1_stop(void) {
    T1CON = 0x80;
}

static unsigned int timer1_read_us(void) {
    unsigned char low_byte;
    unsigned char high_byte;
    
    low_byte = TMR1L;
    high_byte = TMR1H;
    
    return ((unsigned int)high_byte << 8) | low_byte;
}

static unsigned char timer1_timeout(unsigned int timeout_us) {
    if(PIR1bits.TMR1IF) {
        return 1;
    }
    
    if(timer1_read_us() >= timeout_us) {
        return 1;
    }
    
    return 0;
}

static unsigned int adc_average_raw(unsigned char channel, unsigned char samples) {
    unsigned long sum;
    unsigned char i;
    
    sum = 0;
    
    // First conversion after channel switch is discarded for better stability.
    readADC_raw(channel);
    delay_ms(2);
    
    for(i = 0; i < samples; i++) {
        sum += (unsigned int)readADC_raw(channel);
        delay_ms(2);
    }
    
    return (unsigned int)((sum + (samples / 2U)) / samples);
}

static unsigned int adc_raw_to_mv(unsigned int raw_value) {
    return (unsigned int)((((unsigned long)raw_value * ADC_VREF_MV) + 511UL) / 1023UL);
}

static unsigned int lm35_celsius_x10(unsigned int raw_value) {
    // LM35 gives 10 mV per degree C. This returns Celsius * 10.
    return (unsigned int)((((unsigned long)raw_value * ADC_VREF_MV) + 511UL) / 1023UL);
}

static void sort_samples(unsigned int samples[], unsigned char count) {
    unsigned char i;
    unsigned char j;
    unsigned int temp;
    
    for(i = 0; i < count; i++) {
        for(j = i + 1; j < count; j++) {
            if(samples[j] < samples[i]) {
                temp = samples[i];
                samples[i] = samples[j];
                samples[j] = temp;
            }
        }
    }
}

static void buzzer_beep(unsigned char cycles) {
    unsigned char i;
    
    for(i = 0; i < cycles; i++) {
        BUZZER = 1;
        __delay_us(500);
        BUZZER = 0;
        __delay_us(500);
        CLRWDT();
    }
    
    BUZZER = 0;
}

static unsigned int servo_angle_to_us(unsigned char angle) {
    unsigned long pulse_us;
    
    if(angle > SERVO_MAX_ANGLE) {
        angle = SERVO_MAX_ANGLE;
    }
    
    pulse_us = SERVO_MIN_US;
    pulse_us += ((unsigned long)angle * (SERVO_MAX_US - SERVO_MIN_US)) / SERVO_MAX_ANGLE;
    
    return (unsigned int)pulse_us;
}

static void servo_pulse_us(unsigned int pulse_us) {
    SERVO_SIGNAL = 1;
    delay_us_var(pulse_us);
    SERVO_SIGNAL = 0;
    
    if(pulse_us < SERVO_FRAME_US) {
        delay_us_var(SERVO_FRAME_US - pulse_us);
    }
}

static void servo_set_angle(unsigned char angle) {
    unsigned char i;
    unsigned int pulse_us;
    
    pulse_us = servo_angle_to_us(angle);
    
    for(i = 0; i < SERVO_HOLD_FRAMES; i++) {
        servo_pulse_us(pulse_us);
    }
}

static void radar_next_angle(void) {
    if(ServoDirection > 0) {
        if(ServoAngle >= (SERVO_MAX_ANGLE - SERVO_STEP_DEG)) {
            ServoAngle = SERVO_MAX_ANGLE;
            ServoDirection = -1;
        }
        else {
            ServoAngle += SERVO_STEP_DEG;
        }
    }
    else {
        if(ServoAngle <= SERVO_STEP_DEG) {
            ServoAngle = 0;
            ServoDirection = 1;
        }
        else {
            ServoAngle -= SERVO_STEP_DEG;
        }
    }
}

static unsigned char hcsr04_read_once(unsigned int *distance_cm) {
    unsigned int pulse_us;
    unsigned int cm;
    
    // Clear any stale high level on ECHO before sending a new trigger.
    timer1_start_us();
    while(HCSR04_ECHO) {
        if(timer1_timeout(HCSR04_TIMEOUT_US)) {
            timer1_stop();
            return 0;
        }
        CLRWDT();
    }
    timer1_stop();
    
    HCSR04_TRIG = 0;
    delay_us_var(2);
    HCSR04_TRIG = 1;
    delay_us_var(10);
    HCSR04_TRIG = 0;
    
    timer1_start_us();
    while(!HCSR04_ECHO) {
        if(timer1_timeout(HCSR04_TIMEOUT_US)) {
            timer1_stop();
            return 0;
        }
        CLRWDT();
    }
    
    timer1_start_us();
    while(HCSR04_ECHO) {
        if(timer1_timeout(HCSR04_TIMEOUT_US)) {
            timer1_stop();
            return 0;
        }
        CLRWDT();
    }
    timer1_stop();
    
    pulse_us = timer1_read_us();
    cm = (pulse_us + 29U) / 58U;
    
    if(cm < HCSR04_MIN_CM || cm > HCSR04_MAX_CM) {
        return 0;
    }
    
    *distance_cm = cm;
    return 1;
}

static unsigned char hcsr04_read_filtered(unsigned int *distance_cm) {
    unsigned int samples[3];
    unsigned int reading;
    unsigned int lower_delta;
    unsigned int upper_delta;
    unsigned char valid;
    unsigned char i;
    
    valid = 0;
    
    for(i = 0; i < HCSR04_SAMPLES; i++) {
        if(hcsr04_read_once(&reading)) {
            samples[valid] = reading;
            valid++;
        }
        delay_ms_var(HCSR04_SAMPLE_GAP_MS);
    }
    
    if(valid < HCSR04_SAMPLES) {
        if(valid == 2) {
            sort_samples(samples, valid);
            if((samples[1] - samples[0]) <= HCSR04_OUTLIER_CM) {
                *distance_cm = (samples[0] + samples[1] + 1U) / 2U;
                return 1;
            }
        }
        
        return 0;
    }
    
    sort_samples(samples, valid);
    
    if((samples[2] - samples[0]) > HCSR04_OUTLIER_CM) {
        lower_delta = samples[1] - samples[0];
        upper_delta = samples[2] - samples[1];
        
        if(lower_delta <= HCSR04_OUTLIER_CM && lower_delta <= upper_delta) {
            *distance_cm = (samples[0] + samples[1] + 1U) / 2U;
            return 1;
        }
        
        if(upper_delta <= HCSR04_OUTLIER_CM) {
            *distance_cm = (samples[1] + samples[2] + 1U) / 2U;
            return 1;
        }
        
        return 0;
    }
    
    *distance_cm = samples[1];
    return 1;
}

static void execute_part2_radar(void) {
    char Buffer[17];
    char SerialBuffer[24];
    unsigned int distance_cm;
    unsigned char angle_now;
    
    angle_now = ServoAngle;
    sprintf(SerialBuffer, "M,%u,%u\r\n", angle_now, (unsigned int)SERVO_MOVE_MS);
    send_string_no_lib(SerialBuffer);
    
    servo_set_angle(angle_now);
    delay_ms_var(HCSR04_SETTLE_MS);
    
    lcd_gotoxy(0, 0);
    if(hcsr04_read_filtered(&distance_cm)) {
        sprintf(Buffer, "A:%3u D:%3u cm  ", angle_now, distance_cm);
        lcd_puts(Buffer);
        sprintf(SerialBuffer, "%u,%u\r\n", angle_now, distance_cm);
        send_string_no_lib(SerialBuffer);
        
        if(distance_cm <= NEAR_DISTANCE_CM) {
            ALERT_LED = 1;
            lcd_gotoxy(0, 1);
            lcd_puts("Near Alert      ");
            buzzer_beep(PART2_BEEP_CYCLES);
            delay_ms_var(120);
        }
        else {
            ALERT_LED = 0;
            BUZZER = 0;
            lcd_gotoxy(0, 1);
            lcd_puts("Radar Sweep     ");
        }
    }
    else {
        ALERT_LED = 0;
        BUZZER = 0;
        sprintf(Buffer, "A:%3u D:---     ", angle_now);
        lcd_puts(Buffer);
        sprintf(SerialBuffer, "%u,0\r\n", angle_now);
        send_string_no_lib(SerialBuffer);
        lcd_gotoxy(0, 1);
        lcd_puts("Radar Sweep     ");
    }
    
    radar_next_angle();
}


void initPorts(void){
     
    INTCON = 0;
    INTCON2 = 0;
    
    CMCON = 0x07;// Disable comparators on RA pins for stable ADC readings.
    CVRCON = 0x00;// Disable comparator voltage reference.
    ADCON1 = 0x0D;// AN0 and AN1 analog, the rest digital including RB0.
    LATA  = LATB = LATC = LATD = LATE = 0;// put all latches to 0.
    TRISA = 0xFF;// PORT A is input
    TRISB = 0xFB;// RB0 button input, RB2 LED output.
    TRISD = TRISE = 0;// PORT D and PORT E are outputs
    TRISC = 0x88;// RC7 RX and RC3 ECHO inputs. RC0 TRIG, RC1 servo, RC2 buzzer outputs.
    HCSR04_TRIG = 0;
    SERVO_SIGNAL = 0;
    ALERT_LED = 0;
    BUZZER = 0;
}
