
# define lib dir
STM32F4_LIB_DIR  	= 	$(ROOT_DIR)/Drivers
STM32F4_STD_PATH  	= 	$(STM32F4_LIB_DIR)/STM32F4xx_HAL_Driver
STM32F4_CMSIS_PATH 	=  	$(STM32F4_LIB_DIR)/CMSIS

# source director
STM32F4_SRC_STDLIB     			= $(STM32F4_STD_PATH)/Src

# include director
STM32F4_INC_STDLIB     			= $(STM32F4_STD_PATH)/Inc
STM32F4_INC_STDLIB_LEGACY     	= $(STM32F4_STD_PATH)/Inc/Legacy
STM32F4_CORE_INC_DIR    		= $(STM32F4_CMSIS_PATH)/Include
STM32F4_DEVICE_INC_DIR  		= $(STM32F4_CMSIS_PATH)/Device/ST/STM32F4xx/Include

# CMSIS
#C_SOURCES  += $(STM32F4_CORE_DIR)/sysmem.c
#C_SOURCES  += $(STM32F4_SRC_DEVICE_DIR)/syscalls.c
#C_SOURCES  += $(STM32F4_SRC_DEVICE_DIR)/system_stm32f4xx.c

# use libraries, please add or remove when you use or remove it.
SRC = 		$(STM32F4_SRC_STDLIB)/stm32f4xx_hal.c	\
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_adc.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_adc_ex.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_can.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_cec.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_cortex.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_crc.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_cryp.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_cryp_ex.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_dac.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_dac_ex.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_dcmi.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_dcmi_ex.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_dfsdm.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_dma.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_dma2d.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_dma_ex.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_dsi.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_eth.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_exti.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_flash.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_flash_ex.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_flash_ramfunc.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_fmpi2c.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_fmpi2c_ex.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_fmpsmbus.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_fmpsmbus_ex.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_gpio.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_hash.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_hash_ex.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_hcd.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_i2c.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_i2c_ex.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_i2s.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_i2s_ex.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_irda.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_iwdg.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_lptim.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_ltdc.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_ltdc_ex.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_mmc.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_nand.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_nor.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_pccard.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_pcd.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_pcd_ex.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_pwr.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_pwr_ex.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_qspi.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_rcc.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_rcc_ex.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_rng.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_rtc.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_rtc_ex.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_sai.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_sai_ex.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_sd.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_sdram.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_smartcard.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_smbus.c	\
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_spdifrx.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_spi.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_sram.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_tim.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_tim_ex.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_uart.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_usart.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_hal_wwdg.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_adc.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_crc.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_dac.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_dma.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_dma2d.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_exti.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_fmc.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_fmpi2c.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_fsmc.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_gpio.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_i2c.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_lptim.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_pwr.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_rcc.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_rng.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_rtc.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_sdmmc.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_spi.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_tim.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_usart.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_usb.c \
			$(STM32F4_SRC_STDLIB)/stm32f4xx_ll_utils.c 

C_SOURCES  += $(SRC)
C_SOURCES  += $(STM32F4_LIB_DIR)/BSP/Components/lan8742/lan8742.c

# include directories
INC += $(STM32F4_INC_STDLIB)
INC += $(STM32F4_INC_STDLIB_LEGACY)
INC += $(STM32F4_CORE_INC_DIR)
INC += $(STM32F4_DEVICE_INC_DIR)

C_INCLUDES += $(INC)