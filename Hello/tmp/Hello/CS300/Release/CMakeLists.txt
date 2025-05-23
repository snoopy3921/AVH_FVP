# CMSIS Build CMakeLists generated on 2025-05-22T20:11:50

cmake_minimum_required(VERSION 3.22)

# Target options

set(TARGET Hello)
set(CPU Cortex-M55)
set(PRJ_DIR "/home/arm_mlops_docker/workspace/Hello")
set(OUT_DIR "/home/arm_mlops_docker/workspace/Hello/out/Hello/CS300/Release")
set(INT_DIR "/home/arm_mlops_docker/workspace/Hello/tmp/Hello/CS300/Release")
set(FPU DP_FPU)
set(DSP DSP)
set(TZ TZ)
set(MVE FP_MVE)
set(OPTIMIZE balanced)
set(DEBUG off)
set(CC_FLAGS_GLOBAL "-std=gnu11 -masm-syntax-unified -fomit-frame-pointer -ffunction-sections -fdata-sections")
set(CXX_FLAGS_GLOBAL "-masm-syntax-unified -fomit-frame-pointer -ffunction-sections -fdata-sections")
set(LD_FLAGS_GLOBAL "--specs=nano.specs --specs=nosys.specs -Wl,-print-memory-usage -Wl,--gc-sections -Wl,--no-warn-rwx-segments")
set(LD_SCRIPT "/home/arm_mlops_docker/cmsis-toolbox-linux-amd64/etc/gcc_linker_script.ld")
set(LD_REGIONS "/home/arm_mlops_docker/workspace/Hello/RTE/Device/SSE_300_MPS3/regions_SSE_300_MPS3.h")
set(LD_SCRIPT_PP "/home/arm_mlops_docker/workspace/Hello/tmp/Hello/CS300/Release/gcc_linker_script.ld.pp")
set(HEX_FILE "Hello.hex")

set(DEFINES
  _RTE_
)

set(INC_PATHS
  "/home/arm_mlops_docker/workspace/Hello/RTE/CMSIS"
  "/home/arm_mlops_docker/workspace/Hello/RTE/Device/SSE-300-MPS3"
  "/home/arm_mlops_docker/workspace/Hello/RTE/_Release_CS300"
  "/home/arm_mlops_docker/packs/ARM/CMSIS-Compiler/2.1.0/include"
  "/home/arm_mlops_docker/packs/ARM/CMSIS-RTX/5.9.0/Include"
  "/home/arm_mlops_docker/packs/ARM/CMSIS/6.1.0/CMSIS/Core/Include"
  "/home/arm_mlops_docker/packs/ARM/CMSIS/6.1.0/CMSIS/Driver/Include"
  "/home/arm_mlops_docker/packs/ARM/CMSIS/6.1.0/CMSIS/RTOS2/Include"
  "/home/arm_mlops_docker/packs/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Board/Device_Definition"
  "/home/arm_mlops_docker/packs/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Board/Platform"
  "/home/arm_mlops_docker/packs/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/CMSIS_Driver"
  "/home/arm_mlops_docker/packs/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/CMSIS_Driver/Config"
  "/home/arm_mlops_docker/packs/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Device/Include"
)

set(ASM_SRC_FILES
  "/home/arm_mlops_docker/packs/ARM/CMSIS-RTX/5.9.0/Source/GCC/irq_armv8mml.S"
)

set(CC_SRC_FILES
  "/home/arm_mlops_docker/packs/ARM/CMSIS-Compiler/2.1.0/source/gcc/retarget_syscalls.c"
  "/home/arm_mlops_docker/packs/ARM/CMSIS-RTX/5.9.0/Source/rtx_delay.c"
  "/home/arm_mlops_docker/packs/ARM/CMSIS-RTX/5.9.0/Source/rtx_evflags.c"
  "/home/arm_mlops_docker/packs/ARM/CMSIS-RTX/5.9.0/Source/rtx_evr.c"
  "/home/arm_mlops_docker/packs/ARM/CMSIS-RTX/5.9.0/Source/rtx_kernel.c"
  "/home/arm_mlops_docker/packs/ARM/CMSIS-RTX/5.9.0/Source/rtx_lib.c"
  "/home/arm_mlops_docker/packs/ARM/CMSIS-RTX/5.9.0/Source/rtx_memory.c"
  "/home/arm_mlops_docker/packs/ARM/CMSIS-RTX/5.9.0/Source/rtx_mempool.c"
  "/home/arm_mlops_docker/packs/ARM/CMSIS-RTX/5.9.0/Source/rtx_msgqueue.c"
  "/home/arm_mlops_docker/packs/ARM/CMSIS-RTX/5.9.0/Source/rtx_mutex.c"
  "/home/arm_mlops_docker/packs/ARM/CMSIS-RTX/5.9.0/Source/rtx_semaphore.c"
  "/home/arm_mlops_docker/packs/ARM/CMSIS-RTX/5.9.0/Source/rtx_system.c"
  "/home/arm_mlops_docker/packs/ARM/CMSIS-RTX/5.9.0/Source/rtx_thread.c"
  "/home/arm_mlops_docker/packs/ARM/CMSIS-RTX/5.9.0/Source/rtx_timer.c"
  "/home/arm_mlops_docker/packs/ARM/CMSIS/6.1.0/CMSIS/RTOS2/Source/os_systick.c"
  "/home/arm_mlops_docker/packs/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Board/Device_Definition/device_definition.c"
  "/home/arm_mlops_docker/packs/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/CMSIS_Driver/Driver_USART.c"
  "/home/arm_mlops_docker/packs/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Device/Source/arm_mps3_io_drv.c"
  "/home/arm_mlops_docker/packs/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Device/Source/syscounter_armv8-m_cntrl_drv.c"
  "/home/arm_mlops_docker/packs/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Device/Source/syscounter_armv8-m_read_drv.c"
  "/home/arm_mlops_docker/packs/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Device/Source/systimer_armv8-m_drv.c"
  "/home/arm_mlops_docker/packs/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Device/Source/systimer_armv8-m_timeout.c"
  "/home/arm_mlops_docker/packs/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Device/Source/uart_cmsdk_drv.c"
  "/home/arm_mlops_docker/workspace/Hello/Board_IO/retarget_stdio.c"
  "/home/arm_mlops_docker/workspace/Hello/RTE/CMSIS/RTX_Config.c"
  "/home/arm_mlops_docker/workspace/Hello/RTE/Device/SSE-300-MPS3/startup_SSE300MPS3.c"
  "/home/arm_mlops_docker/workspace/Hello/RTE/Device/SSE-300-MPS3/system_SSE300MPS3.c"
  "/home/arm_mlops_docker/workspace/Hello/hello.c"
  "/home/arm_mlops_docker/workspace/Hello/main.c"
)

# Toolchain config map

set(REGISTERED_TOOLCHAIN_ROOT "/home/arm_mlops_docker/arm-gnu-toolchain-12.3.rel1-x86_64-arm-none-eabi/bin")
set(REGISTERED_TOOLCHAIN_VERSION "12.3.1")
set(TOOLCHAIN_VERSION_MIN "12.3.1")
include ("/home/arm_mlops_docker/cmsis-toolbox-linux-amd64/etc/GCC.10.3.1.cmake")
include ("/home/arm_mlops_docker/cmsis-toolbox-linux-amd64/etc/CMSIS-Build-Utils.cmake")

# Setup project

project(${TARGET} LANGUAGES ASM C)

cbuild_get_running_toolchain(TOOLCHAIN_ROOT TOOLCHAIN_VERSION C)

# Global Flags

set(CMAKE_ASM_FLAGS "${ASM_CPU} ${ASM_DEFINES} ${ASM_OPTIONS_FLAGS} ${ASM_FLAGS}")
cbuild_get_system_includes(CC_SYS_INC_PATHS_LIST CC_SYS_INC_PATHS)
set(CMAKE_C_FLAGS "${CC_CPU} ${CC_DEFINES} ${CC_OPTIONS_FLAGS} ${CC_FLAGS} ${CC_FLAGS_GLOBAL} ${CC_SYS_INC_PATHS}")
set(CMAKE_C_LINK_FLAGS "${LD_CPU} ${_LS}\"${LD_SCRIPT_PP}\" ${LD_FLAGS_GLOBAL} ${LD_OPTIONS_FLAGS} ${LD_FLAGS}")

# Compilation Database

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
add_custom_target(database COMMAND ${CMAKE_COMMAND} -E copy_if_different "${INT_DIR}/compile_commands.json" "${OUT_DIR}")

# Setup Target

add_executable(${TARGET} ${ASM_SRC_FILES} ${CC_SRC_FILES})
set_target_properties(${TARGET} PROPERTIES PREFIX "" SUFFIX ".elf" OUTPUT_NAME "Hello")
set_target_properties(${TARGET} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${OUT_DIR} LINK_DEPENDS ${LD_SCRIPT})
target_include_directories(${TARGET} PUBLIC ${INC_PATHS})

# Linker script pre-processing

add_custom_command(TARGET ${TARGET} PRE_LINK COMMAND ${CPP} ARGS ${CPP_ARGS_LD_SCRIPT} BYPRODUCTS ${LD_SCRIPT_PP})

# Hex Conversion

add_custom_command(TARGET ${TARGET} POST_BUILD COMMAND ${CMAKE_OBJCOPY} ${ELF2HEX})
