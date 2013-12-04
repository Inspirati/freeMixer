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


#ifndef LIB_UDB_H
#define LIB_UDB_H

#include <stdint.h>
#define _ADDED_C_LIB 1 // Needed to get vsnprintf()
#include <stdio.h>

#include "freemixer_options.h"

#if (WIN == 1 || NIX == 1)
#define SILSIM                              1
#undef  HILSIM
#define HILSIM                              1
#undef  MODE_SWITCH_TWO_POSITION
#define MODE_SWITCH_TWO_POSITION            0
#undef  USE_TELELOG
#define USE_TELELOG                         0
#undef  USE_CONFIGFILE
#define USE_CONFIGFILE                      0
#undef  USE_USB
#define USE_USB                             0
#undef  USE_MSD
#define USE_MSD                             0
#undef  FAILSAFE_INPUT_MIN
#define FAILSAFE_INPUT_MIN                  1500
#include "SIL-udb.h"
#else
#define SILSIM                              0
#include <dsp.h>
#endif // (WIN == 1 || NIX == 1)

////////////////////////////////////////////////////////////////////////////////
// Set Up Board Type
// The UDB4, UDB5, or AUAV3 definition now comes from the project, or if not
// set in the project can be specified here.
// See the MatrixPilot wiki for more details on different board types.
#ifdef UDB4
#define BOARD_TYPE                          UDB4_BOARD
#endif
#ifdef UDB5
#define BOARD_TYPE                          UDB5_BOARD
#endif
#ifdef AUAV3
#define BOARD_TYPE                          AUAV3_BOARD
#endif

#ifndef BOARD_TYPE
#if (SILSIM == 0)
#warning BOARD_TYPE defaulting to UDB4_BOARD
#endif // SILSIM
#define BOARD_TYPE                          UDB4_BOARD
#endif // BOARD_TYPE

#ifdef USE_DEBUG_IO
#define DPRINT printf
#else
#define DPRINT(args...)
#endif // USE_DEBUG_IO

#include "fixDeps.h"
#include "libUDB_defines.h"
#include "parameters.h"

////////////////////////////////////////////////////////////////////////////////
// libUDB.h defines the API for accessing the UDB hardware through libUDB.
// 
// This is the lowest-level component of MatrixPilot, and should not reference
// anything from the higher-level components.  This library is designed to be
// useful in its own right, independent of libDCM or MatrixPilot.
//
// libUDB requires an options.h file be provided that defines at least the
// following constants:
// 
// #define NUM_INPUTS
// #define NUM_OUTPUTS
// 
// #define FAILSAFE_INPUT_CHANNEL
// #define FAILSAFE_INPUT_MIN
// #define FAILSAFE_INPUT_MAX
// 
// #define NORADIO
// #define SERVOSAT


////////////////////////////////////////////////////////////////////////////////
// Initialize the UDB

// Call this first soon after the board boots up
void mcu_init(void);

// Call this once soon after the board boots up
void udb_init(void);

// Start the UDB running
// Once you have everything else set up, call udb_run().
// This function will not return.
// From this point on, everything is event-driven.
// Your code should respond to the Callbacks below.
void udb_run(void);

int setjmp(void);


////////////////////////////////////////////////////////////////////////////////
// Radio Inputs / Servo Outputs

// These are the values of the radio input channels.  Each channel will be a
// value between approximately 2000 and 4000, with 3000 being the center.
// Treat udb_pwIn values as readonly.
extern int16_t udb_pwIn[];                  // pulse widths of radio inputs

// These are the recorded trim values of the radio input channels.
// These values are recorded when you call the udb_servo_record_trims()
// function.
// Each channel will be a value between approximately 2000 and 4000.
// Treat udb_pwTrim values as readonly.
extern int16_t udb_pwTrim[];                // initial pulse widths for trimming

// These are the servo channel values that will be sent out to the servos.
// Set these values in your implementation of the udb_servo_callback_prepare_outputs()
// callback.
// Each channel should be set to a value between 2000 and 4000.
extern int16_t udb_pwOut[];                 // pulse widths for servo outputs

// This read-only value holds flags that tell you, among other things,
// whether the receiver is currently receiving values from the transmitter.
extern union udb_fbts_byte { struct udb_flag_bits _; int8_t B; } udb_flags;

// This takes a servo out value, and clips it to be within
// 3000-1000*SERVOSAT and 3000+1000*SERVOSAT (2000-4000 by default).
int16_t  udb_servo_pulsesat(int32_t pw);

// Call this funtion once at some point soon after
// the UDB has booted up and the radio is on.
void udb_servo_record_trims(void);


#endif // LIB_UDB_H
