--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

--  This is a version for the Atmel ATSAM4LC4A device: Cortex-M4
--  Microcontroller with 256KB Flash, 32KB SRAM, 48-pin package (refer to
--  http://www.atmel.com/devices/SAM4LC4A.aspx for more) MCU
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
   Sys_Tick_Interrupt        : constant Interrupt_ID := 1;
   HFLASHC_INTREQ_Interrupt  : constant Interrupt_ID := 2;
   PDCA_INTREQ_0_Interrupt   : constant Interrupt_ID := 3;
   PDCA_INTREQ_1_Interrupt   : constant Interrupt_ID := 4;
   PDCA_INTREQ_2_Interrupt   : constant Interrupt_ID := 5;
   PDCA_INTREQ_3_Interrupt   : constant Interrupt_ID := 6;
   PDCA_INTREQ_4_Interrupt   : constant Interrupt_ID := 7;
   PDCA_INTREQ_5_Interrupt   : constant Interrupt_ID := 8;
   PDCA_INTREQ_6_Interrupt   : constant Interrupt_ID := 9;
   PDCA_INTREQ_7_Interrupt   : constant Interrupt_ID := 10;
   PDCA_INTREQ_8_Interrupt   : constant Interrupt_ID := 11;
   PDCA_INTREQ_9_Interrupt   : constant Interrupt_ID := 12;
   PDCA_INTREQ_10_Interrupt  : constant Interrupt_ID := 13;
   PDCA_INTREQ_11_Interrupt  : constant Interrupt_ID := 14;
   PDCA_INTREQ_12_Interrupt  : constant Interrupt_ID := 15;
   PDCA_INTREQ_13_Interrupt  : constant Interrupt_ID := 16;
   PDCA_INTREQ_14_Interrupt  : constant Interrupt_ID := 17;
   PDCA_INTREQ_15_Interrupt  : constant Interrupt_ID := 18;
   CRCCU_INTREQ_Interrupt    : constant Interrupt_ID := 19;
   USBC_INTREQ_Interrupt     : constant Interrupt_ID := 20;
   PEVC_INTREQ_0_Interrupt   : constant Interrupt_ID := 21;
   PEVC_INTREQ_1_Interrupt   : constant Interrupt_ID := 22;
   AESA_INTREQ_Interrupt     : constant Interrupt_ID := 23;
   PM_INTREQ_Interrupt       : constant Interrupt_ID := 24;
   SCIF_INTREQ_Interrupt     : constant Interrupt_ID := 25;
   FREQM_INTREQ_Interrupt    : constant Interrupt_ID := 26;
   GPIO_INTREQ_0_Interrupt   : constant Interrupt_ID := 27;
   GPIO_INTREQ_1_Interrupt   : constant Interrupt_ID := 28;
   GPIO_INTREQ_2_Interrupt   : constant Interrupt_ID := 29;
   GPIO_INTREQ_3_Interrupt   : constant Interrupt_ID := 30;
   GPIO_INTREQ_4_Interrupt   : constant Interrupt_ID := 31;
   GPIO_INTREQ_5_Interrupt   : constant Interrupt_ID := 32;
   GPIO_INTREQ_6_Interrupt   : constant Interrupt_ID := 33;
   GPIO_INTREQ_7_Interrupt   : constant Interrupt_ID := 34;
   GPIO_INTREQ_8_Interrupt   : constant Interrupt_ID := 35;
   GPIO_INTREQ_9_Interrupt   : constant Interrupt_ID := 36;
   GPIO_INTREQ_10_Interrupt  : constant Interrupt_ID := 37;
   GPIO_INTREQ_11_Interrupt  : constant Interrupt_ID := 38;
   BPM_INTREQ_Interrupt      : constant Interrupt_ID := 39;
   BSCIF_INTREQ_Interrupt    : constant Interrupt_ID := 40;
   AST_INTREQ_0_Interrupt    : constant Interrupt_ID := 41;
   AST_INTREQ_1_Interrupt    : constant Interrupt_ID := 42;
   AST_INTREQ_2_Interrupt    : constant Interrupt_ID := 43;
   AST_INTREQ_3_Interrupt    : constant Interrupt_ID := 44;
   AST_INTREQ_4_Interrupt    : constant Interrupt_ID := 45;
   WDT_INTREQ_Interrupt      : constant Interrupt_ID := 46;
   EIC_INTREQ_0_Interrupt    : constant Interrupt_ID := 47;
   EIC_INTREQ_1_Interrupt    : constant Interrupt_ID := 48;
   EIC_INTREQ_2_Interrupt    : constant Interrupt_ID := 49;
   EIC_INTREQ_3_Interrupt    : constant Interrupt_ID := 50;
   EIC_INTREQ_4_Interrupt    : constant Interrupt_ID := 51;
   EIC_INTREQ_5_Interrupt    : constant Interrupt_ID := 52;
   EIC_INTREQ_6_Interrupt    : constant Interrupt_ID := 53;
   EIC_INTREQ_7_Interrupt    : constant Interrupt_ID := 54;
   IISC_INTREQ_Interrupt     : constant Interrupt_ID := 55;
   SPI_INTREQ_Interrupt      : constant Interrupt_ID := 56;
   TC0_INTREQ_0_Interrupt    : constant Interrupt_ID := 57;
   TC0_INTREQ_1_Interrupt    : constant Interrupt_ID := 58;
   TC0_INTREQ_2_Interrupt    : constant Interrupt_ID := 59;
   TC1_INTREQ_0_Interrupt    : constant Interrupt_ID := 60;
   TC1_INTREQ_1_Interrupt    : constant Interrupt_ID := 61;
   TC1_INTREQ_2_Interrupt    : constant Interrupt_ID := 62;
   TWIM0_INTREQ_Interrupt    : constant Interrupt_ID := 63;
   TWIS0_INTREQ_Interrupt    : constant Interrupt_ID := 64;
   TWIM1_INTREQ_Interrupt    : constant Interrupt_ID := 65;
   TWIS1_INTREQ_Interrupt    : constant Interrupt_ID := 66;
   USART0_INTREQ_Interrupt   : constant Interrupt_ID := 67;
   USART1_INTREQ_Interrupt   : constant Interrupt_ID := 68;
   USART2_INTREQ_Interrupt   : constant Interrupt_ID := 69;
   USART3_INTREQ_Interrupt   : constant Interrupt_ID := 70;
   ADCIFE_INTREQ_Interrupt   : constant Interrupt_ID := 71;
   DACC_INTREQ_Interrupt     : constant Interrupt_ID := 72;
   ACIFC_INTREQ_Interrupt    : constant Interrupt_ID := 73;
   ABDACB_INTREQ_Interrupt   : constant Interrupt_ID := 74;
   TRNG_INTREQ_Interrupt     : constant Interrupt_ID := 75;
   PARC_INTREQ_Interrupt     : constant Interrupt_ID := 76;
   CATB_INTREQ_Interrupt     : constant Interrupt_ID := 77;
   TWIM2_INTREQ_Interrupt    : constant Interrupt_ID := 79;
   TWIM3_INTREQ_Interrupt    : constant Interrupt_ID := 80;
   LCDCA_INTREQ_Interrupt    : constant Interrupt_ID := 81;

end Ada.Interrupts.Names;
