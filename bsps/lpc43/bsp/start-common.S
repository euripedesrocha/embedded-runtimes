## -*- asm -*- ##############################################################
#                                                                           #
#                 GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                  #
#                                                                           #
#                                 C A C H E                                 #
#                                                                           #
#                               Assembly File                               #
#                                                                           #
#                      Copyright (C) 2012-2016 AdaCore                      #
#                                                                           #
#  GNAT is free software;  you can  redistribute it  and/or modify it under #
#  terms of the  GNU General Public License as published  by the Free Soft- #
#  ware  Foundation;  either version 3,  or (at your option) any later ver- #
#  sion.  GNAT is distributed in the hope that it will be useful, but WITH- #
#  OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY #
#  or FITNESS FOR A PARTICULAR PURPOSE.                                     #
#                                                                           #
#  You should have received a copy of the GNU General Public License along  #
#  with this library; see the file COPYING3. If not, see:                   #
#  <http://www.gnu.org/licenses/>.                                          #
#                                                                           #
#############################################################################

	.syntax unified
	.cpu cortex-m4
	.thumb

	.text
	.thumb_func
	.globl	_lpc43_start_common
        .type _lpc43_start_common, #function
_lpc43_start_common:

        /**************/
        /* Enable FPU */
        /**************/

        movw     r0,#0xED88
        movt     r0,#0xE000
        ldr      r1,[r0]
        orr      r1,r1,#(0xF << 20)
        str      r1,[r0]

        dsb
        isb

        .set    RESET_CTRL0_REG,  0x40053100
        .set    RESET_CTRL1_REG,  0x40053104
        ldr     r0, =RESET_CTRL0_REG
        ldr     r1, =#0x10DF1000;
        // GPIO_RST|AES_RST|ETHERNET_RST|SDIO_RST|DMA_RST|
        // USB1_RST|USB0_RST|LCD_RST|M0_SUB_RST
        str     r1, [r0]
        ldr     r0, =RESET_CTRL1_REG
        ldr     r1, =#0x01DFF7FF;
        // M0APP_RST|CAN0_RST|CAN1_RST|I2S_RST|SSP1_RST|SSP0_RST|
        // I2C1_RST|I2C0_RST|UART3_RST|UART1_RST|UART1_RST|UART0_RST|
        // DAC_RST|ADC1_RST|ADC0_RST|QEI_RST|MOTOCONPWM_RST|SCT_RST|
        // RITIMER_RST|TIMER3_RST|TIMER2_RST|TIMER1_RST|TIMER0_RST
        str     r1, [r0]

        // Clear all pending interrupts in the NVIC
        .set NVIC_ICPR0, 0xE000E280
        .set NVIC_ICPR1, 0xE000E284
        ldr  r0, =NVIC_ICPR0
        ldr  r1, =#0xFFFFFFFF
        str  r1, [r0]
        ldr  r0, =NVIC_ICPR1
        str  r1, [r0]

end:
        bx lr
        .size _lpc43_start_common, . - _lpc43_start_common
