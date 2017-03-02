#ifndef __HARDWARE_PROFILE_H
#define __HARDWARE_PROFILE_H


// Configurarcio del sistema
//
#define CLOCK_SYSTEM_HZ            80000000
#define CLOCK_PERIPHERICAL_HZ      (CLOCK_SYSTEM_HZ / 1)


// Configuracio dels motors de moviment dels eixos X, Y i Z
//
#define MOTOR_X_STP_CHN      3
#define MOTOR_X_STP_POS      3
#define MOTOR_X_DIR_CHN      3
#define MOTOR_X_DIR_POS      4
#define MOTOR_X_ENA_CHN      3
#define MOTOR_X_ENA_POS      1

#define MOTOR_Y_STP_CHN      3
#define MOTOR_Y_STP_POS      1
#define MOTOR_Y_DIR_CHN      3
#define MOTOR_Y_DIR_POS      1
#define MOTOR_Y_ENA_CHN      3
#define MOTOR_Y_ENA_POS      1

#define MOTOR_Z_STP_CHN      3
#define MOTOR_Z_STP_POS      1
#define MOTOR_Z_DIR_CHN      3
#define MOTOR_Z_DIR_POS      1
#define MOTOR_Z_ENA_CHN      3
#define MOTOR_Z_ENA_POS      1

#define NUM_AXIS             3


// Configuracio dels leds indicadors
//
#define LED_BUSY_CHN         3
#define LED_BUSY_POS         1

#define LED_QUEUE_CHN        3
#define LED_QUEUE_POS        2

#define LED_ERROR_CHN        3
#define LED_ERROR_POS        0

#endif