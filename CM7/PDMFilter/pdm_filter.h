/**
  ******************************************************************************
  * @file    pdm_filter.h
  * @author  MCD Application Team
  * @version V1.1.0
  * @date    28-October-2011
  * @brief   Header file for PDM audio software decoding Library.
  *          This Library is used to decode and reconstruct the audio signal
  *          produced by MP45DT02 MEMS microphone from STMicroelectronics.
  *          For more details about this Library, please refer to document
  *          "PDM audio software decoding on STM32 microcontrollers (AN3998)".  
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************  
  */ 
  
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __PDM_FILTER_H
#define __PDM_FILTER_H

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include <stdint.h>

/* Exported types ------------------------------------------------------------*/
typedef struct {
	uint16_t Fs; //0
	float LP_HZ; //4
	float HP_HZ; //0xc
	uint16_t In_MicChannels; //0x10
	uint16_t Out_MicChannels; //0x14
	char InternalFilter[34]; //0x18
} PDMFilter2_InitStruct;

/* Exported constants --------------------------------------------------------*/
/* Exported macros -----------------------------------------------------------*/
#define HTONS(A)  ((((u16)(A) & 0xff00) >> 8) | \
                   (((u16)(A) & 0x00ff) << 8))

/* Exported functions ------------------------------------------------------- */ 
void PDM_Filter2_Init(PDMFilter2_InitStruct * Filter);

//int32_t PDM_Filter2_64_MSB(uint8_t* data, uint16_t* dataOut, uint16_t MicGain,  PDMFilter2_InitStruct * Filter);
//int32_t PDM_Filter2_80_MSB(uint8_t* data, uint16_t* dataOut, uint16_t MicGain,  PDMFilter2_InitStruct * Filter);
int32_t PDM_Filter2_64_LSB(uint8_t* data, uint16_t* dataOut, uint16_t MicGain,  PDMFilter2_InitStruct * Filter);
//int32_t PDM_Filter2_80_LSB(uint8_t* data, uint16_t* dataOut, uint16_t MicGain,  PDMFilter2_InitStruct * Filter);

#ifdef __cplusplus
}
#endif

#endif /* __PDM_FILTER_H */

/*******************(C)COPYRIGHT 2011 STMicroelectronics *****END OF FILE******/
