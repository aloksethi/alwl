/*
 * light_ws2812_config.h
 *
 * v2.4 - Nov 27, 2016
 *
 * User Configuration file for the light_ws2812_lib
 *
 */ 


#ifndef WS2812_CONFIG_H_
#define WS2812_CONFIG_H_

///////////////////////////////////////////////////////////////////////
// Define Reset time in �s. 
//
// This is the time the library spends waiting after writing the data.
//
// WS2813 needs 300 �s reset time
// WS2812 and clones only need 50 �s
//
///////////////////////////////////////////////////////////////////////

#define ws2812_resettime  100 

///////////////////////////////////////////////////////////////////////
// Define I/O pin
///////////////////////////////////////////////////////////////////////


#define ws2812_port C     // Data port 
#define ws2812_pin  0     // Data out pin

#endif /* WS2812_CONFIG_H_ */