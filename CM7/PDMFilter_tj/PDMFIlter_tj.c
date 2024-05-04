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

#include "arm_math.h"
#include "PDMFilter_tj.h"

#define TEST_LENGTH_SAMPLES  320
#define SNR_THRESHOLD_F32    140.0f
#define BLOCK_SIZE			 (PDM_DECIMATION * AUDIO_FS)
#define NUM_TAPS             171
#define NUM_TAPS2			 9

#define POST_FILTER

static float32_t firStateF32l[BLOCK_SIZE + NUM_TAPS - 1];
static float32_t firStateF32r[BLOCK_SIZE + NUM_TAPS - 1];
static float32_t firStateF32_2l[AUDIO_FS + NUM_TAPS - 1];
static float32_t firStateF32_2r[AUDIO_FS + NUM_TAPS - 1];

static unsigned long sV1 = 1;
static unsigned long sV2 = 27520;

const float32_t firCoeffs32[NUM_TAPS] = {
		  0.0010363761260485773,
		  0.000378410981560541,
		  0.0004403209852542,
		  0.0005028932021157156,
		  0.000565682384191715,
		  0.0006260671868078069,
		  0.0006833881044276458,
		  0.0007355171872518525,
		  0.0007803778663352898,
		  0.0008158863271518831,
		  0.0008402666627222812,
		  0.0008510682336410917,
		  0.0008458709544484754,
		  0.0008224356650434662,
		  0.0007787617578172563,
		  0.0007125789304109778,
		  0.0006217204259189683,
		  0.0005042673284619037,
		  0.0003586393955158789,
		  0.00018337548491846636,
		  -0.000022662113689784753,
		  -0.00026028139514158954,
		  -0.0005299216510352285,
		  -0.0008316815013780163,
		  -0.001165099643072491,
		  -0.001529184091466425,
		  -0.001922469430987972,
		  -0.002343055816191348,
		  -0.002788440812724792,
		  -0.0032555232701274505,
		  -0.0037406382474562266,
		  -0.004239594410611611,
		  -0.00474762028741031,
		  -0.0052594458957560515,
		  -0.0057693592851689145,
		  -0.006271218588988214,
		  -0.006758435540946356,
		  -0.007224091498837016,
		  -0.007661027620737066,
		  -0.00806187738818134,
		  -0.008419104469677157,
		  -0.008725140562951211,
		  -0.008972485839155922,
		  -0.009153750577710182,
		  -0.009261737962934127,
		  -0.00928959515153696,
		  -0.009230915304582588,
		  -0.009079779320786161,
		  -0.008830864324630977,
		  -0.008479578970164709,
		  -0.008022137192167038,
		  -0.0074555707770877395,
		  -0.006777828904692463,
		  -0.0059878565949643735,
		  -0.005085615922083389,
		  -0.004072077298638436,
		  -0.0029493497938525414,
		  -0.0017207383008723475,
		  -0.0003907146589439065,
		  0.0010351752086361716,
		  0.002550254506154308,
		  0.00414677567984354,
		  0.005816005549929689,
		  0.007548335467460822,
		  0.0093332095147205,
		  0.011159265153002458,
		  0.01301444171485156,
		  0.014886089188745266,
		  0.016760887572226723,
		  0.018625192160607144,
		  0.020465292404913002,
		  0.022267580652762346,
		  0.02401829810980409,
		  0.025703830199362527,
		  0.027310791864290185,
		  0.028826274741799687,
		  0.03023774862153362,
		  0.03153395196727364,
		  0.03270469534904709,
		  0.033740542100111307,
		  0.03463180914532151,
		  0.03537086815050586,
		  0.03595223300593787,
		  0.03637278097108793,
		  0.036624417909268174,
		  0.036709692696746565,
		  0.036624417909268174,
		  0.03637278097108793,
		  0.03595223300593787,
		  0.03537086815050586,
		  0.03463180914532151,
		  0.033740542100111307,
		  0.03270469534904709,
		  0.03153395196727364,
		  0.03023774862153362,
		  0.028826274741799687,
		  0.027310791864290185,
		  0.025703830199362527,
		  0.02401829810980409,
		  0.022267580652762346,
		  0.020465292404913002,
		  0.018625192160607144,
		  0.016760887572226723,
		  0.014886089188745266,
		  0.01301444171485156,
		  0.011159265153002458,
		  0.0093332095147205,
		  0.007548335467460822,
		  0.005816005549929689,
		  0.00414677567984354,
		  0.002550254506154308,
		  0.0010351752086361716,
		  -0.0003907146589439065,
		  -0.0017207383008723475,
		  -0.0029493497938525414,
		  -0.004072077298638436,
		  -0.005085615922083389,
		  -0.0059878565949643735,
		  -0.006777828904692463,
		  -0.0074555707770877395,
		  -0.008022137192167038,
		  -0.008479578970164709,
		  -0.008830864324630977,
		  -0.009079779320786161,
		  -0.009230915304582588,
		  -0.00928959515153696,
		  -0.009261737962934127,
		  -0.009153750577710182,
		  -0.008972485839155922,
		  -0.008725140562951211,
		  -0.008419104469677157,
		  -0.00806187738818134,
		  -0.007661027620737066,
		  -0.007224091498837016,
		  -0.006758435540946356,
		  -0.006271218588988214,
		  -0.0057693592851689145,
		  -0.0052594458957560515,
		  -0.00474762028741031,
		  -0.004239594410611611,
		  -0.0037406382474562266,
		  -0.0032555232701274505,
		  -0.002788440812724792,
		  -0.002343055816191348,
		  -0.001922469430987972,
		  -0.001529184091466425,
		  -0.001165099643072491,
		  -0.0008316815013780163,
		  -0.0005299216510352285,
		  -0.00026028139514158954,
		  -0.000022662113689784753,
		  0.00018337548491846636,
		  0.0003586393955158789,
		  0.0005042673284619037,
		  0.0006217204259189683,
		  0.0007125789304109778,
		  0.0007787617578172563,
		  0.0008224356650434662,
		  0.0008458709544484754,
		  0.0008510682336410917,
		  0.0008402666627222812,
		  0.0008158863271518831,
		  0.0007803778663352898,
		  0.0007355171872518525,
		  0.0006833881044276458,
		  0.0006260671868078069,
		  0.000565682384191715,
		  0.0005028932021157156,
		  0.0004403209852542,
		  0.000378410981560541,
		  0.0010363761260485773
};

const float32_t firCoeffs32_2[NUM_TAPS] = {
		  0.025328879411225184,
		  0.08144990063873608,
		  0.15532075761860328,
		  0.22586979249248923,
		  0.25159583511726424,
		  0.22586979249248923,
		  0.15532075761860328,
		  0.08144990063873608,
		  0.025328879411225184
};

arm_fir_decimate_instance_f32 Sl;
arm_fir_decimate_instance_f32 Sr;
arm_fir_instance_f32 S2l;
arm_fir_instance_f32 S2r;

static float32_t pdmFin[BLOCK_SIZE];
static float32_t pcmFout[AUDIO_FS];
static float32_t pcmFout_2[AUDIO_FS];

static double lastIn[2]  = {0.0, 0.0};
static double lastOut[2] = {0.0, 0.0};

void PDM_PostFilter_Init(TPDMFilter *pdmFilter)
{
	(void)pdmFilter;

	arm_fir_init_f32(&S2l, NUM_TAPS2, (float32_t *)&firCoeffs32_2[0], &firStateF32_2l[0], AUDIO_FS);
	arm_fir_init_f32(&S2r, NUM_TAPS2, (float32_t *)&firCoeffs32_2[0], &firStateF32_2r[0], AUDIO_FS);
}

void PDM_Filtertj_Init(TPDMFilter *pdmFilter)
{
	(void)pdmFilter;

	 ///arm_fir_init_f32(&S, NUM_TAPS, (float32_t *)&firCoeffs32[0], &firStateF32[0], blockSize);
	arm_fir_decimate_init_f32(&Sl, NUM_TAPS, PDM_DECIMATION, (float32_t *)&firCoeffs32[0], &firStateF32l[0], BLOCK_SIZE);
	arm_fir_decimate_init_f32(&Sr, NUM_TAPS, PDM_DECIMATION, (float32_t *)&firCoeffs32[0], &firStateF32r[0], BLOCK_SIZE);
	PDM_PostFilter_Init(NULL);
}

/**
 * expand the PDM bit array (bits in bytes) to a byte array with single bits
 */
void ConvertPDM(unsigned char *in, float32_t *out)
{
	int i, k;
	k = 0;
	float32_t f;
	for (i = 0; i < (PDM_DECIMATION * AUDIO_FS); i++)
	{
		if ((*in >> k) & 1)
			f = +0.5;
		else
			f = -0.5;
		*out++ = f;
		k++;
		if (k >= 8)
		{
			k = 0;
			in += NUMBER_CHANNELS;
		}
	}
}

void ConvertPCM(float32_t *in, signed short *out)
{
	int i;
	for (i = 0; i < AUDIO_FS; i++)
	{
		*out = (signed short)(*in++ * (32767.0*(sV1 + sV2/100000)));		//trim for same reference volume
		out += 2;
	}
}

/**
  * @fn void DC_BlockerSample(int ch, int32_t *inOutPtr)
  * @brief  remove DC from one sample on one channel
  * @param  ch: the channel mumber
  * @param  inOutPtr: the pointer to the (32bit) sample
  * @retval None
  */
void DC_BlockerSample(signed short *inOutPtr, int ch)
{
//define float -> int16_t conversion with rounding handling,
//make sure not to use LIB function round which is different
//ATT: use suffix f for 0.5, otherwise converted to double internally
#define ROUND(x) ((x)>=0?(signed short)((x)+0.5):(signed short)((x)-0.5))
#define ALPHA 0.9999			//the factor - the larger the faster to reach DC free signal: 0.999 results in -3dB @ 10Hz

	register double tmp, res;

	tmp = (double)*inOutPtr;

	res = tmp - lastIn[ch] + ALPHA * lastOut[ch];
	lastIn[ch]  = tmp;
	lastOut[ch] = res;

	*inOutPtr = ROUND(res);
}

void PCM_DC_Blocker(signed short *inOutPtr, int ch)
{
	int i;
	for (i = 0; i < AUDIO_FS; i++)
	{
		DC_BlockerSample(inOutPtr, ch);
		inOutPtr += 2;
	}
}

/* one channel post LP filter, after PDM2PCM, assuming two channels are configured */
void PDM_PostFilter(signed short *inout, TPDMFilter *pdmFilter)
{
	int i;
	signed short *inoutX = inout;
	//use the buffers here
	for (i = 0; i < AUDIO_FS; i++)
	{
		pcmFout[i] = (float32_t)(*inout) / (32768.0/sV1);
		inout += 2;
	}
	arm_fir_f32(&S2l, pcmFout, pcmFout_2, AUDIO_FS);
	inout = inoutX;
	for (i = 0; i < AUDIO_FS; i++)
	{
		*inout = (signed short)(pcmFout_2[i] * sV2);
		inout += 2;
	}
	inout = inoutX + 1;
	for (i = 0; i < AUDIO_FS; i++)
	{
		pcmFout[i] = (float32_t)(*inout) / (32768.0/sV1);
		inout += 2;
	}
	arm_fir_f32(&S2r, pcmFout, pcmFout_2, AUDIO_FS);
	inout = inoutX + 1;
	for (i = 0; i < AUDIO_FS; i++)
	{
		*inout = (signed short)(pcmFout_2[i] * sV2);
		inout += 2;
	}

	PCM_DC_Blocker(inoutX, 0);
	PCM_DC_Blocker(inoutX + 1, 1);
}

void PDM_FilterSet(unsigned long v1, unsigned long v2)
{
	if (sV1 == 0)
		sV1 = 1;
	sV1 = v1;
	sV2 = v2;
}

/* ---------------------------------------------------------------------------- */

void PDM_Filtertj(unsigned char *pdm, signed short *pcm, TPDMFilter *pdmFilter)
{
	(void)pdmFilter;

	ConvertPDM(pdm, pdmFin);
	arm_fir_decimate_f32(&Sl, pdmFin, pcmFout, BLOCK_SIZE);
#ifdef POST_FILTER
	arm_fir_f32(&S2l, pcmFout, pcmFout_2, AUDIO_FS);
	ConvertPCM(pcmFout_2, pcm);
#else
	ConvertPCM(pcmFout, pcm);
#endif
	//2nd channel
	ConvertPDM(pdm+1, pdmFin);
	arm_fir_decimate_f32(&Sr, pdmFin, pcmFout, BLOCK_SIZE);
#ifdef POST_FILTER
	arm_fir_f32(&S2r, pcmFout, pcmFout_2, AUDIO_FS);
	ConvertPCM(pcmFout_2, pcm+1);
#else
	ConvertPCM(pcmFout, pcm+1);
#endif
}
#endif
