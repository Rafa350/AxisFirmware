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
ifeq "$(wildcard nbproject/Makefile-local-PIC32.mk)" "nbproject/Makefile-local-PIC32.mk"
include nbproject/Makefile-local-PIC32.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=PIC32
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../Motor.c ../Motion.c ../Config.c ../MotionService.c ../UsbService.c ../SelectorService.c ../DisplayService.c ../MnuMain.c ../MainForm.c C:/microchip/harmony/v1_05/framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c C:/microchip/harmony/v1_05/framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c C:/microchip/harmony/v1_05/framework/system/devcon/src/sys_devcon.c C:/microchip/harmony/v1_05/framework/system/devcon/src/sys_devcon_pic32mx.c C:/microchip/harmony/v1_05/framework/system/int/src/sys_int_pic32.c C:/microchip/harmony/v1_05/framework/usb/src/dynamic/usb_device.c C:/microchip/harmony/v1_05/framework/usb/src/dynamic/usb_device_hid.c ../Main.c ../../EOS/v1/Source/Services/eosDigInput.c ../../EOS/v1/Source/Services/eosDigOutput.c ../../EOS/v1/Source/Services/eosI2CMaster.c ../../EOS/v1/Source/Services/eosTick.c ../../EOS/v1/Source/Services/eosTimer.c ../../EOS/v1/Source/Services/Forms/eosForms.c ../../EOS/v1/Source/Services/Forms/eosFormsIncDec.c ../../EOS/v1/Source/Services/Forms/eosFormsList.c ../../EOS/v1/Source/Services/Forms/eosFormsMenus.c ../../EOS/v1/Source/System/eosCollection.c ../../EOS/v1/Source/System/eosHeap.c ../../EOS/v1/Source/System/eosInterrupt.c ../../EOS/v1/Source/System/eosKernel.c ../../EOS/v1/Source/System/eosPool.c ../../EOS/v1/Source/System/eosQueue.c ../../EOS/v1/Source/System/eosStart.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/Motor.o ${OBJECTDIR}/_ext/1472/Motion.o ${OBJECTDIR}/_ext/1472/Config.o ${OBJECTDIR}/_ext/1472/MotionService.o ${OBJECTDIR}/_ext/1472/UsbService.o ${OBJECTDIR}/_ext/1472/SelectorService.o ${OBJECTDIR}/_ext/1472/DisplayService.o ${OBJECTDIR}/_ext/1472/MnuMain.o ${OBJECTDIR}/_ext/1472/MainForm.o ${OBJECTDIR}/_ext/1758002385/drv_usbfs.o ${OBJECTDIR}/_ext/1758002385/drv_usbfs_device.o ${OBJECTDIR}/_ext/746221417/sys_devcon.o ${OBJECTDIR}/_ext/746221417/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1817942673/sys_int_pic32.o ${OBJECTDIR}/_ext/643550498/usb_device.o ${OBJECTDIR}/_ext/643550498/usb_device_hid.o ${OBJECTDIR}/_ext/1472/Main.o ${OBJECTDIR}/_ext/200689860/eosDigInput.o ${OBJECTDIR}/_ext/200689860/eosDigOutput.o ${OBJECTDIR}/_ext/200689860/eosI2CMaster.o ${OBJECTDIR}/_ext/200689860/eosTick.o ${OBJECTDIR}/_ext/200689860/eosTimer.o ${OBJECTDIR}/_ext/1353189124/eosForms.o ${OBJECTDIR}/_ext/1353189124/eosFormsIncDec.o ${OBJECTDIR}/_ext/1353189124/eosFormsList.o ${OBJECTDIR}/_ext/1353189124/eosFormsMenus.o ${OBJECTDIR}/_ext/1551666197/eosCollection.o ${OBJECTDIR}/_ext/1551666197/eosHeap.o ${OBJECTDIR}/_ext/1551666197/eosInterrupt.o ${OBJECTDIR}/_ext/1551666197/eosKernel.o ${OBJECTDIR}/_ext/1551666197/eosPool.o ${OBJECTDIR}/_ext/1551666197/eosQueue.o ${OBJECTDIR}/_ext/1551666197/eosStart.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/Motor.o.d ${OBJECTDIR}/_ext/1472/Motion.o.d ${OBJECTDIR}/_ext/1472/Config.o.d ${OBJECTDIR}/_ext/1472/MotionService.o.d ${OBJECTDIR}/_ext/1472/UsbService.o.d ${OBJECTDIR}/_ext/1472/SelectorService.o.d ${OBJECTDIR}/_ext/1472/DisplayService.o.d ${OBJECTDIR}/_ext/1472/MnuMain.o.d ${OBJECTDIR}/_ext/1472/MainForm.o.d ${OBJECTDIR}/_ext/1758002385/drv_usbfs.o.d ${OBJECTDIR}/_ext/1758002385/drv_usbfs_device.o.d ${OBJECTDIR}/_ext/746221417/sys_devcon.o.d ${OBJECTDIR}/_ext/746221417/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/1817942673/sys_int_pic32.o.d ${OBJECTDIR}/_ext/643550498/usb_device.o.d ${OBJECTDIR}/_ext/643550498/usb_device_hid.o.d ${OBJECTDIR}/_ext/1472/Main.o.d ${OBJECTDIR}/_ext/200689860/eosDigInput.o.d ${OBJECTDIR}/_ext/200689860/eosDigOutput.o.d ${OBJECTDIR}/_ext/200689860/eosI2CMaster.o.d ${OBJECTDIR}/_ext/200689860/eosTick.o.d ${OBJECTDIR}/_ext/200689860/eosTimer.o.d ${OBJECTDIR}/_ext/1353189124/eosForms.o.d ${OBJECTDIR}/_ext/1353189124/eosFormsIncDec.o.d ${OBJECTDIR}/_ext/1353189124/eosFormsList.o.d ${OBJECTDIR}/_ext/1353189124/eosFormsMenus.o.d ${OBJECTDIR}/_ext/1551666197/eosCollection.o.d ${OBJECTDIR}/_ext/1551666197/eosHeap.o.d ${OBJECTDIR}/_ext/1551666197/eosInterrupt.o.d ${OBJECTDIR}/_ext/1551666197/eosKernel.o.d ${OBJECTDIR}/_ext/1551666197/eosPool.o.d ${OBJECTDIR}/_ext/1551666197/eosQueue.o.d ${OBJECTDIR}/_ext/1551666197/eosStart.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/Motor.o ${OBJECTDIR}/_ext/1472/Motion.o ${OBJECTDIR}/_ext/1472/Config.o ${OBJECTDIR}/_ext/1472/MotionService.o ${OBJECTDIR}/_ext/1472/UsbService.o ${OBJECTDIR}/_ext/1472/SelectorService.o ${OBJECTDIR}/_ext/1472/DisplayService.o ${OBJECTDIR}/_ext/1472/MnuMain.o ${OBJECTDIR}/_ext/1472/MainForm.o ${OBJECTDIR}/_ext/1758002385/drv_usbfs.o ${OBJECTDIR}/_ext/1758002385/drv_usbfs_device.o ${OBJECTDIR}/_ext/746221417/sys_devcon.o ${OBJECTDIR}/_ext/746221417/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1817942673/sys_int_pic32.o ${OBJECTDIR}/_ext/643550498/usb_device.o ${OBJECTDIR}/_ext/643550498/usb_device_hid.o ${OBJECTDIR}/_ext/1472/Main.o ${OBJECTDIR}/_ext/200689860/eosDigInput.o ${OBJECTDIR}/_ext/200689860/eosDigOutput.o ${OBJECTDIR}/_ext/200689860/eosI2CMaster.o ${OBJECTDIR}/_ext/200689860/eosTick.o ${OBJECTDIR}/_ext/200689860/eosTimer.o ${OBJECTDIR}/_ext/1353189124/eosForms.o ${OBJECTDIR}/_ext/1353189124/eosFormsIncDec.o ${OBJECTDIR}/_ext/1353189124/eosFormsList.o ${OBJECTDIR}/_ext/1353189124/eosFormsMenus.o ${OBJECTDIR}/_ext/1551666197/eosCollection.o ${OBJECTDIR}/_ext/1551666197/eosHeap.o ${OBJECTDIR}/_ext/1551666197/eosInterrupt.o ${OBJECTDIR}/_ext/1551666197/eosKernel.o ${OBJECTDIR}/_ext/1551666197/eosPool.o ${OBJECTDIR}/_ext/1551666197/eosQueue.o ${OBJECTDIR}/_ext/1551666197/eosStart.o

# Source Files
SOURCEFILES=../Motor.c ../Motion.c ../Config.c ../MotionService.c ../UsbService.c ../SelectorService.c ../DisplayService.c ../MnuMain.c ../MainForm.c C:/microchip/harmony/v1_05/framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c C:/microchip/harmony/v1_05/framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c C:/microchip/harmony/v1_05/framework/system/devcon/src/sys_devcon.c C:/microchip/harmony/v1_05/framework/system/devcon/src/sys_devcon_pic32mx.c C:/microchip/harmony/v1_05/framework/system/int/src/sys_int_pic32.c C:/microchip/harmony/v1_05/framework/usb/src/dynamic/usb_device.c C:/microchip/harmony/v1_05/framework/usb/src/dynamic/usb_device_hid.c ../Main.c ../../EOS/v1/Source/Services/eosDigInput.c ../../EOS/v1/Source/Services/eosDigOutput.c ../../EOS/v1/Source/Services/eosI2CMaster.c ../../EOS/v1/Source/Services/eosTick.c ../../EOS/v1/Source/Services/eosTimer.c ../../EOS/v1/Source/Services/Forms/eosForms.c ../../EOS/v1/Source/Services/Forms/eosFormsIncDec.c ../../EOS/v1/Source/Services/Forms/eosFormsList.c ../../EOS/v1/Source/Services/Forms/eosFormsMenus.c ../../EOS/v1/Source/System/eosCollection.c ../../EOS/v1/Source/System/eosHeap.c ../../EOS/v1/Source/System/eosInterrupt.c ../../EOS/v1/Source/System/eosKernel.c ../../EOS/v1/Source/System/eosPool.c ../../EOS/v1/Source/System/eosQueue.c ../../EOS/v1/Source/System/eosStart.c


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
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-PIC32.mk dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/Motor.o: ../Motor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Motor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Motor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Motor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1472/Motor.o.d" -o ${OBJECTDIR}/_ext/1472/Motor.o ../Motor.c   
	
${OBJECTDIR}/_ext/1472/Motion.o: ../Motion.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Motion.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Motion.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Motion.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1472/Motion.o.d" -o ${OBJECTDIR}/_ext/1472/Motion.o ../Motion.c   
	
${OBJECTDIR}/_ext/1472/Config.o: ../Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Config.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1472/Config.o.d" -o ${OBJECTDIR}/_ext/1472/Config.o ../Config.c   
	
${OBJECTDIR}/_ext/1472/MotionService.o: ../MotionService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MotionService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MotionService.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MotionService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1472/MotionService.o.d" -o ${OBJECTDIR}/_ext/1472/MotionService.o ../MotionService.c   
	
${OBJECTDIR}/_ext/1472/UsbService.o: ../UsbService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/UsbService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UsbService.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/UsbService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1472/UsbService.o.d" -o ${OBJECTDIR}/_ext/1472/UsbService.o ../UsbService.c   
	
${OBJECTDIR}/_ext/1472/SelectorService.o: ../SelectorService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SelectorService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SelectorService.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SelectorService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1472/SelectorService.o.d" -o ${OBJECTDIR}/_ext/1472/SelectorService.o ../SelectorService.c   
	
${OBJECTDIR}/_ext/1472/DisplayService.o: ../DisplayService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DisplayService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DisplayService.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DisplayService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1472/DisplayService.o.d" -o ${OBJECTDIR}/_ext/1472/DisplayService.o ../DisplayService.c   
	
${OBJECTDIR}/_ext/1472/MnuMain.o: ../MnuMain.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MnuMain.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MnuMain.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MnuMain.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1472/MnuMain.o.d" -o ${OBJECTDIR}/_ext/1472/MnuMain.o ../MnuMain.c   
	
${OBJECTDIR}/_ext/1472/MainForm.o: ../MainForm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MainForm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainForm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainForm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1472/MainForm.o.d" -o ${OBJECTDIR}/_ext/1472/MainForm.o ../MainForm.c   
	
${OBJECTDIR}/_ext/1758002385/drv_usbfs.o: C:/microchip/harmony/v1_05/framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1758002385" 
	@${RM} ${OBJECTDIR}/_ext/1758002385/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1758002385/drv_usbfs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1758002385/drv_usbfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1758002385/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1758002385/drv_usbfs.o C:/microchip/harmony/v1_05/framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c   
	
${OBJECTDIR}/_ext/1758002385/drv_usbfs_device.o: C:/microchip/harmony/v1_05/framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1758002385" 
	@${RM} ${OBJECTDIR}/_ext/1758002385/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1758002385/drv_usbfs_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1758002385/drv_usbfs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1758002385/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1758002385/drv_usbfs_device.o C:/microchip/harmony/v1_05/framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c   
	
${OBJECTDIR}/_ext/746221417/sys_devcon.o: C:/microchip/harmony/v1_05/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/746221417" 
	@${RM} ${OBJECTDIR}/_ext/746221417/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/746221417/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/746221417/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/746221417/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/746221417/sys_devcon.o C:/microchip/harmony/v1_05/framework/system/devcon/src/sys_devcon.c   
	
${OBJECTDIR}/_ext/746221417/sys_devcon_pic32mx.o: C:/microchip/harmony/v1_05/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/746221417" 
	@${RM} ${OBJECTDIR}/_ext/746221417/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/746221417/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/746221417/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/746221417/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/746221417/sys_devcon_pic32mx.o C:/microchip/harmony/v1_05/framework/system/devcon/src/sys_devcon_pic32mx.c   
	
${OBJECTDIR}/_ext/1817942673/sys_int_pic32.o: C:/microchip/harmony/v1_05/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1817942673" 
	@${RM} ${OBJECTDIR}/_ext/1817942673/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1817942673/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1817942673/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1817942673/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1817942673/sys_int_pic32.o C:/microchip/harmony/v1_05/framework/system/int/src/sys_int_pic32.c   
	
${OBJECTDIR}/_ext/643550498/usb_device.o: C:/microchip/harmony/v1_05/framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/643550498" 
	@${RM} ${OBJECTDIR}/_ext/643550498/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/643550498/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/643550498/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/643550498/usb_device.o.d" -o ${OBJECTDIR}/_ext/643550498/usb_device.o C:/microchip/harmony/v1_05/framework/usb/src/dynamic/usb_device.c   
	
${OBJECTDIR}/_ext/643550498/usb_device_hid.o: C:/microchip/harmony/v1_05/framework/usb/src/dynamic/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/643550498" 
	@${RM} ${OBJECTDIR}/_ext/643550498/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/643550498/usb_device_hid.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/643550498/usb_device_hid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/643550498/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/643550498/usb_device_hid.o C:/microchip/harmony/v1_05/framework/usb/src/dynamic/usb_device_hid.c   
	
${OBJECTDIR}/_ext/1472/Main.o: ../Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1472/Main.o.d" -o ${OBJECTDIR}/_ext/1472/Main.o ../Main.c   
	
${OBJECTDIR}/_ext/200689860/eosDigInput.o: ../../EOS/v1/Source/Services/eosDigInput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/200689860" 
	@${RM} ${OBJECTDIR}/_ext/200689860/eosDigInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/200689860/eosDigInput.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/200689860/eosDigInput.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/200689860/eosDigInput.o.d" -o ${OBJECTDIR}/_ext/200689860/eosDigInput.o ../../EOS/v1/Source/Services/eosDigInput.c   
	
${OBJECTDIR}/_ext/200689860/eosDigOutput.o: ../../EOS/v1/Source/Services/eosDigOutput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/200689860" 
	@${RM} ${OBJECTDIR}/_ext/200689860/eosDigOutput.o.d 
	@${RM} ${OBJECTDIR}/_ext/200689860/eosDigOutput.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/200689860/eosDigOutput.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/200689860/eosDigOutput.o.d" -o ${OBJECTDIR}/_ext/200689860/eosDigOutput.o ../../EOS/v1/Source/Services/eosDigOutput.c   
	
${OBJECTDIR}/_ext/200689860/eosI2CMaster.o: ../../EOS/v1/Source/Services/eosI2CMaster.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/200689860" 
	@${RM} ${OBJECTDIR}/_ext/200689860/eosI2CMaster.o.d 
	@${RM} ${OBJECTDIR}/_ext/200689860/eosI2CMaster.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/200689860/eosI2CMaster.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/200689860/eosI2CMaster.o.d" -o ${OBJECTDIR}/_ext/200689860/eosI2CMaster.o ../../EOS/v1/Source/Services/eosI2CMaster.c   
	
${OBJECTDIR}/_ext/200689860/eosTick.o: ../../EOS/v1/Source/Services/eosTick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/200689860" 
	@${RM} ${OBJECTDIR}/_ext/200689860/eosTick.o.d 
	@${RM} ${OBJECTDIR}/_ext/200689860/eosTick.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/200689860/eosTick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/200689860/eosTick.o.d" -o ${OBJECTDIR}/_ext/200689860/eosTick.o ../../EOS/v1/Source/Services/eosTick.c   
	
${OBJECTDIR}/_ext/200689860/eosTimer.o: ../../EOS/v1/Source/Services/eosTimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/200689860" 
	@${RM} ${OBJECTDIR}/_ext/200689860/eosTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/200689860/eosTimer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/200689860/eosTimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/200689860/eosTimer.o.d" -o ${OBJECTDIR}/_ext/200689860/eosTimer.o ../../EOS/v1/Source/Services/eosTimer.c   
	
${OBJECTDIR}/_ext/1353189124/eosForms.o: ../../EOS/v1/Source/Services/Forms/eosForms.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1353189124" 
	@${RM} ${OBJECTDIR}/_ext/1353189124/eosForms.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353189124/eosForms.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1353189124/eosForms.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1353189124/eosForms.o.d" -o ${OBJECTDIR}/_ext/1353189124/eosForms.o ../../EOS/v1/Source/Services/Forms/eosForms.c   
	
${OBJECTDIR}/_ext/1353189124/eosFormsIncDec.o: ../../EOS/v1/Source/Services/Forms/eosFormsIncDec.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1353189124" 
	@${RM} ${OBJECTDIR}/_ext/1353189124/eosFormsIncDec.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353189124/eosFormsIncDec.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1353189124/eosFormsIncDec.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1353189124/eosFormsIncDec.o.d" -o ${OBJECTDIR}/_ext/1353189124/eosFormsIncDec.o ../../EOS/v1/Source/Services/Forms/eosFormsIncDec.c   
	
${OBJECTDIR}/_ext/1353189124/eosFormsList.o: ../../EOS/v1/Source/Services/Forms/eosFormsList.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1353189124" 
	@${RM} ${OBJECTDIR}/_ext/1353189124/eosFormsList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353189124/eosFormsList.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1353189124/eosFormsList.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1353189124/eosFormsList.o.d" -o ${OBJECTDIR}/_ext/1353189124/eosFormsList.o ../../EOS/v1/Source/Services/Forms/eosFormsList.c   
	
${OBJECTDIR}/_ext/1353189124/eosFormsMenus.o: ../../EOS/v1/Source/Services/Forms/eosFormsMenus.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1353189124" 
	@${RM} ${OBJECTDIR}/_ext/1353189124/eosFormsMenus.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353189124/eosFormsMenus.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1353189124/eosFormsMenus.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1353189124/eosFormsMenus.o.d" -o ${OBJECTDIR}/_ext/1353189124/eosFormsMenus.o ../../EOS/v1/Source/Services/Forms/eosFormsMenus.c   
	
${OBJECTDIR}/_ext/1551666197/eosCollection.o: ../../EOS/v1/Source/System/eosCollection.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1551666197" 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosCollection.o.d 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosCollection.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1551666197/eosCollection.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1551666197/eosCollection.o.d" -o ${OBJECTDIR}/_ext/1551666197/eosCollection.o ../../EOS/v1/Source/System/eosCollection.c   
	
${OBJECTDIR}/_ext/1551666197/eosHeap.o: ../../EOS/v1/Source/System/eosHeap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1551666197" 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosHeap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosHeap.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1551666197/eosHeap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1551666197/eosHeap.o.d" -o ${OBJECTDIR}/_ext/1551666197/eosHeap.o ../../EOS/v1/Source/System/eosHeap.c   
	
${OBJECTDIR}/_ext/1551666197/eosInterrupt.o: ../../EOS/v1/Source/System/eosInterrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1551666197" 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosInterrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosInterrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1551666197/eosInterrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1551666197/eosInterrupt.o.d" -o ${OBJECTDIR}/_ext/1551666197/eosInterrupt.o ../../EOS/v1/Source/System/eosInterrupt.c   
	
${OBJECTDIR}/_ext/1551666197/eosKernel.o: ../../EOS/v1/Source/System/eosKernel.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1551666197" 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosKernel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosKernel.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1551666197/eosKernel.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1551666197/eosKernel.o.d" -o ${OBJECTDIR}/_ext/1551666197/eosKernel.o ../../EOS/v1/Source/System/eosKernel.c   
	
${OBJECTDIR}/_ext/1551666197/eosPool.o: ../../EOS/v1/Source/System/eosPool.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1551666197" 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosPool.o.d 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosPool.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1551666197/eosPool.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1551666197/eosPool.o.d" -o ${OBJECTDIR}/_ext/1551666197/eosPool.o ../../EOS/v1/Source/System/eosPool.c   
	
${OBJECTDIR}/_ext/1551666197/eosQueue.o: ../../EOS/v1/Source/System/eosQueue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1551666197" 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosQueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosQueue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1551666197/eosQueue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1551666197/eosQueue.o.d" -o ${OBJECTDIR}/_ext/1551666197/eosQueue.o ../../EOS/v1/Source/System/eosQueue.c   
	
${OBJECTDIR}/_ext/1551666197/eosStart.o: ../../EOS/v1/Source/System/eosStart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1551666197" 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosStart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosStart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1551666197/eosStart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1551666197/eosStart.o.d" -o ${OBJECTDIR}/_ext/1551666197/eosStart.o ../../EOS/v1/Source/System/eosStart.c   
	
else
${OBJECTDIR}/_ext/1472/Motor.o: ../Motor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Motor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Motor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Motor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1472/Motor.o.d" -o ${OBJECTDIR}/_ext/1472/Motor.o ../Motor.c   
	
${OBJECTDIR}/_ext/1472/Motion.o: ../Motion.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Motion.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Motion.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Motion.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1472/Motion.o.d" -o ${OBJECTDIR}/_ext/1472/Motion.o ../Motion.c   
	
${OBJECTDIR}/_ext/1472/Config.o: ../Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Config.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1472/Config.o.d" -o ${OBJECTDIR}/_ext/1472/Config.o ../Config.c   
	
${OBJECTDIR}/_ext/1472/MotionService.o: ../MotionService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MotionService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MotionService.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MotionService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1472/MotionService.o.d" -o ${OBJECTDIR}/_ext/1472/MotionService.o ../MotionService.c   
	
${OBJECTDIR}/_ext/1472/UsbService.o: ../UsbService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/UsbService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UsbService.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/UsbService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1472/UsbService.o.d" -o ${OBJECTDIR}/_ext/1472/UsbService.o ../UsbService.c   
	
${OBJECTDIR}/_ext/1472/SelectorService.o: ../SelectorService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SelectorService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SelectorService.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SelectorService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1472/SelectorService.o.d" -o ${OBJECTDIR}/_ext/1472/SelectorService.o ../SelectorService.c   
	
${OBJECTDIR}/_ext/1472/DisplayService.o: ../DisplayService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DisplayService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DisplayService.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DisplayService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1472/DisplayService.o.d" -o ${OBJECTDIR}/_ext/1472/DisplayService.o ../DisplayService.c   
	
${OBJECTDIR}/_ext/1472/MnuMain.o: ../MnuMain.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MnuMain.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MnuMain.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MnuMain.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1472/MnuMain.o.d" -o ${OBJECTDIR}/_ext/1472/MnuMain.o ../MnuMain.c   
	
${OBJECTDIR}/_ext/1472/MainForm.o: ../MainForm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MainForm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainForm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainForm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1472/MainForm.o.d" -o ${OBJECTDIR}/_ext/1472/MainForm.o ../MainForm.c   
	
${OBJECTDIR}/_ext/1758002385/drv_usbfs.o: C:/microchip/harmony/v1_05/framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1758002385" 
	@${RM} ${OBJECTDIR}/_ext/1758002385/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1758002385/drv_usbfs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1758002385/drv_usbfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1758002385/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1758002385/drv_usbfs.o C:/microchip/harmony/v1_05/framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c   
	
${OBJECTDIR}/_ext/1758002385/drv_usbfs_device.o: C:/microchip/harmony/v1_05/framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1758002385" 
	@${RM} ${OBJECTDIR}/_ext/1758002385/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1758002385/drv_usbfs_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1758002385/drv_usbfs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1758002385/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1758002385/drv_usbfs_device.o C:/microchip/harmony/v1_05/framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c   
	
${OBJECTDIR}/_ext/746221417/sys_devcon.o: C:/microchip/harmony/v1_05/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/746221417" 
	@${RM} ${OBJECTDIR}/_ext/746221417/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/746221417/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/746221417/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/746221417/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/746221417/sys_devcon.o C:/microchip/harmony/v1_05/framework/system/devcon/src/sys_devcon.c   
	
${OBJECTDIR}/_ext/746221417/sys_devcon_pic32mx.o: C:/microchip/harmony/v1_05/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/746221417" 
	@${RM} ${OBJECTDIR}/_ext/746221417/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/746221417/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/746221417/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/746221417/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/746221417/sys_devcon_pic32mx.o C:/microchip/harmony/v1_05/framework/system/devcon/src/sys_devcon_pic32mx.c   
	
${OBJECTDIR}/_ext/1817942673/sys_int_pic32.o: C:/microchip/harmony/v1_05/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1817942673" 
	@${RM} ${OBJECTDIR}/_ext/1817942673/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1817942673/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1817942673/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1817942673/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1817942673/sys_int_pic32.o C:/microchip/harmony/v1_05/framework/system/int/src/sys_int_pic32.c   
	
${OBJECTDIR}/_ext/643550498/usb_device.o: C:/microchip/harmony/v1_05/framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/643550498" 
	@${RM} ${OBJECTDIR}/_ext/643550498/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/643550498/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/643550498/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/643550498/usb_device.o.d" -o ${OBJECTDIR}/_ext/643550498/usb_device.o C:/microchip/harmony/v1_05/framework/usb/src/dynamic/usb_device.c   
	
${OBJECTDIR}/_ext/643550498/usb_device_hid.o: C:/microchip/harmony/v1_05/framework/usb/src/dynamic/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/643550498" 
	@${RM} ${OBJECTDIR}/_ext/643550498/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/643550498/usb_device_hid.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/643550498/usb_device_hid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/643550498/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/643550498/usb_device_hid.o C:/microchip/harmony/v1_05/framework/usb/src/dynamic/usb_device_hid.c   
	
${OBJECTDIR}/_ext/1472/Main.o: ../Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1472/Main.o.d" -o ${OBJECTDIR}/_ext/1472/Main.o ../Main.c   
	
${OBJECTDIR}/_ext/200689860/eosDigInput.o: ../../EOS/v1/Source/Services/eosDigInput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/200689860" 
	@${RM} ${OBJECTDIR}/_ext/200689860/eosDigInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/200689860/eosDigInput.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/200689860/eosDigInput.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/200689860/eosDigInput.o.d" -o ${OBJECTDIR}/_ext/200689860/eosDigInput.o ../../EOS/v1/Source/Services/eosDigInput.c   
	
${OBJECTDIR}/_ext/200689860/eosDigOutput.o: ../../EOS/v1/Source/Services/eosDigOutput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/200689860" 
	@${RM} ${OBJECTDIR}/_ext/200689860/eosDigOutput.o.d 
	@${RM} ${OBJECTDIR}/_ext/200689860/eosDigOutput.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/200689860/eosDigOutput.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/200689860/eosDigOutput.o.d" -o ${OBJECTDIR}/_ext/200689860/eosDigOutput.o ../../EOS/v1/Source/Services/eosDigOutput.c   
	
${OBJECTDIR}/_ext/200689860/eosI2CMaster.o: ../../EOS/v1/Source/Services/eosI2CMaster.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/200689860" 
	@${RM} ${OBJECTDIR}/_ext/200689860/eosI2CMaster.o.d 
	@${RM} ${OBJECTDIR}/_ext/200689860/eosI2CMaster.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/200689860/eosI2CMaster.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/200689860/eosI2CMaster.o.d" -o ${OBJECTDIR}/_ext/200689860/eosI2CMaster.o ../../EOS/v1/Source/Services/eosI2CMaster.c   
	
${OBJECTDIR}/_ext/200689860/eosTick.o: ../../EOS/v1/Source/Services/eosTick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/200689860" 
	@${RM} ${OBJECTDIR}/_ext/200689860/eosTick.o.d 
	@${RM} ${OBJECTDIR}/_ext/200689860/eosTick.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/200689860/eosTick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/200689860/eosTick.o.d" -o ${OBJECTDIR}/_ext/200689860/eosTick.o ../../EOS/v1/Source/Services/eosTick.c   
	
${OBJECTDIR}/_ext/200689860/eosTimer.o: ../../EOS/v1/Source/Services/eosTimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/200689860" 
	@${RM} ${OBJECTDIR}/_ext/200689860/eosTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/200689860/eosTimer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/200689860/eosTimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/200689860/eosTimer.o.d" -o ${OBJECTDIR}/_ext/200689860/eosTimer.o ../../EOS/v1/Source/Services/eosTimer.c   
	
${OBJECTDIR}/_ext/1353189124/eosForms.o: ../../EOS/v1/Source/Services/Forms/eosForms.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1353189124" 
	@${RM} ${OBJECTDIR}/_ext/1353189124/eosForms.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353189124/eosForms.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1353189124/eosForms.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1353189124/eosForms.o.d" -o ${OBJECTDIR}/_ext/1353189124/eosForms.o ../../EOS/v1/Source/Services/Forms/eosForms.c   
	
${OBJECTDIR}/_ext/1353189124/eosFormsIncDec.o: ../../EOS/v1/Source/Services/Forms/eosFormsIncDec.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1353189124" 
	@${RM} ${OBJECTDIR}/_ext/1353189124/eosFormsIncDec.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353189124/eosFormsIncDec.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1353189124/eosFormsIncDec.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1353189124/eosFormsIncDec.o.d" -o ${OBJECTDIR}/_ext/1353189124/eosFormsIncDec.o ../../EOS/v1/Source/Services/Forms/eosFormsIncDec.c   
	
${OBJECTDIR}/_ext/1353189124/eosFormsList.o: ../../EOS/v1/Source/Services/Forms/eosFormsList.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1353189124" 
	@${RM} ${OBJECTDIR}/_ext/1353189124/eosFormsList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353189124/eosFormsList.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1353189124/eosFormsList.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1353189124/eosFormsList.o.d" -o ${OBJECTDIR}/_ext/1353189124/eosFormsList.o ../../EOS/v1/Source/Services/Forms/eosFormsList.c   
	
${OBJECTDIR}/_ext/1353189124/eosFormsMenus.o: ../../EOS/v1/Source/Services/Forms/eosFormsMenus.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1353189124" 
	@${RM} ${OBJECTDIR}/_ext/1353189124/eosFormsMenus.o.d 
	@${RM} ${OBJECTDIR}/_ext/1353189124/eosFormsMenus.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1353189124/eosFormsMenus.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1353189124/eosFormsMenus.o.d" -o ${OBJECTDIR}/_ext/1353189124/eosFormsMenus.o ../../EOS/v1/Source/Services/Forms/eosFormsMenus.c   
	
${OBJECTDIR}/_ext/1551666197/eosCollection.o: ../../EOS/v1/Source/System/eosCollection.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1551666197" 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosCollection.o.d 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosCollection.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1551666197/eosCollection.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1551666197/eosCollection.o.d" -o ${OBJECTDIR}/_ext/1551666197/eosCollection.o ../../EOS/v1/Source/System/eosCollection.c   
	
${OBJECTDIR}/_ext/1551666197/eosHeap.o: ../../EOS/v1/Source/System/eosHeap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1551666197" 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosHeap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosHeap.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1551666197/eosHeap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1551666197/eosHeap.o.d" -o ${OBJECTDIR}/_ext/1551666197/eosHeap.o ../../EOS/v1/Source/System/eosHeap.c   
	
${OBJECTDIR}/_ext/1551666197/eosInterrupt.o: ../../EOS/v1/Source/System/eosInterrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1551666197" 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosInterrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosInterrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1551666197/eosInterrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1551666197/eosInterrupt.o.d" -o ${OBJECTDIR}/_ext/1551666197/eosInterrupt.o ../../EOS/v1/Source/System/eosInterrupt.c   
	
${OBJECTDIR}/_ext/1551666197/eosKernel.o: ../../EOS/v1/Source/System/eosKernel.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1551666197" 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosKernel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosKernel.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1551666197/eosKernel.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1551666197/eosKernel.o.d" -o ${OBJECTDIR}/_ext/1551666197/eosKernel.o ../../EOS/v1/Source/System/eosKernel.c   
	
${OBJECTDIR}/_ext/1551666197/eosPool.o: ../../EOS/v1/Source/System/eosPool.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1551666197" 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosPool.o.d 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosPool.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1551666197/eosPool.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1551666197/eosPool.o.d" -o ${OBJECTDIR}/_ext/1551666197/eosPool.o ../../EOS/v1/Source/System/eosPool.c   
	
${OBJECTDIR}/_ext/1551666197/eosQueue.o: ../../EOS/v1/Source/System/eosQueue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1551666197" 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosQueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosQueue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1551666197/eosQueue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1551666197/eosQueue.o.d" -o ${OBJECTDIR}/_ext/1551666197/eosQueue.o ../../EOS/v1/Source/System/eosQueue.c   
	
${OBJECTDIR}/_ext/1551666197/eosStart.o: ../../EOS/v1/Source/System/eosStart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1551666197" 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosStart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1551666197/eosStart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1551666197/eosStart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -funroll-loops -fomit-frame-pointer -I"../" -I"../../eos/v1/Include" -I"../../eos/v1/Source" -I"c:/microchip/harmony/v1_05/framework" -I"c:/microchip/harmony/v1_05/bsp" -MMD -MF "${OBJECTDIR}/_ext/1551666197/eosStart.o.d" -o ${OBJECTDIR}/_ext/1551666197/eosStart.o ../../EOS/v1/Source/System/eosStart.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  C:/microchip/harmony/v1_05/bin/framework/peripheral/PIC32MX795F512L_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -o dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    C:\microchip\harmony\v1_05\bin\framework\peripheral\PIC32MX795F512L_peripherals.a       -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,--defsym=_min_heap_size=32762,--defsym=_min_stack_size=2048,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  C:/microchip/harmony/v1_05/bin/framework/peripheral/PIC32MX795F512L_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -o dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    C:\microchip\harmony\v1_05\bin\framework\peripheral\PIC32MX795F512L_peripherals.a      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=32762,--defsym=_min_stack_size=2048,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/PIC32
	${RM} -r dist/PIC32

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
