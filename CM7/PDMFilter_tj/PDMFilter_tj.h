/*
 * PDMFilter_tj.h
 *
 *  Created on: Apr 29, 2024
 *      Author: tj
 */

#ifndef PDMFILTER_TJ_H_
#define PDMFILTER_TJ_H_

#define AUDIO_FS					48			//in KHz
#define PDM_DECIMATION				64
#define PDM_GAIN					10
#define FILTER_STAGES				 1

#define PDM_SAMPLES_PER_CHANNEL		(AUDIO_FS * PDM_DECIMATION)

typedef struct {
	unsigned int gain;
} TPDMFilter;

void PDM_Filtertj_Init(TPDMFilter *pdmFilter);
void PDM_Filtertj(unsigned char *pdm, signed short *pcm, TPDMFilter *pdmFilter);

#endif /* PDMFILTER_TJ_H_ */
