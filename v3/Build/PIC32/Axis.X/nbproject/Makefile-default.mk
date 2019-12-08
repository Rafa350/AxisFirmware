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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../Source/PIC32/appInitialize.cpp ../../../Source/axisApplication.cpp ../../../Source/axisMain.cpp ../../../Source/axisMotion.cpp ../../../Source/axisMotionService.cpp ../../../Source/axisMotor.cpp ../../../../../EOS/v2/Source/HAL/PIC32/halSYS.c ../../../../../EOS/v2/Source/HAL/PIC32/halGPIO.c ../../../../../EOS/v2/Source/HAL/PIC32/halTMR.c ../../../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalHeap.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalKernel.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalTask.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/rtos_hooks.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalSemaphore.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalQueue.c ../../../../../EOS/v2/Source/Services/eosService.cpp ../../../../../EOS/v2/Source/StartUp/PIC32/main.cpp ../../../../../EOS/v2/Source/System/Collections/eosList.cpp ../../../../../EOS/v2/Source/System/Core/eosTask.cpp ../../../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp ../../../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp ../../../../../EOS/v2/Source/System/eosApplication.cpp ../../../../../EOS/v2/Source/System/eosString.cpp ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/tasks.c ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/queue.c ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/list.c ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MemMang/heap_4.c ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/timers.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2116396228/appInitialize.o ${OBJECTDIR}/_ext/449926602/axisApplication.o ${OBJECTDIR}/_ext/449926602/axisMain.o ${OBJECTDIR}/_ext/449926602/axisMotion.o ${OBJECTDIR}/_ext/449926602/axisMotionService.o ${OBJECTDIR}/_ext/449926602/axisMotor.o ${OBJECTDIR}/_ext/806995671/halSYS.o ${OBJECTDIR}/_ext/806995671/halGPIO.o ${OBJECTDIR}/_ext/806995671/halTMR.o ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o ${OBJECTDIR}/_ext/2118387804/osalHeap.o ${OBJECTDIR}/_ext/2118387804/osalKernel.o ${OBJECTDIR}/_ext/2118387804/osalTask.o ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o ${OBJECTDIR}/_ext/2118387804/osalQueue.o ${OBJECTDIR}/_ext/1177943276/eosService.o ${OBJECTDIR}/_ext/1530442337/main.o ${OBJECTDIR}/_ext/1773950155/eosList.o ${OBJECTDIR}/_ext/1878683351/eosTask.o ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o ${OBJECTDIR}/_ext/644179355/eosApplication.o ${OBJECTDIR}/_ext/644179355/eosString.o ${OBJECTDIR}/_ext/1811515072/tasks.o ${OBJECTDIR}/_ext/1811515072/queue.o ${OBJECTDIR}/_ext/1811515072/list.o ${OBJECTDIR}/_ext/1807323683/heap_4.o ${OBJECTDIR}/_ext/1849293962/port.o ${OBJECTDIR}/_ext/1849293962/port_asm.o ${OBJECTDIR}/_ext/1811515072/timers.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2116396228/appInitialize.o.d ${OBJECTDIR}/_ext/449926602/axisApplication.o.d ${OBJECTDIR}/_ext/449926602/axisMain.o.d ${OBJECTDIR}/_ext/449926602/axisMotion.o.d ${OBJECTDIR}/_ext/449926602/axisMotionService.o.d ${OBJECTDIR}/_ext/449926602/axisMotor.o.d ${OBJECTDIR}/_ext/806995671/halSYS.o.d ${OBJECTDIR}/_ext/806995671/halGPIO.o.d ${OBJECTDIR}/_ext/806995671/halTMR.o.d ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.d ${OBJECTDIR}/_ext/2118387804/osalHeap.o.d ${OBJECTDIR}/_ext/2118387804/osalKernel.o.d ${OBJECTDIR}/_ext/2118387804/osalTask.o.d ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o.d ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o.d ${OBJECTDIR}/_ext/2118387804/osalQueue.o.d ${OBJECTDIR}/_ext/1177943276/eosService.o.d ${OBJECTDIR}/_ext/1530442337/main.o.d ${OBJECTDIR}/_ext/1773950155/eosList.o.d ${OBJECTDIR}/_ext/1878683351/eosTask.o.d ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o.d ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o.d ${OBJECTDIR}/_ext/644179355/eosApplication.o.d ${OBJECTDIR}/_ext/644179355/eosString.o.d ${OBJECTDIR}/_ext/1811515072/tasks.o.d ${OBJECTDIR}/_ext/1811515072/queue.o.d ${OBJECTDIR}/_ext/1811515072/list.o.d ${OBJECTDIR}/_ext/1807323683/heap_4.o.d ${OBJECTDIR}/_ext/1849293962/port.o.d ${OBJECTDIR}/_ext/1849293962/port_asm.o.d ${OBJECTDIR}/_ext/1811515072/timers.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2116396228/appInitialize.o ${OBJECTDIR}/_ext/449926602/axisApplication.o ${OBJECTDIR}/_ext/449926602/axisMain.o ${OBJECTDIR}/_ext/449926602/axisMotion.o ${OBJECTDIR}/_ext/449926602/axisMotionService.o ${OBJECTDIR}/_ext/449926602/axisMotor.o ${OBJECTDIR}/_ext/806995671/halSYS.o ${OBJECTDIR}/_ext/806995671/halGPIO.o ${OBJECTDIR}/_ext/806995671/halTMR.o ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o ${OBJECTDIR}/_ext/2118387804/osalHeap.o ${OBJECTDIR}/_ext/2118387804/osalKernel.o ${OBJECTDIR}/_ext/2118387804/osalTask.o ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o ${OBJECTDIR}/_ext/2118387804/osalQueue.o ${OBJECTDIR}/_ext/1177943276/eosService.o ${OBJECTDIR}/_ext/1530442337/main.o ${OBJECTDIR}/_ext/1773950155/eosList.o ${OBJECTDIR}/_ext/1878683351/eosTask.o ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o ${OBJECTDIR}/_ext/644179355/eosApplication.o ${OBJECTDIR}/_ext/644179355/eosString.o ${OBJECTDIR}/_ext/1811515072/tasks.o ${OBJECTDIR}/_ext/1811515072/queue.o ${OBJECTDIR}/_ext/1811515072/list.o ${OBJECTDIR}/_ext/1807323683/heap_4.o ${OBJECTDIR}/_ext/1849293962/port.o ${OBJECTDIR}/_ext/1849293962/port_asm.o ${OBJECTDIR}/_ext/1811515072/timers.o

# Source Files
SOURCEFILES=../../../Source/PIC32/appInitialize.cpp ../../../Source/axisApplication.cpp ../../../Source/axisMain.cpp ../../../Source/axisMotion.cpp ../../../Source/axisMotionService.cpp ../../../Source/axisMotor.cpp ../../../../../EOS/v2/Source/HAL/PIC32/halSYS.c ../../../../../EOS/v2/Source/HAL/PIC32/halGPIO.c ../../../../../EOS/v2/Source/HAL/PIC32/halTMR.c ../../../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalHeap.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalKernel.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalTask.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/rtos_hooks.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalSemaphore.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalQueue.c ../../../../../EOS/v2/Source/Services/eosService.cpp ../../../../../EOS/v2/Source/StartUp/PIC32/main.cpp ../../../../../EOS/v2/Source/System/Collections/eosList.cpp ../../../../../EOS/v2/Source/System/Core/eosTask.cpp ../../../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp ../../../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp ../../../../../EOS/v2/Source/System/eosApplication.cpp ../../../../../EOS/v2/Source/System/eosString.cpp ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/tasks.c ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/queue.c ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/list.c ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MemMang/heap_4.c ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/timers.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX460F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o: ../../../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.ok ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.d" "${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.d"  -o ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o ../../../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S  -DXPRJ_default=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PIC32MXSK=1 -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1849293962/port_asm.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1849293962" 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port_asm.o.ok ${OBJECTDIR}/_ext/1849293962/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1849293962/port_asm.o.d" "${OBJECTDIR}/_ext/1849293962/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1849293962/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1849293962/port_asm.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_default=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1849293962/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PIC32MXSK=1 -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -mdfp=${DFP_DIR}
	
else
${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o: ../../../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.ok ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.d" "${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.d"  -o ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o ../../../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S  -DXPRJ_default=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.asm.d",--gdwarf-2 -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1849293962/port_asm.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1849293962" 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port_asm.o.ok ${OBJECTDIR}/_ext/1849293962/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1849293962/port_asm.o.d" "${OBJECTDIR}/_ext/1849293962/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1849293962/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1849293962/port_asm.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_default=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1849293962/port_asm.o.asm.d",--gdwarf-2 -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -mdfp=${DFP_DIR}
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/806995671/halSYS.o: ../../../../../EOS/v2/Source/HAL/PIC32/halSYS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halSYS.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halSYS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/806995671/halSYS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/806995671/halSYS.o.d" -o ${OBJECTDIR}/_ext/806995671/halSYS.o ../../../../../EOS/v2/Source/HAL/PIC32/halSYS.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/806995671/halGPIO.o: ../../../../../EOS/v2/Source/HAL/PIC32/halGPIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halGPIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halGPIO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/806995671/halGPIO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/806995671/halGPIO.o.d" -o ${OBJECTDIR}/_ext/806995671/halGPIO.o ../../../../../EOS/v2/Source/HAL/PIC32/halGPIO.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/806995671/halTMR.o: ../../../../../EOS/v2/Source/HAL/PIC32/halTMR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMR.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMR.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/806995671/halTMR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/806995671/halTMR.o.d" -o ${OBJECTDIR}/_ext/806995671/halTMR.o ../../../../../EOS/v2/Source/HAL/PIC32/halTMR.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2118387804/osalHeap.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalHeap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalHeap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalHeap.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2118387804/osalHeap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalHeap.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalHeap.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalHeap.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2118387804/osalKernel.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalKernel.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalKernel.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalKernel.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2118387804/osalKernel.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalKernel.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalKernel.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalKernel.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2118387804/osalTask.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalTask.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalTask.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalTask.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2118387804/osalTask.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalTask.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalTask.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalTask.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2118387804/rtos_hooks.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/rtos_hooks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2118387804/rtos_hooks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/2118387804/rtos_hooks.o.d" -o ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/rtos_hooks.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2118387804/osalSemaphore.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalSemaphore.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2118387804/osalSemaphore.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalSemaphore.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalSemaphore.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2118387804/osalQueue.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalQueue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalQueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalQueue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2118387804/osalQueue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalQueue.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalQueue.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalQueue.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1811515072/tasks.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1811515072/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1811515072/tasks.o.d" -o ${OBJECTDIR}/_ext/1811515072/tasks.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/tasks.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1811515072/queue.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1811515072/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1811515072/queue.o.d" -o ${OBJECTDIR}/_ext/1811515072/queue.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/queue.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1811515072/list.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1811515072/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1811515072/list.o.d" -o ${OBJECTDIR}/_ext/1811515072/list.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/list.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1807323683/heap_4.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MemMang/heap_4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1807323683" 
	@${RM} ${OBJECTDIR}/_ext/1807323683/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1807323683/heap_4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1807323683/heap_4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1807323683/heap_4.o.d" -o ${OBJECTDIR}/_ext/1807323683/heap_4.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MemMang/heap_4.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1849293962/port.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1849293962" 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1849293962/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1849293962/port.o.d" -o ${OBJECTDIR}/_ext/1849293962/port.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1811515072/timers.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1811515072/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1811515072/timers.o.d" -o ${OBJECTDIR}/_ext/1811515072/timers.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/timers.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
else
${OBJECTDIR}/_ext/806995671/halSYS.o: ../../../../../EOS/v2/Source/HAL/PIC32/halSYS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halSYS.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halSYS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/806995671/halSYS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/806995671/halSYS.o.d" -o ${OBJECTDIR}/_ext/806995671/halSYS.o ../../../../../EOS/v2/Source/HAL/PIC32/halSYS.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/806995671/halGPIO.o: ../../../../../EOS/v2/Source/HAL/PIC32/halGPIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halGPIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halGPIO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/806995671/halGPIO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/806995671/halGPIO.o.d" -o ${OBJECTDIR}/_ext/806995671/halGPIO.o ../../../../../EOS/v2/Source/HAL/PIC32/halGPIO.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/806995671/halTMR.o: ../../../../../EOS/v2/Source/HAL/PIC32/halTMR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMR.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMR.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/806995671/halTMR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/806995671/halTMR.o.d" -o ${OBJECTDIR}/_ext/806995671/halTMR.o ../../../../../EOS/v2/Source/HAL/PIC32/halTMR.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2118387804/osalHeap.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalHeap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalHeap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalHeap.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2118387804/osalHeap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalHeap.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalHeap.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalHeap.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2118387804/osalKernel.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalKernel.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalKernel.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalKernel.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2118387804/osalKernel.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalKernel.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalKernel.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalKernel.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2118387804/osalTask.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalTask.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalTask.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalTask.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2118387804/osalTask.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalTask.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalTask.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalTask.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2118387804/rtos_hooks.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/rtos_hooks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2118387804/rtos_hooks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/2118387804/rtos_hooks.o.d" -o ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/rtos_hooks.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2118387804/osalSemaphore.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalSemaphore.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2118387804/osalSemaphore.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalSemaphore.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalSemaphore.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/2118387804/osalQueue.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalQueue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalQueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalQueue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2118387804/osalQueue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalQueue.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalQueue.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalQueue.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1811515072/tasks.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1811515072/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1811515072/tasks.o.d" -o ${OBJECTDIR}/_ext/1811515072/tasks.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/tasks.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1811515072/queue.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1811515072/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1811515072/queue.o.d" -o ${OBJECTDIR}/_ext/1811515072/queue.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/queue.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1811515072/list.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1811515072/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1811515072/list.o.d" -o ${OBJECTDIR}/_ext/1811515072/list.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/list.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1807323683/heap_4.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MemMang/heap_4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1807323683" 
	@${RM} ${OBJECTDIR}/_ext/1807323683/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1807323683/heap_4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1807323683/heap_4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1807323683/heap_4.o.d" -o ${OBJECTDIR}/_ext/1807323683/heap_4.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MemMang/heap_4.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1849293962/port.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1849293962" 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1849293962/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1849293962/port.o.d" -o ${OBJECTDIR}/_ext/1849293962/port.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1811515072/timers.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1811515072/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1811515072/timers.o.d" -o ${OBJECTDIR}/_ext/1811515072/timers.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/timers.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp=${DFP_DIR}
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2116396228/appInitialize.o: ../../../Source/PIC32/appInitialize.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2116396228" 
	@${RM} ${OBJECTDIR}/_ext/2116396228/appInitialize.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116396228/appInitialize.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2116396228/appInitialize.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/2116396228/appInitialize.o.d" -o ${OBJECTDIR}/_ext/2116396228/appInitialize.o ../../../Source/PIC32/appInitialize.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/449926602/axisApplication.o: ../../../Source/axisApplication.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisApplication.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisApplication.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/449926602/axisApplication.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/449926602/axisApplication.o.d" -o ${OBJECTDIR}/_ext/449926602/axisApplication.o ../../../Source/axisApplication.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/449926602/axisMain.o: ../../../Source/axisMain.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMain.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMain.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/449926602/axisMain.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/449926602/axisMain.o.d" -o ${OBJECTDIR}/_ext/449926602/axisMain.o ../../../Source/axisMain.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/449926602/axisMotion.o: ../../../Source/axisMotion.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotion.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotion.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/449926602/axisMotion.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/449926602/axisMotion.o.d" -o ${OBJECTDIR}/_ext/449926602/axisMotion.o ../../../Source/axisMotion.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/449926602/axisMotionService.o: ../../../Source/axisMotionService.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotionService.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotionService.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/449926602/axisMotionService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/449926602/axisMotionService.o.d" -o ${OBJECTDIR}/_ext/449926602/axisMotionService.o ../../../Source/axisMotionService.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/449926602/axisMotor.o: ../../../Source/axisMotor.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotor.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/449926602/axisMotor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/449926602/axisMotor.o.d" -o ${OBJECTDIR}/_ext/449926602/axisMotor.o ../../../Source/axisMotor.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1177943276/eosService.o: ../../../../../EOS/v2/Source/Services/eosService.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1177943276" 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosService.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1177943276/eosService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1177943276/eosService.o.d" -o ${OBJECTDIR}/_ext/1177943276/eosService.o ../../../../../EOS/v2/Source/Services/eosService.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1530442337/main.o: ../../../../../EOS/v2/Source/StartUp/PIC32/main.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1530442337" 
	@${RM} ${OBJECTDIR}/_ext/1530442337/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1530442337/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1530442337/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1530442337/main.o.d" -o ${OBJECTDIR}/_ext/1530442337/main.o ../../../../../EOS/v2/Source/StartUp/PIC32/main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1773950155/eosList.o: ../../../../../EOS/v2/Source/System/Collections/eosList.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1773950155" 
	@${RM} ${OBJECTDIR}/_ext/1773950155/eosList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1773950155/eosList.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1773950155/eosList.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1773950155/eosList.o.d" -o ${OBJECTDIR}/_ext/1773950155/eosList.o ../../../../../EOS/v2/Source/System/Collections/eosList.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1878683351/eosTask.o: ../../../../../EOS/v2/Source/System/Core/eosTask.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosTask.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosTask.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1878683351/eosTask.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosTask.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosTask.o ../../../../../EOS/v2/Source/System/Core/eosTask.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o: ../../../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o ../../../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o: ../../../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o ../../../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/644179355/eosApplication.o: ../../../../../EOS/v2/Source/System/eosApplication.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/644179355" 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosApplication.o.d 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosApplication.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/644179355/eosApplication.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/644179355/eosApplication.o.d" -o ${OBJECTDIR}/_ext/644179355/eosApplication.o ../../../../../EOS/v2/Source/System/eosApplication.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/644179355/eosString.o: ../../../../../EOS/v2/Source/System/eosString.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/644179355" 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosString.o.d 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosString.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/644179355/eosString.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/644179355/eosString.o.d" -o ${OBJECTDIR}/_ext/644179355/eosString.o ../../../../../EOS/v2/Source/System/eosString.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
else
${OBJECTDIR}/_ext/2116396228/appInitialize.o: ../../../Source/PIC32/appInitialize.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2116396228" 
	@${RM} ${OBJECTDIR}/_ext/2116396228/appInitialize.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116396228/appInitialize.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2116396228/appInitialize.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/2116396228/appInitialize.o.d" -o ${OBJECTDIR}/_ext/2116396228/appInitialize.o ../../../Source/PIC32/appInitialize.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/449926602/axisApplication.o: ../../../Source/axisApplication.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisApplication.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisApplication.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/449926602/axisApplication.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/449926602/axisApplication.o.d" -o ${OBJECTDIR}/_ext/449926602/axisApplication.o ../../../Source/axisApplication.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/449926602/axisMain.o: ../../../Source/axisMain.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMain.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMain.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/449926602/axisMain.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/449926602/axisMain.o.d" -o ${OBJECTDIR}/_ext/449926602/axisMain.o ../../../Source/axisMain.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/449926602/axisMotion.o: ../../../Source/axisMotion.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotion.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotion.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/449926602/axisMotion.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/449926602/axisMotion.o.d" -o ${OBJECTDIR}/_ext/449926602/axisMotion.o ../../../Source/axisMotion.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/449926602/axisMotionService.o: ../../../Source/axisMotionService.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotionService.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotionService.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/449926602/axisMotionService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/449926602/axisMotionService.o.d" -o ${OBJECTDIR}/_ext/449926602/axisMotionService.o ../../../Source/axisMotionService.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/449926602/axisMotor.o: ../../../Source/axisMotor.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotor.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/449926602/axisMotor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/449926602/axisMotor.o.d" -o ${OBJECTDIR}/_ext/449926602/axisMotor.o ../../../Source/axisMotor.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1177943276/eosService.o: ../../../../../EOS/v2/Source/Services/eosService.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1177943276" 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosService.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1177943276/eosService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1177943276/eosService.o.d" -o ${OBJECTDIR}/_ext/1177943276/eosService.o ../../../../../EOS/v2/Source/Services/eosService.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1530442337/main.o: ../../../../../EOS/v2/Source/StartUp/PIC32/main.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1530442337" 
	@${RM} ${OBJECTDIR}/_ext/1530442337/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1530442337/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1530442337/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1530442337/main.o.d" -o ${OBJECTDIR}/_ext/1530442337/main.o ../../../../../EOS/v2/Source/StartUp/PIC32/main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1773950155/eosList.o: ../../../../../EOS/v2/Source/System/Collections/eosList.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1773950155" 
	@${RM} ${OBJECTDIR}/_ext/1773950155/eosList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1773950155/eosList.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1773950155/eosList.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1773950155/eosList.o.d" -o ${OBJECTDIR}/_ext/1773950155/eosList.o ../../../../../EOS/v2/Source/System/Collections/eosList.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1878683351/eosTask.o: ../../../../../EOS/v2/Source/System/Core/eosTask.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosTask.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosTask.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1878683351/eosTask.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosTask.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosTask.o ../../../../../EOS/v2/Source/System/Core/eosTask.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o: ../../../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o ../../../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o: ../../../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o ../../../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/644179355/eosApplication.o: ../../../../../EOS/v2/Source/System/eosApplication.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/644179355" 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosApplication.o.d 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosApplication.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/644179355/eosApplication.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/644179355/eosApplication.o.d" -o ${OBJECTDIR}/_ext/644179355/eosApplication.o ../../../../../EOS/v2/Source/System/eosApplication.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/644179355/eosString.o: ../../../../../EOS/v2/Source/System/eosString.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/644179355" 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosString.o.d 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosString.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/644179355/eosString.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/644179355/eosString.o.d" -o ${OBJECTDIR}/_ext/644179355/eosString.o ../../../../../EOS/v2/Source/System/eosString.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../EOS/v2/Library/PIC32/Harmony/bin/framework/peripheral/PIC32MX460F512L_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PIC32MXSK=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\EOS\v2\Library\PIC32\Harmony\bin\framework\peripheral\PIC32MX460F512L_peripherals.a      -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PIC32MXSK=1,--defsym=_min_heap_size=1024,--defsym=_min_stack_size=1024,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,-allow-multiple-definition -mdfp=${DFP_DIR}
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../EOS/v2/Library/PIC32/Harmony/bin/framework/peripheral/PIC32MX460F512L_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\EOS\v2\Library\PIC32\Harmony\bin\framework\peripheral\PIC32MX460F512L_peripherals.a      -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1024,--defsym=_min_stack_size=1024,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,-allow-multiple-definition -mdfp=${DFP_DIR}
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
