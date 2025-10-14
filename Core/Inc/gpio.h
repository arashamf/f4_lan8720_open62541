/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    gpio.h
  * @brief   This file contains all the function prototypes for
  *          the gpio.c file
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __GPIO_H__
#define __GPIO_H__

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* USER CODE BEGIN Private defines */
//-----------------------------------------------
typedef struct 
{
  // uint32_t port;
    GPIO_TypeDef * port;
    uint32_t pin;
} leds_t;

//-----------------------------------------------
enum
{
  green = 0,
  orange,
  red,
  blue,
  number,
};

#define led_ctl(x, port, pin) ((x) ? (LL_GPIO_SetOutputPin(port, pin)) : (LL_GPIO_ResetOutputPin(port, pin)))
/* USER CODE END Private defines */

void MX_GPIO_Init(void);

/* USER CODE BEGIN Prototypes */
void leds_init (void);
void control_LED (uint8_t number_leds, uint8_t comm);
/* USER CODE END Prototypes */

#ifdef __cplusplus
}
#endif
#endif /*__ GPIO_H__ */

