--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

--  This is a version for the Register cmsis file for LPC43xx parts MCU
package Ada.Interrupts.Names is

   --  All identifiers in this unit are implementation defined

   pragma Implementation_Defined;

   ----------------
   -- Interrupts --
   ----------------

   --  The position of the interrupts are documented as starting at 0.
   --  Unfortunately, Interrupt_Id 0 is reserved and the SysTick interrupt (a
   --  core interrupt) is handled by the runtime like other interrupts. So IRQ
   --  0 is numbered 2 while it is at position 0 in the manual. The offset of 2
   --  is reflected in s-bbbosu.adb by the First_IRQ constant.
   Sys_Tick_Interrupt     : constant Interrupt_ID := 1;
   DAC_Interrupt          : constant Interrupt_ID := 2;
   DMA_Interrupt          : constant Interrupt_ID := 4;
   FLASH_Interrupt        : constant Interrupt_ID := 6;
   ETHERNET_Interrupt     : constant Interrupt_ID := 7;
   SDIO_Interrupt         : constant Interrupt_ID := 8;
   LCD_Interrupt          : constant Interrupt_ID := 9;
   USB0_Interrupt         : constant Interrupt_ID := 10;
   USB1_Interrupt         : constant Interrupt_ID := 11;
   SCT_Interrupt          : constant Interrupt_ID := 12;
   RITIMER_Interrupt      : constant Interrupt_ID := 13;
   TIMER0_Interrupt       : constant Interrupt_ID := 14;
   TIMER1_Interrupt       : constant Interrupt_ID := 15;
   TIMER2_Interrupt       : constant Interrupt_ID := 16;
   TIMER3_Interrupt       : constant Interrupt_ID := 17;
   MCPWM_Interrupt        : constant Interrupt_ID := 18;
   ADC0_Interrupt         : constant Interrupt_ID := 19;
   I2C0_Interrupt         : constant Interrupt_ID := 20;
   I2C1_Interrupt         : constant Interrupt_ID := 21;
   SPI_INT_Interrupt      : constant Interrupt_ID := 22;
   ADC1_Interrupt         : constant Interrupt_ID := 23;
   SSP0_Interrupt         : constant Interrupt_ID := 24;
   SSP1_Interrupt         : constant Interrupt_ID := 25;
   USART0_Interrupt       : constant Interrupt_ID := 26;
   UART1_Interrupt        : constant Interrupt_ID := 27;
   USART2_Interrupt       : constant Interrupt_ID := 28;
   USART3_Interrupt       : constant Interrupt_ID := 29;
   I2S0_Interrupt         : constant Interrupt_ID := 30;
   I2S1_Interrupt         : constant Interrupt_ID := 31;
   SPIFI_Interrupt        : constant Interrupt_ID := 32;
   SGPIO_IINT_Interrupt   : constant Interrupt_ID := 33;
   PIN_INT0_Interrupt     : constant Interrupt_ID := 34;
   PIN_INT1_Interrupt     : constant Interrupt_ID := 35;
   PIN_INT2_Interrupt     : constant Interrupt_ID := 36;
   PIN_INT3_Interrupt     : constant Interrupt_ID := 37;
   PIN_INT4_Interrupt     : constant Interrupt_ID := 38;
   PIN_INT5_Interrupt     : constant Interrupt_ID := 39;
   PIN_INT6_Interrupt     : constant Interrupt_ID := 40;
   PIN_INT7_Interrupt     : constant Interrupt_ID := 41;
   GINT0_Interrupt        : constant Interrupt_ID := 42;
   GINT1_Interrupt        : constant Interrupt_ID := 43;
   EVENTROUTER_Interrupt  : constant Interrupt_ID := 44;
   C_CAN1_Interrupt       : constant Interrupt_ID := 45;
   ADCHS_Interrupt        : constant Interrupt_ID := 47;
   ATIMER_Interrupt       : constant Interrupt_ID := 48;
   RTC_Interrupt          : constant Interrupt_ID := 49;
   WWDT_Interrupt         : constant Interrupt_ID := 51;
   C_CAN0_Interrupt       : constant Interrupt_ID := 53;
   QEI_Interrupt          : constant Interrupt_ID := 54;

end Ada.Interrupts.Names;
