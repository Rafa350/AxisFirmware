#ifndef __HARDWARE_PROFILE_H
#define __HARDWARE_PROFILE_H


// -----------------------------------------------------------------------
// CONFIGURACIO DE LA PLACA PINGUINO
// -----------------------------------------------------------------------


// Configuracio del sistema
//
#define CLOCK_SYSTEM_HZ            80000000
#define CLOCK_PERIPHERICAL_HZ      (CLOCK_SYSTEM_HZ / 1)


// -----------------------------------------------------------------------
// LEDS
// -----------------------------------------------------------------------

// Control del pin LED1
// Port RG6
//
#define initLED1() LATGCLR  = 1 << 6; \
                   TRISGCLR = 1 << 6;
#define setLED1()  LATGSET  = 1 << 6;
#define clrLED1()  LATGCLR  = 1 << 6;
#define invLED1()  LATGINV  = 1 << 6;

// Control del pin LED2
// Port RD1
//
#define initLED2() LATDCLR  = 1 << 1; \
                   TRISDCLR = 1 << 1;
#define setLED2()  LATDSET  = 1 << 1;
#define clrLED2()  LATDCLR  = 1 << 1;
#define invLED2()  LATDINV  = 1 << 1;


//------------------------------------------------------------------------
// SWITCHES
// -----------------------------------------------------------------------

// Control del pin SW1
// Port RD0
//
#define initSW1()  TRISDSET = 1 << 0;
#define getSW1()   (PORTD & ~(1 << 0) != 0)


// -----------------------------------------------------------------------
// DISPLAY ILI9341
// -----------------------------------------------------------------------

#define ILI9341_COLORMODE_565
#define ILI9341_INTERFACE_MODE_DIRECT
#define ILI9341_INTERFACE_TYPE_P8

#define FONT_USE_Consolas14pt


// Control del pin RST (Reset) CON1-13
//
#define ILI9341_RSTPort      D
#define ILI9341_RSTPin      11

// Control del pin CS (Chip select) CON1-14
//
#define ILI9341_CSPort       D
#define ILI9341_CSPin        8

// Control del pin RS (Register select) CON1-2
//
#define ILI9341_RSPort       C
#define ILI9341_RSPin        13

// Control del pin CLK (Serial clock) CON1-2
//
//#define ILI9341_CLKPort      C
//#define ILI9341_CLKPin       13

// Control del pin SO (Serial data output) CON1-3
//
//#define ILI9341_SOPort       C
//#define ILI9341_SOPin        14

// Control del pin SI (Serial data input) 
//
//#define ILI9341_SIPort       G
//#define ILI9341_SIPin        9

// Control de pin WR (Write) D7 CON1-15
//
#define ILI9341_WRPort       D
#define ILI9341_WRPin        7

// Control del pin RD (Read) CON1-1
//
#define ILI9341_RDPort       C
#define ILI9341_RDPin        14

// Control del port DATA (I/O paralel port) CON1-3..10
//
#define ILI9341_DATAPort     E


#endif