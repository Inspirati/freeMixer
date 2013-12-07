#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MatrixPilot-auav3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MatrixPilot-auav3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../FreeRTOS/Source/croutine.c ../../FreeRTOS/Source/list.c ../../FreeRTOS/Source/queue.c ../../FreeRTOS/Source/tasks.c ../../FreeRTOS/Source/timers.c ../../FreeRTOS/Source/portable/MemMang/heap_2.c ../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c ../../libFlashFS/AT45D.c ../../libFlashFS/MDD_AT45D.c ../../libFlashFS/usb.c ../../libFlashFS/usb_descriptors.c ../../libFlashFS/AT45D_FS.c ../../libFlashFS/minIni.c ../../libFlashFS/AT45D_DMA.c ../../libFlashFS/usb_cdc.c ../../libFlashFS/usb_msd.c ../../libUDB/libUDB.c ../../libUDB/traps_asm.s ../../libUDB/mcu.c ../../libUDB/traps.c ../../libUDB/write.c ../../libUDB/read.c ../../libUDB/mpu_spi.c ../../libUDB/sysTick.c ../../libUDB/parameters.c ../../libUDB/events.c ../../libUDB/timer.c ../../libVectorMatrix/madd.s ../../libVectorMatrix/mmul.s ../../libVectorMatrix/mscl.s ../../libVectorMatrix/msub.s ../../libVectorMatrix/mtrp.s ../../libVectorMatrix/vadd.s ../../libVectorMatrix/vcon.s ../../libVectorMatrix/vcopy.s ../../libVectorMatrix/vcor.s ../../libVectorMatrix/vdot.s ../../libVectorMatrix/vmax.s ../../libVectorMatrix/vmin.s ../../libVectorMatrix/vmul.s ../../libVectorMatrix/vneg.s ../../libVectorMatrix/vpow.s ../../libVectorMatrix/vscl.s ../../libVectorMatrix/vsub.s ../../libVectorMatrix/vzpad.s ../servoMix.c ../main.c ../stack.S ../parameter_storage.c ../parameter_scaling.c ../flash.c ../lib_usb.c "../../Microchip/MDD File System/FSIO.c" ../../Microchip/USB/usb_device.c "../../Microchip/USB/MSD Device Driver/usb_function_msd.c" ../../Microchip/USB/usb_hal_dspic33e.c "../../Microchip/USB/CDC Device Driver/usb_function_cdc.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1147412712/croutine.o ${OBJECTDIR}/_ext/1147412712/list.o ${OBJECTDIR}/_ext/1147412712/queue.o ${OBJECTDIR}/_ext/1147412712/tasks.o ${OBJECTDIR}/_ext/1147412712/timers.o ${OBJECTDIR}/_ext/1386115845/heap_2.o ${OBJECTDIR}/_ext/495416742/port.o ${OBJECTDIR}/_ext/1864667112/AT45D.o ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o ${OBJECTDIR}/_ext/1864667112/usb.o ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o ${OBJECTDIR}/_ext/1864667112/minIni.o ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o ${OBJECTDIR}/_ext/1864667112/usb_cdc.o ${OBJECTDIR}/_ext/1864667112/usb_msd.o ${OBJECTDIR}/_ext/1077454706/libUDB.o ${OBJECTDIR}/_ext/1077454706/traps_asm.o ${OBJECTDIR}/_ext/1077454706/mcu.o ${OBJECTDIR}/_ext/1077454706/traps.o ${OBJECTDIR}/_ext/1077454706/write.o ${OBJECTDIR}/_ext/1077454706/read.o ${OBJECTDIR}/_ext/1077454706/mpu_spi.o ${OBJECTDIR}/_ext/1077454706/sysTick.o ${OBJECTDIR}/_ext/1077454706/parameters.o ${OBJECTDIR}/_ext/1077454706/events.o ${OBJECTDIR}/_ext/1077454706/timer.o ${OBJECTDIR}/_ext/679848855/madd.o ${OBJECTDIR}/_ext/679848855/mmul.o ${OBJECTDIR}/_ext/679848855/mscl.o ${OBJECTDIR}/_ext/679848855/msub.o ${OBJECTDIR}/_ext/679848855/mtrp.o ${OBJECTDIR}/_ext/679848855/vadd.o ${OBJECTDIR}/_ext/679848855/vcon.o ${OBJECTDIR}/_ext/679848855/vcopy.o ${OBJECTDIR}/_ext/679848855/vcor.o ${OBJECTDIR}/_ext/679848855/vdot.o ${OBJECTDIR}/_ext/679848855/vmax.o ${OBJECTDIR}/_ext/679848855/vmin.o ${OBJECTDIR}/_ext/679848855/vmul.o ${OBJECTDIR}/_ext/679848855/vneg.o ${OBJECTDIR}/_ext/679848855/vpow.o ${OBJECTDIR}/_ext/679848855/vscl.o ${OBJECTDIR}/_ext/679848855/vsub.o ${OBJECTDIR}/_ext/679848855/vzpad.o ${OBJECTDIR}/_ext/1472/servoMix.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/stack.o ${OBJECTDIR}/_ext/1472/parameter_storage.o ${OBJECTDIR}/_ext/1472/parameter_scaling.o ${OBJECTDIR}/_ext/1472/flash.o ${OBJECTDIR}/_ext/1472/lib_usb.o ${OBJECTDIR}/_ext/65885567/FSIO.o ${OBJECTDIR}/_ext/713068069/usb_device.o ${OBJECTDIR}/_ext/41277818/usb_function_msd.o ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o ${OBJECTDIR}/_ext/1166020650/usb_function_cdc.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1147412712/croutine.o.d ${OBJECTDIR}/_ext/1147412712/list.o.d ${OBJECTDIR}/_ext/1147412712/queue.o.d ${OBJECTDIR}/_ext/1147412712/tasks.o.d ${OBJECTDIR}/_ext/1147412712/timers.o.d ${OBJECTDIR}/_ext/1386115845/heap_2.o.d ${OBJECTDIR}/_ext/495416742/port.o.d ${OBJECTDIR}/_ext/1864667112/AT45D.o.d ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o.d ${OBJECTDIR}/_ext/1864667112/usb.o.d ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o.d ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o.d ${OBJECTDIR}/_ext/1864667112/minIni.o.d ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o.d ${OBJECTDIR}/_ext/1864667112/usb_cdc.o.d ${OBJECTDIR}/_ext/1864667112/usb_msd.o.d ${OBJECTDIR}/_ext/1077454706/libUDB.o.d ${OBJECTDIR}/_ext/1077454706/traps_asm.o.d ${OBJECTDIR}/_ext/1077454706/mcu.o.d ${OBJECTDIR}/_ext/1077454706/traps.o.d ${OBJECTDIR}/_ext/1077454706/write.o.d ${OBJECTDIR}/_ext/1077454706/read.o.d ${OBJECTDIR}/_ext/1077454706/mpu_spi.o.d ${OBJECTDIR}/_ext/1077454706/sysTick.o.d ${OBJECTDIR}/_ext/1077454706/parameters.o.d ${OBJECTDIR}/_ext/1077454706/events.o.d ${OBJECTDIR}/_ext/1077454706/timer.o.d ${OBJECTDIR}/_ext/679848855/madd.o.d ${OBJECTDIR}/_ext/679848855/mmul.o.d ${OBJECTDIR}/_ext/679848855/mscl.o.d ${OBJECTDIR}/_ext/679848855/msub.o.d ${OBJECTDIR}/_ext/679848855/mtrp.o.d ${OBJECTDIR}/_ext/679848855/vadd.o.d ${OBJECTDIR}/_ext/679848855/vcon.o.d ${OBJECTDIR}/_ext/679848855/vcopy.o.d ${OBJECTDIR}/_ext/679848855/vcor.o.d ${OBJECTDIR}/_ext/679848855/vdot.o.d ${OBJECTDIR}/_ext/679848855/vmax.o.d ${OBJECTDIR}/_ext/679848855/vmin.o.d ${OBJECTDIR}/_ext/679848855/vmul.o.d ${OBJECTDIR}/_ext/679848855/vneg.o.d ${OBJECTDIR}/_ext/679848855/vpow.o.d ${OBJECTDIR}/_ext/679848855/vscl.o.d ${OBJECTDIR}/_ext/679848855/vsub.o.d ${OBJECTDIR}/_ext/679848855/vzpad.o.d ${OBJECTDIR}/_ext/1472/servoMix.o.d ${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1472/stack.o.d ${OBJECTDIR}/_ext/1472/parameter_storage.o.d ${OBJECTDIR}/_ext/1472/parameter_scaling.o.d ${OBJECTDIR}/_ext/1472/flash.o.d ${OBJECTDIR}/_ext/1472/lib_usb.o.d ${OBJECTDIR}/_ext/65885567/FSIO.o.d ${OBJECTDIR}/_ext/713068069/usb_device.o.d ${OBJECTDIR}/_ext/41277818/usb_function_msd.o.d ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o.d ${OBJECTDIR}/_ext/1166020650/usb_function_cdc.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1147412712/croutine.o ${OBJECTDIR}/_ext/1147412712/list.o ${OBJECTDIR}/_ext/1147412712/queue.o ${OBJECTDIR}/_ext/1147412712/tasks.o ${OBJECTDIR}/_ext/1147412712/timers.o ${OBJECTDIR}/_ext/1386115845/heap_2.o ${OBJECTDIR}/_ext/495416742/port.o ${OBJECTDIR}/_ext/1864667112/AT45D.o ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o ${OBJECTDIR}/_ext/1864667112/usb.o ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o ${OBJECTDIR}/_ext/1864667112/minIni.o ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o ${OBJECTDIR}/_ext/1864667112/usb_cdc.o ${OBJECTDIR}/_ext/1864667112/usb_msd.o ${OBJECTDIR}/_ext/1077454706/libUDB.o ${OBJECTDIR}/_ext/1077454706/traps_asm.o ${OBJECTDIR}/_ext/1077454706/mcu.o ${OBJECTDIR}/_ext/1077454706/traps.o ${OBJECTDIR}/_ext/1077454706/write.o ${OBJECTDIR}/_ext/1077454706/read.o ${OBJECTDIR}/_ext/1077454706/mpu_spi.o ${OBJECTDIR}/_ext/1077454706/sysTick.o ${OBJECTDIR}/_ext/1077454706/parameters.o ${OBJECTDIR}/_ext/1077454706/events.o ${OBJECTDIR}/_ext/1077454706/timer.o ${OBJECTDIR}/_ext/679848855/madd.o ${OBJECTDIR}/_ext/679848855/mmul.o ${OBJECTDIR}/_ext/679848855/mscl.o ${OBJECTDIR}/_ext/679848855/msub.o ${OBJECTDIR}/_ext/679848855/mtrp.o ${OBJECTDIR}/_ext/679848855/vadd.o ${OBJECTDIR}/_ext/679848855/vcon.o ${OBJECTDIR}/_ext/679848855/vcopy.o ${OBJECTDIR}/_ext/679848855/vcor.o ${OBJECTDIR}/_ext/679848855/vdot.o ${OBJECTDIR}/_ext/679848855/vmax.o ${OBJECTDIR}/_ext/679848855/vmin.o ${OBJECTDIR}/_ext/679848855/vmul.o ${OBJECTDIR}/_ext/679848855/vneg.o ${OBJECTDIR}/_ext/679848855/vpow.o ${OBJECTDIR}/_ext/679848855/vscl.o ${OBJECTDIR}/_ext/679848855/vsub.o ${OBJECTDIR}/_ext/679848855/vzpad.o ${OBJECTDIR}/_ext/1472/servoMix.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/stack.o ${OBJECTDIR}/_ext/1472/parameter_storage.o ${OBJECTDIR}/_ext/1472/parameter_scaling.o ${OBJECTDIR}/_ext/1472/flash.o ${OBJECTDIR}/_ext/1472/lib_usb.o ${OBJECTDIR}/_ext/65885567/FSIO.o ${OBJECTDIR}/_ext/713068069/usb_device.o ${OBJECTDIR}/_ext/41277818/usb_function_msd.o ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o ${OBJECTDIR}/_ext/1166020650/usb_function_cdc.o

# Source Files
SOURCEFILES=../../FreeRTOS/Source/croutine.c ../../FreeRTOS/Source/list.c ../../FreeRTOS/Source/queue.c ../../FreeRTOS/Source/tasks.c ../../FreeRTOS/Source/timers.c ../../FreeRTOS/Source/portable/MemMang/heap_2.c ../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c ../../libFlashFS/AT45D.c ../../libFlashFS/MDD_AT45D.c ../../libFlashFS/usb.c ../../libFlashFS/usb_descriptors.c ../../libFlashFS/AT45D_FS.c ../../libFlashFS/minIni.c ../../libFlashFS/AT45D_DMA.c ../../libFlashFS/usb_cdc.c ../../libFlashFS/usb_msd.c ../../libUDB/libUDB.c ../../libUDB/traps_asm.s ../../libUDB/mcu.c ../../libUDB/traps.c ../../libUDB/write.c ../../libUDB/read.c ../../libUDB/mpu_spi.c ../../libUDB/sysTick.c ../../libUDB/parameters.c ../../libUDB/events.c ../../libUDB/timer.c ../../libVectorMatrix/madd.s ../../libVectorMatrix/mmul.s ../../libVectorMatrix/mscl.s ../../libVectorMatrix/msub.s ../../libVectorMatrix/mtrp.s ../../libVectorMatrix/vadd.s ../../libVectorMatrix/vcon.s ../../libVectorMatrix/vcopy.s ../../libVectorMatrix/vcor.s ../../libVectorMatrix/vdot.s ../../libVectorMatrix/vmax.s ../../libVectorMatrix/vmin.s ../../libVectorMatrix/vmul.s ../../libVectorMatrix/vneg.s ../../libVectorMatrix/vpow.s ../../libVectorMatrix/vscl.s ../../libVectorMatrix/vsub.s ../../libVectorMatrix/vzpad.s ../servoMix.c ../main.c ../stack.S ../parameter_storage.c ../parameter_scaling.c ../flash.c ../lib_usb.c ../../Microchip/MDD File System/FSIO.c ../../Microchip/USB/usb_device.c ../../Microchip/USB/MSD Device Driver/usb_function_msd.c ../../Microchip/USB/usb_hal_dspic33e.c ../../Microchip/USB/CDC Device Driver/usb_function_cdc.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE} ${MAKE_OPTIONS} -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/MatrixPilot-auav3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33EP512MU810
MP_LINKER_FILE_OPTION=,--script="p33EP512MU810.gld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1147412712/croutine.o: ../../FreeRTOS/Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1147412712 
	@${RM} ${OBJECTDIR}/_ext/1147412712/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1147412712/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/Source/croutine.c  -o ${OBJECTDIR}/_ext/1147412712/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1147412712/croutine.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1147412712/croutine.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1147412712/list.o: ../../FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1147412712 
	@${RM} ${OBJECTDIR}/_ext/1147412712/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1147412712/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/Source/list.c  -o ${OBJECTDIR}/_ext/1147412712/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1147412712/list.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1147412712/list.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1147412712/queue.o: ../../FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1147412712 
	@${RM} ${OBJECTDIR}/_ext/1147412712/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1147412712/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/Source/queue.c  -o ${OBJECTDIR}/_ext/1147412712/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1147412712/queue.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1147412712/queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1147412712/tasks.o: ../../FreeRTOS/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1147412712 
	@${RM} ${OBJECTDIR}/_ext/1147412712/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1147412712/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/Source/tasks.c  -o ${OBJECTDIR}/_ext/1147412712/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1147412712/tasks.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1147412712/tasks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1147412712/timers.o: ../../FreeRTOS/Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1147412712 
	@${RM} ${OBJECTDIR}/_ext/1147412712/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1147412712/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/Source/timers.c  -o ${OBJECTDIR}/_ext/1147412712/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1147412712/timers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1147412712/timers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386115845/heap_2.o: ../../FreeRTOS/Source/portable/MemMang/heap_2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1386115845 
	@${RM} ${OBJECTDIR}/_ext/1386115845/heap_2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386115845/heap_2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/Source/portable/MemMang/heap_2.c  -o ${OBJECTDIR}/_ext/1386115845/heap_2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1386115845/heap_2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386115845/heap_2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/495416742/port.o: ../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/495416742 
	@${RM} ${OBJECTDIR}/_ext/495416742/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/495416742/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/_ext/495416742/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/495416742/port.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/495416742/port.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1864667112/AT45D.o: ../../libFlashFS/AT45D.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1864667112 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/AT45D.c  -o ${OBJECTDIR}/_ext/1864667112/AT45D.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1864667112/AT45D.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1864667112/AT45D.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o: ../../libFlashFS/MDD_AT45D.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1864667112 
	@${RM} ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/MDD_AT45D.c  -o ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1864667112/usb.o: ../../libFlashFS/usb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1864667112 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb.c  -o ${OBJECTDIR}/_ext/1864667112/usb.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1864667112/usb.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1864667112/usb_descriptors.o: ../../libFlashFS/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1864667112 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb_descriptors.c  -o ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb_descriptors.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1864667112/usb_descriptors.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1864667112/AT45D_FS.o: ../../libFlashFS/AT45D_FS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1864667112 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/AT45D_FS.c  -o ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1864667112/AT45D_FS.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1864667112/AT45D_FS.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1864667112/minIni.o: ../../libFlashFS/minIni.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1864667112 
	@${RM} ${OBJECTDIR}/_ext/1864667112/minIni.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/minIni.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/minIni.c  -o ${OBJECTDIR}/_ext/1864667112/minIni.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1864667112/minIni.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1864667112/minIni.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o: ../../libFlashFS/AT45D_DMA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1864667112 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/AT45D_DMA.c  -o ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1864667112/usb_cdc.o: ../../libFlashFS/usb_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1864667112 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_cdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb_cdc.c  -o ${OBJECTDIR}/_ext/1864667112/usb_cdc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb_cdc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1864667112/usb_cdc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1864667112/usb_msd.o: ../../libFlashFS/usb_msd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1864667112 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_msd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb_msd.c  -o ${OBJECTDIR}/_ext/1864667112/usb_msd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb_msd.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1864667112/usb_msd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1077454706/libUDB.o: ../../libUDB/libUDB.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/libUDB.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/libUDB.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/libUDB.c  -o ${OBJECTDIR}/_ext/1077454706/libUDB.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1077454706/libUDB.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/libUDB.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1077454706/mcu.o: ../../libUDB/mcu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mcu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mcu.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/mcu.c  -o ${OBJECTDIR}/_ext/1077454706/mcu.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1077454706/mcu.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/mcu.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1077454706/traps.o: ../../libUDB/traps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/traps.c  -o ${OBJECTDIR}/_ext/1077454706/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1077454706/traps.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/traps.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1077454706/write.o: ../../libUDB/write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/write.c  -o ${OBJECTDIR}/_ext/1077454706/write.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1077454706/write.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/write.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1077454706/read.o: ../../libUDB/read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/read.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/read.c  -o ${OBJECTDIR}/_ext/1077454706/read.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1077454706/read.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/read.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1077454706/mpu_spi.o: ../../libUDB/mpu_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mpu_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mpu_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/mpu_spi.c  -o ${OBJECTDIR}/_ext/1077454706/mpu_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1077454706/mpu_spi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/mpu_spi.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1077454706/sysTick.o: ../../libUDB/sysTick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/sysTick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/sysTick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/sysTick.c  -o ${OBJECTDIR}/_ext/1077454706/sysTick.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1077454706/sysTick.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/sysTick.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1077454706/parameters.o: ../../libUDB/parameters.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/parameters.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/parameters.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/parameters.c  -o ${OBJECTDIR}/_ext/1077454706/parameters.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1077454706/parameters.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/parameters.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1077454706/events.o: ../../libUDB/events.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/events.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/events.c  -o ${OBJECTDIR}/_ext/1077454706/events.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1077454706/events.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/events.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1077454706/timer.o: ../../libUDB/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/timer.c  -o ${OBJECTDIR}/_ext/1077454706/timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1077454706/timer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/timer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/servoMix.o: ../servoMix.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/servoMix.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/servoMix.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../servoMix.c  -o ${OBJECTDIR}/_ext/1472/servoMix.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/servoMix.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/servoMix.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../main.c  -o ${OBJECTDIR}/_ext/1472/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/parameter_storage.o: ../parameter_storage.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/parameter_storage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/parameter_storage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../parameter_storage.c  -o ${OBJECTDIR}/_ext/1472/parameter_storage.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/parameter_storage.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/parameter_storage.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/parameter_scaling.o: ../parameter_scaling.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/parameter_scaling.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/parameter_scaling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../parameter_scaling.c  -o ${OBJECTDIR}/_ext/1472/parameter_scaling.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/parameter_scaling.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/parameter_scaling.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/flash.o: ../flash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../flash.c  -o ${OBJECTDIR}/_ext/1472/flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/flash.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/flash.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/lib_usb.o: ../lib_usb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/lib_usb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lib_usb.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../lib_usb.c  -o ${OBJECTDIR}/_ext/1472/lib_usb.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/lib_usb.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lib_usb.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/65885567/FSIO.o: ../../Microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/65885567 
	@${RM} ${OBJECTDIR}/_ext/65885567/FSIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/65885567/FSIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "../../Microchip/MDD File System/FSIO.c"  -o ${OBJECTDIR}/_ext/65885567/FSIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/65885567/FSIO.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/65885567/FSIO.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/713068069/usb_device.o: ../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/713068069 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/USB/usb_device.c  -o ${OBJECTDIR}/_ext/713068069/usb_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/713068069/usb_device.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/713068069/usb_device.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/41277818/usb_function_msd.o: ../../Microchip/USB/MSD\ Device\ Driver/usb_function_msd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/41277818 
	@${RM} ${OBJECTDIR}/_ext/41277818/usb_function_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/41277818/usb_function_msd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "../../Microchip/USB/MSD Device Driver/usb_function_msd.c"  -o ${OBJECTDIR}/_ext/41277818/usb_function_msd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/41277818/usb_function_msd.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/41277818/usb_function_msd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o: ../../Microchip/USB/usb_hal_dspic33e.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/713068069 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o.d 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/USB/usb_hal_dspic33e.c  -o ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1166020650/usb_function_cdc.o: ../../Microchip/USB/CDC\ Device\ Driver/usb_function_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1166020650 
	@${RM} ${OBJECTDIR}/_ext/1166020650/usb_function_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1166020650/usb_function_cdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "../../Microchip/USB/CDC Device Driver/usb_function_cdc.c"  -o ${OBJECTDIR}/_ext/1166020650/usb_function_cdc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1166020650/usb_function_cdc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1166020650/usb_function_cdc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1147412712/croutine.o: ../../FreeRTOS/Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1147412712 
	@${RM} ${OBJECTDIR}/_ext/1147412712/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1147412712/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/Source/croutine.c  -o ${OBJECTDIR}/_ext/1147412712/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1147412712/croutine.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1147412712/croutine.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1147412712/list.o: ../../FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1147412712 
	@${RM} ${OBJECTDIR}/_ext/1147412712/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1147412712/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/Source/list.c  -o ${OBJECTDIR}/_ext/1147412712/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1147412712/list.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1147412712/list.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1147412712/queue.o: ../../FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1147412712 
	@${RM} ${OBJECTDIR}/_ext/1147412712/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1147412712/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/Source/queue.c  -o ${OBJECTDIR}/_ext/1147412712/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1147412712/queue.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1147412712/queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1147412712/tasks.o: ../../FreeRTOS/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1147412712 
	@${RM} ${OBJECTDIR}/_ext/1147412712/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1147412712/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/Source/tasks.c  -o ${OBJECTDIR}/_ext/1147412712/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1147412712/tasks.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1147412712/tasks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1147412712/timers.o: ../../FreeRTOS/Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1147412712 
	@${RM} ${OBJECTDIR}/_ext/1147412712/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1147412712/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/Source/timers.c  -o ${OBJECTDIR}/_ext/1147412712/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1147412712/timers.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1147412712/timers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386115845/heap_2.o: ../../FreeRTOS/Source/portable/MemMang/heap_2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1386115845 
	@${RM} ${OBJECTDIR}/_ext/1386115845/heap_2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386115845/heap_2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/Source/portable/MemMang/heap_2.c  -o ${OBJECTDIR}/_ext/1386115845/heap_2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1386115845/heap_2.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386115845/heap_2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/495416742/port.o: ../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/495416742 
	@${RM} ${OBJECTDIR}/_ext/495416742/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/495416742/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/_ext/495416742/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/495416742/port.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/495416742/port.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1864667112/AT45D.o: ../../libFlashFS/AT45D.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1864667112 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/AT45D.c  -o ${OBJECTDIR}/_ext/1864667112/AT45D.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1864667112/AT45D.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1864667112/AT45D.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o: ../../libFlashFS/MDD_AT45D.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1864667112 
	@${RM} ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/MDD_AT45D.c  -o ${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1864667112/MDD_AT45D.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1864667112/usb.o: ../../libFlashFS/usb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1864667112 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb.c  -o ${OBJECTDIR}/_ext/1864667112/usb.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1864667112/usb.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1864667112/usb_descriptors.o: ../../libFlashFS/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1864667112 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb_descriptors.c  -o ${OBJECTDIR}/_ext/1864667112/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb_descriptors.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1864667112/usb_descriptors.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1864667112/AT45D_FS.o: ../../libFlashFS/AT45D_FS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1864667112 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/AT45D_FS.c  -o ${OBJECTDIR}/_ext/1864667112/AT45D_FS.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1864667112/AT45D_FS.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1864667112/AT45D_FS.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1864667112/minIni.o: ../../libFlashFS/minIni.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1864667112 
	@${RM} ${OBJECTDIR}/_ext/1864667112/minIni.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/minIni.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/minIni.c  -o ${OBJECTDIR}/_ext/1864667112/minIni.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1864667112/minIni.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1864667112/minIni.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o: ../../libFlashFS/AT45D_DMA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1864667112 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/AT45D_DMA.c  -o ${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1864667112/AT45D_DMA.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1864667112/usb_cdc.o: ../../libFlashFS/usb_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1864667112 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_cdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb_cdc.c  -o ${OBJECTDIR}/_ext/1864667112/usb_cdc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb_cdc.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1864667112/usb_cdc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1864667112/usb_msd.o: ../../libFlashFS/usb_msd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1864667112 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1864667112/usb_msd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libFlashFS/usb_msd.c  -o ${OBJECTDIR}/_ext/1864667112/usb_msd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1864667112/usb_msd.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1864667112/usb_msd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1077454706/libUDB.o: ../../libUDB/libUDB.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/libUDB.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/libUDB.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/libUDB.c  -o ${OBJECTDIR}/_ext/1077454706/libUDB.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1077454706/libUDB.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/libUDB.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1077454706/mcu.o: ../../libUDB/mcu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mcu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mcu.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/mcu.c  -o ${OBJECTDIR}/_ext/1077454706/mcu.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1077454706/mcu.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/mcu.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1077454706/traps.o: ../../libUDB/traps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/traps.c  -o ${OBJECTDIR}/_ext/1077454706/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1077454706/traps.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/traps.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1077454706/write.o: ../../libUDB/write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/write.c  -o ${OBJECTDIR}/_ext/1077454706/write.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1077454706/write.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/write.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1077454706/read.o: ../../libUDB/read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/read.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/read.c  -o ${OBJECTDIR}/_ext/1077454706/read.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1077454706/read.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/read.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1077454706/mpu_spi.o: ../../libUDB/mpu_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mpu_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/mpu_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/mpu_spi.c  -o ${OBJECTDIR}/_ext/1077454706/mpu_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1077454706/mpu_spi.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/mpu_spi.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1077454706/sysTick.o: ../../libUDB/sysTick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/sysTick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/sysTick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/sysTick.c  -o ${OBJECTDIR}/_ext/1077454706/sysTick.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1077454706/sysTick.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/sysTick.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1077454706/parameters.o: ../../libUDB/parameters.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/parameters.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/parameters.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/parameters.c  -o ${OBJECTDIR}/_ext/1077454706/parameters.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1077454706/parameters.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/parameters.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1077454706/events.o: ../../libUDB/events.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/events.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/events.c  -o ${OBJECTDIR}/_ext/1077454706/events.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1077454706/events.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/events.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1077454706/timer.o: ../../libUDB/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libUDB/timer.c  -o ${OBJECTDIR}/_ext/1077454706/timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1077454706/timer.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/timer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/servoMix.o: ../servoMix.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/servoMix.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/servoMix.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../servoMix.c  -o ${OBJECTDIR}/_ext/1472/servoMix.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/servoMix.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/servoMix.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../main.c  -o ${OBJECTDIR}/_ext/1472/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/parameter_storage.o: ../parameter_storage.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/parameter_storage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/parameter_storage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../parameter_storage.c  -o ${OBJECTDIR}/_ext/1472/parameter_storage.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/parameter_storage.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/parameter_storage.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/parameter_scaling.o: ../parameter_scaling.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/parameter_scaling.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/parameter_scaling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../parameter_scaling.c  -o ${OBJECTDIR}/_ext/1472/parameter_scaling.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/parameter_scaling.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/parameter_scaling.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/flash.o: ../flash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../flash.c  -o ${OBJECTDIR}/_ext/1472/flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/flash.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/flash.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/lib_usb.o: ../lib_usb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/lib_usb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lib_usb.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../lib_usb.c  -o ${OBJECTDIR}/_ext/1472/lib_usb.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/lib_usb.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lib_usb.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/65885567/FSIO.o: ../../Microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/65885567 
	@${RM} ${OBJECTDIR}/_ext/65885567/FSIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/65885567/FSIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "../../Microchip/MDD File System/FSIO.c"  -o ${OBJECTDIR}/_ext/65885567/FSIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/65885567/FSIO.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/65885567/FSIO.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/713068069/usb_device.o: ../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/713068069 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/USB/usb_device.c  -o ${OBJECTDIR}/_ext/713068069/usb_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/713068069/usb_device.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/713068069/usb_device.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/41277818/usb_function_msd.o: ../../Microchip/USB/MSD\ Device\ Driver/usb_function_msd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/41277818 
	@${RM} ${OBJECTDIR}/_ext/41277818/usb_function_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/41277818/usb_function_msd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "../../Microchip/USB/MSD Device Driver/usb_function_msd.c"  -o ${OBJECTDIR}/_ext/41277818/usb_function_msd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/41277818/usb_function_msd.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/41277818/usb_function_msd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o: ../../Microchip/USB/usb_hal_dspic33e.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/713068069 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o.d 
	@${RM} ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Microchip/USB/usb_hal_dspic33e.c  -o ${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/713068069/usb_hal_dspic33e.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1166020650/usb_function_cdc.o: ../../Microchip/USB/CDC\ Device\ Driver/usb_function_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1166020650 
	@${RM} ${OBJECTDIR}/_ext/1166020650/usb_function_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1166020650/usb_function_cdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "../../Microchip/USB/CDC Device Driver/usb_function_cdc.c"  -o ${OBJECTDIR}/_ext/1166020650/usb_function_cdc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1166020650/usb_function_cdc.o.d"      -g -omf=elf -legacy-libc -mlarge-code -mlarge-data -O0 -I"../../MAVLink/include" -I"../../libUDB" -I"../../libDCM" -I"../../MAVLink/include/common" -I"../../MAVLink/include/matrixpilot" -I"../../MatrixPilot" -I"../../libFlashFS" -I"../../Microchip/Include" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"../../FreeRTOS/Source/portable/MemMang" -DAUAV3 -DUSE_SD_INTERFACE_WITH_SPI -msmart-io=1 -Wall -msfr-warn=on -mno-eds-warn
	@${FIXDEPS} "${OBJECTDIR}/_ext/1166020650/usb_function_cdc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1077454706/traps_asm.o: ../../libUDB/traps_asm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libUDB/traps_asm.s  -o ${OBJECTDIR}/_ext/1077454706/traps_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/1077454706/traps_asm.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/traps_asm.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/madd.o: ../../libVectorMatrix/madd.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/madd.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/madd.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/madd.s  -o ${OBJECTDIR}/_ext/679848855/madd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/madd.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/madd.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/mmul.o: ../../libVectorMatrix/mmul.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/mmul.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/mmul.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/mmul.s  -o ${OBJECTDIR}/_ext/679848855/mmul.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/mmul.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/mmul.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/mscl.o: ../../libVectorMatrix/mscl.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/mscl.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/mscl.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/mscl.s  -o ${OBJECTDIR}/_ext/679848855/mscl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/mscl.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/mscl.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/msub.o: ../../libVectorMatrix/msub.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/msub.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/msub.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/msub.s  -o ${OBJECTDIR}/_ext/679848855/msub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/msub.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/msub.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/mtrp.o: ../../libVectorMatrix/mtrp.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/mtrp.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/mtrp.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/mtrp.s  -o ${OBJECTDIR}/_ext/679848855/mtrp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/mtrp.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/mtrp.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vadd.o: ../../libVectorMatrix/vadd.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vadd.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vadd.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vadd.s  -o ${OBJECTDIR}/_ext/679848855/vadd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vadd.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vadd.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vcon.o: ../../libVectorMatrix/vcon.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcon.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vcon.s  -o ${OBJECTDIR}/_ext/679848855/vcon.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vcon.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vcon.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vcopy.o: ../../libVectorMatrix/vcopy.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcopy.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcopy.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vcopy.s  -o ${OBJECTDIR}/_ext/679848855/vcopy.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vcopy.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vcopy.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vcor.o: ../../libVectorMatrix/vcor.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcor.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcor.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vcor.s  -o ${OBJECTDIR}/_ext/679848855/vcor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vcor.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vcor.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vdot.o: ../../libVectorMatrix/vdot.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vdot.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vdot.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vdot.s  -o ${OBJECTDIR}/_ext/679848855/vdot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vdot.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vdot.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vmax.o: ../../libVectorMatrix/vmax.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmax.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vmax.s  -o ${OBJECTDIR}/_ext/679848855/vmax.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vmax.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vmax.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vmin.o: ../../libVectorMatrix/vmin.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmin.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmin.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vmin.s  -o ${OBJECTDIR}/_ext/679848855/vmin.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vmin.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vmin.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vmul.o: ../../libVectorMatrix/vmul.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmul.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmul.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vmul.s  -o ${OBJECTDIR}/_ext/679848855/vmul.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vmul.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vmul.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vneg.o: ../../libVectorMatrix/vneg.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vneg.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vneg.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vneg.s  -o ${OBJECTDIR}/_ext/679848855/vneg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vneg.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vneg.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vpow.o: ../../libVectorMatrix/vpow.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vpow.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vpow.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vpow.s  -o ${OBJECTDIR}/_ext/679848855/vpow.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vpow.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vpow.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vscl.o: ../../libVectorMatrix/vscl.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vscl.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vscl.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vscl.s  -o ${OBJECTDIR}/_ext/679848855/vscl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vscl.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vscl.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vsub.o: ../../libVectorMatrix/vsub.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vsub.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vsub.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vsub.s  -o ${OBJECTDIR}/_ext/679848855/vsub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vsub.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vsub.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vzpad.o: ../../libVectorMatrix/vzpad.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vzpad.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vzpad.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vzpad.s  -o ${OBJECTDIR}/_ext/679848855/vzpad.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vzpad.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vzpad.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1077454706/traps_asm.o: ../../libUDB/traps_asm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1077454706 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1077454706/traps_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libUDB/traps_asm.s  -o ${OBJECTDIR}/_ext/1077454706/traps_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/1077454706/traps_asm.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1077454706/traps_asm.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/madd.o: ../../libVectorMatrix/madd.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/madd.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/madd.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/madd.s  -o ${OBJECTDIR}/_ext/679848855/madd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/madd.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/madd.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/mmul.o: ../../libVectorMatrix/mmul.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/mmul.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/mmul.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/mmul.s  -o ${OBJECTDIR}/_ext/679848855/mmul.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/mmul.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/mmul.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/mscl.o: ../../libVectorMatrix/mscl.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/mscl.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/mscl.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/mscl.s  -o ${OBJECTDIR}/_ext/679848855/mscl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/mscl.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/mscl.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/msub.o: ../../libVectorMatrix/msub.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/msub.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/msub.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/msub.s  -o ${OBJECTDIR}/_ext/679848855/msub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/msub.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/msub.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/mtrp.o: ../../libVectorMatrix/mtrp.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/mtrp.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/mtrp.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/mtrp.s  -o ${OBJECTDIR}/_ext/679848855/mtrp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/mtrp.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/mtrp.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vadd.o: ../../libVectorMatrix/vadd.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vadd.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vadd.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vadd.s  -o ${OBJECTDIR}/_ext/679848855/vadd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vadd.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vadd.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vcon.o: ../../libVectorMatrix/vcon.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcon.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vcon.s  -o ${OBJECTDIR}/_ext/679848855/vcon.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vcon.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vcon.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vcopy.o: ../../libVectorMatrix/vcopy.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcopy.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcopy.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vcopy.s  -o ${OBJECTDIR}/_ext/679848855/vcopy.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vcopy.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vcopy.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vcor.o: ../../libVectorMatrix/vcor.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcor.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vcor.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vcor.s  -o ${OBJECTDIR}/_ext/679848855/vcor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vcor.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vcor.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vdot.o: ../../libVectorMatrix/vdot.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vdot.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vdot.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vdot.s  -o ${OBJECTDIR}/_ext/679848855/vdot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vdot.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vdot.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vmax.o: ../../libVectorMatrix/vmax.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmax.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vmax.s  -o ${OBJECTDIR}/_ext/679848855/vmax.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vmax.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vmax.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vmin.o: ../../libVectorMatrix/vmin.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmin.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmin.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vmin.s  -o ${OBJECTDIR}/_ext/679848855/vmin.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vmin.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vmin.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vmul.o: ../../libVectorMatrix/vmul.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmul.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vmul.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vmul.s  -o ${OBJECTDIR}/_ext/679848855/vmul.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vmul.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vmul.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vneg.o: ../../libVectorMatrix/vneg.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vneg.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vneg.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vneg.s  -o ${OBJECTDIR}/_ext/679848855/vneg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vneg.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vneg.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vpow.o: ../../libVectorMatrix/vpow.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vpow.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vpow.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vpow.s  -o ${OBJECTDIR}/_ext/679848855/vpow.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vpow.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vpow.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vscl.o: ../../libVectorMatrix/vscl.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vscl.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vscl.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vscl.s  -o ${OBJECTDIR}/_ext/679848855/vscl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vscl.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vscl.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vsub.o: ../../libVectorMatrix/vsub.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vsub.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vsub.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vsub.s  -o ${OBJECTDIR}/_ext/679848855/vsub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vsub.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vsub.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/679848855/vzpad.o: ../../libVectorMatrix/vzpad.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/679848855 
	@${RM} ${OBJECTDIR}/_ext/679848855/vzpad.o.d 
	@${RM} ${OBJECTDIR}/_ext/679848855/vzpad.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../libVectorMatrix/vzpad.s  -o ${OBJECTDIR}/_ext/679848855/vzpad.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/679848855/vzpad.o.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/679848855/vzpad.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/stack.o: ../stack.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/stack.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/stack.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../stack.S  -o ${OBJECTDIR}/_ext/1472/stack.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/stack.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/1472/stack.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/stack.o.d" "${OBJECTDIR}/_ext/1472/stack.o.asm.d"  -t $(SILENT)  -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1472/stack.o: ../stack.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/stack.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/stack.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../stack.S  -o ${OBJECTDIR}/_ext/1472/stack.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/stack.o.d"  -omf=elf -legacy-libc -I".." -I"../../libVectorMatrix" -Wa,-MD,"${OBJECTDIR}/_ext/1472/stack.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--defsym,PSV_ERRATA=1,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/stack.o.d" "${OBJECTDIR}/_ext/1472/stack.o.asm.d"  -t $(SILENT)  -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MatrixPilot-auav3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    p33EP512MU810.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MatrixPilot-auav3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -legacy-libc  -mreserve=data@0x1000:0x101B -mreserve=data@0x101C:0x101D -mreserve=data@0x101E:0x101F -mreserve=data@0x1020:0x1021 -mreserve=data@0x1022:0x1023 -mreserve=data@0x1024:0x1027 -mreserve=data@0x1028:0x104F   -Wl,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,$(MP_LINKER_FILE_OPTION),--heap=256,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/MatrixPilot-auav3.X.${IMAGE_TYPE}.map"$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MatrixPilot-auav3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   p33EP512MU810.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MatrixPilot-auav3.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -legacy-libc -Wl,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--heap=256,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/MatrixPilot-auav3.X.${IMAGE_TYPE}.map"$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MatrixPilot-auav3.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
