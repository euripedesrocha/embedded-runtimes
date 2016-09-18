--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43.EVENTROUTER is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -------------------
   -- HILO_Register --
   -------------------

   --  Level detect mode for WAKEUP0 event.
   type ENUM is
     (
      --  Detect LOW level on the WAKEUP0 pin if bit 0 in the EDGE register is
      --  0. Detect falling edge if bit 0 in the EDGE register is 1.
      Detect_Low_Level,
      --  Detect HIGH level on the WAKEUP0 pin if bit 0 in the EDGE register is
      --  0. Detect rising edge if bit 0 in the EDGE register is 1.
      Detect_High_Level)
     with Size => 1;
   for ENUM use
     (Detect_Low_Level => 0,
      Detect_High_Level => 1);

   subtype HILO_RESERVED_Field is Interfaces.Bit_Types.UInt2;

   --  Level detect mode for Reset
   type ENUM_1 is
     (
      --  Detect LOW level if bit 17 in the EDGE register is 0. Detect falling
      --  edge if bit 17 in the EDGE register is 1.
      Detect_Low_Level_If,
      --  Detect HIGH level if bit 17 in the EDGE register is 0. Detect rising
      --  edge if bit 17 in the EDGE register is 1.
      Detect_High_Level_If)
     with Size => 1;
   for ENUM_1 use
     (Detect_Low_Level_If => 0,
      Detect_High_Level_If => 1);

   subtype HILO_RESERVED_Field_1 is Interfaces.Bit_Types.UInt10;

   --  Level configuration register
   type HILO_Register is record
      --  Level detect mode for WAKEUP0 event.
      WAKEUP0_L  : ENUM := Interfaces.LPC43.EVENTROUTER.Detect_Low_Level;
      --  Level detect mode for WAKEUP1 event. The corresponding bit in the
      --  EDGE register must be 0.
      WAKEUP1_L  : ENUM := Interfaces.LPC43.EVENTROUTER.Detect_Low_Level;
      --  Level detect mode for WAKEUP2 event.
      WAKEUP2_L  : ENUM := Interfaces.LPC43.EVENTROUTER.Detect_Low_Level;
      --  Level detect mode for WAKEUP3 event.
      WAKEUP3_L  : ENUM := Interfaces.LPC43.EVENTROUTER.Detect_Low_Level;
      --  Level detect mode for alarm timer event.
      ATIMER_L   : ENUM := Interfaces.LPC43.EVENTROUTER.Detect_Low_Level;
      --  Level detect mode for RTC event.
      RTC_L      : ENUM := Interfaces.LPC43.EVENTROUTER.Detect_Low_Level;
      --  Level detect mode for BOD event.
      BOD_L      : ENUM := Interfaces.LPC43.EVENTROUTER.Detect_Low_Level;
      --  Level detect mode for WWDT event.
      WWDT_L     : ENUM := Interfaces.LPC43.EVENTROUTER.Detect_Low_Level;
      --  Level detect mode for Ethernet event
      ETH_L      : ENUM := Interfaces.LPC43.EVENTROUTER.Detect_Low_Level;
      --  Level detect mode for USB0 event
      USB0_L     : ENUM := Interfaces.LPC43.EVENTROUTER.Detect_Low_Level;
      --  Level detect mode for USB1 event
      USB1_L     : ENUM := Interfaces.LPC43.EVENTROUTER.Detect_Low_Level;
      --  Level detect mode for SD/MMC event
      SDMMC_L    : ENUM := Interfaces.LPC43.EVENTROUTER.Detect_Low_Level;
      --  Level detect mode for C_CAN event.
      CAN_L      : ENUM := Interfaces.LPC43.EVENTROUTER.Detect_Low_Level;
      --  Level detect mode for combined timer output 2 event.
      TIM2_L     : ENUM := Interfaces.LPC43.EVENTROUTER.Detect_Low_Level;
      --  Level detect mode for combined timer output 6 event.
      TIM6_L     : ENUM := Interfaces.LPC43.EVENTROUTER.Detect_Low_Level;
      --  Level detect mode for QEI event.
      QEI_L      : ENUM := Interfaces.LPC43.EVENTROUTER.Detect_Low_Level;
      --  Level detect mode for combined timer output 14 event.
      TIM14_L    : ENUM := Interfaces.LPC43.EVENTROUTER.Detect_Low_Level;
      --  Reserved.
      RESERVED   : HILO_RESERVED_Field := 16#0#;
      --  Level detect mode for Reset
      RESET_L    : ENUM_1 := Interfaces.LPC43.EVENTROUTER.Detect_Low_Level_If;
      --  Level detect mode for BOD Reset
      BODRESET_L : ENUM_1 := Interfaces.LPC43.EVENTROUTER.Detect_Low_Level_If;
      --  Level detect mode for Deep power-down Reset
      DPDRESET_L : ENUM_1 := Interfaces.LPC43.EVENTROUTER.Detect_Low_Level_If;
      --  Reserved.
      RESERVED_1 : HILO_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HILO_Register use record
      WAKEUP0_L  at 0 range 0 .. 0;
      WAKEUP1_L  at 0 range 1 .. 1;
      WAKEUP2_L  at 0 range 2 .. 2;
      WAKEUP3_L  at 0 range 3 .. 3;
      ATIMER_L   at 0 range 4 .. 4;
      RTC_L      at 0 range 5 .. 5;
      BOD_L      at 0 range 6 .. 6;
      WWDT_L     at 0 range 7 .. 7;
      ETH_L      at 0 range 8 .. 8;
      USB0_L     at 0 range 9 .. 9;
      USB1_L     at 0 range 10 .. 10;
      SDMMC_L    at 0 range 11 .. 11;
      CAN_L      at 0 range 12 .. 12;
      TIM2_L     at 0 range 13 .. 13;
      TIM6_L     at 0 range 14 .. 14;
      QEI_L      at 0 range 15 .. 15;
      TIM14_L    at 0 range 16 .. 16;
      RESERVED   at 0 range 17 .. 18;
      RESET_L    at 0 range 19 .. 19;
      BODRESET_L at 0 range 20 .. 20;
      DPDRESET_L at 0 range 21 .. 21;
      RESERVED_1 at 0 range 22 .. 31;
   end record;

   -------------------
   -- EDGE_Register --
   -------------------

   --  Edge detect mode for WAKEUP0 event. The corresponding bit in the EDGE
   --  register must be 0.
   type ENUM_2 is
     (
      --  Level detect.
      Level_Detect,
      --  Edge detect of WAKEUP0 pin. Detect falling edge if bit 0 in the HILO
      --  register is 0. Detect rising edge if bit 0 in the HILO register is 1.
      Edge_Detect_Of_Wakeu)
     with Size => 1;
   for ENUM_2 use
     (Level_Detect => 0,
      Edge_Detect_Of_Wakeu => 1);

   --  Edge/level detect mode for alarm timer event. The corresponding bit in
   --  the EDGE register must be 0.
   type ENUM_3 is
     (
      --  Level detect.
      Level_Detect,
      --  Edge detect of the alarm timer interrupt. Detect falling edge if bit
      --  4 in the HILO register is 0. Detect rising edge if bit 4 in the HILO
      --  register is 1.
      Edge_Detect_Of_The_A)
     with Size => 1;
   for ENUM_3 use
     (Level_Detect => 0,
      Edge_Detect_Of_The_A => 1);

   --  Edge/level detect mode for RTC event. The corresponding bit in the EDGE
   --  register must be 0.
   type ENUM_4 is
     (
      --  Level detect.
      Level_Detect,
      --  Edge detect of the RTC interrupt. Detect falling edge if bit 5 in the
      --  HILO register is 0. Detect rising edge if bit 5 in the HILO register
      --  is 1.
      Edge_Detect_Of_The_R)
     with Size => 1;
   for ENUM_4 use
     (Level_Detect => 0,
      Edge_Detect_Of_The_R => 1);

   --  Edge/level detect mode for BOD event. The corresponding bit in the EDGE
   --  register must be 0.
   type ENUM_5 is
     (
      --  Level detect.
      Level_Detect,
      --  Edge detect of the BOD interrupt. Detect falling edge if bit 6 in the
      --  HILO register is 0. Detect rising edge if bit 6 in the HILO register
      --  is 1.
      Edge_Detect_Of_The_B)
     with Size => 1;
   for ENUM_5 use
     (Level_Detect => 0,
      Edge_Detect_Of_The_B => 1);

   --  Edge/level detect mode for WWDTD event. The corresponding bit in the
   --  EDGE register must be 0.
   type ENUM_6 is
     (
      --  Level detect.
      Level_Detect,
      --  Edge detect of the WWDT interrupt. Detect falling edge if bit 7 in
      --  the HILO register is 0. Detect rising edge if bit 7 in the HILO
      --  register is 1.
      Edge_Detect_Of_The_W)
     with Size => 1;
   for ENUM_6 use
     (Level_Detect => 0,
      Edge_Detect_Of_The_W => 1);

   --  Edge/level detect mode for ethernet event. The corresponding bit in the
   --  EDGE register must be 0.
   type ENUM_7 is
     (
      --  Level detect.
      Level_Detect,
      --  Edge detect of the Ethernet interrupt. Detect falling edge if bit 8
      --  in the HILO register is 0. Detect rising edge if bit 8 in the HILO
      --  register is 1.
      Edge_Detect_Of_The_E)
     with Size => 1;
   for ENUM_7 use
     (Level_Detect => 0,
      Edge_Detect_Of_The_E => 1);

   --  Edge/level detect mode for USB0 event. The corresponding bit in the EDGE
   --  register must be 0.
   type ENUM_8 is
     (
      --  Level detect.
      Level_Detect,
      --  Edge detect of the USB0 event. Detect falling edge if bit 9 in the
      --  HILO register is 0. Detect rising edge if bit 9 in the HILO register
      --  is 1.
      Edge_Detect_Of_The_U)
     with Size => 1;
   for ENUM_8 use
     (Level_Detect => 0,
      Edge_Detect_Of_The_U => 1);

   --  Edge/level detect mode for SD/MMC event.The corresponding bit in the
   --  EDGE register must be 0.
   type ENUM_9 is
     (
      --  Level detect.
      Level_Detect,
      --  Edge detect of the SD/MMC interrupt. Detect falling edge if bit 10 in
      --  the HILO register is 0. Detect rising edge if bit 10 in the HILO
      --  register is 1.
      Edge_Detect_Of_The_S)
     with Size => 1;
   for ENUM_9 use
     (Level_Detect => 0,
      Edge_Detect_Of_The_S => 1);

   --  Edge/level detect mode for C_CAN event. The corresponding bit in the
   --  EDGE register must be 0.
   type ENUM_10 is
     (
      --  Level detect.
      Level_Detect,
      --  Edge detect of the combined C_CAN interrupt. Detect falling edge if
      --  bit 12 in the HILO register is 0. Detect rising edge if bit 12 in the
      --  HILO register is 1.
      Edge_Detect_Of_The_C)
     with Size => 1;
   for ENUM_10 use
     (Level_Detect => 0,
      Edge_Detect_Of_The_C => 1);

   --  Edge/level detect mode for combined timer output 2 event. The
   --  corresponding bit in the EDGE register must be 0.
   type ENUM_11 is
     (
      --  Level detect.
      Level_Detect,
      --  Edge detect of GIMA output 25. Detect falling edge if bit 13 in the
      --  HILO register is 0. Detect rising edge if bit 13 in the HILO register
      --  is 1.
      Edge_Detect_Of_Gima)
     with Size => 1;
   for ENUM_11 use
     (Level_Detect => 0,
      Edge_Detect_Of_Gima => 1);

   --  Edge/level detect mode for QEI interrupt signal. The corresponding bit
   --  in the EDGE register must be 0.
   type ENUM_12 is
     (
      --  Level detect.
      Level_Detect,
      --  Edge detect of QEI interrupt. Detect falling edge if bit 15 in the
      --  HILO register is 0. Detect rising edge if bit 15 in the HILO register
      --  is 1.
      Edge_Detect_Of_Qei_I)
     with Size => 1;
   for ENUM_12 use
     (Level_Detect => 0,
      Edge_Detect_Of_Qei_I => 1);

   subtype EDGE_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype EDGE_RESERVED_Field_1 is Interfaces.Bit_Types.UInt10;

   --  Edge configuration
   type EDGE_Register is record
      --  Edge detect mode for WAKEUP0 event. The corresponding bit in the EDGE
      --  register must be 0.
      WAKEUP0_E  : ENUM_2 := Interfaces.LPC43.EVENTROUTER.Level_Detect;
      --  Edge/level detect mode for WAKEUP1 event. The corresponding bit in
      --  the EDGE register must be 0.
      WAKEUP1_E  : ENUM_2 := Interfaces.LPC43.EVENTROUTER.Level_Detect;
      --  Edge/level detect mode for WAKEUP2 event. The corresponding bit in
      --  the EDGE register must be 0.
      WAKEUP2_E  : ENUM_2 := Interfaces.LPC43.EVENTROUTER.Level_Detect;
      --  Edge/level detect mode for WAKEUP3 event. The corresponding bit in
      --  the EDGE register must be 0.
      WAKEUP3_E  : ENUM_2 := Interfaces.LPC43.EVENTROUTER.Level_Detect;
      --  Edge/level detect mode for alarm timer event. The corresponding bit
      --  in the EDGE register must be 0.
      ATIMER_E   : ENUM_3 := Interfaces.LPC43.EVENTROUTER.Level_Detect;
      --  Edge/level detect mode for RTC event. The corresponding bit in the
      --  EDGE register must be 0.
      RTC_E      : ENUM_4 := Interfaces.LPC43.EVENTROUTER.Level_Detect;
      --  Edge/level detect mode for BOD event. The corresponding bit in the
      --  EDGE register must be 0.
      BOD_E      : ENUM_5 := Interfaces.LPC43.EVENTROUTER.Level_Detect;
      --  Edge/level detect mode for WWDTD event. The corresponding bit in the
      --  EDGE register must be 0.
      WWDT_E     : ENUM_6 := Interfaces.LPC43.EVENTROUTER.Level_Detect;
      --  Edge/level detect mode for ethernet event. The corresponding bit in
      --  the EDGE register must be 0.
      ETH_E      : ENUM_7 := Interfaces.LPC43.EVENTROUTER.Level_Detect;
      --  Edge/level detect mode for USB0 event. The corresponding bit in the
      --  EDGE register must be 0.
      USB0_E     : ENUM_8 := Interfaces.LPC43.EVENTROUTER.Level_Detect;
      --  Edge/level detect mode for USB1 event. The corresponding bit in the
      --  EDGE register must be 0.
      USB1_E     : ENUM_8 := Interfaces.LPC43.EVENTROUTER.Level_Detect;
      --  Edge/level detect mode for SD/MMC event.The corresponding bit in the
      --  EDGE register must be 0.
      SDMMC_E    : ENUM_9 := Interfaces.LPC43.EVENTROUTER.Level_Detect;
      --  Edge/level detect mode for C_CAN event. The corresponding bit in the
      --  EDGE register must be 0.
      CAN_E      : ENUM_10 := Interfaces.LPC43.EVENTROUTER.Level_Detect;
      --  Edge/level detect mode for combined timer output 2 event. The
      --  corresponding bit in the EDGE register must be 0.
      TIM2_E     : ENUM_11 := Interfaces.LPC43.EVENTROUTER.Level_Detect;
      --  Edge/level detect mode for combined timer output 6 event. The
      --  corresponding bit in the EDGE register must be 0.
      TIM6_E     : ENUM_11 := Interfaces.LPC43.EVENTROUTER.Level_Detect;
      --  Edge/level detect mode for QEI interrupt signal. The corresponding
      --  bit in the EDGE register must be 0.
      QEI_E      : ENUM_12 := Interfaces.LPC43.EVENTROUTER.Level_Detect;
      --  Edge/level detect mode for combined timer output 14 event. The
      --  corresponding bit in the EDGE register must be 0.
      TIM14_E    : ENUM_11 := Interfaces.LPC43.EVENTROUTER.Level_Detect;
      --  Reserved.
      RESERVED   : EDGE_RESERVED_Field := 16#0#;
      --  Edge/level detect mode for Reset. The corresponding bit in the EDGE
      --  register must be 0.
      RESET_E    : ENUM_4 := Interfaces.LPC43.EVENTROUTER.Level_Detect;
      --  Edge detect of the BOD reset signal. The corresponding bit in the
      --  EDGE register must be 0.
      BODRESET_E : ENUM_4 := Interfaces.LPC43.EVENTROUTER.Level_Detect;
      --  Edge detect of the deep power-down reset signal. The corresponding
      --  bit in the EDGE register must be 0.
      DPDRESET_E : ENUM_4 := Interfaces.LPC43.EVENTROUTER.Level_Detect;
      --  Reserved.
      RESERVED_1 : EDGE_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EDGE_Register use record
      WAKEUP0_E  at 0 range 0 .. 0;
      WAKEUP1_E  at 0 range 1 .. 1;
      WAKEUP2_E  at 0 range 2 .. 2;
      WAKEUP3_E  at 0 range 3 .. 3;
      ATIMER_E   at 0 range 4 .. 4;
      RTC_E      at 0 range 5 .. 5;
      BOD_E      at 0 range 6 .. 6;
      WWDT_E     at 0 range 7 .. 7;
      ETH_E      at 0 range 8 .. 8;
      USB0_E     at 0 range 9 .. 9;
      USB1_E     at 0 range 10 .. 10;
      SDMMC_E    at 0 range 11 .. 11;
      CAN_E      at 0 range 12 .. 12;
      TIM2_E     at 0 range 13 .. 13;
      TIM6_E     at 0 range 14 .. 14;
      QEI_E      at 0 range 15 .. 15;
      TIM14_E    at 0 range 16 .. 16;
      RESERVED   at 0 range 17 .. 18;
      RESET_E    at 0 range 19 .. 19;
      BODRESET_E at 0 range 20 .. 20;
      DPDRESET_E at 0 range 21 .. 21;
      RESERVED_1 at 0 range 22 .. 31;
   end record;

   ---------------------
   -- CLR_EN_Register --
   ---------------------

   subtype CLR_EN_WAKEUP0_CLREN_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_EN_WAKEUP1_CLREN_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_EN_WAKEUP2_CLREN_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_EN_WAKEUP3_CLREN_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_EN_ATIMER_CLREN_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_EN_RTC_CLREN_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_EN_BOD_CLREN_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_EN_WWDT_CLREN_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_EN_ETH_CLREN_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_EN_USB0_CLREN_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_EN_USB1_CLREN_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_EN_SDMMC_CLREN_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_EN_CAN_CLREN_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_EN_TIM2_CLREN_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_EN_TIM6_CLREN_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_EN_QEI_CLREN_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_EN_TIM14_CLREN_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_EN_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype CLR_EN_RESET_CLREN_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_EN_BODRESET_CLREN_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_EN_DPDRESET_CLREN_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_EN_RESERVED_Field_1 is Interfaces.Bit_Types.UInt10;

   --  Clear event enable register
   type CLR_EN_Register is record
      --  Write-only. Writing a 1 to this bit clears the event enable bit 0 in
      --  the ENABLE register.
      WAKEUP0_CLREN  : CLR_EN_WAKEUP0_CLREN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the event enable bit 1 in
      --  the ENABLE register.
      WAKEUP1_CLREN  : CLR_EN_WAKEUP1_CLREN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the event enable bit 2 in
      --  the ENABLE register.
      WAKEUP2_CLREN  : CLR_EN_WAKEUP2_CLREN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the event enable bit 3 in
      --  the ENABLE register.
      WAKEUP3_CLREN  : CLR_EN_WAKEUP3_CLREN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the event enable bit 4 in
      --  the ENABLE register.
      ATIMER_CLREN   : CLR_EN_ATIMER_CLREN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the event enable bit 5 in
      --  the ENABLE register.
      RTC_CLREN      : CLR_EN_RTC_CLREN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the event enable bit 6 in
      --  the ENABLE register.
      BOD_CLREN      : CLR_EN_BOD_CLREN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the event enable bit 7 in
      --  the ENABLE register.
      WWDT_CLREN     : CLR_EN_WWDT_CLREN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the event enable bit 8 in
      --  the ENABLE register.
      ETH_CLREN      : CLR_EN_ETH_CLREN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the event enable bit 9 in
      --  the ENABLE register.
      USB0_CLREN     : CLR_EN_USB0_CLREN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the event enable bit 10 in
      --  the ENABLE register.
      USB1_CLREN     : CLR_EN_USB1_CLREN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the event enable bit 11 in
      --  the ENABLE register.
      SDMMC_CLREN    : CLR_EN_SDMMC_CLREN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the event enable bit 12 in
      --  the ENABLE register.
      CAN_CLREN      : CLR_EN_CAN_CLREN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the event enable bit 13 in
      --  the ENABLE register.
      TIM2_CLREN     : CLR_EN_TIM2_CLREN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the event enable bit 14 in
      --  the ENABLE register.
      TIM6_CLREN     : CLR_EN_TIM6_CLREN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the event enable bit 15 in
      --  the ENABLE register.
      QEI_CLREN      : CLR_EN_QEI_CLREN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the event enable bit 16 in
      --  the ENABLE register.
      TIM14_CLREN    : CLR_EN_TIM14_CLREN_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED       : CLR_EN_RESERVED_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the event enable bit 19 in
      --  the ENABLE register.
      RESET_CLREN    : CLR_EN_RESET_CLREN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the event enable bit 20 in
      --  the ENABLE register.
      BODRESET_CLREN : CLR_EN_BODRESET_CLREN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the event enable bit 21 in
      --  the ENABLE register.
      DPDRESET_CLREN : CLR_EN_DPDRESET_CLREN_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED_1     : CLR_EN_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLR_EN_Register use record
      WAKEUP0_CLREN  at 0 range 0 .. 0;
      WAKEUP1_CLREN  at 0 range 1 .. 1;
      WAKEUP2_CLREN  at 0 range 2 .. 2;
      WAKEUP3_CLREN  at 0 range 3 .. 3;
      ATIMER_CLREN   at 0 range 4 .. 4;
      RTC_CLREN      at 0 range 5 .. 5;
      BOD_CLREN      at 0 range 6 .. 6;
      WWDT_CLREN     at 0 range 7 .. 7;
      ETH_CLREN      at 0 range 8 .. 8;
      USB0_CLREN     at 0 range 9 .. 9;
      USB1_CLREN     at 0 range 10 .. 10;
      SDMMC_CLREN    at 0 range 11 .. 11;
      CAN_CLREN      at 0 range 12 .. 12;
      TIM2_CLREN     at 0 range 13 .. 13;
      TIM6_CLREN     at 0 range 14 .. 14;
      QEI_CLREN      at 0 range 15 .. 15;
      TIM14_CLREN    at 0 range 16 .. 16;
      RESERVED       at 0 range 17 .. 18;
      RESET_CLREN    at 0 range 19 .. 19;
      BODRESET_CLREN at 0 range 20 .. 20;
      DPDRESET_CLREN at 0 range 21 .. 21;
      RESERVED_1     at 0 range 22 .. 31;
   end record;

   ---------------------
   -- SET_EN_Register --
   ---------------------

   subtype SET_EN_WAKEUP0_SETEN_Field is Interfaces.Bit_Types.Bit;
   subtype SET_EN_WAKEUP1_SETEN_Field is Interfaces.Bit_Types.Bit;
   subtype SET_EN_WAKEUP2_SETEN_Field is Interfaces.Bit_Types.Bit;
   subtype SET_EN_WAKEUP3_SETEN_Field is Interfaces.Bit_Types.Bit;
   subtype SET_EN_ATIMER_SETEN_Field is Interfaces.Bit_Types.Bit;
   subtype SET_EN_RTC_SETEN_Field is Interfaces.Bit_Types.Bit;
   subtype SET_EN_BOD_SETEN_Field is Interfaces.Bit_Types.Bit;
   subtype SET_EN_WWDT_SETEN_Field is Interfaces.Bit_Types.Bit;
   subtype SET_EN_ETH_SETEN_Field is Interfaces.Bit_Types.Bit;
   subtype SET_EN_USB0_SETEN_Field is Interfaces.Bit_Types.Bit;
   subtype SET_EN_USB1_SETEN_Field is Interfaces.Bit_Types.Bit;
   subtype SET_EN_SDMMC_SETEN_Field is Interfaces.Bit_Types.Bit;
   subtype SET_EN_CAN_SETEN_Field is Interfaces.Bit_Types.Bit;
   subtype SET_EN_TIM2_SETEN_Field is Interfaces.Bit_Types.Bit;
   subtype SET_EN_TIM6_SETEN_Field is Interfaces.Bit_Types.Bit;
   subtype SET_EN_QEI_SETEN_Field is Interfaces.Bit_Types.Bit;
   subtype SET_EN_TIM14_SETEN_Field is Interfaces.Bit_Types.Bit;
   subtype SET_EN_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype SET_EN_RESET_SETEN_Field is Interfaces.Bit_Types.Bit;
   subtype SET_EN_BODRESET_SETEN_Field is Interfaces.Bit_Types.Bit;
   subtype SET_EN_DPDRESET_SETEN_Field is Interfaces.Bit_Types.Bit;
   subtype SET_EN_RESERVED_Field_1 is Interfaces.Bit_Types.UInt10;

   --  Set event enable register
   type SET_EN_Register is record
      --  Write-only. Writing a 1 to this bit sets the event enable bit 0 in
      --  the ENABLE register.
      WAKEUP0_SETEN  : SET_EN_WAKEUP0_SETEN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the event enable bit 1 in
      --  the ENABLE register.
      WAKEUP1_SETEN  : SET_EN_WAKEUP1_SETEN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the event enable bit 2 in
      --  the ENABLE register.
      WAKEUP2_SETEN  : SET_EN_WAKEUP2_SETEN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the event enable bit 3 in
      --  the ENABLE register.
      WAKEUP3_SETEN  : SET_EN_WAKEUP3_SETEN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the event enable bit 4 in
      --  the ENABLE register.
      ATIMER_SETEN   : SET_EN_ATIMER_SETEN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the event enable bit 5 in
      --  the ENABLE register.
      RTC_SETEN      : SET_EN_RTC_SETEN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the event enable bit 6 in
      --  the ENABLE register.
      BOD_SETEN      : SET_EN_BOD_SETEN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the event enable bit 7 in
      --  the ENABLE register.
      WWDT_SETEN     : SET_EN_WWDT_SETEN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the event enable bit 8 in
      --  the ENABLE register.
      ETH_SETEN      : SET_EN_ETH_SETEN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the event enable bit 9 in
      --  the ENABLE register.
      USB0_SETEN     : SET_EN_USB0_SETEN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the event enable bit 10 in
      --  the ENABLE register.
      USB1_SETEN     : SET_EN_USB1_SETEN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the event enable bit 11 in
      --  the ENABLE register.
      SDMMC_SETEN    : SET_EN_SDMMC_SETEN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the event enable bit 12 in
      --  the ENABLE register.
      CAN_SETEN      : SET_EN_CAN_SETEN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the event enable bit 13 in
      --  the ENABLE register.
      TIM2_SETEN     : SET_EN_TIM2_SETEN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the event enable bit 14 in
      --  the ENABLE register.
      TIM6_SETEN     : SET_EN_TIM6_SETEN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the event enable bit 15 in
      --  the ENABLE register.
      QEI_SETEN      : SET_EN_QEI_SETEN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the event enable bit 16 in
      --  the ENABLE register.
      TIM14_SETEN    : SET_EN_TIM14_SETEN_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED       : SET_EN_RESERVED_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the event enable bit 19 in
      --  the ENABLE register.
      RESET_SETEN    : SET_EN_RESET_SETEN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the event enable bit 20 in
      --  the ENABLE register.
      BODRESET_SETEN : SET_EN_BODRESET_SETEN_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the event enable bit 21 in
      --  the ENABLE register.
      DPDRESET_SETEN : SET_EN_DPDRESET_SETEN_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED_1     : SET_EN_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET_EN_Register use record
      WAKEUP0_SETEN  at 0 range 0 .. 0;
      WAKEUP1_SETEN  at 0 range 1 .. 1;
      WAKEUP2_SETEN  at 0 range 2 .. 2;
      WAKEUP3_SETEN  at 0 range 3 .. 3;
      ATIMER_SETEN   at 0 range 4 .. 4;
      RTC_SETEN      at 0 range 5 .. 5;
      BOD_SETEN      at 0 range 6 .. 6;
      WWDT_SETEN     at 0 range 7 .. 7;
      ETH_SETEN      at 0 range 8 .. 8;
      USB0_SETEN     at 0 range 9 .. 9;
      USB1_SETEN     at 0 range 10 .. 10;
      SDMMC_SETEN    at 0 range 11 .. 11;
      CAN_SETEN      at 0 range 12 .. 12;
      TIM2_SETEN     at 0 range 13 .. 13;
      TIM6_SETEN     at 0 range 14 .. 14;
      QEI_SETEN      at 0 range 15 .. 15;
      TIM14_SETEN    at 0 range 16 .. 16;
      RESERVED       at 0 range 17 .. 18;
      RESET_SETEN    at 0 range 19 .. 19;
      BODRESET_SETEN at 0 range 20 .. 20;
      DPDRESET_SETEN at 0 range 21 .. 21;
      RESERVED_1     at 0 range 22 .. 31;
   end record;

   ---------------------
   -- STATUS_Register --
   ---------------------

   subtype STATUS_WAKEUP0_ST_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_WAKEUP1_ST_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_WAKEUP2_ST_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_WAKEUP3_ST_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_ATIMER_ST_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_RTC_ST_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_BOD_ST_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_WWDT_ST_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_ETH_ST_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_USB0_ST_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_USB1_ST_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_SDMMC_ST_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_CAN_ST_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_TIM2_ST_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_TIM6_ST_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_QEI_ST_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_TIM14_ST_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype STATUS_RESET_ST_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_BODRESET_ST_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_DPDRESET_ST_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_RESERVED_Field_1 is Interfaces.Bit_Types.UInt10;

   --  Event Status register
   type STATUS_Register is record
      --  Read-only. A 1 in this bit shows that the WAKEUP0 event has been
      --  raised.
      WAKEUP0_ST  : STATUS_WAKEUP0_ST_Field;
      --  Read-only. A 1 in this bit shows that the WAKEUP1 event has been
      --  raised.
      WAKEUP1_ST  : STATUS_WAKEUP1_ST_Field;
      --  Read-only. A 1 in this bit shows that the WAKEUP2 event has been
      --  raised.
      WAKEUP2_ST  : STATUS_WAKEUP2_ST_Field;
      --  Read-only. A 1 in this bit shows that the WAKEUP3 event has been
      --  raised.
      WAKEUP3_ST  : STATUS_WAKEUP3_ST_Field;
      --  Read-only. A 1 in this bit shows that the ATIMER event has been
      --  raised.
      ATIMER_ST   : STATUS_ATIMER_ST_Field;
      --  Read-only. A 1 in this bit shows that the RTC event has been raised.
      RTC_ST      : STATUS_RTC_ST_Field;
      --  Read-only. A 1 in this bit shows that the BOD event has been raised.
      BOD_ST      : STATUS_BOD_ST_Field;
      --  Read-only. A 1 in this bit shows that the WWDT event has been raised.
      WWDT_ST     : STATUS_WWDT_ST_Field;
      --  Read-only. A 1 in this bit shows that the ETHERNET event has been
      --  raised.
      ETH_ST      : STATUS_ETH_ST_Field;
      --  Read-only. A 1 in this bit shows that the USB0 event has been raised.
      USB0_ST     : STATUS_USB0_ST_Field;
      --  Read-only. A 1 in this bit shows that the USB1 event has been raised.
      USB1_ST     : STATUS_USB1_ST_Field;
      --  Read-only. A 1 in this bit indicates that the SDMMC event has been
      --  raised.
      SDMMC_ST    : STATUS_SDMMC_ST_Field;
      --  Read-only. A 1 in this bit shows that the C_CAN event has been
      --  raised.
      CAN_ST      : STATUS_CAN_ST_Field;
      --  Read-only. A 1 in this bit shows that the combined timer 2 output
      --  event has been raised.
      TIM2_ST     : STATUS_TIM2_ST_Field;
      --  Read-only. A 1 in this bit shows that the combined timer 6 output
      --  event has been raised.
      TIM6_ST     : STATUS_TIM6_ST_Field;
      --  Read-only. A 1 in this bit shows that the QEI event has been raised.
      QEI_ST      : STATUS_QEI_ST_Field;
      --  Read-only. A 1 in this bit shows that the combined timer 14 output
      --  event has been raised.
      TIM14_ST    : STATUS_TIM14_ST_Field;
      --  Read-only. Reserved.
      RESERVED    : STATUS_RESERVED_Field;
      --  Read-only. A 1 in this bit shows that the reset event has been
      --  raised.
      RESET_ST    : STATUS_RESET_ST_Field;
      --  Read-only. A 1 in this bit indicates that the reset event has been
      --  raised.
      BODRESET_ST : STATUS_BODRESET_ST_Field;
      --  Read-only. A 1 in this bit indicates that the reset event has been
      --  raised.
      DPDRESET_ST : STATUS_DPDRESET_ST_Field;
      --  Read-only. Reserved.
      RESERVED_1  : STATUS_RESERVED_Field_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      WAKEUP0_ST  at 0 range 0 .. 0;
      WAKEUP1_ST  at 0 range 1 .. 1;
      WAKEUP2_ST  at 0 range 2 .. 2;
      WAKEUP3_ST  at 0 range 3 .. 3;
      ATIMER_ST   at 0 range 4 .. 4;
      RTC_ST      at 0 range 5 .. 5;
      BOD_ST      at 0 range 6 .. 6;
      WWDT_ST     at 0 range 7 .. 7;
      ETH_ST      at 0 range 8 .. 8;
      USB0_ST     at 0 range 9 .. 9;
      USB1_ST     at 0 range 10 .. 10;
      SDMMC_ST    at 0 range 11 .. 11;
      CAN_ST      at 0 range 12 .. 12;
      TIM2_ST     at 0 range 13 .. 13;
      TIM6_ST     at 0 range 14 .. 14;
      QEI_ST      at 0 range 15 .. 15;
      TIM14_ST    at 0 range 16 .. 16;
      RESERVED    at 0 range 17 .. 18;
      RESET_ST    at 0 range 19 .. 19;
      BODRESET_ST at 0 range 20 .. 20;
      DPDRESET_ST at 0 range 21 .. 21;
      RESERVED_1  at 0 range 22 .. 31;
   end record;

   ---------------------
   -- ENABLE_Register --
   ---------------------

   subtype ENABLE_WAKEUP0_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ENABLE_WAKEUP1_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ENABLE_WAKEUP2_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ENABLE_WAKEUP3_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ENABLE_ATIMER_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ENABLE_RTC_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ENABLE_BOD_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ENABLE_WWDT_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ENABLE_ETH_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ENABLE_USB0_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ENABLE_USB1_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ENABLE_SDMMC_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ENABLE_CAN_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ENABLE_TIM2_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ENABLE_TIM6_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ENABLE_QEI_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ENABLE_TIM14_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ENABLE_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype ENABLE_RESET_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ENABLE_BODRESET_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ENABLE_DPDRESET_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ENABLE_RESERVED_Field_1 is Interfaces.Bit_Types.UInt10;

   --  Event Enable register
   type ENABLE_Register is record
      --  Read-only. A 1 in this bit shows that the WAKEUP0 event has been
      --  enabled. This event wakes up the chip and contributes to the event
      --  router interrupt when bit 0 = 1 in the STATUS register.
      WAKEUP0_EN  : ENABLE_WAKEUP0_EN_Field;
      --  Read-only. A 1 in this bit shows that the WAKEUP1 event has been
      --  enabled. This event wakes up the chip and contributes to the event
      --  router interrupt when bit 0 = 1 in the STATUS register.
      WAKEUP1_EN  : ENABLE_WAKEUP1_EN_Field;
      --  Read-only. A 1 in this bit shows that the WAKEUP2 event has been
      --  enabled. This event wakes up the chip and contributes to the event
      --  router interrupt when bit 0 = 1 in the STATUS register.
      WAKEUP2_EN  : ENABLE_WAKEUP2_EN_Field;
      --  Read-only. A 1 in this bit shows that the WAKEUP3 event has been
      --  enabled. This event wakes up the chip and contributes to the event
      --  router interrupt when bit 0 = 1 in the STATUS register.
      WAKEUP3_EN  : ENABLE_WAKEUP3_EN_Field;
      --  Read-only. A 1 in this bit shows that the ATIMER event has been
      --  enabled. This event wakes up the chip and contributes to the event
      --  router interrupt when bit 0 = 1 in the STATUS register.
      ATIMER_EN   : ENABLE_ATIMER_EN_Field;
      --  Read-only. A 1 in this bit shows that the RTC event has been enabled.
      --  This event wakes up the chip and contributes to the event router
      --  interrupt when bit 0 = 1 in the STATUS register.
      RTC_EN      : ENABLE_RTC_EN_Field;
      --  Read-only. A 1 in this bit shows that the BOD event has been enabled.
      --  This event wakes up the chip and contributes to the event router
      --  interrupt when bit 0 = 1 in the STATUS register.
      BOD_EN      : ENABLE_BOD_EN_Field;
      --  Read-only. A 1 in this bit shows that the WWDT event has been
      --  enabled. This event wakes up the chip and contributes to the event
      --  router interrupt when bit 0 = 1 in the STATUS register.
      WWDT_EN     : ENABLE_WWDT_EN_Field;
      --  Read-only. A 1 in this bit shows that the ETHERNET event has been
      --  enabled. This event wakes up the chip and contributes to the event
      --  router interrupt when bit 0 = 1 in the STATUS register.
      ETH_EN      : ENABLE_ETH_EN_Field;
      --  Read-only. A 1 in this bit shows that the USB0 event has been
      --  enabled. This event wakes up the chip and contributes to the event
      --  router interrupt when bit 0 = 1 in the STATUS register.
      USB0_EN     : ENABLE_USB0_EN_Field;
      --  Read-only. A 1 in this bit shows that the USB1 event has been
      --  enabled. This event wakes up the chip and contributes to the event
      --  router interrupt when bit 0 = 1 in the STATUS register.
      USB1_EN     : ENABLE_USB1_EN_Field;
      --  Read-only. A 1 in this bit indicates that the SDMMC event has been
      --  enabled. This event wakes up the chip and contributes to the event
      --  router interrupt when bit 0 = 1 in the STATUS register.
      SDMMC_EN    : ENABLE_SDMMC_EN_Field;
      --  Read-only. A 1 in this bit shows that the CAN event has been enabled.
      --  This event wakes up the chip and contributes to the event router
      --  interrupt when bit 0 = 1 in the STATUS register.
      CAN_EN      : ENABLE_CAN_EN_Field;
      --  Read-only. A 1 in this bit shows that the TIM2 event has been
      --  enabled. This event wakes up the chip and contributes to the event
      --  router interrupt when bit 0 = 1 in the STATUS register.
      TIM2_EN     : ENABLE_TIM2_EN_Field;
      --  Read-only. A 1 in this bit shows that the TIM6 event has been
      --  enabled. This event wakes up the chip and contributes to the event
      --  router interrupt when bit 0 = 1 in the STATUS register.
      TIM6_EN     : ENABLE_TIM6_EN_Field;
      --  Read-only. A 1 in this bit shows that the QEI event has been enabled.
      --  This event wakes up the chip and contributes to the event router
      --  interrupt when bit 0 = 1 in the STATUS register.
      QEI_EN      : ENABLE_QEI_EN_Field;
      --  Read-only. A 1 in this bit shows that the TIM14 event has been
      --  enabled. This event wakes up the chip and contributes to the event
      --  router interrupt when bit 0 = 1 in the STATUS register.
      TIM14_EN    : ENABLE_TIM14_EN_Field;
      --  Read-only. Reserved
      RESERVED    : ENABLE_RESERVED_Field;
      --  Read-only. A 1 in this bit shows that the RESET event has been
      --  enabled. This event wakes up the chip and contributes to the event
      --  router interrupt when bit 0 = 1 in the STATUS register.
      RESET_EN    : ENABLE_RESET_EN_Field;
      --  Read-only. A 1 in this bit indicates that the BOD RESET event has
      --  been enabled. This event wakes up the chip and contributes to the
      --  event router interrupt when bit 0 = 1 in the STATUS register.
      BODRESET_EN : ENABLE_BODRESET_EN_Field;
      --  Read-only. A 1 in this bit indicates that the deep power-down RESET
      --  event has been enabled. This event wakes up the chip and contributes
      --  to the event router interrupt when bit 0 = 1 in the STATUS register.
      DPDRESET_EN : ENABLE_DPDRESET_EN_Field;
      --  Read-only. Reserved.
      RESERVED_1  : ENABLE_RESERVED_Field_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE_Register use record
      WAKEUP0_EN  at 0 range 0 .. 0;
      WAKEUP1_EN  at 0 range 1 .. 1;
      WAKEUP2_EN  at 0 range 2 .. 2;
      WAKEUP3_EN  at 0 range 3 .. 3;
      ATIMER_EN   at 0 range 4 .. 4;
      RTC_EN      at 0 range 5 .. 5;
      BOD_EN      at 0 range 6 .. 6;
      WWDT_EN     at 0 range 7 .. 7;
      ETH_EN      at 0 range 8 .. 8;
      USB0_EN     at 0 range 9 .. 9;
      USB1_EN     at 0 range 10 .. 10;
      SDMMC_EN    at 0 range 11 .. 11;
      CAN_EN      at 0 range 12 .. 12;
      TIM2_EN     at 0 range 13 .. 13;
      TIM6_EN     at 0 range 14 .. 14;
      QEI_EN      at 0 range 15 .. 15;
      TIM14_EN    at 0 range 16 .. 16;
      RESERVED    at 0 range 17 .. 18;
      RESET_EN    at 0 range 19 .. 19;
      BODRESET_EN at 0 range 20 .. 20;
      DPDRESET_EN at 0 range 21 .. 21;
      RESERVED_1  at 0 range 22 .. 31;
   end record;

   -----------------------
   -- CLR_STAT_Register --
   -----------------------

   subtype CLR_STAT_WAKEUP0_CLRST_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_STAT_WAKEUP1_CLRST_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_STAT_WAKEUP2_CLRST_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_STAT_WAKEUP3_CLRST_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_STAT_ATIMER_CLRST_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_STAT_RTC_CLRST_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_STAT_BOD_CLRST_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_STAT_WWDT_CLRST_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_STAT_ETH_CLRST_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_STAT_USB0_CLRST_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_STAT_USB1_CLRST_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_STAT_SDMMC_CLRST_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_STAT_CAN_CLRST_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_STAT_TIM2_CLRST_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_STAT_TIM6_CLRST_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_STAT_QEI_CLRST_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_STAT_TIM14_CLRST_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype CLR_STAT_RESET_CLRST_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_STAT_BODRESET_CLRST_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_STAT_DPDRESET_CLRST_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_STAT_RESERVED_Field_1 is Interfaces.Bit_Types.UInt10;

   --  Clear event status register
   type CLR_STAT_Register is record
      --  Write-only. Writing a 1 to this bit clears the STATUS event bit 0 in
      --  the STATUS register.
      WAKEUP0_CLRST  : CLR_STAT_WAKEUP0_CLRST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the STATUS event bit 1 in
      --  the STATUS register.
      WAKEUP1_CLRST  : CLR_STAT_WAKEUP1_CLRST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the STATUS event bit 2 in
      --  the STATUS register.
      WAKEUP2_CLRST  : CLR_STAT_WAKEUP2_CLRST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the STATUS event bit 3 in
      --  the STATUS register.
      WAKEUP3_CLRST  : CLR_STAT_WAKEUP3_CLRST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the STATUS event bit 4 in
      --  the STATUS register.
      ATIMER_CLRST   : CLR_STAT_ATIMER_CLRST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the STATUS event bit 5 in
      --  the STATUS register.
      RTC_CLRST      : CLR_STAT_RTC_CLRST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the STATUS event bit 6 in
      --  the STATUS register.
      BOD_CLRST      : CLR_STAT_BOD_CLRST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the STATUS event bit 7 in
      --  the STATUS register.
      WWDT_CLRST     : CLR_STAT_WWDT_CLRST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the STATUS event bit 8 in
      --  the STATUS register.
      ETH_CLRST      : CLR_STAT_ETH_CLRST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the STATUS event bit 9 in
      --  the STATUS register.
      USB0_CLRST     : CLR_STAT_USB0_CLRST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the STATUS event bit 10 in
      --  the STATUS register.
      USB1_CLRST     : CLR_STAT_USB1_CLRST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the STATUS event bit 11 in
      --  the STATUS register.
      SDMMC_CLRST    : CLR_STAT_SDMMC_CLRST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the STATUS event bit 12 in
      --  the STATUS register.
      CAN_CLRST      : CLR_STAT_CAN_CLRST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the STATUS event bit 13 in
      --  the STATUS register.
      TIM2_CLRST     : CLR_STAT_TIM2_CLRST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the STATUS event bit 14 in
      --  the STATUS register.
      TIM6_CLRST     : CLR_STAT_TIM6_CLRST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the STATUS event bit 15 in
      --  the STATUS register.
      QEI_CLRST      : CLR_STAT_QEI_CLRST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the STATUS event bit 16 in
      --  the STATUS register.
      TIM14_CLRST    : CLR_STAT_TIM14_CLRST_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED       : CLR_STAT_RESERVED_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the STATUS event bit 19 in
      --  the STATUS register.
      RESET_CLRST    : CLR_STAT_RESET_CLRST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the STATUS event bit 20 in
      --  the STATUS register.
      BODRESET_CLRST : CLR_STAT_BODRESET_CLRST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the STATUS event bit 21 in
      --  the STATUS register.
      DPDRESET_CLRST : CLR_STAT_DPDRESET_CLRST_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED_1     : CLR_STAT_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLR_STAT_Register use record
      WAKEUP0_CLRST  at 0 range 0 .. 0;
      WAKEUP1_CLRST  at 0 range 1 .. 1;
      WAKEUP2_CLRST  at 0 range 2 .. 2;
      WAKEUP3_CLRST  at 0 range 3 .. 3;
      ATIMER_CLRST   at 0 range 4 .. 4;
      RTC_CLRST      at 0 range 5 .. 5;
      BOD_CLRST      at 0 range 6 .. 6;
      WWDT_CLRST     at 0 range 7 .. 7;
      ETH_CLRST      at 0 range 8 .. 8;
      USB0_CLRST     at 0 range 9 .. 9;
      USB1_CLRST     at 0 range 10 .. 10;
      SDMMC_CLRST    at 0 range 11 .. 11;
      CAN_CLRST      at 0 range 12 .. 12;
      TIM2_CLRST     at 0 range 13 .. 13;
      TIM6_CLRST     at 0 range 14 .. 14;
      QEI_CLRST      at 0 range 15 .. 15;
      TIM14_CLRST    at 0 range 16 .. 16;
      RESERVED       at 0 range 17 .. 18;
      RESET_CLRST    at 0 range 19 .. 19;
      BODRESET_CLRST at 0 range 20 .. 20;
      DPDRESET_CLRST at 0 range 21 .. 21;
      RESERVED_1     at 0 range 22 .. 31;
   end record;

   -----------------------
   -- SET_STAT_Register --
   -----------------------

   subtype SET_STAT_WAKEUP0_SETST_Field is Interfaces.Bit_Types.Bit;
   subtype SET_STAT_WAKEUP1_SETST_Field is Interfaces.Bit_Types.Bit;
   subtype SET_STAT_WAKEUP2_SETST_Field is Interfaces.Bit_Types.Bit;
   subtype SET_STAT_WAKEUP3_SETST_Field is Interfaces.Bit_Types.Bit;
   subtype SET_STAT_ATIMER_SETST_Field is Interfaces.Bit_Types.Bit;
   subtype SET_STAT_RTC_SETST_Field is Interfaces.Bit_Types.Bit;
   subtype SET_STAT_BOD_SETST_Field is Interfaces.Bit_Types.Bit;
   subtype SET_STAT_WWDT_SETST_Field is Interfaces.Bit_Types.Bit;
   subtype SET_STAT_ETH_SETST_Field is Interfaces.Bit_Types.Bit;
   subtype SET_STAT_USB0_SETST_Field is Interfaces.Bit_Types.Bit;
   subtype SET_STAT_USB1_SETST_Field is Interfaces.Bit_Types.Bit;
   subtype SET_STAT_SDMMC_SETST_Field is Interfaces.Bit_Types.Bit;
   subtype SET_STAT_CAN_SETST_Field is Interfaces.Bit_Types.Bit;
   subtype SET_STAT_TIM2_SETST_Field is Interfaces.Bit_Types.Bit;
   subtype SET_STAT_TIM6_SETST_Field is Interfaces.Bit_Types.Bit;
   subtype SET_STAT_QEI_SETST_Field is Interfaces.Bit_Types.Bit;
   subtype SET_STAT_TIM14_SETST_Field is Interfaces.Bit_Types.Bit;
   subtype SET_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype SET_STAT_RESET_SETST_Field is Interfaces.Bit_Types.Bit;
   subtype SET_STAT_BODRESET_SETST_Field is Interfaces.Bit_Types.Bit;
   subtype SET_STAT_DPDRESET_SETST_Field is Interfaces.Bit_Types.Bit;
   subtype SET_STAT_RESERVED_Field_1 is Interfaces.Bit_Types.UInt10;

   --  Set event status register
   type SET_STAT_Register is record
      --  Write-only. Writing a 1 to this bit sets the STATUS event bit 0 in
      --  the STATUS register.
      WAKEUP0_SETST  : SET_STAT_WAKEUP0_SETST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the STATUS event bit 1 in
      --  the STATUS register.
      WAKEUP1_SETST  : SET_STAT_WAKEUP1_SETST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the STATUS event bit 2 in
      --  the STATUS register.
      WAKEUP2_SETST  : SET_STAT_WAKEUP2_SETST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the STATUS event bit 3 in
      --  the STATUS register.
      WAKEUP3_SETST  : SET_STAT_WAKEUP3_SETST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the STATUS event bit 4 in
      --  the STATUS register.
      ATIMER_SETST   : SET_STAT_ATIMER_SETST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the STATUS event bit 5 in
      --  the STATUS register.
      RTC_SETST      : SET_STAT_RTC_SETST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the STATUS event bit 6 in
      --  the STATUS register.
      BOD_SETST      : SET_STAT_BOD_SETST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the STATUS event bit 7 in
      --  the STATUS register.
      WWDT_SETST     : SET_STAT_WWDT_SETST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the STATUS event bit 8 in
      --  the STATUS register.
      ETH_SETST      : SET_STAT_ETH_SETST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the STATUS event bit 9 in
      --  the STATUS register.
      USB0_SETST     : SET_STAT_USB0_SETST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the STATUS event bit 10 in
      --  the STATUS register.
      USB1_SETST     : SET_STAT_USB1_SETST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the STATUS event bit 11 in
      --  the STATUS register.
      SDMMC_SETST    : SET_STAT_SDMMC_SETST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the STATUS event bit 12 in
      --  the STATUS register.
      CAN_SETST      : SET_STAT_CAN_SETST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the STATUS event bit 13 in
      --  the STATUS register.
      TIM2_SETST     : SET_STAT_TIM2_SETST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the STATUS event bit 14 in
      --  the STATUS register.
      TIM6_SETST     : SET_STAT_TIM6_SETST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the STATUS event bit 15 in
      --  the STATUS register.
      QEI_SETST      : SET_STAT_QEI_SETST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the STATUS event bit 16 in
      --  the STATUS register.
      TIM14_SETST    : SET_STAT_TIM14_SETST_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED       : SET_STAT_RESERVED_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the STATUS event bit 19 in
      --  the STATUS register.
      RESET_SETST    : SET_STAT_RESET_SETST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the STATUS event bit 20 in
      --  the STATUS register.
      BODRESET_SETST : SET_STAT_BODRESET_SETST_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit sets the STATUS event bit 21 in
      --  the STATUS register.
      DPDRESET_SETST : SET_STAT_DPDRESET_SETST_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED_1     : SET_STAT_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET_STAT_Register use record
      WAKEUP0_SETST  at 0 range 0 .. 0;
      WAKEUP1_SETST  at 0 range 1 .. 1;
      WAKEUP2_SETST  at 0 range 2 .. 2;
      WAKEUP3_SETST  at 0 range 3 .. 3;
      ATIMER_SETST   at 0 range 4 .. 4;
      RTC_SETST      at 0 range 5 .. 5;
      BOD_SETST      at 0 range 6 .. 6;
      WWDT_SETST     at 0 range 7 .. 7;
      ETH_SETST      at 0 range 8 .. 8;
      USB0_SETST     at 0 range 9 .. 9;
      USB1_SETST     at 0 range 10 .. 10;
      SDMMC_SETST    at 0 range 11 .. 11;
      CAN_SETST      at 0 range 12 .. 12;
      TIM2_SETST     at 0 range 13 .. 13;
      TIM6_SETST     at 0 range 14 .. 14;
      QEI_SETST      at 0 range 15 .. 15;
      TIM14_SETST    at 0 range 16 .. 16;
      RESERVED       at 0 range 17 .. 18;
      RESET_SETST    at 0 range 19 .. 19;
      BODRESET_SETST at 0 range 20 .. 20;
      DPDRESET_SETST at 0 range 21 .. 21;
      RESERVED_1     at 0 range 22 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Event router
   type EVENTROUTER_Peripheral is record
      --  Level configuration register
      HILO     : HILO_Register;
      --  Edge configuration
      EDGE     : EDGE_Register;
      --  Clear event enable register
      CLR_EN   : CLR_EN_Register;
      --  Set event enable register
      SET_EN   : SET_EN_Register;
      --  Event Status register
      STATUS   : STATUS_Register;
      --  Event Enable register
      ENABLE   : ENABLE_Register;
      --  Clear event status register
      CLR_STAT : CLR_STAT_Register;
      --  Set event status register
      SET_STAT : SET_STAT_Register;
   end record
     with Volatile;

   for EVENTROUTER_Peripheral use record
      HILO     at 0 range 0 .. 31;
      EDGE     at 4 range 0 .. 31;
      CLR_EN   at 4056 range 0 .. 31;
      SET_EN   at 4060 range 0 .. 31;
      STATUS   at 4064 range 0 .. 31;
      ENABLE   at 4068 range 0 .. 31;
      CLR_STAT at 4072 range 0 .. 31;
      SET_STAT at 4076 range 0 .. 31;
   end record;

   --  Event router
   EVENTROUTER_Periph : aliased EVENTROUTER_Peripheral
     with Import, Address => EVENTROUTER_Base;

end Interfaces.LPC43.EVENTROUTER;
