/**
 * main.h
 *
 *  Created on: Jul 27, 2022
 *      Author: Torsten Jaekel
 */

#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

#include "stm32h747xx.h"
#include "stm32h7xx_hal.h"

#include "debug_sys.h"
#include "syserr.h"
#include "VCP_UART.h"

#define ENABLE_DCACHE		/* no real difference - MPU disables all the caches? */

/**
 * macro for Version Info Welcome message
 */
#define STR_CHIP			"STM32H747"
#define STR_FW_VERSION		"V1.00"
#define STR_FW_COMPLETE		"\r\n\r\n**** Portenta H7 WAcouSense " STR_FW_VERSION " ****\r\n--------------------------------------\r\n"

#define PRINT_VERSION		UART_Send((uint8_t *)STR_FW_COMPLETE, strlen(STR_FW_COMPLETE), UART_OUT)
#define PROJECT_NAME		"Portenta H7 WAcouSense"

////void Error_Handler(void);

#define	UART_STR_SIZE		4096
extern unsigned char strRxBuf[UART_STR_SIZE];

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
