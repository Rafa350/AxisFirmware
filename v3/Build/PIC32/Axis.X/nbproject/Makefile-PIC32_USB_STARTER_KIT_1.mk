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
ifeq "$(wildcard nbproject/Makefile-local-PIC32_USB_STARTER_KIT_1.mk)" "nbproject/Makefile-local-PIC32_USB_STARTER_KIT_1.mk"
include nbproject/Makefile-local-PIC32_USB_STARTER_KIT_1.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=PIC32_USB_STARTER_KIT_1
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
SOURCEFILES_QUOTED_IF_SPACED=../../../Source/PIC32/appInitialize.cpp ../../../Source/PIC32/appInterrupts.cpp ../../../Source/axisApplication.cpp ../../../Source/axisMain.cpp ../../../Source/axisMotionService.cpp ../../../Source/axisMotor.cpp ../../../Source/axisP2PMotion.cpp ../../../../../EOS/v2/Source/HAL/PIC32/halSYS.c ../../../../../EOS/v2/Source/HAL/PIC32/halGPIO.c ../../../../../EOS/v2/Source/HAL/PIC32/halTMR.c ../../../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S ../../../../../EOS/v2/Source/HAL/PIC32/halCN.c ../../../../../EOS/v2/Source/HAL/PIC32/halCNInterruptWrapper.S ../../../../../EOS/v2/Source/HAL/PIC32/halINT.c ../../../../../EOS/v2/Source/HAL/PIC32/halUART.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalHeap.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalKernel.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalTask.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/rtos_hooks.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalSemaphore.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalQueue.c ../../../../../EOS/v2/Source/Services/eosService.cpp ../../../../../EOS/v2/Source/Services/eosDigInputService.cpp ../../../../../EOS/v2/Source/Services/eosDigOutputService.cpp ../../../../../EOS/v2/Source/Services/eosUARTService.cpp ../../../../../EOS/v2/Source/StartUp/PIC32/main.cpp ../../../../../EOS/v2/Source/System/Core/eosTask.cpp ../../../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp ../../../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp ../../../../../EOS/v2/Source/System/Core/eosQueue.cpp ../../../../../EOS/v2/Source/System/Core/eosSemaphore.cpp ../../../../../EOS/v2/Source/System/eosApplication.cpp ../../../../../EOS/v2/Source/System/eosString.cpp ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/tasks.c ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/queue.c ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/list.c ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MemMang/heap_4.c ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/timers.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2116396228/appInitialize.o ${OBJECTDIR}/_ext/2116396228/appInterrupts.o ${OBJECTDIR}/_ext/449926602/axisApplication.o ${OBJECTDIR}/_ext/449926602/axisMain.o ${OBJECTDIR}/_ext/449926602/axisMotionService.o ${OBJECTDIR}/_ext/449926602/axisMotor.o ${OBJECTDIR}/_ext/449926602/axisP2PMotion.o ${OBJECTDIR}/_ext/806995671/halSYS.o ${OBJECTDIR}/_ext/806995671/halGPIO.o ${OBJECTDIR}/_ext/806995671/halTMR.o ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o ${OBJECTDIR}/_ext/806995671/halCN.o ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o ${OBJECTDIR}/_ext/806995671/halINT.o ${OBJECTDIR}/_ext/806995671/halUART.o ${OBJECTDIR}/_ext/2118387804/osalHeap.o ${OBJECTDIR}/_ext/2118387804/osalKernel.o ${OBJECTDIR}/_ext/2118387804/osalTask.o ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o ${OBJECTDIR}/_ext/2118387804/osalQueue.o ${OBJECTDIR}/_ext/1177943276/eosService.o ${OBJECTDIR}/_ext/1177943276/eosDigInputService.o ${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o ${OBJECTDIR}/_ext/1177943276/eosUARTService.o ${OBJECTDIR}/_ext/1530442337/main.o ${OBJECTDIR}/_ext/1878683351/eosTask.o ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o ${OBJECTDIR}/_ext/1878683351/eosQueue.o ${OBJECTDIR}/_ext/1878683351/eosSemaphore.o ${OBJECTDIR}/_ext/644179355/eosApplication.o ${OBJECTDIR}/_ext/644179355/eosString.o ${OBJECTDIR}/_ext/1811515072/tasks.o ${OBJECTDIR}/_ext/1811515072/queue.o ${OBJECTDIR}/_ext/1811515072/list.o ${OBJECTDIR}/_ext/1807323683/heap_4.o ${OBJECTDIR}/_ext/1849293962/port.o ${OBJECTDIR}/_ext/1849293962/port_asm.o ${OBJECTDIR}/_ext/1811515072/timers.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2116396228/appInitialize.o.d ${OBJECTDIR}/_ext/2116396228/appInterrupts.o.d ${OBJECTDIR}/_ext/449926602/axisApplication.o.d ${OBJECTDIR}/_ext/449926602/axisMain.o.d ${OBJECTDIR}/_ext/449926602/axisMotionService.o.d ${OBJECTDIR}/_ext/449926602/axisMotor.o.d ${OBJECTDIR}/_ext/449926602/axisP2PMotion.o.d ${OBJECTDIR}/_ext/806995671/halSYS.o.d ${OBJECTDIR}/_ext/806995671/halGPIO.o.d ${OBJECTDIR}/_ext/806995671/halTMR.o.d ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.d ${OBJECTDIR}/_ext/806995671/halCN.o.d ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.d ${OBJECTDIR}/_ext/806995671/halINT.o.d ${OBJECTDIR}/_ext/806995671/halUART.o.d ${OBJECTDIR}/_ext/2118387804/osalHeap.o.d ${OBJECTDIR}/_ext/2118387804/osalKernel.o.d ${OBJECTDIR}/_ext/2118387804/osalTask.o.d ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o.d ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o.d ${OBJECTDIR}/_ext/2118387804/osalQueue.o.d ${OBJECTDIR}/_ext/1177943276/eosService.o.d ${OBJECTDIR}/_ext/1177943276/eosDigInputService.o.d ${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o.d ${OBJECTDIR}/_ext/1177943276/eosUARTService.o.d ${OBJECTDIR}/_ext/1530442337/main.o.d ${OBJECTDIR}/_ext/1878683351/eosTask.o.d ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o.d ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o.d ${OBJECTDIR}/_ext/1878683351/eosQueue.o.d ${OBJECTDIR}/_ext/1878683351/eosSemaphore.o.d ${OBJECTDIR}/_ext/644179355/eosApplication.o.d ${OBJECTDIR}/_ext/644179355/eosString.o.d ${OBJECTDIR}/_ext/1811515072/tasks.o.d ${OBJECTDIR}/_ext/1811515072/queue.o.d ${OBJECTDIR}/_ext/1811515072/list.o.d ${OBJECTDIR}/_ext/1807323683/heap_4.o.d ${OBJECTDIR}/_ext/1849293962/port.o.d ${OBJECTDIR}/_ext/1849293962/port_asm.o.d ${OBJECTDIR}/_ext/1811515072/timers.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2116396228/appInitialize.o ${OBJECTDIR}/_ext/2116396228/appInterrupts.o ${OBJECTDIR}/_ext/449926602/axisApplication.o ${OBJECTDIR}/_ext/449926602/axisMain.o ${OBJECTDIR}/_ext/449926602/axisMotionService.o ${OBJECTDIR}/_ext/449926602/axisMotor.o ${OBJECTDIR}/_ext/449926602/axisP2PMotion.o ${OBJECTDIR}/_ext/806995671/halSYS.o ${OBJECTDIR}/_ext/806995671/halGPIO.o ${OBJECTDIR}/_ext/806995671/halTMR.o ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o ${OBJECTDIR}/_ext/806995671/halCN.o ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o ${OBJECTDIR}/_ext/806995671/halINT.o ${OBJECTDIR}/_ext/806995671/halUART.o ${OBJECTDIR}/_ext/2118387804/osalHeap.o ${OBJECTDIR}/_ext/2118387804/osalKernel.o ${OBJECTDIR}/_ext/2118387804/osalTask.o ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o ${OBJECTDIR}/_ext/2118387804/osalQueue.o ${OBJECTDIR}/_ext/1177943276/eosService.o ${OBJECTDIR}/_ext/1177943276/eosDigInputService.o ${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o ${OBJECTDIR}/_ext/1177943276/eosUARTService.o ${OBJECTDIR}/_ext/1530442337/main.o ${OBJECTDIR}/_ext/1878683351/eosTask.o ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o ${OBJECTDIR}/_ext/1878683351/eosQueue.o ${OBJECTDIR}/_ext/1878683351/eosSemaphore.o ${OBJECTDIR}/_ext/644179355/eosApplication.o ${OBJECTDIR}/_ext/644179355/eosString.o ${OBJECTDIR}/_ext/1811515072/tasks.o ${OBJECTDIR}/_ext/1811515072/queue.o ${OBJECTDIR}/_ext/1811515072/list.o ${OBJECTDIR}/_ext/1807323683/heap_4.o ${OBJECTDIR}/_ext/1849293962/port.o ${OBJECTDIR}/_ext/1849293962/port_asm.o ${OBJECTDIR}/_ext/1811515072/timers.o

# Source Files
SOURCEFILES=../../../Source/PIC32/appInitialize.cpp ../../../Source/PIC32/appInterrupts.cpp ../../../Source/axisApplication.cpp ../../../Source/axisMain.cpp ../../../Source/axisMotionService.cpp ../../../Source/axisMotor.cpp ../../../Source/axisP2PMotion.cpp ../../../../../EOS/v2/Source/HAL/PIC32/halSYS.c ../../../../../EOS/v2/Source/HAL/PIC32/halGPIO.c ../../../../../EOS/v2/Source/HAL/PIC32/halTMR.c ../../../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S ../../../../../EOS/v2/Source/HAL/PIC32/halCN.c ../../../../../EOS/v2/Source/HAL/PIC32/halCNInterruptWrapper.S ../../../../../EOS/v2/Source/HAL/PIC32/halINT.c ../../../../../EOS/v2/Source/HAL/PIC32/halUART.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalHeap.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalKernel.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalTask.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/rtos_hooks.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalSemaphore.c ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalQueue.c ../../../../../EOS/v2/Source/Services/eosService.cpp ../../../../../EOS/v2/Source/Services/eosDigInputService.cpp ../../../../../EOS/v2/Source/Services/eosDigOutputService.cpp ../../../../../EOS/v2/Source/Services/eosUARTService.cpp ../../../../../EOS/v2/Source/StartUp/PIC32/main.cpp ../../../../../EOS/v2/Source/System/Core/eosTask.cpp ../../../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp ../../../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp ../../../../../EOS/v2/Source/System/Core/eosQueue.cpp ../../../../../EOS/v2/Source/System/Core/eosSemaphore.cpp ../../../../../EOS/v2/Source/System/eosApplication.cpp ../../../../../EOS/v2/Source/System/eosString.cpp ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/tasks.c ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/queue.c ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/list.c ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MemMang/heap_4.c ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/timers.c



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
	${MAKE}  -f nbproject/Makefile-PIC32_USB_STARTER_KIT_1.mk dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o: ../../../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S  .generated_files/flags/PIC32_USB_STARTER_KIT_1/458a0085a70b6691c90fcdaf1cbeebdfff6a9723 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.ok ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.err 
	${MP_CPPC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.d"  -o ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o ../../../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S  -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.d" "${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o: ../../../../../EOS/v2/Source/HAL/PIC32/halCNInterruptWrapper.S  .generated_files/flags/PIC32_USB_STARTER_KIT_1/fecd84a56103f990986f161edc2ab6b7d93f1ee5 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o 
	@${RM} ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.ok ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.err 
	${MP_CPPC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.d"  -o ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o ../../../../../EOS/v2/Source/HAL/PIC32/halCNInterruptWrapper.S  -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.d" "${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1849293962/port_asm.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  .generated_files/flags/PIC32_USB_STARTER_KIT_1/b746fb7b863086c3dc9f0594f22fb5c8be8f902f .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1849293962" 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port_asm.o.ok ${OBJECTDIR}/_ext/1849293962/port_asm.o.err 
	${MP_CPPC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1849293962/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1849293962/port_asm.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1849293962/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1849293962/port_asm.o.d" "${OBJECTDIR}/_ext/1849293962/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o: ../../../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S  .generated_files/flags/PIC32_USB_STARTER_KIT_1/f9e3e3935f4cda11fa83f99ae30435921301613b .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.ok ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.err 
	${MP_CPPC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.d"  -o ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o ../../../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S  -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.asm.d",--gdwarf-2 -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.d" "${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o: ../../../../../EOS/v2/Source/HAL/PIC32/halCNInterruptWrapper.S  .generated_files/flags/PIC32_USB_STARTER_KIT_1/acd5af8644db1faba4e6d58239e1efcece0076e0 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o 
	@${RM} ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.ok ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.err 
	${MP_CPPC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.d"  -o ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o ../../../../../EOS/v2/Source/HAL/PIC32/halCNInterruptWrapper.S  -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.asm.d",--gdwarf-2 -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.d" "${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1849293962/port_asm.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  .generated_files/flags/PIC32_USB_STARTER_KIT_1/68dbc250c2a1e328c97638f1717badcd034425cd .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1849293962" 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port_asm.o.ok ${OBJECTDIR}/_ext/1849293962/port_asm.o.err 
	${MP_CPPC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -DHARDWARE_PIC32_USB_STARTER_KIT_I -MMD -MF "${OBJECTDIR}/_ext/1849293962/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1849293962/port_asm.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1849293962/port_asm.o.asm.d",--gdwarf-2 -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1849293962/port_asm.o.d" "${OBJECTDIR}/_ext/1849293962/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/806995671/halSYS.o: ../../../../../EOS/v2/Source/HAL/PIC32/halSYS.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/36979783b529387bbea0e7c7abe5ec9887350587 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halSYS.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halSYS.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halSYS.o.d" -o ${OBJECTDIR}/_ext/806995671/halSYS.o ../../../../../EOS/v2/Source/HAL/PIC32/halSYS.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/806995671/halGPIO.o: ../../../../../EOS/v2/Source/HAL/PIC32/halGPIO.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/448bf98dcb848c991d5310cf388c18c48bb339af .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halGPIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halGPIO.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halGPIO.o.d" -o ${OBJECTDIR}/_ext/806995671/halGPIO.o ../../../../../EOS/v2/Source/HAL/PIC32/halGPIO.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/806995671/halTMR.o: ../../../../../EOS/v2/Source/HAL/PIC32/halTMR.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/18c69a151f79e87ceb6ecb0cb66ac3e6c3370fc1 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMR.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMR.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halTMR.o.d" -o ${OBJECTDIR}/_ext/806995671/halTMR.o ../../../../../EOS/v2/Source/HAL/PIC32/halTMR.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/806995671/halCN.o: ../../../../../EOS/v2/Source/HAL/PIC32/halCN.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/a98b310206d852326d5a88b55da5470b941ed0c8 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halCN.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halCN.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halCN.o.d" -o ${OBJECTDIR}/_ext/806995671/halCN.o ../../../../../EOS/v2/Source/HAL/PIC32/halCN.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/806995671/halINT.o: ../../../../../EOS/v2/Source/HAL/PIC32/halINT.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/79d9160006c12867f47c25b7ea95ec5cf6213704 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halINT.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halINT.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halINT.o.d" -o ${OBJECTDIR}/_ext/806995671/halINT.o ../../../../../EOS/v2/Source/HAL/PIC32/halINT.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/806995671/halUART.o: ../../../../../EOS/v2/Source/HAL/PIC32/halUART.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/9a7fe9365a17cb14e10230f131c2856ca22450a2 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halUART.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halUART.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halUART.o.d" -o ${OBJECTDIR}/_ext/806995671/halUART.o ../../../../../EOS/v2/Source/HAL/PIC32/halUART.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/osalHeap.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalHeap.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/e6305d3a185f8ef699eacad69be4825fb3468d98 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalHeap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalHeap.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalHeap.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalHeap.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalHeap.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/osalKernel.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalKernel.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/bebc38417f5b9eae0ae3de98d196f98354e0ddea .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalKernel.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalKernel.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalKernel.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalKernel.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalKernel.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/osalTask.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalTask.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/422d2b8092853f6683e1c86d9066936e1ecf20df .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalTask.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalTask.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalTask.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalTask.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalTask.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/rtos_hooks.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/rtos_hooks.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/e81dc1e379c8ebca9b3aa6a082bf16746d57221d .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/rtos_hooks.o.d" -o ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/rtos_hooks.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/osalSemaphore.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalSemaphore.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/8f864e869b5c7c74b91b65c8498b72dceb215765 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalSemaphore.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalSemaphore.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/osalQueue.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalQueue.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/24ffa3b9605287809de581340125263bc1a29e0f .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalQueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalQueue.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalQueue.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalQueue.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalQueue.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811515072/tasks.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/tasks.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/78c5dc7bc7704428ba73773cd666835169ce2c51 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/tasks.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1811515072/tasks.o.d" -o ${OBJECTDIR}/_ext/1811515072/tasks.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/tasks.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811515072/queue.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/queue.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/b83cd1b65f324b17d7f9c0493809f5f134df1b1d .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/queue.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1811515072/queue.o.d" -o ${OBJECTDIR}/_ext/1811515072/queue.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/queue.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811515072/list.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/list.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/e8f6453b9f5e1313e39a2b2d2823edff65107962 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/list.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1811515072/list.o.d" -o ${OBJECTDIR}/_ext/1811515072/list.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/list.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1807323683/heap_4.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MemMang/heap_4.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/a764583cc9d99e2d530b30e98e67b25a2e607359 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1807323683" 
	@${RM} ${OBJECTDIR}/_ext/1807323683/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1807323683/heap_4.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1807323683/heap_4.o.d" -o ${OBJECTDIR}/_ext/1807323683/heap_4.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MemMang/heap_4.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1849293962/port.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/4e199dd2a6b3ead404b3fab720c6ac12d880d3e5 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1849293962" 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1849293962/port.o.d" -o ${OBJECTDIR}/_ext/1849293962/port.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811515072/timers.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/timers.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/3be8a9b67d9186ab37b98bccd2a5868d01029911 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/timers.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1811515072/timers.o.d" -o ${OBJECTDIR}/_ext/1811515072/timers.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/timers.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/806995671/halSYS.o: ../../../../../EOS/v2/Source/HAL/PIC32/halSYS.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/e13c0e5a4c88717915e23381ff9fc356d0fab145 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halSYS.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halSYS.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halSYS.o.d" -o ${OBJECTDIR}/_ext/806995671/halSYS.o ../../../../../EOS/v2/Source/HAL/PIC32/halSYS.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/806995671/halGPIO.o: ../../../../../EOS/v2/Source/HAL/PIC32/halGPIO.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/a987ff30520e721148543a0bebead183df71793d .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halGPIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halGPIO.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halGPIO.o.d" -o ${OBJECTDIR}/_ext/806995671/halGPIO.o ../../../../../EOS/v2/Source/HAL/PIC32/halGPIO.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/806995671/halTMR.o: ../../../../../EOS/v2/Source/HAL/PIC32/halTMR.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/77785a872525ae0e0b5f170f8ea72ffd45fcc3a9 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMR.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMR.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halTMR.o.d" -o ${OBJECTDIR}/_ext/806995671/halTMR.o ../../../../../EOS/v2/Source/HAL/PIC32/halTMR.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/806995671/halCN.o: ../../../../../EOS/v2/Source/HAL/PIC32/halCN.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/18f4e43f87dc852de5bd29dd82f1ac2ea6592f5f .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halCN.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halCN.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halCN.o.d" -o ${OBJECTDIR}/_ext/806995671/halCN.o ../../../../../EOS/v2/Source/HAL/PIC32/halCN.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/806995671/halINT.o: ../../../../../EOS/v2/Source/HAL/PIC32/halINT.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/385cca041b11b357956afa698f5cd96f66951a50 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halINT.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halINT.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halINT.o.d" -o ${OBJECTDIR}/_ext/806995671/halINT.o ../../../../../EOS/v2/Source/HAL/PIC32/halINT.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/806995671/halUART.o: ../../../../../EOS/v2/Source/HAL/PIC32/halUART.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/3238cf8ee279cf74f97fe777743b12d69ffd0018 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halUART.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halUART.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halUART.o.d" -o ${OBJECTDIR}/_ext/806995671/halUART.o ../../../../../EOS/v2/Source/HAL/PIC32/halUART.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/osalHeap.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalHeap.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/5b20f3519771cca9412845663eb64ce96550a4d1 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalHeap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalHeap.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalHeap.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalHeap.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalHeap.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/osalKernel.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalKernel.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/247a1b710c9e943c35da668544142044702ea5a4 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalKernel.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalKernel.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalKernel.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalKernel.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalKernel.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/osalTask.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalTask.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/101eef85cfca9d5bdffbecda7f85a6d651aad037 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalTask.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalTask.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalTask.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalTask.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalTask.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/rtos_hooks.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/rtos_hooks.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/cd1d37c037f109d49e8f53e6b36d89995ecd0e2f .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/rtos_hooks.o.d" -o ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/rtos_hooks.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/osalSemaphore.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalSemaphore.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/d84261fb6d26e3ac594f19fb271de84186a76ae0 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalSemaphore.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalSemaphore.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/osalQueue.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalQueue.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/18ca4a7cae4471b4e895b48e775d21cc2c6a914e .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalQueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalQueue.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalQueue.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalQueue.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalQueue.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811515072/tasks.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/tasks.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/9516165cac9b5a4aa3357b60deb87a1c40f39916 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/tasks.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1811515072/tasks.o.d" -o ${OBJECTDIR}/_ext/1811515072/tasks.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/tasks.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811515072/queue.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/queue.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/53e0ddd37d904ef641f583a746d452f34fb9b7f1 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/queue.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1811515072/queue.o.d" -o ${OBJECTDIR}/_ext/1811515072/queue.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/queue.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811515072/list.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/list.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/79a9322b4e2e8111006b15b23ba2b7d63a8f1031 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/list.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1811515072/list.o.d" -o ${OBJECTDIR}/_ext/1811515072/list.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/list.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1807323683/heap_4.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MemMang/heap_4.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/47150c447bd39d6e35377082f550602843c12696 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1807323683" 
	@${RM} ${OBJECTDIR}/_ext/1807323683/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1807323683/heap_4.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1807323683/heap_4.o.d" -o ${OBJECTDIR}/_ext/1807323683/heap_4.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MemMang/heap_4.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1849293962/port.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/5f86af8de782c5444ab6a40337027341a7d8ade2 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1849293962" 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1849293962/port.o.d" -o ${OBJECTDIR}/_ext/1849293962/port.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811515072/timers.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/timers.c  .generated_files/flags/PIC32_USB_STARTER_KIT_1/a69b1b0bdf63ce1ff110d534ac6a2a367fe0f18f .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/timers.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1811515072/timers.o.d" -o ${OBJECTDIR}/_ext/1811515072/timers.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/timers.c    -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2116396228/appInitialize.o: ../../../Source/PIC32/appInitialize.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/5766f5bb776f38f4e32fb290f9faa26edb87eb8f .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2116396228" 
	@${RM} ${OBJECTDIR}/_ext/2116396228/appInitialize.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116396228/appInitialize.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/2116396228/appInitialize.o.d" -o ${OBJECTDIR}/_ext/2116396228/appInitialize.o ../../../Source/PIC32/appInitialize.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2116396228/appInterrupts.o: ../../../Source/PIC32/appInterrupts.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/f1b499cc51c22be2d1300d4e840b30005d54ef0d .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2116396228" 
	@${RM} ${OBJECTDIR}/_ext/2116396228/appInterrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116396228/appInterrupts.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/2116396228/appInterrupts.o.d" -o ${OBJECTDIR}/_ext/2116396228/appInterrupts.o ../../../Source/PIC32/appInterrupts.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/axisApplication.o: ../../../Source/axisApplication.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/38450aa9467c866cff143489ae2b4be317833d81 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisApplication.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisApplication.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/axisApplication.o.d" -o ${OBJECTDIR}/_ext/449926602/axisApplication.o ../../../Source/axisApplication.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/axisMain.o: ../../../Source/axisMain.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/99a57dcb23ec05e6d984a178ae3aede7b4311748 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMain.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMain.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/axisMain.o.d" -o ${OBJECTDIR}/_ext/449926602/axisMain.o ../../../Source/axisMain.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/axisMotionService.o: ../../../Source/axisMotionService.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/7fc2d316aefc6c6645caa8503ede8b6f175a3f0a .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotionService.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotionService.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/axisMotionService.o.d" -o ${OBJECTDIR}/_ext/449926602/axisMotionService.o ../../../Source/axisMotionService.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/axisMotor.o: ../../../Source/axisMotor.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/adc2842fe0f3f491d2fca11c055e91b7bd69457d .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotor.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotor.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/axisMotor.o.d" -o ${OBJECTDIR}/_ext/449926602/axisMotor.o ../../../Source/axisMotor.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/axisP2PMotion.o: ../../../Source/axisP2PMotion.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/30596b359bf66a224f2ebe86183ba2a20cd60450 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisP2PMotion.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisP2PMotion.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/axisP2PMotion.o.d" -o ${OBJECTDIR}/_ext/449926602/axisP2PMotion.o ../../../Source/axisP2PMotion.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1177943276/eosService.o: ../../../../../EOS/v2/Source/Services/eosService.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/8d0ad3838d8663faf622b6160f37cf2e9ca36fbd .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1177943276" 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosService.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1177943276/eosService.o.d" -o ${OBJECTDIR}/_ext/1177943276/eosService.o ../../../../../EOS/v2/Source/Services/eosService.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1177943276/eosDigInputService.o: ../../../../../EOS/v2/Source/Services/eosDigInputService.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/66edda4650fceb78c45deb3c306462f8ea738635 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1177943276" 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosDigInputService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosDigInputService.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1177943276/eosDigInputService.o.d" -o ${OBJECTDIR}/_ext/1177943276/eosDigInputService.o ../../../../../EOS/v2/Source/Services/eosDigInputService.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o: ../../../../../EOS/v2/Source/Services/eosDigOutputService.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/e1c9bd3e643969d1af564ce9e3f2a526e8f1aa34 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1177943276" 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o.d" -o ${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o ../../../../../EOS/v2/Source/Services/eosDigOutputService.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1177943276/eosUARTService.o: ../../../../../EOS/v2/Source/Services/eosUARTService.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/eba1ac53ccc1f9fabc150d339a849ec7e5cf3b66 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1177943276" 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosUARTService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosUARTService.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1177943276/eosUARTService.o.d" -o ${OBJECTDIR}/_ext/1177943276/eosUARTService.o ../../../../../EOS/v2/Source/Services/eosUARTService.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1530442337/main.o: ../../../../../EOS/v2/Source/StartUp/PIC32/main.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/f28f167319ec384f5e65a45636dc8d3a8706c3e1 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1530442337" 
	@${RM} ${OBJECTDIR}/_ext/1530442337/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1530442337/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1530442337/main.o.d" -o ${OBJECTDIR}/_ext/1530442337/main.o ../../../../../EOS/v2/Source/StartUp/PIC32/main.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1878683351/eosTask.o: ../../../../../EOS/v2/Source/System/Core/eosTask.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/2e30361715ff09283d984bc47f009d7a45c7570b .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosTask.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosTask.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosTask.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosTask.o ../../../../../EOS/v2/Source/System/Core/eosTask.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o: ../../../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/6541631afc514d0519596f159e58f802e8ac4c98 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o ../../../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o: ../../../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/4c8b1bb17d06e4fc3fee92941e27de98c1f6c6fd .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o ../../../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1878683351/eosQueue.o: ../../../../../EOS/v2/Source/System/Core/eosQueue.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/866de0d247a6d33b7699b336bb7ce0c8effbece6 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosQueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosQueue.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosQueue.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosQueue.o ../../../../../EOS/v2/Source/System/Core/eosQueue.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1878683351/eosSemaphore.o: ../../../../../EOS/v2/Source/System/Core/eosSemaphore.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/38f7e8aed6184851e04cd2779163b145bcd4d042 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosSemaphore.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosSemaphore.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosSemaphore.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosSemaphore.o ../../../../../EOS/v2/Source/System/Core/eosSemaphore.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/644179355/eosApplication.o: ../../../../../EOS/v2/Source/System/eosApplication.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/11ec34bc1b5b8eebc69756d9c58e3b043fb89b38 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/644179355" 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosApplication.o.d 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosApplication.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/644179355/eosApplication.o.d" -o ${OBJECTDIR}/_ext/644179355/eosApplication.o ../../../../../EOS/v2/Source/System/eosApplication.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/644179355/eosString.o: ../../../../../EOS/v2/Source/System/eosString.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/9b5442be0b1e88ab0014cf79061da7c1d113ad2b .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/644179355" 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosString.o.d 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosString.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/644179355/eosString.o.d" -o ${OBJECTDIR}/_ext/644179355/eosString.o ../../../../../EOS/v2/Source/System/eosString.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/2116396228/appInitialize.o: ../../../Source/PIC32/appInitialize.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/cd481536715db27d560c96e647161a675a8f78ed .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2116396228" 
	@${RM} ${OBJECTDIR}/_ext/2116396228/appInitialize.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116396228/appInitialize.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/2116396228/appInitialize.o.d" -o ${OBJECTDIR}/_ext/2116396228/appInitialize.o ../../../Source/PIC32/appInitialize.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2116396228/appInterrupts.o: ../../../Source/PIC32/appInterrupts.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/a21dc45e6cc201621bae6fa12cd46a9c07043044 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2116396228" 
	@${RM} ${OBJECTDIR}/_ext/2116396228/appInterrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116396228/appInterrupts.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/2116396228/appInterrupts.o.d" -o ${OBJECTDIR}/_ext/2116396228/appInterrupts.o ../../../Source/PIC32/appInterrupts.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/axisApplication.o: ../../../Source/axisApplication.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/be89f0acd2540fb5f9ee6772ce85b4e1ed2076b0 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisApplication.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisApplication.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/axisApplication.o.d" -o ${OBJECTDIR}/_ext/449926602/axisApplication.o ../../../Source/axisApplication.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/axisMain.o: ../../../Source/axisMain.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/fe89fa28744a3584a5d4260652bcd0e72862303 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMain.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMain.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/axisMain.o.d" -o ${OBJECTDIR}/_ext/449926602/axisMain.o ../../../Source/axisMain.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/axisMotionService.o: ../../../Source/axisMotionService.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/fa5364709465f7863b86cbcf6b056e8c49a29fb7 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotionService.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotionService.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/axisMotionService.o.d" -o ${OBJECTDIR}/_ext/449926602/axisMotionService.o ../../../Source/axisMotionService.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/axisMotor.o: ../../../Source/axisMotor.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/42775bbae1c1b1f2535e7cc1d461005d4484344a .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotor.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotor.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/axisMotor.o.d" -o ${OBJECTDIR}/_ext/449926602/axisMotor.o ../../../Source/axisMotor.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/axisP2PMotion.o: ../../../Source/axisP2PMotion.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/e74a6100de600a82fa2f111e59d30a30e6175721 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisP2PMotion.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisP2PMotion.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/axisP2PMotion.o.d" -o ${OBJECTDIR}/_ext/449926602/axisP2PMotion.o ../../../Source/axisP2PMotion.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1177943276/eosService.o: ../../../../../EOS/v2/Source/Services/eosService.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/97402ee9b93dca7e9614f56ec40d2f288b5c124a .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1177943276" 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosService.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1177943276/eosService.o.d" -o ${OBJECTDIR}/_ext/1177943276/eosService.o ../../../../../EOS/v2/Source/Services/eosService.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1177943276/eosDigInputService.o: ../../../../../EOS/v2/Source/Services/eosDigInputService.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/feb48562f2323b93f5b5ba63b7ebb567a30fbb1 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1177943276" 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosDigInputService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosDigInputService.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1177943276/eosDigInputService.o.d" -o ${OBJECTDIR}/_ext/1177943276/eosDigInputService.o ../../../../../EOS/v2/Source/Services/eosDigInputService.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o: ../../../../../EOS/v2/Source/Services/eosDigOutputService.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/ae0c13d7500f384d7523623cbb9569169186de7c .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1177943276" 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o.d" -o ${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o ../../../../../EOS/v2/Source/Services/eosDigOutputService.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1177943276/eosUARTService.o: ../../../../../EOS/v2/Source/Services/eosUARTService.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/1908cbe0a883f5827c6e9a92e5a36335f33fafcf .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1177943276" 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosUARTService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosUARTService.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1177943276/eosUARTService.o.d" -o ${OBJECTDIR}/_ext/1177943276/eosUARTService.o ../../../../../EOS/v2/Source/Services/eosUARTService.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1530442337/main.o: ../../../../../EOS/v2/Source/StartUp/PIC32/main.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/e07bbfb133f877ed54603c26ab8e1f4567e523d3 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1530442337" 
	@${RM} ${OBJECTDIR}/_ext/1530442337/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1530442337/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1530442337/main.o.d" -o ${OBJECTDIR}/_ext/1530442337/main.o ../../../../../EOS/v2/Source/StartUp/PIC32/main.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1878683351/eosTask.o: ../../../../../EOS/v2/Source/System/Core/eosTask.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/49fc221a6d846faf7648c60e82bf63c4e8eb3798 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosTask.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosTask.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosTask.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosTask.o ../../../../../EOS/v2/Source/System/Core/eosTask.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o: ../../../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/a13a7731d5079c68eb89abff6607f412078a6582 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o ../../../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o: ../../../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/6a0bb7730ba6980b3d53c597c33b9cb414d1da01 .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o ../../../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1878683351/eosQueue.o: ../../../../../EOS/v2/Source/System/Core/eosQueue.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/2d8b597b7b71eacbeeca9a8dcee04e31e181834f .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosQueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosQueue.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosQueue.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosQueue.o ../../../../../EOS/v2/Source/System/Core/eosQueue.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1878683351/eosSemaphore.o: ../../../../../EOS/v2/Source/System/Core/eosSemaphore.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/466a51ca3b2ca3ddfbc9bb45ed59d0a26cd215ba .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosSemaphore.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosSemaphore.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosSemaphore.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosSemaphore.o ../../../../../EOS/v2/Source/System/Core/eosSemaphore.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/644179355/eosApplication.o: ../../../../../EOS/v2/Source/System/eosApplication.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/44047dd6668bac94f5ba37ac15455e996b0b5e4d .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/644179355" 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosApplication.o.d 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosApplication.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/644179355/eosApplication.o.d" -o ${OBJECTDIR}/_ext/644179355/eosApplication.o ../../../../../EOS/v2/Source/System/eosApplication.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/644179355/eosString.o: ../../../../../EOS/v2/Source/System/eosString.cpp  .generated_files/flags/PIC32_USB_STARTER_KIT_1/372d69754b557364bd36f15dc3c1a7fb72613ade .generated_files/flags/PIC32_USB_STARTER_KIT_1/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/644179355" 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosString.o.d 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosString.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_CUSTOM -DHARDWARE_CUSTOM_PIC32_USB_STARTER_KIT_I -MP -MMD -MF "${OBJECTDIR}/_ext/644179355/eosString.o.d" -o ${OBJECTDIR}/_ext/644179355/eosString.o ../../../../../EOS/v2/Source/System/eosString.cpp   -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../EOS/v2/Library/PIC32/Harmony/bin/framework/peripheral/PIC32MX460F512L_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\EOS\v2\Library\PIC32\Harmony\bin\framework\peripheral\PIC32MX460F512L_peripherals.a      -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=1024,--defsym=_min_stack_size=1024,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,-allow-multiple-definition -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../EOS/v2/Library/PIC32/Harmony/bin/framework/peripheral/PIC32MX460F512L_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\EOS\v2\Library\PIC32\Harmony\bin\framework\peripheral\PIC32MX460F512L_peripherals.a      -DXPRJ_PIC32_USB_STARTER_KIT_1=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1024,--defsym=_min_stack_size=1024,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,-allow-multiple-definition -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/PIC32_USB_STARTER_KIT_1
	${RM} -r dist/PIC32_USB_STARTER_KIT_1

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
