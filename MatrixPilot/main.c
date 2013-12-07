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


#include "defines.h"
#include "../FreeRTOS/Source/include/FreeRTOS.h"
#include "task.h"

#include "flash.h"
#include "lib_usb.h"

//#if (CONSOLE_UART != 0)
//#include "console.h"
//#endif


#include "parameter_storage.h"

#if (SILSIM == 1)
int mp_argc;
char **mp_argv;
int main(int argc, char** argv)
{
	// keep these values available for later
	mp_argc = argc;
	mp_argv = argv;
#else
int main(void)
{
	mcu_init();
#endif

	flash_init();             // Start flash services

	usb_init();
        
        init_events();
        timer_init();

	SRbits.IPL = 0; // turn on all interrupt priorities

        vStartParamStorageTask( tskIDLE_PRIORITY );
        vStartUSBTasks(tskIDLE_PRIORITY);

        vTaskStartScheduler();

//        sys_tick_init();

//	init_config();  // this will need to be moved up in order to support runtime hardware options
//	udb_init();
//	init_servoPrepare();
//	init_states();
//	init_behavior();
//	init_serial();



	if (setjmp())
	{
		// a processor exception occurred and we're resuming execution here 
		DPRINT("longjmp'd\r\n");
	}

	while (1)
	{
#if (USE_TELELOG == 1)
		telemetry_log();
#endif

		USBPollingService();
#if (CONSOLE_UART != 0 && SILSIM == 0)
		console();
#endif
//		udb_run();
	}
	return 0;
}

void vApplicationIdleHook( void )
{
	/* Schedule the co-routines from within the idle task hook. */
//	vCoRoutineSchedule();
//        USBPollingService();
}
