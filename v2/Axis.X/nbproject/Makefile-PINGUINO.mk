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
ifeq "$(wildcard nbproject/Makefile-local-PINGUINO.mk)" "nbproject/Makefile-local-PINGUINO.mk"
include nbproject/Makefile-local-PINGUINO.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=PINGUINO
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

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../main.cpp ../Config.cpp ../Motor.cpp ../Motion.cpp ../rtos_hooks.c ../axMainForm.cpp ../../../EOS/v2/Source/Controllers/Display/Drivers/ILI9341/eosILI9341.cpp ../../../EOS/v2/Source/Controllers/Display/Drivers/ILI9341/eosILI9341io_p8.cpp ../../../EOS/v2/Source/Controllers/Display/Fonts/Arial24pt.cpp ../../../EOS/v2/Source/Controllers/Display/Fonts/Arial18pt.cpp ../../../EOS/v2/Source/Controllers/Display/Fonts/Arial14pt.cpp ../../../EOS/v2/Source/Controllers/Display/eosDisplay.cpp ../../../EOS/v2/Source/Controllers/Display/eosFont.cpp ../../../EOS/v2/Source/Controllers/Display/eosColor.cpp ../../../EOS/v2/Source/HAL/PIC32/halGPIO.c ../../../EOS/v2/Source/HAL/PIC32/halSYS.c ../../../EOS/v2/Source/HAL/PIC32/halTMR.c ../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S ../../../EOS/v2/Source/Services/Forms/eosForm.cpp ../../../EOS/v2/Source/Services/Forms/eosFormsService.cpp ../../../EOS/v2/Source/Services/Forms/eosFormsDisplay.cpp ../../../EOS/v2/Source/Services/eosAppLoop.cpp ../../../EOS/v2/Source/System/Collections/eosList.cpp ../../../EOS/v2/Source/System/Collections/eosListImpl.cpp ../../../EOS/v2/Source/System/Core/eosTask.cpp ../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp ../../../EOS/v2/Source/System/Core/eosSemaphore.cpp ../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp ../../../EOS/v2/Source/System/Core/eosQueue.cpp ../../../EOS/v2/Source/System/Core/eosHeapAllocator.cpp ../../../EOS/v2/Source/System/eosApplication.cpp ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MemMang/heap_4.c ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX/port.c ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX/port_asm.S ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/list.c ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/queue.c ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/tasks.c ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/timers.c ../../../EOS/v2/Source/Controllers/Display/Fonts/Consolas14pt.cpp ../../../EOS/v2/Source/Services/eosService.cpp

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/Config.o ${OBJECTDIR}/_ext/1472/Motor.o ${OBJECTDIR}/_ext/1472/Motion.o ${OBJECTDIR}/_ext/1472/rtos_hooks.o ${OBJECTDIR}/_ext/1472/axMainForm.o ${OBJECTDIR}/_ext/64617342/eosILI9341.o ${OBJECTDIR}/_ext/64617342/eosILI9341io_p8.o ${OBJECTDIR}/_ext/2037206249/Arial24pt.o ${OBJECTDIR}/_ext/2037206249/Arial18pt.o ${OBJECTDIR}/_ext/2037206249/Arial14pt.o ${OBJECTDIR}/_ext/940566740/eosDisplay.o ${OBJECTDIR}/_ext/940566740/eosFont.o ${OBJECTDIR}/_ext/940566740/eosColor.o ${OBJECTDIR}/_ext/1111167287/halGPIO.o ${OBJECTDIR}/_ext/1111167287/halSYS.o ${OBJECTDIR}/_ext/1111167287/halTMR.o ${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o ${OBJECTDIR}/_ext/399968524/eosForm.o ${OBJECTDIR}/_ext/399968524/eosFormsService.o ${OBJECTDIR}/_ext/399968524/eosFormsDisplay.o ${OBJECTDIR}/_ext/752489292/eosAppLoop.o ${OBJECTDIR}/_ext/49854059/eosList.o ${OBJECTDIR}/_ext/49854059/eosListImpl.o ${OBJECTDIR}/_ext/1627536503/eosTask.o ${OBJECTDIR}/_ext/1627536503/eosGlobalAlloc.o ${OBJECTDIR}/_ext/1627536503/eosSemaphore.o ${OBJECTDIR}/_ext/1627536503/eosErrorHandler.o ${OBJECTDIR}/_ext/1627536503/eosQueue.o ${OBJECTDIR}/_ext/1627536503/eosHeapAllocator.o ${OBJECTDIR}/_ext/299602939/eosApplication.o ${OBJECTDIR}/_ext/1989450076/heap_4.o ${OBJECTDIR}/_ext/549258257/port.o ${OBJECTDIR}/_ext/549258257/port_asm.o ${OBJECTDIR}/_ext/2135268761/list.o ${OBJECTDIR}/_ext/2135268761/queue.o ${OBJECTDIR}/_ext/2135268761/tasks.o ${OBJECTDIR}/_ext/2135268761/timers.o ${OBJECTDIR}/_ext/2037206249/Consolas14pt.o ${OBJECTDIR}/_ext/752489292/eosService.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1472/Config.o.d ${OBJECTDIR}/_ext/1472/Motor.o.d ${OBJECTDIR}/_ext/1472/Motion.o.d ${OBJECTDIR}/_ext/1472/rtos_hooks.o.d ${OBJECTDIR}/_ext/1472/axMainForm.o.d ${OBJECTDIR}/_ext/64617342/eosILI9341.o.d ${OBJECTDIR}/_ext/64617342/eosILI9341io_p8.o.d ${OBJECTDIR}/_ext/2037206249/Arial24pt.o.d ${OBJECTDIR}/_ext/2037206249/Arial18pt.o.d ${OBJECTDIR}/_ext/2037206249/Arial14pt.o.d ${OBJECTDIR}/_ext/940566740/eosDisplay.o.d ${OBJECTDIR}/_ext/940566740/eosFont.o.d ${OBJECTDIR}/_ext/940566740/eosColor.o.d ${OBJECTDIR}/_ext/1111167287/halGPIO.o.d ${OBJECTDIR}/_ext/1111167287/halSYS.o.d ${OBJECTDIR}/_ext/1111167287/halTMR.o.d ${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o.d ${OBJECTDIR}/_ext/399968524/eosForm.o.d ${OBJECTDIR}/_ext/399968524/eosFormsService.o.d ${OBJECTDIR}/_ext/399968524/eosFormsDisplay.o.d ${OBJECTDIR}/_ext/752489292/eosAppLoop.o.d ${OBJECTDIR}/_ext/49854059/eosList.o.d ${OBJECTDIR}/_ext/49854059/eosListImpl.o.d ${OBJECTDIR}/_ext/1627536503/eosTask.o.d ${OBJECTDIR}/_ext/1627536503/eosGlobalAlloc.o.d ${OBJECTDIR}/_ext/1627536503/eosSemaphore.o.d ${OBJECTDIR}/_ext/1627536503/eosErrorHandler.o.d ${OBJECTDIR}/_ext/1627536503/eosQueue.o.d ${OBJECTDIR}/_ext/1627536503/eosHeapAllocator.o.d ${OBJECTDIR}/_ext/299602939/eosApplication.o.d ${OBJECTDIR}/_ext/1989450076/heap_4.o.d ${OBJECTDIR}/_ext/549258257/port.o.d ${OBJECTDIR}/_ext/549258257/port_asm.o.d ${OBJECTDIR}/_ext/2135268761/list.o.d ${OBJECTDIR}/_ext/2135268761/queue.o.d ${OBJECTDIR}/_ext/2135268761/tasks.o.d ${OBJECTDIR}/_ext/2135268761/timers.o.d ${OBJECTDIR}/_ext/2037206249/Consolas14pt.o.d ${OBJECTDIR}/_ext/752489292/eosService.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/Config.o ${OBJECTDIR}/_ext/1472/Motor.o ${OBJECTDIR}/_ext/1472/Motion.o ${OBJECTDIR}/_ext/1472/rtos_hooks.o ${OBJECTDIR}/_ext/1472/axMainForm.o ${OBJECTDIR}/_ext/64617342/eosILI9341.o ${OBJECTDIR}/_ext/64617342/eosILI9341io_p8.o ${OBJECTDIR}/_ext/2037206249/Arial24pt.o ${OBJECTDIR}/_ext/2037206249/Arial18pt.o ${OBJECTDIR}/_ext/2037206249/Arial14pt.o ${OBJECTDIR}/_ext/940566740/eosDisplay.o ${OBJECTDIR}/_ext/940566740/eosFont.o ${OBJECTDIR}/_ext/940566740/eosColor.o ${OBJECTDIR}/_ext/1111167287/halGPIO.o ${OBJECTDIR}/_ext/1111167287/halSYS.o ${OBJECTDIR}/_ext/1111167287/halTMR.o ${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o ${OBJECTDIR}/_ext/399968524/eosForm.o ${OBJECTDIR}/_ext/399968524/eosFormsService.o ${OBJECTDIR}/_ext/399968524/eosFormsDisplay.o ${OBJECTDIR}/_ext/752489292/eosAppLoop.o ${OBJECTDIR}/_ext/49854059/eosList.o ${OBJECTDIR}/_ext/49854059/eosListImpl.o ${OBJECTDIR}/_ext/1627536503/eosTask.o ${OBJECTDIR}/_ext/1627536503/eosGlobalAlloc.o ${OBJECTDIR}/_ext/1627536503/eosSemaphore.o ${OBJECTDIR}/_ext/1627536503/eosErrorHandler.o ${OBJECTDIR}/_ext/1627536503/eosQueue.o ${OBJECTDIR}/_ext/1627536503/eosHeapAllocator.o ${OBJECTDIR}/_ext/299602939/eosApplication.o ${OBJECTDIR}/_ext/1989450076/heap_4.o ${OBJECTDIR}/_ext/549258257/port.o ${OBJECTDIR}/_ext/549258257/port_asm.o ${OBJECTDIR}/_ext/2135268761/list.o ${OBJECTDIR}/_ext/2135268761/queue.o ${OBJECTDIR}/_ext/2135268761/tasks.o ${OBJECTDIR}/_ext/2135268761/timers.o ${OBJECTDIR}/_ext/2037206249/Consolas14pt.o ${OBJECTDIR}/_ext/752489292/eosService.o

# Source Files
SOURCEFILES=../main.cpp ../Config.cpp ../Motor.cpp ../Motion.cpp ../rtos_hooks.c ../axMainForm.cpp ../../../EOS/v2/Source/Controllers/Display/Drivers/ILI9341/eosILI9341.cpp ../../../EOS/v2/Source/Controllers/Display/Drivers/ILI9341/eosILI9341io_p8.cpp ../../../EOS/v2/Source/Controllers/Display/Fonts/Arial24pt.cpp ../../../EOS/v2/Source/Controllers/Display/Fonts/Arial18pt.cpp ../../../EOS/v2/Source/Controllers/Display/Fonts/Arial14pt.cpp ../../../EOS/v2/Source/Controllers/Display/eosDisplay.cpp ../../../EOS/v2/Source/Controllers/Display/eosFont.cpp ../../../EOS/v2/Source/Controllers/Display/eosColor.cpp ../../../EOS/v2/Source/HAL/PIC32/halGPIO.c ../../../EOS/v2/Source/HAL/PIC32/halSYS.c ../../../EOS/v2/Source/HAL/PIC32/halTMR.c ../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S ../../../EOS/v2/Source/Services/Forms/eosForm.cpp ../../../EOS/v2/Source/Services/Forms/eosFormsService.cpp ../../../EOS/v2/Source/Services/Forms/eosFormsDisplay.cpp ../../../EOS/v2/Source/Services/eosAppLoop.cpp ../../../EOS/v2/Source/System/Collections/eosList.cpp ../../../EOS/v2/Source/System/Collections/eosListImpl.cpp ../../../EOS/v2/Source/System/Core/eosTask.cpp ../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp ../../../EOS/v2/Source/System/Core/eosSemaphore.cpp ../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp ../../../EOS/v2/Source/System/Core/eosQueue.cpp ../../../EOS/v2/Source/System/Core/eosHeapAllocator.cpp ../../../EOS/v2/Source/System/eosApplication.cpp ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MemMang/heap_4.c ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX/port.c ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX/port_asm.S ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/list.c ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/queue.c ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/tasks.c ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/timers.c ../../../EOS/v2/Source/Controllers/Display/Fonts/Consolas14pt.cpp ../../../EOS/v2/Source/Services/eosService.cpp


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
	${MAKE}  -f nbproject/Makefile-PINGUINO.mk dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX440F256H
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o: ../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1111167287" 
	@${RM} ${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o 
	@${RM} ${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o.ok ${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o.d" "${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o.d"  -o ${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o ../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S  -DXPRJ_PINGUINO=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1 -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX"
	
${OBJECTDIR}/_ext/549258257/port_asm.o: ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/549258257" 
	@${RM} ${OBJECTDIR}/_ext/549258257/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/549258257/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/549258257/port_asm.o.ok ${OBJECTDIR}/_ext/549258257/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/549258257/port_asm.o.d" "${OBJECTDIR}/_ext/549258257/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/549258257/port_asm.o.d"  -o ${OBJECTDIR}/_ext/549258257/port_asm.o ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_PINGUINO=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/549258257/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1 -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX"
	
else
${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o: ../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1111167287" 
	@${RM} ${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o 
	@${RM} ${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o.ok ${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o.d" "${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o.d"  -o ${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o ../../../EOS/v2/Source/HAL/PIC32/halTMRInterruptWrapper.S  -DXPRJ_PINGUINO=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1111167287/halTMRInterruptWrapper.o.asm.d" -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX"
	
${OBJECTDIR}/_ext/549258257/port_asm.o: ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/549258257" 
	@${RM} ${OBJECTDIR}/_ext/549258257/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/549258257/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/549258257/port_asm.o.ok ${OBJECTDIR}/_ext/549258257/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/549258257/port_asm.o.d" "${OBJECTDIR}/_ext/549258257/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/549258257/port_asm.o.d"  -o ${OBJECTDIR}/_ext/549258257/port_asm.o ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_PINGUINO=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/549258257/port_asm.o.asm.d" -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/rtos_hooks.o: ../rtos_hooks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/rtos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rtos_hooks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/rtos_hooks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1472/rtos_hooks.o.d" -o ${OBJECTDIR}/_ext/1472/rtos_hooks.o ../rtos_hooks.c    -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1111167287/halGPIO.o: ../../../EOS/v2/Source/HAL/PIC32/halGPIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1111167287" 
	@${RM} ${OBJECTDIR}/_ext/1111167287/halGPIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1111167287/halGPIO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1111167287/halGPIO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1111167287/halGPIO.o.d" -o ${OBJECTDIR}/_ext/1111167287/halGPIO.o ../../../EOS/v2/Source/HAL/PIC32/halGPIO.c    -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1111167287/halSYS.o: ../../../EOS/v2/Source/HAL/PIC32/halSYS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1111167287" 
	@${RM} ${OBJECTDIR}/_ext/1111167287/halSYS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1111167287/halSYS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1111167287/halSYS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1111167287/halSYS.o.d" -o ${OBJECTDIR}/_ext/1111167287/halSYS.o ../../../EOS/v2/Source/HAL/PIC32/halSYS.c    -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1111167287/halTMR.o: ../../../EOS/v2/Source/HAL/PIC32/halTMR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1111167287" 
	@${RM} ${OBJECTDIR}/_ext/1111167287/halTMR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1111167287/halTMR.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1111167287/halTMR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1111167287/halTMR.o.d" -o ${OBJECTDIR}/_ext/1111167287/halTMR.o ../../../EOS/v2/Source/HAL/PIC32/halTMR.c    -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1989450076/heap_4.o: ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MemMang/heap_4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1989450076" 
	@${RM} ${OBJECTDIR}/_ext/1989450076/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1989450076/heap_4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1989450076/heap_4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1989450076/heap_4.o.d" -o ${OBJECTDIR}/_ext/1989450076/heap_4.o ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MemMang/heap_4.c    -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/549258257/port.o: ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/549258257" 
	@${RM} ${OBJECTDIR}/_ext/549258257/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/549258257/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/549258257/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/549258257/port.o.d" -o ${OBJECTDIR}/_ext/549258257/port.o ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2135268761/list.o: ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2135268761" 
	@${RM} ${OBJECTDIR}/_ext/2135268761/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/2135268761/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2135268761/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/2135268761/list.o.d" -o ${OBJECTDIR}/_ext/2135268761/list.o ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/list.c    -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2135268761/queue.o: ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2135268761" 
	@${RM} ${OBJECTDIR}/_ext/2135268761/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/2135268761/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2135268761/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/2135268761/queue.o.d" -o ${OBJECTDIR}/_ext/2135268761/queue.o ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/queue.c    -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2135268761/tasks.o: ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2135268761" 
	@${RM} ${OBJECTDIR}/_ext/2135268761/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2135268761/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2135268761/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/2135268761/tasks.o.d" -o ${OBJECTDIR}/_ext/2135268761/tasks.o ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/tasks.c    -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2135268761/timers.o: ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2135268761" 
	@${RM} ${OBJECTDIR}/_ext/2135268761/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2135268761/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2135268761/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/2135268761/timers.o.d" -o ${OBJECTDIR}/_ext/2135268761/timers.o ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/timers.c    -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1472/rtos_hooks.o: ../rtos_hooks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/rtos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rtos_hooks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/rtos_hooks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1472/rtos_hooks.o.d" -o ${OBJECTDIR}/_ext/1472/rtos_hooks.o ../rtos_hooks.c    -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1111167287/halGPIO.o: ../../../EOS/v2/Source/HAL/PIC32/halGPIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1111167287" 
	@${RM} ${OBJECTDIR}/_ext/1111167287/halGPIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1111167287/halGPIO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1111167287/halGPIO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1111167287/halGPIO.o.d" -o ${OBJECTDIR}/_ext/1111167287/halGPIO.o ../../../EOS/v2/Source/HAL/PIC32/halGPIO.c    -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1111167287/halSYS.o: ../../../EOS/v2/Source/HAL/PIC32/halSYS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1111167287" 
	@${RM} ${OBJECTDIR}/_ext/1111167287/halSYS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1111167287/halSYS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1111167287/halSYS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1111167287/halSYS.o.d" -o ${OBJECTDIR}/_ext/1111167287/halSYS.o ../../../EOS/v2/Source/HAL/PIC32/halSYS.c    -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1111167287/halTMR.o: ../../../EOS/v2/Source/HAL/PIC32/halTMR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1111167287" 
	@${RM} ${OBJECTDIR}/_ext/1111167287/halTMR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1111167287/halTMR.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1111167287/halTMR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1111167287/halTMR.o.d" -o ${OBJECTDIR}/_ext/1111167287/halTMR.o ../../../EOS/v2/Source/HAL/PIC32/halTMR.c    -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1989450076/heap_4.o: ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MemMang/heap_4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1989450076" 
	@${RM} ${OBJECTDIR}/_ext/1989450076/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1989450076/heap_4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1989450076/heap_4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1989450076/heap_4.o.d" -o ${OBJECTDIR}/_ext/1989450076/heap_4.o ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MemMang/heap_4.c    -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/549258257/port.o: ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/549258257" 
	@${RM} ${OBJECTDIR}/_ext/549258257/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/549258257/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/549258257/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/549258257/port.o.d" -o ${OBJECTDIR}/_ext/549258257/port.o ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2135268761/list.o: ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2135268761" 
	@${RM} ${OBJECTDIR}/_ext/2135268761/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/2135268761/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2135268761/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/2135268761/list.o.d" -o ${OBJECTDIR}/_ext/2135268761/list.o ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/list.c    -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2135268761/queue.o: ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2135268761" 
	@${RM} ${OBJECTDIR}/_ext/2135268761/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/2135268761/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2135268761/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/2135268761/queue.o.d" -o ${OBJECTDIR}/_ext/2135268761/queue.o ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/queue.c    -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2135268761/tasks.o: ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2135268761" 
	@${RM} ${OBJECTDIR}/_ext/2135268761/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2135268761/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2135268761/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/2135268761/tasks.o.d" -o ${OBJECTDIR}/_ext/2135268761/tasks.o ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/tasks.c    -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2135268761/timers.o: ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2135268761" 
	@${RM} ${OBJECTDIR}/_ext/2135268761/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2135268761/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2135268761/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/2135268761/timers.o.d" -o ${OBJECTDIR}/_ext/2135268761/timers.o ../../../../../../../../Library/Microchip/FreeRTOS/v9.0.0/Source/timers.c    -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/main.o: ../main.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/Config.o: ../Config.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Config.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1472/Config.o.d" -o ${OBJECTDIR}/_ext/1472/Config.o ../Config.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/Motor.o: ../Motor.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Motor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Motor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Motor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1472/Motor.o.d" -o ${OBJECTDIR}/_ext/1472/Motor.o ../Motor.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/Motion.o: ../Motion.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Motion.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Motion.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Motion.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1472/Motion.o.d" -o ${OBJECTDIR}/_ext/1472/Motion.o ../Motion.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/axMainForm.o: ../axMainForm.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/axMainForm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/axMainForm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/axMainForm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1472/axMainForm.o.d" -o ${OBJECTDIR}/_ext/1472/axMainForm.o ../axMainForm.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/64617342/eosILI9341.o: ../../../EOS/v2/Source/Controllers/Display/Drivers/ILI9341/eosILI9341.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/64617342" 
	@${RM} ${OBJECTDIR}/_ext/64617342/eosILI9341.o.d 
	@${RM} ${OBJECTDIR}/_ext/64617342/eosILI9341.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/64617342/eosILI9341.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/64617342/eosILI9341.o.d" -o ${OBJECTDIR}/_ext/64617342/eosILI9341.o ../../../EOS/v2/Source/Controllers/Display/Drivers/ILI9341/eosILI9341.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/64617342/eosILI9341io_p8.o: ../../../EOS/v2/Source/Controllers/Display/Drivers/ILI9341/eosILI9341io_p8.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/64617342" 
	@${RM} ${OBJECTDIR}/_ext/64617342/eosILI9341io_p8.o.d 
	@${RM} ${OBJECTDIR}/_ext/64617342/eosILI9341io_p8.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/64617342/eosILI9341io_p8.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/64617342/eosILI9341io_p8.o.d" -o ${OBJECTDIR}/_ext/64617342/eosILI9341io_p8.o ../../../EOS/v2/Source/Controllers/Display/Drivers/ILI9341/eosILI9341io_p8.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2037206249/Arial24pt.o: ../../../EOS/v2/Source/Controllers/Display/Fonts/Arial24pt.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2037206249" 
	@${RM} ${OBJECTDIR}/_ext/2037206249/Arial24pt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2037206249/Arial24pt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2037206249/Arial24pt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/2037206249/Arial24pt.o.d" -o ${OBJECTDIR}/_ext/2037206249/Arial24pt.o ../../../EOS/v2/Source/Controllers/Display/Fonts/Arial24pt.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2037206249/Arial18pt.o: ../../../EOS/v2/Source/Controllers/Display/Fonts/Arial18pt.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2037206249" 
	@${RM} ${OBJECTDIR}/_ext/2037206249/Arial18pt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2037206249/Arial18pt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2037206249/Arial18pt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/2037206249/Arial18pt.o.d" -o ${OBJECTDIR}/_ext/2037206249/Arial18pt.o ../../../EOS/v2/Source/Controllers/Display/Fonts/Arial18pt.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2037206249/Arial14pt.o: ../../../EOS/v2/Source/Controllers/Display/Fonts/Arial14pt.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2037206249" 
	@${RM} ${OBJECTDIR}/_ext/2037206249/Arial14pt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2037206249/Arial14pt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2037206249/Arial14pt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/2037206249/Arial14pt.o.d" -o ${OBJECTDIR}/_ext/2037206249/Arial14pt.o ../../../EOS/v2/Source/Controllers/Display/Fonts/Arial14pt.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/940566740/eosDisplay.o: ../../../EOS/v2/Source/Controllers/Display/eosDisplay.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/940566740" 
	@${RM} ${OBJECTDIR}/_ext/940566740/eosDisplay.o.d 
	@${RM} ${OBJECTDIR}/_ext/940566740/eosDisplay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/940566740/eosDisplay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/940566740/eosDisplay.o.d" -o ${OBJECTDIR}/_ext/940566740/eosDisplay.o ../../../EOS/v2/Source/Controllers/Display/eosDisplay.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/940566740/eosFont.o: ../../../EOS/v2/Source/Controllers/Display/eosFont.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/940566740" 
	@${RM} ${OBJECTDIR}/_ext/940566740/eosFont.o.d 
	@${RM} ${OBJECTDIR}/_ext/940566740/eosFont.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/940566740/eosFont.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/940566740/eosFont.o.d" -o ${OBJECTDIR}/_ext/940566740/eosFont.o ../../../EOS/v2/Source/Controllers/Display/eosFont.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/940566740/eosColor.o: ../../../EOS/v2/Source/Controllers/Display/eosColor.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/940566740" 
	@${RM} ${OBJECTDIR}/_ext/940566740/eosColor.o.d 
	@${RM} ${OBJECTDIR}/_ext/940566740/eosColor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/940566740/eosColor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/940566740/eosColor.o.d" -o ${OBJECTDIR}/_ext/940566740/eosColor.o ../../../EOS/v2/Source/Controllers/Display/eosColor.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/399968524/eosForm.o: ../../../EOS/v2/Source/Services/Forms/eosForm.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/399968524" 
	@${RM} ${OBJECTDIR}/_ext/399968524/eosForm.o.d 
	@${RM} ${OBJECTDIR}/_ext/399968524/eosForm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/399968524/eosForm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/399968524/eosForm.o.d" -o ${OBJECTDIR}/_ext/399968524/eosForm.o ../../../EOS/v2/Source/Services/Forms/eosForm.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/399968524/eosFormsService.o: ../../../EOS/v2/Source/Services/Forms/eosFormsService.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/399968524" 
	@${RM} ${OBJECTDIR}/_ext/399968524/eosFormsService.o.d 
	@${RM} ${OBJECTDIR}/_ext/399968524/eosFormsService.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/399968524/eosFormsService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/399968524/eosFormsService.o.d" -o ${OBJECTDIR}/_ext/399968524/eosFormsService.o ../../../EOS/v2/Source/Services/Forms/eosFormsService.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/399968524/eosFormsDisplay.o: ../../../EOS/v2/Source/Services/Forms/eosFormsDisplay.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/399968524" 
	@${RM} ${OBJECTDIR}/_ext/399968524/eosFormsDisplay.o.d 
	@${RM} ${OBJECTDIR}/_ext/399968524/eosFormsDisplay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/399968524/eosFormsDisplay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/399968524/eosFormsDisplay.o.d" -o ${OBJECTDIR}/_ext/399968524/eosFormsDisplay.o ../../../EOS/v2/Source/Services/Forms/eosFormsDisplay.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/752489292/eosAppLoop.o: ../../../EOS/v2/Source/Services/eosAppLoop.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/752489292" 
	@${RM} ${OBJECTDIR}/_ext/752489292/eosAppLoop.o.d 
	@${RM} ${OBJECTDIR}/_ext/752489292/eosAppLoop.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/752489292/eosAppLoop.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/752489292/eosAppLoop.o.d" -o ${OBJECTDIR}/_ext/752489292/eosAppLoop.o ../../../EOS/v2/Source/Services/eosAppLoop.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/49854059/eosList.o: ../../../EOS/v2/Source/System/Collections/eosList.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/49854059" 
	@${RM} ${OBJECTDIR}/_ext/49854059/eosList.o.d 
	@${RM} ${OBJECTDIR}/_ext/49854059/eosList.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/49854059/eosList.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/49854059/eosList.o.d" -o ${OBJECTDIR}/_ext/49854059/eosList.o ../../../EOS/v2/Source/System/Collections/eosList.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/49854059/eosListImpl.o: ../../../EOS/v2/Source/System/Collections/eosListImpl.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/49854059" 
	@${RM} ${OBJECTDIR}/_ext/49854059/eosListImpl.o.d 
	@${RM} ${OBJECTDIR}/_ext/49854059/eosListImpl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/49854059/eosListImpl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/49854059/eosListImpl.o.d" -o ${OBJECTDIR}/_ext/49854059/eosListImpl.o ../../../EOS/v2/Source/System/Collections/eosListImpl.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1627536503/eosTask.o: ../../../EOS/v2/Source/System/Core/eosTask.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1627536503" 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosTask.o.d 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosTask.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1627536503/eosTask.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1627536503/eosTask.o.d" -o ${OBJECTDIR}/_ext/1627536503/eosTask.o ../../../EOS/v2/Source/System/Core/eosTask.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1627536503/eosGlobalAlloc.o: ../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1627536503" 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosGlobalAlloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosGlobalAlloc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1627536503/eosGlobalAlloc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1627536503/eosGlobalAlloc.o.d" -o ${OBJECTDIR}/_ext/1627536503/eosGlobalAlloc.o ../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1627536503/eosSemaphore.o: ../../../EOS/v2/Source/System/Core/eosSemaphore.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1627536503" 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosSemaphore.o.d 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosSemaphore.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1627536503/eosSemaphore.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1627536503/eosSemaphore.o.d" -o ${OBJECTDIR}/_ext/1627536503/eosSemaphore.o ../../../EOS/v2/Source/System/Core/eosSemaphore.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1627536503/eosErrorHandler.o: ../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1627536503" 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosErrorHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosErrorHandler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1627536503/eosErrorHandler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1627536503/eosErrorHandler.o.d" -o ${OBJECTDIR}/_ext/1627536503/eosErrorHandler.o ../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1627536503/eosQueue.o: ../../../EOS/v2/Source/System/Core/eosQueue.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1627536503" 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosQueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosQueue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1627536503/eosQueue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1627536503/eosQueue.o.d" -o ${OBJECTDIR}/_ext/1627536503/eosQueue.o ../../../EOS/v2/Source/System/Core/eosQueue.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1627536503/eosHeapAllocator.o: ../../../EOS/v2/Source/System/Core/eosHeapAllocator.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1627536503" 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosHeapAllocator.o.d 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosHeapAllocator.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1627536503/eosHeapAllocator.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1627536503/eosHeapAllocator.o.d" -o ${OBJECTDIR}/_ext/1627536503/eosHeapAllocator.o ../../../EOS/v2/Source/System/Core/eosHeapAllocator.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/299602939/eosApplication.o: ../../../EOS/v2/Source/System/eosApplication.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/299602939" 
	@${RM} ${OBJECTDIR}/_ext/299602939/eosApplication.o.d 
	@${RM} ${OBJECTDIR}/_ext/299602939/eosApplication.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/299602939/eosApplication.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/299602939/eosApplication.o.d" -o ${OBJECTDIR}/_ext/299602939/eosApplication.o ../../../EOS/v2/Source/System/eosApplication.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2037206249/Consolas14pt.o: ../../../EOS/v2/Source/Controllers/Display/Fonts/Consolas14pt.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2037206249" 
	@${RM} ${OBJECTDIR}/_ext/2037206249/Consolas14pt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2037206249/Consolas14pt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2037206249/Consolas14pt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/2037206249/Consolas14pt.o.d" -o ${OBJECTDIR}/_ext/2037206249/Consolas14pt.o ../../../EOS/v2/Source/Controllers/Display/Fonts/Consolas14pt.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/752489292/eosService.o: ../../../EOS/v2/Source/Services/eosService.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/752489292" 
	@${RM} ${OBJECTDIR}/_ext/752489292/eosService.o.d 
	@${RM} ${OBJECTDIR}/_ext/752489292/eosService.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/752489292/eosService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/752489292/eosService.o.d" -o ${OBJECTDIR}/_ext/752489292/eosService.o ../../../EOS/v2/Source/Services/eosService.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1472/main.o: ../main.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/Config.o: ../Config.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Config.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1472/Config.o.d" -o ${OBJECTDIR}/_ext/1472/Config.o ../Config.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/Motor.o: ../Motor.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Motor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Motor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Motor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1472/Motor.o.d" -o ${OBJECTDIR}/_ext/1472/Motor.o ../Motor.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/Motion.o: ../Motion.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Motion.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Motion.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Motion.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1472/Motion.o.d" -o ${OBJECTDIR}/_ext/1472/Motion.o ../Motion.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/axMainForm.o: ../axMainForm.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/axMainForm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/axMainForm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/axMainForm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1472/axMainForm.o.d" -o ${OBJECTDIR}/_ext/1472/axMainForm.o ../axMainForm.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/64617342/eosILI9341.o: ../../../EOS/v2/Source/Controllers/Display/Drivers/ILI9341/eosILI9341.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/64617342" 
	@${RM} ${OBJECTDIR}/_ext/64617342/eosILI9341.o.d 
	@${RM} ${OBJECTDIR}/_ext/64617342/eosILI9341.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/64617342/eosILI9341.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/64617342/eosILI9341.o.d" -o ${OBJECTDIR}/_ext/64617342/eosILI9341.o ../../../EOS/v2/Source/Controllers/Display/Drivers/ILI9341/eosILI9341.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/64617342/eosILI9341io_p8.o: ../../../EOS/v2/Source/Controllers/Display/Drivers/ILI9341/eosILI9341io_p8.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/64617342" 
	@${RM} ${OBJECTDIR}/_ext/64617342/eosILI9341io_p8.o.d 
	@${RM} ${OBJECTDIR}/_ext/64617342/eosILI9341io_p8.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/64617342/eosILI9341io_p8.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/64617342/eosILI9341io_p8.o.d" -o ${OBJECTDIR}/_ext/64617342/eosILI9341io_p8.o ../../../EOS/v2/Source/Controllers/Display/Drivers/ILI9341/eosILI9341io_p8.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2037206249/Arial24pt.o: ../../../EOS/v2/Source/Controllers/Display/Fonts/Arial24pt.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2037206249" 
	@${RM} ${OBJECTDIR}/_ext/2037206249/Arial24pt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2037206249/Arial24pt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2037206249/Arial24pt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/2037206249/Arial24pt.o.d" -o ${OBJECTDIR}/_ext/2037206249/Arial24pt.o ../../../EOS/v2/Source/Controllers/Display/Fonts/Arial24pt.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2037206249/Arial18pt.o: ../../../EOS/v2/Source/Controllers/Display/Fonts/Arial18pt.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2037206249" 
	@${RM} ${OBJECTDIR}/_ext/2037206249/Arial18pt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2037206249/Arial18pt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2037206249/Arial18pt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/2037206249/Arial18pt.o.d" -o ${OBJECTDIR}/_ext/2037206249/Arial18pt.o ../../../EOS/v2/Source/Controllers/Display/Fonts/Arial18pt.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2037206249/Arial14pt.o: ../../../EOS/v2/Source/Controllers/Display/Fonts/Arial14pt.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2037206249" 
	@${RM} ${OBJECTDIR}/_ext/2037206249/Arial14pt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2037206249/Arial14pt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2037206249/Arial14pt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/2037206249/Arial14pt.o.d" -o ${OBJECTDIR}/_ext/2037206249/Arial14pt.o ../../../EOS/v2/Source/Controllers/Display/Fonts/Arial14pt.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/940566740/eosDisplay.o: ../../../EOS/v2/Source/Controllers/Display/eosDisplay.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/940566740" 
	@${RM} ${OBJECTDIR}/_ext/940566740/eosDisplay.o.d 
	@${RM} ${OBJECTDIR}/_ext/940566740/eosDisplay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/940566740/eosDisplay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/940566740/eosDisplay.o.d" -o ${OBJECTDIR}/_ext/940566740/eosDisplay.o ../../../EOS/v2/Source/Controllers/Display/eosDisplay.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/940566740/eosFont.o: ../../../EOS/v2/Source/Controllers/Display/eosFont.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/940566740" 
	@${RM} ${OBJECTDIR}/_ext/940566740/eosFont.o.d 
	@${RM} ${OBJECTDIR}/_ext/940566740/eosFont.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/940566740/eosFont.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/940566740/eosFont.o.d" -o ${OBJECTDIR}/_ext/940566740/eosFont.o ../../../EOS/v2/Source/Controllers/Display/eosFont.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/940566740/eosColor.o: ../../../EOS/v2/Source/Controllers/Display/eosColor.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/940566740" 
	@${RM} ${OBJECTDIR}/_ext/940566740/eosColor.o.d 
	@${RM} ${OBJECTDIR}/_ext/940566740/eosColor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/940566740/eosColor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/940566740/eosColor.o.d" -o ${OBJECTDIR}/_ext/940566740/eosColor.o ../../../EOS/v2/Source/Controllers/Display/eosColor.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/399968524/eosForm.o: ../../../EOS/v2/Source/Services/Forms/eosForm.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/399968524" 
	@${RM} ${OBJECTDIR}/_ext/399968524/eosForm.o.d 
	@${RM} ${OBJECTDIR}/_ext/399968524/eosForm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/399968524/eosForm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/399968524/eosForm.o.d" -o ${OBJECTDIR}/_ext/399968524/eosForm.o ../../../EOS/v2/Source/Services/Forms/eosForm.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/399968524/eosFormsService.o: ../../../EOS/v2/Source/Services/Forms/eosFormsService.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/399968524" 
	@${RM} ${OBJECTDIR}/_ext/399968524/eosFormsService.o.d 
	@${RM} ${OBJECTDIR}/_ext/399968524/eosFormsService.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/399968524/eosFormsService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/399968524/eosFormsService.o.d" -o ${OBJECTDIR}/_ext/399968524/eosFormsService.o ../../../EOS/v2/Source/Services/Forms/eosFormsService.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/399968524/eosFormsDisplay.o: ../../../EOS/v2/Source/Services/Forms/eosFormsDisplay.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/399968524" 
	@${RM} ${OBJECTDIR}/_ext/399968524/eosFormsDisplay.o.d 
	@${RM} ${OBJECTDIR}/_ext/399968524/eosFormsDisplay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/399968524/eosFormsDisplay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/399968524/eosFormsDisplay.o.d" -o ${OBJECTDIR}/_ext/399968524/eosFormsDisplay.o ../../../EOS/v2/Source/Services/Forms/eosFormsDisplay.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/752489292/eosAppLoop.o: ../../../EOS/v2/Source/Services/eosAppLoop.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/752489292" 
	@${RM} ${OBJECTDIR}/_ext/752489292/eosAppLoop.o.d 
	@${RM} ${OBJECTDIR}/_ext/752489292/eosAppLoop.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/752489292/eosAppLoop.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/752489292/eosAppLoop.o.d" -o ${OBJECTDIR}/_ext/752489292/eosAppLoop.o ../../../EOS/v2/Source/Services/eosAppLoop.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/49854059/eosList.o: ../../../EOS/v2/Source/System/Collections/eosList.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/49854059" 
	@${RM} ${OBJECTDIR}/_ext/49854059/eosList.o.d 
	@${RM} ${OBJECTDIR}/_ext/49854059/eosList.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/49854059/eosList.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/49854059/eosList.o.d" -o ${OBJECTDIR}/_ext/49854059/eosList.o ../../../EOS/v2/Source/System/Collections/eosList.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/49854059/eosListImpl.o: ../../../EOS/v2/Source/System/Collections/eosListImpl.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/49854059" 
	@${RM} ${OBJECTDIR}/_ext/49854059/eosListImpl.o.d 
	@${RM} ${OBJECTDIR}/_ext/49854059/eosListImpl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/49854059/eosListImpl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/49854059/eosListImpl.o.d" -o ${OBJECTDIR}/_ext/49854059/eosListImpl.o ../../../EOS/v2/Source/System/Collections/eosListImpl.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1627536503/eosTask.o: ../../../EOS/v2/Source/System/Core/eosTask.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1627536503" 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosTask.o.d 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosTask.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1627536503/eosTask.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1627536503/eosTask.o.d" -o ${OBJECTDIR}/_ext/1627536503/eosTask.o ../../../EOS/v2/Source/System/Core/eosTask.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1627536503/eosGlobalAlloc.o: ../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1627536503" 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosGlobalAlloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosGlobalAlloc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1627536503/eosGlobalAlloc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1627536503/eosGlobalAlloc.o.d" -o ${OBJECTDIR}/_ext/1627536503/eosGlobalAlloc.o ../../../EOS/v2/Source/System/Core/eosGlobalAlloc.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1627536503/eosSemaphore.o: ../../../EOS/v2/Source/System/Core/eosSemaphore.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1627536503" 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosSemaphore.o.d 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosSemaphore.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1627536503/eosSemaphore.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1627536503/eosSemaphore.o.d" -o ${OBJECTDIR}/_ext/1627536503/eosSemaphore.o ../../../EOS/v2/Source/System/Core/eosSemaphore.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1627536503/eosErrorHandler.o: ../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1627536503" 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosErrorHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosErrorHandler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1627536503/eosErrorHandler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1627536503/eosErrorHandler.o.d" -o ${OBJECTDIR}/_ext/1627536503/eosErrorHandler.o ../../../EOS/v2/Source/System/Core/eosErrorHandler.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1627536503/eosQueue.o: ../../../EOS/v2/Source/System/Core/eosQueue.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1627536503" 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosQueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosQueue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1627536503/eosQueue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1627536503/eosQueue.o.d" -o ${OBJECTDIR}/_ext/1627536503/eosQueue.o ../../../EOS/v2/Source/System/Core/eosQueue.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1627536503/eosHeapAllocator.o: ../../../EOS/v2/Source/System/Core/eosHeapAllocator.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1627536503" 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosHeapAllocator.o.d 
	@${RM} ${OBJECTDIR}/_ext/1627536503/eosHeapAllocator.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1627536503/eosHeapAllocator.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/1627536503/eosHeapAllocator.o.d" -o ${OBJECTDIR}/_ext/1627536503/eosHeapAllocator.o ../../../EOS/v2/Source/System/Core/eosHeapAllocator.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/299602939/eosApplication.o: ../../../EOS/v2/Source/System/eosApplication.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/299602939" 
	@${RM} ${OBJECTDIR}/_ext/299602939/eosApplication.o.d 
	@${RM} ${OBJECTDIR}/_ext/299602939/eosApplication.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/299602939/eosApplication.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/299602939/eosApplication.o.d" -o ${OBJECTDIR}/_ext/299602939/eosApplication.o ../../../EOS/v2/Source/System/eosApplication.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2037206249/Consolas14pt.o: ../../../EOS/v2/Source/Controllers/Display/Fonts/Consolas14pt.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2037206249" 
	@${RM} ${OBJECTDIR}/_ext/2037206249/Consolas14pt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2037206249/Consolas14pt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2037206249/Consolas14pt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/2037206249/Consolas14pt.o.d" -o ${OBJECTDIR}/_ext/2037206249/Consolas14pt.o ../../../EOS/v2/Source/Controllers/Display/Fonts/Consolas14pt.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/752489292/eosService.o: ../../../EOS/v2/Source/Services/eosService.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/752489292" 
	@${RM} ${OBJECTDIR}/_ext/752489292/eosService.o.d 
	@${RM} ${OBJECTDIR}/_ext/752489292/eosService.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/752489292/eosService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../" -I"../../../EOS/v2/Include" -I"c:/microchip/Harmony/v1_07_01/framework" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/include" -I"C:/Library/Microchip/FreeRTOS/v9.0.0/Source/portable/MPLAB/PIC32MX" -fno-rtti -fno-exceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -funroll-loops -fomit-frame-pointer -DHARDWARE_PINGUINO -MMD -MF "${OBJECTDIR}/_ext/752489292/eosService.o.d" -o ${OBJECTDIR}/_ext/752489292/eosService.o ../../../EOS/v2/Source/Services/eosService.cpp   -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../../../microchip/harmony/v1_07_01/bin/framework/peripheral/PIC32MX440F256H_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\..\..\microchip\harmony\v1_07_01\bin\framework\peripheral\PIC32MX440F256H_peripherals.a      -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,--defsym=_min_heap_size=1024,--defsym=_min_stack_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../../../microchip/harmony/v1_07_01/bin/framework/peripheral/PIC32MX440F256H_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\..\..\microchip\harmony\v1_07_01\bin\framework\peripheral\PIC32MX440F256H_peripherals.a      -DXPRJ_PINGUINO=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1024,--defsym=_min_stack_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Axis.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/PINGUINO
	${RM} -r dist/PINGUINO

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
