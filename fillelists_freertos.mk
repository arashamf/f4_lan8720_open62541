# define freertos dir
FREERTOS_DIR = $(ROOT_DIR)/FreeRTOS

# source director
FREERTOS_SRC_DIR     	= $(FREERTOS_DIR)/Source
FREERTOS_ARM_CM4_DIR 	= $(FREERTOS_SRC_DIR)/portable/GCC/ARM_CM4F
FREERTOS_MemMang_DIR 	= $(FREERTOS_SRC_DIR)/portable/MemMang
FREERTOS_PORT_DIR 		= $(FREERTOS_SRC_DIR)/CMSIS_RTOS

FREERTOS_INC_DIR     		= $(FREERTOS_DIR)/Source/include
FREERTOS_ARM_CM4_INC_DIR 	= $(FREERTOS_ARM_CM4_DIR)

# add freertos source
CORE_RTOS_SRC  = 	$(FREERTOS_DIR)/freertos.c \
					$(FREERTOS_SRC_DIR)/croutine.c \
					$(FREERTOS_SRC_DIR)/event_groups.c	\
					$(FREERTOS_SRC_DIR)/list.c \
					$(FREERTOS_SRC_DIR)/queue.c	\
					$(FREERTOS_SRC_DIR)/stream_buffer.c \
					$(FREERTOS_SRC_DIR)/tasks.c \
					$(FREERTOS_SRC_DIR)/timers.c	\
					$(FREERTOS_MemMang_DIR)/heap_4.c	\
					 \	
					
C_SOURCES  += $(CORE_RTOS_SRC)
C_SOURCES  += $(FREERTOS_SRC_DIR)/portable/GCC/ARM_CM4F/port.c
C_SOURCES  += $(FREERTOS_PORT_DIR)/cmsis_os.c


# include directories
INC	+= $(FREERTOS_DIR)
INC += $(FREERTOS_INC_DIR)
INC += $(FREERTOS_ARM_CM4_INC_DIR)
INC += $(FREERTOS_PORT_DIR)

C_INCLUDES	+= $(INC)