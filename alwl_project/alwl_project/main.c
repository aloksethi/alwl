/*
* alwl_project.c
*
* Created: 19.1.2020 19.09.50
* Author : asethi
*/

#include <stdbool.h>
#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include "ws2812.h"
#include "light_ws2812.h"


#define MAXPIX			68

#define NEC_BITS          32
#define NEC_HDR_MARK    9000
#define NEC_HDR_SPACE   4500
#define NEC_BIT_MARK     560
#define NEC_ONE_SPACE   1690
#define NEC_ZERO_SPACE   560
#define NEC_RPT_SPACE   2250

#define IR_INREG		PIND  /*input register*/
#define IR_DDRREG		DDRD  /*direction register*/
#define IR_BIT			0
#define IR_PORTREG		PORTD


#define TEST_LED_PORTREG		PORTD
#define TEST_LED_DDRREG			DDRD
#define TEST_LED_PIN			5

#define RGB_LED_PORTREG		PORTC
#define RGB_LED_DDRREG		DDRC
#define RGB_LED_PIN			0

// the maximum pulse we'll listen for - 67 milliseconds
#define MAXPULSE		67000
#define RESOLUTION		100
#define NUM_RAWBUF		70
#define MARK_EXCESS		0

// Upper and Lower percentage tolerances in measurements
#define TOLERANCE       25
#define LTOL            (1.0 - (TOLERANCE/100.))
#define UTOL            (1.0 + (TOLERANCE/100.))

// Minimum gap between IR transmissions
#define _GAP            5000
#define GAP_TICKS       (_GAP/RESOLUTION)

#define TICKS_LOW(us)   ((int)(((us)*LTOL/RESOLUTION)))
#define TICKS_HIGH(us)  ((int)(((us)*UTOL/RESOLUTION + 1)))

//------------------------------------------------------------------------------
// IR detector output is active low
//
#define MARK   0
#define SPACE  1
// Decoded value for NEC when a repeat code is received
//
#define REPEAT_CODE 0xFF
#define GARBAGE_CODE	0


typedef struct
{
	uint8_t  rawlen;				// counter of entries in rawbuf
	uint8_t  rawbuf[NUM_RAWBUF];	// raw data
} irparams_t;

///////////////////////////////////////////////////////////////
//				globals
///////////////////////////////////////////////////////////////
struct cRGBW g_led[MAXPIX];
#define MAX_DATA (MAXPULSE/RESOLUTION)
unsigned char gdata[MAX_DATA];
volatile unsigned int gflag = 0;
uint8_t cur_ir_code;
uint8_t prev_ir_code = 0;


uint8_t  MATCH       (int measured, int desired) ;

void parse_raw_data(unsigned char * dptr, irparams_t *  p_irparams);
void capture_raw(unsigned char * dptr);
uint8_t find_command(irparams_t *  p_irparams);

void setup_pins(void)
{
	TEST_LED_DDRREG = TEST_LED_DDRREG | (_BV(TEST_LED_PIN));
	IR_PORTREG = IR_PORTREG |  (_BV(IR_BIT));
	RGB_LED_DDRREG = RGB_LED_DDRREG |_BV(RGB_LED_PIN);
	return;
}
ISR(PCINT2_vect)
{
	cli();
	gflag = 1;
	//PCMSK2 = 0x0;
	PCIFR = 0x4;
}

void set_led(uint8_t red, uint8_t green, uint8_t blue, uint8_t white)
{
	int i;
	for (i=0;i<MAXPIX;i++)
	{
		g_led[i].r=red;
		g_led[i].g=green;
		g_led[i].b=blue;
		g_led[i].w=white;    // white
	}
	ws2812_setleds_rgbw(g_led,MAXPIX);
	return;
}
int main(void)
{
	irparams_t iparams;

	//	CLKPR = 0x80;
	//	CLKPR = 0x0;
	//PD5
	

	setup_pins();
	set_led(0,0,0,0);

	PCMSK2 = 0x1;
	PCICR = 0x4;
	sei();
	while(1)
	{
		if (gflag)
		{
			gflag = 0;
			capture_raw(&gdata[0]);
			parse_raw_data(&gdata[0], &iparams);
			cur_ir_code = find_command(&iparams);
			
			if (REPEAT_CODE == cur_ir_code)
				cur_ir_code = prev_ir_code;
				
			switch (cur_ir_code)
			{
				case 0x45: //press 1
				{
					set_led(0,0,0,50);
					break;
				}
				case 0x46:	//press 2
				{
					set_led(0,0,0,140);
					break;
				}
				case 0x47:		//press 3
				{
					set_led(0,0,0,255);
					break;
				}
				case 0x44:		//press 4
				{
					set_led(220,0,0,50);
					break;
				}
				case 0x40:		//press 5
				{
					set_led(0,180,0,50);
					break;
				}
				case 0x43:		//press 6
				{
					set_led(0,0,255,0);
					break;
				}
				case 0x07:		//press 7
				{
					set_led(0,206,209,0);
					break;
				}
				case 0x15:		//press 8
				{
					set_led(148,0,211,0);
					break;
				}
				case 0x09:		//press 9
				{
					set_led(255,0,255,0);
					break;
				}
				case 0x19:	//press 0
				{
					set_led(0,0,0,0);
					break;
				}
				case 0x08:	//press left arrow
				{
					// increment blue
					set_led(g_led[0].r, g_led[0].g, g_led[0].b + (uint8_t)25, g_led[0].w);
					break;
				}
				case 0x18:	//press up arrow
				{
					//increment white
					set_led(g_led[0].r, g_led[0].g, g_led[0].b, g_led[0].w + (uint8_t)25);
					break;
				}
				case 0x5a:	//press right arrow
				{
					// increment red
					set_led(g_led[0].r + (uint8_t)25, g_led[0].g, g_led[0].b, g_led[0].w);
					break;
				}
				case 0x52:	//press bottom arrow
				{
					// increment green
					set_led(g_led[0].r, g_led[0].g + (uint8_t)25, g_led[0].b, g_led[0].w);
					break;
				}
				case 0x1c:	//press OK
				{
					set_led(0,0,0,0);
					break;
				}
				case 0x16:	//press star
				{
					set_led(0,0,0,0);
					break;
				}
				case 0x0d:	//press hash
				{
					set_led(0,0,0,0);
					break;
				}
				default:
				{
					//PORTD= (PORTD | 0x20);
					//PORTD= (PORTD & ~0x20);
					break;
				}
			}
			if ((GARBAGE_CODE != cur_ir_code) && (REPEAT_CODE != cur_ir_code))
				prev_ir_code = cur_ir_code;
				
			sei();
		}
		
	}
}

void parse_raw_data(unsigned char * dptr, irparams_t *  p_irparams)
{
	int count=0;
	int num_pulses = 0;
	unsigned char curr_data, next_data;
	
	//p_irparams->pulse_num = 0;
	p_irparams->rawlen = 0;

	for (int i=0;i<NUM_RAWBUF;i++)
	{
		p_irparams->rawbuf[i] = 0;
	}
	
	
	for (int i=0;((i<MAX_DATA-1) && (count < NUM_RAWBUF));i++)
	{
		
		curr_data = dptr[i];
		next_data = dptr[i+1];
		if (curr_data == next_data)
		{
			num_pulses++;
			p_irparams->rawbuf[count] = num_pulses+1;
			p_irparams->rawlen = count+1;
			continue;
		}
		else
		{
			p_irparams->rawbuf[count] = num_pulses+1;
			p_irparams->rawlen = count+1;
			count = count + 1;
			num_pulses = 0;
		}
	}
	return;
}


//------------------------------------------------------------------------------
// Results returned from the decoder
//

//------------------------------------------------------------------------------
void capture_raw(unsigned char * dptr)
{
	volatile uint8_t raw_data;
	int count;

	for (count=0;count<MAX_DATA;count++)
	{
		raw_data = IR_INREG & (1 << IR_BIT);
		//PORTD= (PORTD & ~0x20);
		//		   PORTD= (PORTD | 0x20);
		//if (raw_data)
		//raw_data = SPACE;
		//else
		//raw_data = MARK;
		//
		dptr[count] = raw_data;

		_delay_us(RESOLUTION-1);
		//  PORTD= (PORTD | 0x20);
		//PORTD= (PORTD & ~0x20);
	}
}

uint8_t find_command(irparams_t *  p_irparams)
{
	uint8_t ret_code = GARBAGE_CODE;
	//uint32_t decoded_data = 0;
	uint8_t len = p_irparams->rawlen ;
	uint8_t i,a,b,c;
	// shft_amt;
	uint8_t addr = 0, addr_not = 0, cmd = 0, cmd_not = 0, offset;
	
	//	if (len < (2+NEC_BITS*2))  //not handling repeat code here
	if (len < (2))  //not handling repeat code here
	{
		goto rt_code;
	}
	if (!MATCH(p_irparams->rawbuf[0], NEC_HDR_MARK))
	{
		goto rt_code;
	}
	if (!MATCH(p_irparams->rawbuf[1], NEC_HDR_SPACE))
	{
		if (MATCH(p_irparams->rawbuf[1], NEC_RPT_SPACE))
		ret_code = REPEAT_CODE;
		goto rt_code;
	}
	for (i=0;i<8;i++)
	{
		offset = 2;
		
		a = MATCH(p_irparams->rawbuf[2*i+offset], NEC_BIT_MARK);
		b = MATCH(p_irparams->rawbuf[2*i+1+offset], NEC_ZERO_SPACE);
		c = MATCH(p_irparams->rawbuf[2*i+1+offset], NEC_ONE_SPACE);
		
		if (a && b)
		{
			addr = addr | 0;
		}
		else if (a && c)
		{
			addr = addr | (uint8_t)(0x1<<i);
		}
		else
		{
			goto rt_code;
		}
	}
	for (i=0;i<8;i++)
	{
		offset = 2 + 8*2*1;
		
		a = MATCH(p_irparams->rawbuf[2*i+offset], NEC_BIT_MARK);
		b = MATCH(p_irparams->rawbuf[2*i+1+offset], NEC_ZERO_SPACE);
		c = MATCH(p_irparams->rawbuf[2*i+1+offset], NEC_ONE_SPACE);
		
		if (a && b)
		{
			addr_not = addr_not | 0;
		}
		else if (a && c)
		{
			addr_not = addr_not | (uint8_t)(0x1<<i);
		}
		else
		{
			goto rt_code;
		}
	}
	for (i=0;i<8;i++)
	{
		offset = 2 + 8*2*2;
		
		a = MATCH(p_irparams->rawbuf[2*i+offset], NEC_BIT_MARK);
		b = MATCH(p_irparams->rawbuf[2*i+1+offset], NEC_ZERO_SPACE);
		c = MATCH(p_irparams->rawbuf[2*i+1+offset], NEC_ONE_SPACE);
		
		if (a && b)
		{
			cmd = cmd | 0;
		}
		else if (a && c)
		{
			cmd = cmd | (uint8_t)(0x1<<i);
		}
		else
		{
			goto rt_code;
		}
	}
	for (i=0;i<8;i++)
	{
		offset = 2 + 8*2*3;
		
		a = MATCH(p_irparams->rawbuf[2*i+offset], NEC_BIT_MARK);
		b = MATCH(p_irparams->rawbuf[2*i+1+offset], NEC_ZERO_SPACE);
		c = MATCH(p_irparams->rawbuf[2*i+1+offset], NEC_ONE_SPACE);
		
		if (a && b)
		{
			cmd_not = cmd_not | 0;
		}
		else if (a && c)
		{
			cmd_not = cmd_not | (uint8_t)(0x1<<i);
		}
		else
		{
			goto rt_code;
		}
	}

	if (cmd == (uint8_t)(~cmd_not))
	a = 1;
	else
	a = 0;
	
	if (addr == (uint8_t)(~addr_not))
	b = 1;
	else
	b = 0;
	
	if (a && b)
	{
		ret_code = cmd;
	}
	rt_code:
	return ret_code;
}

uint8_t  MATCH (int measured,  int desired)
{
	uint8_t passed;
	passed = ((measured >= TICKS_LOW(desired)) && (measured <= TICKS_HIGH(desired)));
	return passed;
}

//+========================================================
// Due to sensor lag, when received, Marks tend to be 100us too long
//
//int  MATCH_MARK (int measured_ticks,  int desired_us)
//{
//bool passed = ((measured_ticks >= TICKS_LOW (desired_us + MARK_EXCESS))
//&& (measured_ticks <= TICKS_HIGH(desired_us + MARK_EXCESS)));
//return passed;
//}
//
////+========================================================
//// Due to sensor lag, when received, Spaces tend to be 100us too short
////
//int  MATCH_SPACE (int measured_ticks,  int desired_us)
//{
//bool passed = ((measured_ticks >= TICKS_LOW (desired_us - MARK_EXCESS))
//&& (measured_ticks <= TICKS_HIGH(desired_us - MARK_EXCESS)));
//return passed;
//}