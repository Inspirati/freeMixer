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


#include "libUDB_internal.h"
#include "oscillator.h"
#include "interrupt.h"
#include "sysTick.h"



// Include flexifunction mixers if required
#if (USE_FLEXIFUNCTION_MIXING == 1)
#include "../libflexifunctions/flexifunctionservices.h"
#endif


void udb_init(void)
{
        sys_tick_init();

#if (USE_FLEXIFUNCTION_MIXING == 1)
	flexiFunctionServiceInit();
#endif

//        udb_init_clock();


	SRbits.IPL = 0; // turn on all interrupt priorities
}

void udb_run(void)
{
//#if (USE_MCU_IDLE == 1)
//	Idle();
//#else
	// pause cpu counting timer while not in an ISR
	indicate_loading_main;
//#endif
}


// saturation logic to maintain pulse width within bounds
int16_t udb_servo_pulsesat(int32_t pw)
{
	if (pw > SERVOMAX) pw = SERVOMAX;
	if (pw < SERVOMIN) pw = SERVOMIN;
	return (int16_t)pw;
}
