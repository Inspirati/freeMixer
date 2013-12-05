// This file is part of MatrixPilot.
//
//    http://code.google.com/p/gentlenav/
//
// Copyright 2009-2012 MatrixPilot Team
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


////////////////////////////////////////////////////////////////////////////////
// options.h
// Bill Premerlani's UAV Dev Board
//
// This file includes all of the user-configuration for this firmware,
// with the exception of waypoints, which live in the waypoints.h file.
//
// Note that there is a small but growing library of preset options.h files for
// specific planes located in the MatrixPilot/example-options-files directory.
// You can use one of those files by replacing this file with that one.



// Set this to 1 if you want the UAV Dev Board to fly your plane without a radio transmitter or
// receiver. (Totally autonomous.)  This is just meant for simulation and debugging.  It is not
// recommended that you actually use this option, since you'd have no manual control to fall
// back on if things go wrong.  It may not even be legal in your area.
#define NORADIO                             0


////////////////////////////////////////////////////////////////////////////////
// Configure Input and Output Channels
//
// For classic UDB boards:
// Use a single PPM input connection from the RC receiver to the UDB on RC input channel 4.
// This frees up RC inputs 3, 2, and 1 to act as RC outputs 4, 5, and 6.
// If PPM_ALT_OUTPUT_PINS is set to 0, the 9 available RC outputs will be sent to the
// following pins, in this order: Out1, Out2, Out3, In3, In2, In1, RE0, RE2, RE4.
// With it set to 1, the RC outputs will be in this alternate configuration:
// Out1, Out2, Out3, RE0, RE2, RE4, In3, In2, In1.
//
// For UDB4 boards:
// Use a single PPM input connection from the RC receiver to the UDB on RC input channel 1.
// The 8 standard output channels remain unaffected.  2 additional output channels are available
// on pins RA4 and RA1.
//
// For all boards:
// If you're not sure, leave USE_PPM_INPUT set to 0.
// PPM_NUMBER_OF_CHANNELS is the number of channels sent on the PWM signal.  This is
// often different from the NUM_INPUTS value below, and should usually be left at 8.
//
#define USE_PPM_INPUT                       0
#define PPM_NUMBER_OF_CHANNELS              8
#define PPM_SIGNAL_INVERTED                 0
#define PPM_ALT_OUTPUT_PINS                 0

// NUM_INPUTS:
// For classic boards: Set to 1-5 (or 1-8 when using PPM input)
//   1-4 enables only the first 1-4 of the 4 standard input channels
//   5 also enables E8 as the 5th input channel
// For UDB4 boards: Set to 1-8
#define NUM_INPUTS                          5

// Channel numbers for each input.
// Use as is, or edit to match your setup.
//   - If you're set up to use Rudder Navigation (like MatrixNav), then you may want to swap
//     the aileron and rudder channels so that rudder is CHANNEL_1, and aileron is 5.
#define THROTTLE_INPUT_CHANNEL              CHANNEL_3
#define AILERON_INPUT_CHANNEL               CHANNEL_1
#define ELEVATOR_INPUT_CHANNEL              CHANNEL_2
#define RUDDER_INPUT_CHANNEL                CHANNEL_5
#define MODE_SWITCH_INPUT_CHANNEL           CHANNEL_4
#define CAMERA_PITCH_INPUT_CHANNEL          CHANNEL_UNUSED
#define CAMERA_YAW_INPUT_CHANNEL            CHANNEL_UNUSED
#define CAMERA_MODE_INPUT_CHANNEL           CHANNEL_UNUSED
#define OSD_MODE_SWITCH_INPUT_CHANNEL       CHANNEL_UNUSED
#define PASSTHROUGH_A_INPUT_CHANNEL         CHANNEL_UNUSED
#define PASSTHROUGH_B_INPUT_CHANNEL         CHANNEL_UNUSED
#define PASSTHROUGH_C_INPUT_CHANNEL         CHANNEL_UNUSED
#define PASSTHROUGH_D_INPUT_CHANNEL         CHANNEL_UNUSED

// NUM_OUTPUTS:
//   NOTE: If USE_PPM_INPUT is enabled above, up to 9 outputs are available.)
// For UDB4/5 boards: Set to 3-8 (or up to 10 using pins RA4 and RA1.)
// For AUAV3 boards:  Set to 3-8 (or up to 11 using pins RE1, RA6 and RA7.)
//                               (this needs developing, so contact the list)
#define NUM_OUTPUTS                         4

// Channel numbers for each output
// Use as is, or edit to match your setup.
//   - Only assign each channel to one output purpose
//   - If you don't want to use an output channel, set it to CHANNEL_UNUSED
//   - If you're set up to use Rudder Navigation (like MatrixNav), then you may want to swap
//     the aileron and runner channels so that rudder is CHANNEL_1, and aileron is 5.
//
// NOTE: If your board is powered from your ESC through the throttle cable, make sure to
// connect THROTTLE_OUTPUT_CHANNEL to one of the built-in Outputs (1, 2, or 3) to make
// sure your board gets power.
//
#define THROTTLE_OUTPUT_CHANNEL             CHANNEL_3
#define AILERON_OUTPUT_CHANNEL              CHANNEL_1
#define ELEVATOR_OUTPUT_CHANNEL             CHANNEL_2
#define RUDDER_OUTPUT_CHANNEL               CHANNEL_4
#define AILERON_SECONDARY_OUTPUT_CHANNEL    CHANNEL_UNUSED
#define CAMERA_PITCH_OUTPUT_CHANNEL         CHANNEL_UNUSED
#define CAMERA_YAW_OUTPUT_CHANNEL           CHANNEL_UNUSED
#define TRIGGER_OUTPUT_CHANNEL              CHANNEL_UNUSED
#define PASSTHROUGH_A_OUTPUT_CHANNEL        CHANNEL_UNUSED
#define PASSTHROUGH_B_OUTPUT_CHANNEL        CHANNEL_UNUSED
#define PASSTHROUGH_C_OUTPUT_CHANNEL        CHANNEL_UNUSED
#define PASSTHROUGH_D_OUTPUT_CHANNEL        CHANNEL_UNUSED


////////////////////////////////////////////////////////////////////////////////
// Servo Reversing Configuration
// For any of these that are set to 1, that servo will be sent reversed controls.
// Note that your servo reversing settings here should match what you set on your transmitter.
#define AILERON_CHANNEL_REVERSED            0
#define ELEVATOR_CHANNEL_REVERSED           0
#define RUDDER_CHANNEL_REVERSED             0
#define AILERON_SECONDARY_CHANNEL_REVERSED  0
#define THROTTLE_CHANNEL_REVERSED           0
#define CAMERA_PITCH_CHANNEL_REVERSED       0
#define CAMERA_YAW_CHANNEL_REVERSED         0

// Set this to 1 if you need to switch the left and right elevon or vtail surfaces
#define ELEVON_VTAIL_SURFACES_REVERSED      0


////////////////////////////////////////////////////////////////////////////////
// Mode Switch is ideally controlled by a 3-position switch on your transmitter.
// Often the Flap channel will be controlled by a 3-position switch.
// These are the thresholds for the cutoffs between low and middle, and between middle and high.
// Normal signals should fall within about 2000 - 4000.
#define MODE_SWITCH_THRESHOLD_LOW           2600
#define MODE_SWITCH_THRESHOLD_HIGH          3400

// Setting MODE_SWITCH_TWO_POSITION to 1,  allows a two state mode switch on the transmitter to be used
// to create three flight modes. When switch is "Down" the plane always reverts to Manual. When "Up",
// the plane moves to Stabilized". If the user is in stabilized ("Up"), and then the user toggles
// the switch to Down, Up, Down, Up, then the plane moves to autonomous.
// Each toggle must be achieved with a limited time period ( 1/2 a second ) and not faster than 1/40th of a second.
// When in Autonomous, a move to "Down" puts the switch state  back to Manual. And a futher move to "Up", will put the
// switch state back in stabilized. The important design concept is that Manual position is always Manual state immediately.
// Stabilized position is Stabilized mode unless you try  hard to reach Autonomous mode.
// Set MODE_SWITCH_TWO_POSITION to 0 for a normal three position mode switch.
#define MODE_SWITCH_TWO_POSITION            0

////////////////////////////////////////////////////////////////////////////////
// The Failsafe Channel is the RX channel that is monitored for loss of signal
// Make sure this is set to a channel you actually have plugged into the UAV Dev Board!
//
// For a receiver that remembers a failsafe value for when it loses the transmitter signal,
// like the Spektrum AR6100, you can program the receiver's failsafe value to a value below
// the normal low value for that channel.  Then set the FAILSAFE_INPUT_MIN value to a value
// between the receiver's programmed failsafe value and the transmitter's normal lowest
// value for that channel.  This way the firmware can detect the difference between a normal
// signal, and a lost transmitter.
//
// FAILSAFE_INPUT_MIN and _MAX define the range within which we consider the radio on.
// Normal signals should fall within about 2000 - 4000.
#define FAILSAFE_INPUT_CHANNEL              THROTTLE_INPUT_CHANNEL
#define FAILSAFE_INPUT_MIN                  1500
#define FAILSAFE_INPUT_MAX                  4500

// FAILSAFE_TYPE controls the UDB's behavior when in failsafe mode due to loss of transmitter
// signal.  (Set to FAILSAFE_RTL or FAILSAFE_MAIN_FLIGHTPLAN.)
//
// When using FAILSAFE_RTL (Return To Launch), the UDB will begin following the RTL flight plan
// as defined near the bottom of the waypoints.h or flightplan-logo.h files.  By default, this
// is set to return to a point above the location where the UDB was powered up, and to loiter there.
// See the waypoints.h or flightplan-logo.h files for info on modifying this behavior.
//
// When set to FAILSAFE_MAIN_FLIGHTPLAN, the UDB will instead follow the main flight plan as
// defined in either waypoints.h or flightplan-logo.h.  If the UDB was already in waypoint mode
// when it lost signal, the plane will just continue following the main flight plan without
// starting them over.  And if the transmitter is still in waypoint mode when the UDB sees it
// again, the UDB will still continue following the main flight plan without restarting.  If
// the UDB loses signal while not in waypoint mode, it will start the main flight plan from the
// beginning.
#define FAILSAFE_TYPE                       FAILSAFE_RTL

// When FAILSAFE_HOLD is set to 1, then once Failsafe has engaged, and you have subsequently
// regained your RC TX-RX connection, you will need to manually change the Mode Switch in order
// to exit Failsafe mode.  This avoids the situation where your plane flies in and out of range,
// and keeps switching into and out of Failsafe mode, which depending on your configuration,
// could be confusing and/or dangerous.
#define FAILSAFE_HOLD                       0



////////////////////////////////////////////////////////////////////////////////
// Serial Output BAUD rate for either standard telemetry streams or MAVLink
//  19200, 38400, 57600, 115200, 230400, 460800, 921600 // yes, it really will work at this rate
#define SERIAL_BAUDRATE                     57600 // default


////////////////////////////////////////////////////////////////////////////////

// MAVLink requires an aircraft Identifier (I.D) as it is deaigned to control multiple aircraft
// Each aircraft in the sky will need a unique I.D. in the range from 0-255
#define MAVLINK_SYSID                       55


// NUM_ANALOG_INPUTS:
// For UDB4 boards: Set to 0-4.  Analog pins are AN15 - AN18.
//#define NUM_ANALOG_INPUTS                   0 // moved to board specific config files

// Channel numbers for each analog input
//   - Only assign each channel number to one analog sensor
//   - If you don't want to use an output channel, set it to CHANNEL_UNUSED
//   - Only 2 analog inputs are available, so you can't use all the defined analog
//     sensors at once
//
// ANALOG_CURRENT_INPUT_CHANNEL and ANALOG_VOLTAGE_INPUT_CHANNEL let you plug in and
// use this Voltage/Current sensor board from SparkFun:
//    http://www.sparkfun.com/products/9028
// Just plug the ground and signal lines of the chosen current input channel into the
// ground and current outputs of the current sensor, and the signal line of the chosen
// voltage input channel to the voltage output from the current sensor.  Values for
// instantaneous current, voltage, and mAh used will become available for use with the
// OSD layout.
//
// ANALOG_RSSI_INPUT_CHANNEL lets you connect your RC Receiver's RSSI output to your
// UDB, in order to see the RC signal strength on your OSD.  Just plug RSSI and ground
// from your Receiver to Input2's signal and ground on your UDB.  If you use this feature,
// you'll also need to set up the RSSI_MIN_SIGNAL_VOLTAGE and RSSI_MAX_SIGNAL_VOLTAGE
// to match your Receiver's RSSI format.  Note that some receivers use a higher voltage to 
// represent a lower signal strength, so you may need to set MIN higher than MAX.

#define ANALOG_CURRENT_INPUT_CHANNEL        CHANNEL_UNUSED
#define ANALOG_VOLTAGE_INPUT_CHANNEL        CHANNEL_UNUSED
#define ANALOG_RSSI_INPUT_CHANNEL           CHANNEL_UNUSED

#define MAX_CURRENT                         900 // 90.0 Amps max for the sensor from SparkFun (in tenths of Amps)
#define CURRENT_SENSOR_OFFSET               10  // Add 1.0 Amp to whatever value we sense

#define MAX_VOLTAGE                         543 // 54.3 Volts max for the sensor from SparkFun (in tenths of Volts)
#define VOLTAGE_SENSOR_OFFSET               0   // Add 0.0 Volts to whatever value we sense

// RSSI - RC Receiver signal strength
#define RSSI_MIN_SIGNAL_VOLTAGE             0.5     // Voltage when RSSI should show 0%
#define RSSI_MAX_SIGNAL_VOLTAGE             3.3     // Voltage when RSSI should show 100%



////////////////////////////////////////////////////////////////////////////////
// Control gains.
// All gains should be positive real numbers.
// Proportional gains should be less than 4.0.
// Rate gains should be less than 0.8.
// Proportional gains include ROLLKP, YAWKP_AILERON, AILERON_BOOST, PITCHGAIN,
// RUDDER_ELEV_MIX, ROLL_ELEV_MIX, ELEVATOR_BOOST, YAWKP_RUDDER, ROLLKP_RUDDER,
// MANUAL_AILERON_RUDDER_MIX, RUDDER_BOOST, HOVER_ROLLKP, HOVER_PITCHGAIN, HOVER_YAWKP
// Rate gains include ROLLKD, YAWKD_AILERON, PITCHKD, YAWKD_RUDDER, ROLLKD_RUDDER,
// HOVER_ROLLKD, HOVER_PITCHKD, HOVER_YAWKD

// SERVOSAT limits servo throw by controlling pulse width saturation.
// set it to 1.0 if you want full servo throw, otherwise set it to the portion that you want
#define SERVOSAT                            1.0


///////////////////////////////////////////////////////////////////////////////////
// Vehicle and Pilot Identification

// Once you are flying your plane and swapping flights and telemetry with other's across
// the world, you may like to fill in some of the fields below. This will be embedded in your
// telemetry, and used to make more interesting flights in Google Earth.
// ID_VEHICLE_MODEL_NAME provides indication of what model of plane, quad, car etc you are using
// ID_VEHICLE_REGISTRATION should be short (less than 12 continuous characters with no space
// it will be used in Google Earth as the folder name containing your flights.
// ID_LEAD_PILOT is your lead pilot flight name or alias e.g. "UAV Flight Director"
// ID_DIY_DRONES_URL should be the URL of your member page on DIY Drones.
// That will allow Google Earth viewers of your flights to click straight through to your latest discussions.
// EXAMPLE:-
//#define ID_VEHICLE_MODEL_NAME "Multiplex Twinstar 2"
//#define ID_VEHICLE_REGISTRATION "TW2-PDH-UK"
//#define ID_LEAD_PILOT "Pete Hollands"
//#define ID_DIY_DRONES_URL "http://www.diydrones.com/profile/PeterHollands"
#define ID_VEHICLE_MODEL_NAME               "Not Defined"
#define ID_VEHICLE_REGISTRATION             "Not Defined"
#define ID_LEAD_PILOT                       "Not Defined"
#define ID_DIY_DRONES_URL                   "http://www.diydrones.com"


////////////////////////////////////////////////////////////////////////////////
// The following define is used to enable vertical initialization for VTOL
// To enable vertical initialization, uncomment the line
//#define INITIALIZE_VERTICAL


////////////////////////////////////////////////////////////////////////////////
// Fly-By-Datalink Configure
// This allows flight of an aircraft using data instead of an RC transmitter using the app found
// in /Tools/FlyByDatalink/UDB_FlyByDatalink.exe. This app takes input from a typical off-the-shelf
// gaming joystick and transmits it to the UDB over serial or IP. The joystick used for development
// was the Logitech Attack3. This data overrides the PWM inputs allowing for direct control of the flight
// surfaces. While this is enabled, instead of the usual manual/stabilized/WP flight modes, it's
// FBDL/stabilized/WP. For saftey reasons, an RC transmitter is still required for flight to set the modes.
#define FLY_BY_DATALINK_ENABLED             0


////////////////////////////////////////////////////////////////////////////////
// Optionally enable the new power saving idle mode of the MCU during mainloop
#define USE_MCU_IDLE                        1


////////////////////////////////////////////////////////////////////////////////
// Optionally enable experimental extended range navigation support (merged from ballon launch branch)
//#define USE_EXTENDED_NAV


////////////////////////////////////////////////////////////////////////////////
// Debugging defines

// The following can be used to do a ground check of stabilization without a GPS.
// If you define TestGains, stabilization functions
// will be enabled, even without GPS or Tx turned on. (Tx is optional)
// #define TestGains                        // uncomment this line if you want to test your gains without using GPS

// Set this to 1 to calculate and print out free stack space
#define RECORD_FREE_STACK_SPACE             0


////////////////////////////////////////////////////////////////////////////////
// The UDB4/5 has two UART's, while the AUAV3 has four UART's.
// Three MatrixPilot features are currently defined for using a UART. 
// These being the GPS, Telemetry and a 'debug' console.
// Therefore UDB4/5 is one UART short, the AUAV3 has one UART extra.
//
// CONSOLE_UART specfies which UART is used for stdio support, aka the console.
// Set CONSOLE_UART to 1, 2, 3 or 4 to enable the console on UART of that number.
// Setting CONSOLE_UART to 0 disables console support.
// On the UDB4/5, optionally specifying console support on UART 1 or 2 overrides 
// the default usage of that UART, being the GPS and Telemetry respectively.
// CONSOLE_UART 3 and 4 options are only available with the AUAV3 board.
// Thus UDB4/5 options are 0, 1, or 2  AUAV3 options are 0, 3, or 4
#define CONSOLE_UART                        0

// Define USE_DEBUG_IO to enable DPRINT macro to call printf(..)
//#define USE_DEBUG_IO


////////////////////////////////////////////////////////////////////////////////
// AUAV3 only options

////////////////////////////////////////////////////////////////////////////////
// At present, the AUAV3 schematic and 'installation & basic connections' document
// are drafts and hence there is some inconsistency in labelling conventions.
//
// The following standard labelling convention is proposed.
//
// AUAV3 schematic:
//        TLM      -    PORT1
//        OSD      -    PORT2
//        UART3    -    PORT3
//        GPS      -    PORT4
//
// 'AUAV3 Installation and Basic Connections' document:
//        OUART1   -    PORT1
//        OUART2   -    PORT2
//        UART3    -    PORT3
//        GPS      -    PORT4
//
////////////////////////////////////////////////////////////////////////////////
// On the AUAV3, the external UART connections are known as ports 1 through 4.
// The definitions below specifies which feature maps to an external port.
//
// NOTE: on the AUAV3, do not confuse the CONSOLE_UART definition with the 
// external port assignment.
// Assign the console to an internal UART with CONSOLE_UART, map this console to
// external port connection with DBG_PORT.
#define GPS_PORT                            4
#define TLM_PORT                            3
#define DBG_PORT                            1

// Set this to 1 to enable logging telemetry to dataflash on AUAV3
#define USE_TELELOG                         0

// Set this to 1 to enable loading options settings from a config file on AUAV3
#define USE_CONFIGFILE                      0

// Set this to 1 to enable the USB stack on AUAV3
#define USE_USB                             1

// Set this to 1 to enable the Mass Storage Driver support over USB on AUAV3
#define USE_MSD                             1
