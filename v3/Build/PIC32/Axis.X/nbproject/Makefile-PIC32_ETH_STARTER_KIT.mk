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
ifeq "$(wildcard nbproject/Makefile-local-PIC32_ETH_STARTER_KIT.mk)" "nbproject/Makefile-local-PIC32_ETH_STARTER_KIT.mk"
include nbproject/Makefile-local-PIC32_ETH_STARTER_KIT.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=PIC32_ETH_STARTER_KIT
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
	${MAKE}  -f nbproject/Makefile-PIC32_ETH_STARTER_KIT.mk dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o: ../../../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S  .generated_files/flags/PIC32_ETH_STARTER_KIT/b66d5a3669d1b5fa8c0c4abbffa34fe12de0521f .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.ok ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.err 
	${MP_CPPC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -DHARDWARE_PIC32_ETH_STARTER_KIT -MMD -MF "${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.d"  -o ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o ../../../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S  -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.d" "${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o: ../../../../../EOS/v2/Source/HAL/PIC32/halCNInterruptWrapper.S  .generated_files/flags/PIC32_ETH_STARTER_KIT/128ea38d05aa81ab31c0c843e633fc80b57a25f8 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o 
	@${RM} ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.ok ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.err 
	${MP_CPPC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -DHARDWARE_PIC32_ETH_STARTER_KIT -MMD -MF "${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.d"  -o ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o ../../../../../EOS/v2/Source/HAL/PIC32/halCNInterruptWrapper.S  -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.d" "${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1849293962/port_asm.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  .generated_files/flags/PIC32_ETH_STARTER_KIT/a14d7bb6075a784023a1b276882c61d52a0ac194 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1849293962" 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port_asm.o.ok ${OBJECTDIR}/_ext/1849293962/port_asm.o.err 
	${MP_CPPC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -DHARDWARE_PIC32_ETH_STARTER_KIT -MMD -MF "${OBJECTDIR}/_ext/1849293962/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1849293962/port_asm.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1849293962/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1849293962/port_asm.o.d" "${OBJECTDIR}/_ext/1849293962/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o: ../../../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S  .generated_files/flags/PIC32_ETH_STARTER_KIT/4697925b3d468bba8ee0d69fc8b38f85b1bd3f7a .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.ok ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.err 
	${MP_CPPC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -DHARDWARE_PIC32_ETH_STARTER_KIT -MMD -MF "${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.d"  -o ${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o ../../../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S  -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.asm.d",--gdwarf-2 -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.d" "${OBJECTDIR}/_ext/806995671/halTMRInterruptWrapper.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o: ../../../../../EOS/v2/Source/HAL/PIC32/halCNInterruptWrapper.S  .generated_files/flags/PIC32_ETH_STARTER_KIT/c47da6e079cd9b200dfb452352d5c036b332c6d7 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o 
	@${RM} ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.ok ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.err 
	${MP_CPPC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -DHARDWARE_PIC32_ETH_STARTER_KIT -MMD -MF "${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.d"  -o ${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o ../../../../../EOS/v2/Source/HAL/PIC32/halCNInterruptWrapper.S  -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.asm.d",--gdwarf-2 -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.d" "${OBJECTDIR}/_ext/806995671/halCNInterruptWrapper.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1849293962/port_asm.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  .generated_files/flags/PIC32_ETH_STARTER_KIT/e2242f12fc43ac95b8b9ef02c991fdb33ef02471 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1849293962" 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port_asm.o.ok ${OBJECTDIR}/_ext/1849293962/port_asm.o.err 
	${MP_CPPC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -mno-float -DHARDWARE_PIC32_ETH_STARTER_KIT -MMD -MF "${OBJECTDIR}/_ext/1849293962/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1849293962/port_asm.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1849293962/port_asm.o.asm.d",--gdwarf-2 -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1849293962/port_asm.o.d" "${OBJECTDIR}/_ext/1849293962/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/806995671/halSYS.o: ../../../../../EOS/v2/Source/HAL/PIC32/halSYS.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/b41086cff71ea398d32b4db05ed883ee8f1cce8a .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halSYS.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halSYS.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halSYS.o.d" -o ${OBJECTDIR}/_ext/806995671/halSYS.o ../../../../../EOS/v2/Source/HAL/PIC32/halSYS.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/806995671/halGPIO.o: ../../../../../EOS/v2/Source/HAL/PIC32/halGPIO.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/bdbdb306cbeb3510edb64cb6f4f6c6f6b2b64d38 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halGPIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halGPIO.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halGPIO.o.d" -o ${OBJECTDIR}/_ext/806995671/halGPIO.o ../../../../../EOS/v2/Source/HAL/PIC32/halGPIO.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/806995671/halTMR.o: ../../../../../EOS/v2/Source/HAL/PIC32/halTMR.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/7fe8e16eafb8e0f99b1ef4d3456cd2fd6bd0ede9 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMR.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMR.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halTMR.o.d" -o ${OBJECTDIR}/_ext/806995671/halTMR.o ../../../../../EOS/v2/Source/HAL/PIC32/halTMR.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/806995671/halCN.o: ../../../../../EOS/v2/Source/HAL/PIC32/halCN.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/45d82976b622fd36f4f0a399208515f0fcf6a46e .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halCN.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halCN.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halCN.o.d" -o ${OBJECTDIR}/_ext/806995671/halCN.o ../../../../../EOS/v2/Source/HAL/PIC32/halCN.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/806995671/halINT.o: ../../../../../EOS/v2/Source/HAL/PIC32/halINT.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/4e2cfe2d342b5014d2b56c6dc01ae9717f830746 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halINT.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halINT.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halINT.o.d" -o ${OBJECTDIR}/_ext/806995671/halINT.o ../../../../../EOS/v2/Source/HAL/PIC32/halINT.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/806995671/halUART.o: ../../../../../EOS/v2/Source/HAL/PIC32/halUART.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/b728c235263af74efa88f7b5c265cd1c570896c0 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halUART.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halUART.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halUART.o.d" -o ${OBJECTDIR}/_ext/806995671/halUART.o ../../../../../EOS/v2/Source/HAL/PIC32/halUART.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/osalHeap.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalHeap.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/e24e40926ab406e496ced1b54684398fd7ebdacc .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalHeap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalHeap.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalHeap.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalHeap.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalHeap.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/osalKernel.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalKernel.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/f3697b6870a4d1e5dfc947f03fb6c5fc1cfb4a53 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalKernel.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalKernel.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalKernel.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalKernel.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalKernel.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/osalTask.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalTask.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/7552208656601864a9a62506dc007ab6d7467790 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalTask.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalTask.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalTask.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalTask.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalTask.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/rtos_hooks.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/rtos_hooks.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/fc7b79f76eb8676b744e1a5514c2e9084bb0fa37 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/rtos_hooks.o.d" -o ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/rtos_hooks.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/osalSemaphore.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalSemaphore.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/72f62aa2254c02e3c9d752287e736d42b0670613 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalSemaphore.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalSemaphore.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/osalQueue.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalQueue.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/162bb6e39372bfb2dd4a07a5a0ecd86d00db11ea .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalQueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalQueue.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalQueue.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalQueue.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalQueue.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811515072/tasks.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/tasks.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/408e6e3ccaa287a2086f7c933eaebfcc8311a496 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/tasks.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1811515072/tasks.o.d" -o ${OBJECTDIR}/_ext/1811515072/tasks.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/tasks.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811515072/queue.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/queue.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/d6ed7d700555c3beef2c532365999664c4613ba9 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/queue.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1811515072/queue.o.d" -o ${OBJECTDIR}/_ext/1811515072/queue.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/queue.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811515072/list.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/list.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/a1ffe0abe37e54f62cf986356887d1fb54f784a2 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/list.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1811515072/list.o.d" -o ${OBJECTDIR}/_ext/1811515072/list.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/list.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1807323683/heap_4.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MemMang/heap_4.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/857c6da387902bc35fad43a1e6e2e866e6a0e57 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1807323683" 
	@${RM} ${OBJECTDIR}/_ext/1807323683/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1807323683/heap_4.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1807323683/heap_4.o.d" -o ${OBJECTDIR}/_ext/1807323683/heap_4.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MemMang/heap_4.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1849293962/port.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/beb003f2a5480ba6f4abc8b8710c64d2bebf6d3d .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1849293962" 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1849293962/port.o.d" -o ${OBJECTDIR}/_ext/1849293962/port.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811515072/timers.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/timers.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/5264af0f6b6b2b240648c099b4f83e9135664cbc .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/timers.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1811515072/timers.o.d" -o ${OBJECTDIR}/_ext/1811515072/timers.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/timers.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/806995671/halSYS.o: ../../../../../EOS/v2/Source/HAL/PIC32/halSYS.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/c8590e4c13df4a08eaa2330094ae09c6c7a4566f .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halSYS.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halSYS.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halSYS.o.d" -o ${OBJECTDIR}/_ext/806995671/halSYS.o ../../../../../EOS/v2/Source/HAL/PIC32/halSYS.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/806995671/halGPIO.o: ../../../../../EOS/v2/Source/HAL/PIC32/halGPIO.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/acfec73f5962717bd7b18e60e6ab53c2db4a09a .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halGPIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halGPIO.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halGPIO.o.d" -o ${OBJECTDIR}/_ext/806995671/halGPIO.o ../../../../../EOS/v2/Source/HAL/PIC32/halGPIO.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/806995671/halTMR.o: ../../../../../EOS/v2/Source/HAL/PIC32/halTMR.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/6dd18d4699c23a770d6b93330ad68e314f143dc7 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMR.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halTMR.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halTMR.o.d" -o ${OBJECTDIR}/_ext/806995671/halTMR.o ../../../../../EOS/v2/Source/HAL/PIC32/halTMR.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/806995671/halCN.o: ../../../../../EOS/v2/Source/HAL/PIC32/halCN.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/72db8e8cdc705a44fbe140393c667ecf7dd0d6be .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halCN.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halCN.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halCN.o.d" -o ${OBJECTDIR}/_ext/806995671/halCN.o ../../../../../EOS/v2/Source/HAL/PIC32/halCN.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/806995671/halINT.o: ../../../../../EOS/v2/Source/HAL/PIC32/halINT.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/bde8b1a6ac3efea13ad334755df5ef1858d9e54a .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halINT.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halINT.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halINT.o.d" -o ${OBJECTDIR}/_ext/806995671/halINT.o ../../../../../EOS/v2/Source/HAL/PIC32/halINT.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/806995671/halUART.o: ../../../../../EOS/v2/Source/HAL/PIC32/halUART.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/359da84014d8f0b2184bffc78d0b8520ca1def3d .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/806995671" 
	@${RM} ${OBJECTDIR}/_ext/806995671/halUART.o.d 
	@${RM} ${OBJECTDIR}/_ext/806995671/halUART.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/806995671/halUART.o.d" -o ${OBJECTDIR}/_ext/806995671/halUART.o ../../../../../EOS/v2/Source/HAL/PIC32/halUART.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/osalHeap.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalHeap.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/6daa872425ce3d60dee448e19112c054d53daf1b .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalHeap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalHeap.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalHeap.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalHeap.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalHeap.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/osalKernel.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalKernel.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/130923cda8ddc4c8f25955fa2c36231f7b1f69cd .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalKernel.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalKernel.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalKernel.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalKernel.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalKernel.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/osalTask.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalTask.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/6b11f2c20588dadb4fbf8d7c3cf940a3a4ff0725 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalTask.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalTask.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalTask.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalTask.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalTask.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/rtos_hooks.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/rtos_hooks.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/516157bbd7d3cd812ed500c7d827c44fd451a8b7 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/rtos_hooks.o.d" -o ${OBJECTDIR}/_ext/2118387804/rtos_hooks.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/rtos_hooks.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/osalSemaphore.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalSemaphore.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/c2c3a9fd24238b0281273880088a3fbabc881238 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalSemaphore.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalSemaphore.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalSemaphore.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118387804/osalQueue.o: ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalQueue.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/8c1727d9eab72e131d2c66a852a588f10091e7c3 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2118387804" 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalQueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118387804/osalQueue.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/2118387804/osalQueue.o.d" -o ${OBJECTDIR}/_ext/2118387804/osalQueue.o ../../../../../EOS/v2/Source/OSAL/FreeRTOS/osalQueue.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811515072/tasks.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/tasks.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/f104d57f2a2bdd2cbdcaf9bd7c9d2cf97d400a1d .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/tasks.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1811515072/tasks.o.d" -o ${OBJECTDIR}/_ext/1811515072/tasks.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/tasks.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811515072/queue.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/queue.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/53864861c0ff00090ce642fe142363ee5d382ed0 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/queue.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1811515072/queue.o.d" -o ${OBJECTDIR}/_ext/1811515072/queue.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/queue.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811515072/list.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/list.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/b2d59543029e4384b8dea19e9714a1a7c6520822 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/list.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1811515072/list.o.d" -o ${OBJECTDIR}/_ext/1811515072/list.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/list.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1807323683/heap_4.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MemMang/heap_4.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/88eebeba143e08da76ed1c8789b4029bed31088 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1807323683" 
	@${RM} ${OBJECTDIR}/_ext/1807323683/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1807323683/heap_4.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1807323683/heap_4.o.d" -o ${OBJECTDIR}/_ext/1807323683/heap_4.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MemMang/heap_4.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1849293962/port.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/4f485dea08c10c771b3f437199e910e7d62f6361 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1849293962" 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1849293962/port.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1849293962/port.o.d" -o ${OBJECTDIR}/_ext/1849293962/port.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811515072/timers.o: ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/timers.c  .generated_files/flags/PIC32_ETH_STARTER_KIT/f0fa39a2f4355e7ae0b8f3ed2e26252f33c29fbd .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1811515072" 
	@${RM} ${OBJECTDIR}/_ext/1811515072/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811515072/timers.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -ffunction-sections -fno-common -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1811515072/timers.o.d" -o ${OBJECTDIR}/_ext/1811515072/timers.o ../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/timers.c    -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu99 -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2116396228/appInitialize.o: ../../../Source/PIC32/appInitialize.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/340b5ca27e508ff3ed0be7bf43302c5ca7bdc0d7 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2116396228" 
	@${RM} ${OBJECTDIR}/_ext/2116396228/appInitialize.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116396228/appInitialize.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/2116396228/appInitialize.o.d" -o ${OBJECTDIR}/_ext/2116396228/appInitialize.o ../../../Source/PIC32/appInitialize.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2116396228/appInterrupts.o: ../../../Source/PIC32/appInterrupts.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/2638166804975e33ed83659b0219de578b36ab6 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2116396228" 
	@${RM} ${OBJECTDIR}/_ext/2116396228/appInterrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116396228/appInterrupts.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/2116396228/appInterrupts.o.d" -o ${OBJECTDIR}/_ext/2116396228/appInterrupts.o ../../../Source/PIC32/appInterrupts.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/axisApplication.o: ../../../Source/axisApplication.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/b6304153335a2115c4427f968f94d5d9cc0dbde3 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisApplication.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisApplication.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/axisApplication.o.d" -o ${OBJECTDIR}/_ext/449926602/axisApplication.o ../../../Source/axisApplication.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/axisMain.o: ../../../Source/axisMain.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/f363e461dce7fd8c8e126b8bad9c342d879db3d4 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMain.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMain.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/axisMain.o.d" -o ${OBJECTDIR}/_ext/449926602/axisMain.o ../../../Source/axisMain.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/axisMotionService.o: ../../../Source/axisMotionService.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/e371b6edf4655fa8f585e6711db7b16e10371903 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotionService.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotionService.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/axisMotionService.o.d" -o ${OBJECTDIR}/_ext/449926602/axisMotionService.o ../../../Source/axisMotionService.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/axisMotor.o: ../../../Source/axisMotor.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/ae85292a72619ce8b4555db6962adcd49d3aef17 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotor.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotor.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/axisMotor.o.d" -o ${OBJECTDIR}/_ext/449926602/axisMotor.o ../../../Source/axisMotor.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/axisP2PMotion.o: ../../../Source/axisP2PMotion.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/7b484b93eef8c7340c422e1383e6644523456ac2 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisP2PMotion.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisP2PMotion.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/axisP2PMotion.o.d" -o ${OBJECTDIR}/_ext/449926602/axisP2PMotion.o ../../../Source/axisP2PMotion.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1177943276/eosService.o: ../../../../../EOS/v2/Source/Services/eosService.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/e0c14818ec881e5e7038de938efa853240945169 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1177943276" 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosService.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1177943276/eosService.o.d" -o ${OBJECTDIR}/_ext/1177943276/eosService.o ../../../../../EOS/v2/Source/Services/eosService.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1177943276/eosDigInputService.o: ../../../../../EOS/v2/Source/Services/eosDigInputService.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/875ddf06614d4d616ab5e2bfcdff4c06557f1c09 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1177943276" 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosDigInputService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosDigInputService.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1177943276/eosDigInputService.o.d" -o ${OBJECTDIR}/_ext/1177943276/eosDigInputService.o ../../../../../EOS/v2/Source/Services/eosDigInputService.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o: ../../../../../EOS/v2/Source/Services/eosDigOutputService.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/fd1425a8524008e1187b8435a121eabca51e7a7 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1177943276" 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o.d" -o ${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o ../../../../../EOS/v2/Source/Services/eosDigOutputService.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1177943276/eosUARTService.o: ../../../../../EOS/v2/Source/Services/eosUARTService.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/da413cb7b0351beb172d946ac3801e7b1091a50b .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1177943276" 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosUARTService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosUARTService.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1177943276/eosUARTService.o.d" -o ${OBJECTDIR}/_ext/1177943276/eosUARTService.o ../../../../../EOS/v2/Source/Services/eosUARTService.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1530442337/main.o: ../../../../../EOS/v2/Source/StartUp/PIC32/main.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/2b62cb40de0bae84df44496e1ab03d1d80f5df3f .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1530442337" 
	@${RM} ${OBJECTDIR}/_ext/1530442337/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1530442337/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1530442337/main.o.d" -o ${OBJECTDIR}/_ext/1530442337/main.o ../../../../../EOS/v2/Source/StartUp/PIC32/main.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1878683351/eosTask.o: ../../../../../EOS/v2/Source/System/Core/eosTask.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/1e22350fe9098fff23af9a366581113c50cd1f36 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosTask.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosTask.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosTask.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosTask.o ../../../../../EOS/v2/Source/System/Core/eosTask.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o: ../../../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/504d73db4895729ba855b827ad84ee8d53085b98 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o ../../../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o: ../../../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/9d88b4920d43ef765ad06dd29e2d5f3860f6361c .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o ../../../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1878683351/eosQueue.o: ../../../../../EOS/v2/Source/System/Core/eosQueue.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/4b1e2443985de3f37ef009eaafc3ea1f0ba4b9b9 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosQueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosQueue.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosQueue.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosQueue.o ../../../../../EOS/v2/Source/System/Core/eosQueue.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1878683351/eosSemaphore.o: ../../../../../EOS/v2/Source/System/Core/eosSemaphore.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/ff29eaaf18bd2a92a277e39c36ed7a17a79b3288 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosSemaphore.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosSemaphore.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosSemaphore.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosSemaphore.o ../../../../../EOS/v2/Source/System/Core/eosSemaphore.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/644179355/eosApplication.o: ../../../../../EOS/v2/Source/System/eosApplication.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/5507a366b2e8bf7a530aef876fdb592d52251eb .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/644179355" 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosApplication.o.d 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosApplication.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/644179355/eosApplication.o.d" -o ${OBJECTDIR}/_ext/644179355/eosApplication.o ../../../../../EOS/v2/Source/System/eosApplication.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/644179355/eosString.o: ../../../../../EOS/v2/Source/System/eosString.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/eba827420b1870e416f571678e9a1fd32ac5d622 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/644179355" 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosString.o.d 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosString.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/644179355/eosString.o.d" -o ${OBJECTDIR}/_ext/644179355/eosString.o ../../../../../EOS/v2/Source/System/eosString.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/2116396228/appInitialize.o: ../../../Source/PIC32/appInitialize.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/20b36d35dd2e36872e8a135b632aeedfa5d34809 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2116396228" 
	@${RM} ${OBJECTDIR}/_ext/2116396228/appInitialize.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116396228/appInitialize.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/2116396228/appInitialize.o.d" -o ${OBJECTDIR}/_ext/2116396228/appInitialize.o ../../../Source/PIC32/appInitialize.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2116396228/appInterrupts.o: ../../../Source/PIC32/appInterrupts.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/74ae1708639cb7ee027f4c6bcb2201d4dd7a776e .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2116396228" 
	@${RM} ${OBJECTDIR}/_ext/2116396228/appInterrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116396228/appInterrupts.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/2116396228/appInterrupts.o.d" -o ${OBJECTDIR}/_ext/2116396228/appInterrupts.o ../../../Source/PIC32/appInterrupts.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/axisApplication.o: ../../../Source/axisApplication.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/2e6fd4420fbc27e258f2c9110c70be8c9045325b .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisApplication.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisApplication.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/axisApplication.o.d" -o ${OBJECTDIR}/_ext/449926602/axisApplication.o ../../../Source/axisApplication.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/axisMain.o: ../../../Source/axisMain.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/eb7faf5a9aa5ccf1bdd4b81bd614ba1c29fb0fd6 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMain.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMain.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/axisMain.o.d" -o ${OBJECTDIR}/_ext/449926602/axisMain.o ../../../Source/axisMain.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/axisMotionService.o: ../../../Source/axisMotionService.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/aaffeeeae66b890d321802bb049c4a86607a07ad .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotionService.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotionService.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/axisMotionService.o.d" -o ${OBJECTDIR}/_ext/449926602/axisMotionService.o ../../../Source/axisMotionService.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/axisMotor.o: ../../../Source/axisMotor.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/cfa6ac193c1356a2a63da4790498cc0d0f32a04 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotor.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisMotor.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/axisMotor.o.d" -o ${OBJECTDIR}/_ext/449926602/axisMotor.o ../../../Source/axisMotor.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/449926602/axisP2PMotion.o: ../../../Source/axisP2PMotion.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/46a921d79dec8dcb8d056bc62b0144f515ba67b .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisP2PMotion.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/axisP2PMotion.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/449926602/axisP2PMotion.o.d" -o ${OBJECTDIR}/_ext/449926602/axisP2PMotion.o ../../../Source/axisP2PMotion.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1177943276/eosService.o: ../../../../../EOS/v2/Source/Services/eosService.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/1b0fea6fb123c72d8d499d70ce906e0508e9efe9 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1177943276" 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosService.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1177943276/eosService.o.d" -o ${OBJECTDIR}/_ext/1177943276/eosService.o ../../../../../EOS/v2/Source/Services/eosService.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1177943276/eosDigInputService.o: ../../../../../EOS/v2/Source/Services/eosDigInputService.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/3769e4e422c0e7d45a3308d14131552ae42b7730 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1177943276" 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosDigInputService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosDigInputService.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1177943276/eosDigInputService.o.d" -o ${OBJECTDIR}/_ext/1177943276/eosDigInputService.o ../../../../../EOS/v2/Source/Services/eosDigInputService.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o: ../../../../../EOS/v2/Source/Services/eosDigOutputService.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/57d73908a8c98d3cd71ea4777a19512957fd3bcd .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1177943276" 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o.d" -o ${OBJECTDIR}/_ext/1177943276/eosDigOutputService.o ../../../../../EOS/v2/Source/Services/eosDigOutputService.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1177943276/eosUARTService.o: ../../../../../EOS/v2/Source/Services/eosUARTService.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/ce312af9ca94a9a60491457dfa4ac2403df9229f .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1177943276" 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosUARTService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1177943276/eosUARTService.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1177943276/eosUARTService.o.d" -o ${OBJECTDIR}/_ext/1177943276/eosUARTService.o ../../../../../EOS/v2/Source/Services/eosUARTService.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1530442337/main.o: ../../../../../EOS/v2/Source/StartUp/PIC32/main.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/fb813931860ef928fc76c414697192fc59ec1099 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1530442337" 
	@${RM} ${OBJECTDIR}/_ext/1530442337/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1530442337/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1530442337/main.o.d" -o ${OBJECTDIR}/_ext/1530442337/main.o ../../../../../EOS/v2/Source/StartUp/PIC32/main.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1878683351/eosTask.o: ../../../../../EOS/v2/Source/System/Core/eosTask.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/5118cb5890d52349c07560c29c3b8b6c35ebdc26 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosTask.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosTask.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosTask.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosTask.o ../../../../../EOS/v2/Source/System/Core/eosTask.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o: ../../../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/dec18e5290311138ca1ab4339b82ad9d74c4e2fc .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosGlobalAlloc.o ../../../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o: ../../../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/373fd8f9bb6686ea3eb8d0d7edc4b8d6df9f6414 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosErrorHandler.o ../../../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1878683351/eosQueue.o: ../../../../../EOS/v2/Source/System/Core/eosQueue.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/977d65b2277aa81317450a5d265085e5c0c113ad .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosQueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosQueue.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosQueue.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosQueue.o ../../../../../EOS/v2/Source/System/Core/eosQueue.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1878683351/eosSemaphore.o: ../../../../../EOS/v2/Source/System/Core/eosSemaphore.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/4d411f86abba5a201b190ea7d522ff8d40be5583 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1878683351" 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosSemaphore.o.d 
	@${RM} ${OBJECTDIR}/_ext/1878683351/eosSemaphore.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/1878683351/eosSemaphore.o.d" -o ${OBJECTDIR}/_ext/1878683351/eosSemaphore.o ../../../../../EOS/v2/Source/System/Core/eosSemaphore.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/644179355/eosApplication.o: ../../../../../EOS/v2/Source/System/eosApplication.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/b711f748eb63bdca8d907e8af79fbd885c76d97d .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/644179355" 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosApplication.o.d 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosApplication.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/644179355/eosApplication.o.d" -o ${OBJECTDIR}/_ext/644179355/eosApplication.o ../../../../../EOS/v2/Source/System/eosApplication.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/644179355/eosString.o: ../../../../../EOS/v2/Source/System/eosString.cpp  .generated_files/flags/PIC32_ETH_STARTER_KIT/e8bbc567290bba8940cab48e51d73bbc0116b9f0 .generated_files/flags/PIC32_ETH_STARTER_KIT/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/644179355" 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosString.o.d 
	@${RM} ${OBJECTDIR}/_ext/644179355/eosString.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../Include" -I"../../../Include/PIC32" -I"../../../../../EOS/v2/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Include" -I"../../../../../EOS/v2/Library/PIC32/FreeRTOS/Source/Portable/MPLAB/PIC32MX" -I"../../../../../EOS/v2/Library/PIC32/Harmony/Framework" -fno-rtti -fno-exceptions -fno-check-new -fno-enforce-eh-specs -ffunction-sections -DHARDWARE_PIC32_ETH_STARTER_KIT -MP -MMD -MF "${OBJECTDIR}/_ext/644179355/eosString.o.d" -o ${OBJECTDIR}/_ext/644179355/eosString.o ../../../../../EOS/v2/Source/System/eosString.cpp   -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -std=gnu++17 -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../EOS/v2/Library/PIC32/Harmony/bin/framework/peripheral/PIC32MX460F512L_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\EOS\v2\Library\PIC32\Harmony\bin\framework\peripheral\PIC32MX460F512L_peripherals.a      -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=1024,--defsym=_min_stack_size=1024,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,-allow-multiple-definition -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../EOS/v2/Library/PIC32/Harmony/bin/framework/peripheral/PIC32MX460F512L_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\EOS\v2\Library\PIC32\Harmony\bin\framework\peripheral\PIC32MX460F512L_peripherals.a      -DXPRJ_PIC32_ETH_STARTER_KIT=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1024,--defsym=_min_stack_size=1024,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,-allow-multiple-definition -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/PIC32_ETH_STARTER_KIT
	${RM} -r dist/PIC32_ETH_STARTER_KIT

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
