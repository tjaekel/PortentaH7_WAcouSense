/*
 * PDMFIlter_tj.c
 *
 *  Created on: Apr 29, 2024
 *      Author: tj
 */

/**
 * implement your own PDM Filter, e.g. with ARM DSP and FIR low pass
 * change the defined macro OWN_PDM_FILTER and toggle to use this filter
 *
 */

#ifdef OWN_PDM_FILTER

#include <string.h>

#include "PDMFilter_tj.h"


void PDM_Filtertj_Init(TPDMFilter *pdmFilter)
{
	(void)pdmFilter;
}

void PDM_Filtertj(unsigned char *pdm, signed short *pcm, TPDMFilter *pdmFilter)
{
	(void)pdmFilter;
}
#endif
