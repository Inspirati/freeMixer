// This file is part of MatrixPilot.
//
//    http://code.google.com/p/gentlenav/
//
// Copyright 2009-2011 MatrixPilot Team
// See the AUTHORS.TXT file for a list of authors of MatrixPilot.
//
// MatrixPilot is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// MatrixPilot is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with MatrixPilot.  If not, see <http://www.gnu.org/licenses/>.


#ifndef UDB_DEFINES_H
#define UDB_DEFINES_H


// Types
//struct bb { uint8_t B0; uint8_t B1; };
//struct bbbb { uint8_t B0; uint8_t B1; uint8_t B2; uint8_t B3; };
//struct ww { int16_t W0; int16_t W1; };
//struct wwww { int16_t W0; int16_t W1; int16_t W2; int16_t W3; };
//struct LL { int32_t L0; int32_t L1; };

//union intbb { int16_t BB; struct bb _; };
//union longbbbb { int32_t WW; struct ww _; struct bbbb __; };
//union longww { int32_t  WW; struct ww _; };
//union longlongLL { int64_t LL; struct LL _; struct wwww __; };
#include "udbTypes.h"

//#if SILSIM
#if (SILSIM == 1)
#define NUM_POINTERS_IN(x)      (sizeof(x)/sizeof(char*))
#else
#define NUM_POINTERS_IN(x)      (sizeof(x)>>1)
#endif


#if (SILSIM == 0)

#include "ConfigAUAV3.h"

#endif // SILSIM

#if (HILSIM == 1)
#include "ConfigHILSIM.h"
#endif

#if (USE_PPM_INPUT == 1 && BOARD_TYPE != AUAV3_BOARD)
#undef MAX_INPUTS
#define MAX_INPUTS              8
#undef MAX_OUTPUTS
#define MAX_OUTPUTS             9
#endif


// define the board rotations here.
// This include must go jsut after the board type has been declared
// Do not move this
// Orientation of the board
#define ORIENTATION_FORWARDS    0
#define ORIENTATION_BACKWARDS   1
#define ORIENTATION_INVERTED    2
#define ORIENTATION_FLIPPED     3
#define ORIENTATION_ROLLCW      4
#define ORIENTATION_ROLLCW180   5
#define ORIENTATION_YAWCW       6
#define ORIENTATION_YAWCCW      7

//#include "boardRotation_defines.h"


// Clock configurations
#define CLOCK_CONFIG            3   // legacy definition for telemetry output


// Dead reckoning
// DEADRECKONING 0 selects the GPS to perform navigation, at the GPS update rate.
// DEADRECKONING 1 selects the dead reckoning computations to perform navigation, at 40 Hz.
#ifndef DEADRECKONING           // define only if not already defined in options.h
#define DEADRECKONING           1
#endif

// Wind Estimation and Navigation
// Set this to 1 to use automatic wind estimation and navigation. 
// Wind estimation is done using a mathematical model developed by William Premerlani.
// Every time the plane performs a significant turn, the plane estimates the wind.
// This facility only requires a working GPS and the UAV DevBoard. 
#ifndef WIND_ESTIMATION         // define only if not already defined in options.h
#define WIND_ESTIMATION         1
#endif

// Enforce that if DEADRECKONING is on, WIND_ESTIMATION must be on as well.
// Using dead reckoning in high winds without wind estimation will cause large
// errors in the dead reckoning.
#if (DEADRECKONING == 1 && WIND_ESTIMATION == 0)
#undef WIND_ESTIMATION
#define WIND_ESTIMATION         1
#endif


// Types
//#ifndef SIL_WINDOWS_INCS
typedef uint8_t boolean;
//#endif
#define true                    1
#define false                   0

struct ADchannel {
	int16_t input;  // raw input
	int16_t value;  // average of the sum of inputs between report outs
	int16_t offset; // baseline at power up 
	int32_t sum;    // used as an integrator
}; // variables for processing an AD channel


struct udb_flag_bits {
	uint16_t unused     : 6;   // shouldn't this be 14 bits?
	uint16_t a2d_read   : 1;
	uint16_t radio_on   : 1;
};


// LED states
#define LED_ON                  0
#define LED_OFF                 1


// Channel numbers on the board, mapped to positions in the pulse width arrays.
#define CHANNEL_UNUSED          0   // udb_pwIn[0], udb_pwOut[0], etc. are not used, but allow lazy code everywhere else  :)
#define CHANNEL_1               1
#define CHANNEL_2               2
#define CHANNEL_3               3
#define CHANNEL_4               4
#define CHANNEL_5               5
#define CHANNEL_6               6
#define CHANNEL_7               7
#define CHANNEL_8               8
#define CHANNEL_9               9
#define CHANNEL_10              10
#define CHANNEL_11              11
#define CHANNEL_12              12
#define CHANNEL_13              13
#define CHANNEL_14              14
#define CHANNEL_15              15
#define CHANNEL_16              16


// Constants
#define RMAX                    16384//0b0100000000000000       // 1.0 in 2.14 fractional format
#define GRAVITY                 ((int32_t)(5280.0/SCALEACCEL))  // gravity in AtoD/2 units

#define SERVOCENTER             3000
#define SERVORANGE              ((int16_t)(SERVOSAT*1000))
#define SERVOMAX                (SERVOCENTER + SERVORANGE)
#define SERVOMIN                (SERVOCENTER - SERVORANGE)

extern int16_t magMessage;
extern int16_t vref_adj;

#define NETWORK_INTERFACE_NONE                  0
#define NETWORK_INTERFACE_WIFI_MRF24WG          1
#define NETWORK_INTERFACE_ETHERNET_ENC624J600   2
#define NETWORK_INTERFACE_ETHERNET_ENC28J60     3

#endif // UDB_DEFINES_H
