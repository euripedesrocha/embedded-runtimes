--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43xxC.CCU2 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- PM_Register --
   -----------------

   --  Initiate power-down mode
   type ENUM is
     (
      --  Normal operation.
      Normal_Operation,
      --  Clocks with wake-up mode enabled (W = 1) are disabled.
      Clocks_With_Wake_Up)
     with Size => 1;
   for ENUM use
     (Normal_Operation => 0,
      Clocks_With_Wake_Up => 1);

   subtype PM_RESERVED_Field is Interfaces.Bit_Types.UInt31;

   --  Power mode register
   type PM_Register is record
      --  Initiate power-down mode
      PD       : ENUM := Interfaces.LPC43xxC.CCU2.Normal_Operation;
      --  Reserved.
      RESERVED : PM_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_Register use record
      PD       at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 31;
   end record;

   ------------------------
   -- BASE_STAT_Register --
   ------------------------

   subtype BASE_STAT_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype BASE_STAT_BASE_UART3_CLK_Field is Interfaces.Bit_Types.Bit;
   subtype BASE_STAT_BASE_UART2_CLK_Field is Interfaces.Bit_Types.Bit;
   subtype BASE_STAT_BASE_UART1_CLK_Field is Interfaces.Bit_Types.Bit;
   subtype BASE_STAT_BASE_UART0_CLK_Field is Interfaces.Bit_Types.Bit;
   subtype BASE_STAT_BASE_SSP1_CLK_Field is Interfaces.Bit_Types.Bit;
   subtype BASE_STAT_BASE_SSP0_CLK_Field is Interfaces.Bit_Types.Bit;
   subtype BASE_STAT_RESERVED_Field_1 is Interfaces.Bit_Types.UInt24;

   --  CCU base clocks status register
   type BASE_STAT_Register is record
      --  Read-only. Reserved.
      RESERVED       : BASE_STAT_RESERVED_Field;
      --  Read-only. Base clock indicator for BASE_UART3_CLK 0 = All branch
      --  clocks switched off. 1 = At least one branch clock running.
      BASE_UART3_CLK : BASE_STAT_BASE_UART3_CLK_Field;
      --  Read-only. Base clock indicator for BASE_UART2_CLK 0 = All branch
      --  clocks switched off. 1 = At least one branch clock running.
      BASE_UART2_CLK : BASE_STAT_BASE_UART2_CLK_Field;
      --  Read-only. Base clock indicator for BASE_UART1_CLK 0 = All branch
      --  clocks switched off. 1 = At least one branch clock running.
      BASE_UART1_CLK : BASE_STAT_BASE_UART1_CLK_Field;
      --  Read-only. Base clock indicator for BASE_UART0_CLK 0 = All branch
      --  clocks switched off. 1 = At least one branch clock running.
      BASE_UART0_CLK : BASE_STAT_BASE_UART0_CLK_Field;
      --  Read-only. Base clock indicator for BASE_SSP1_CLK 0 = All branch
      --  clocks switched off. 1 = At least one branch clock running.
      BASE_SSP1_CLK  : BASE_STAT_BASE_SSP1_CLK_Field;
      --  Read-only. Base clock indicator for BASE_SSP0_CLK 0 = All branch
      --  clocks switched off. 1 = At least one branch clock running.
      BASE_SSP0_CLK  : BASE_STAT_BASE_SSP0_CLK_Field;
      --  Read-only. Reserved.
      RESERVED_1     : BASE_STAT_RESERVED_Field;
      --  Read-only. Reserved.
      RESERVED_2     : BASE_STAT_RESERVED_Field_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_STAT_Register use record
      RESERVED       at 0 range 0 .. 0;
      BASE_UART3_CLK at 0 range 1 .. 1;
      BASE_UART2_CLK at 0 range 2 .. 2;
      BASE_UART1_CLK at 0 range 3 .. 3;
      BASE_UART0_CLK at 0 range 4 .. 4;
      BASE_SSP1_CLK  at 0 range 5 .. 5;
      BASE_SSP0_CLK  at 0 range 6 .. 6;
      RESERVED_1     at 0 range 7 .. 7;
      RESERVED_2     at 0 range 8 .. 31;
   end record;

   ----------------------------
   -- CLK_AUDIO_CFG_Register --
   ----------------------------

   --  Run enable
   type ENUM_1 is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for ENUM_1 use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_AUDIO_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_AUDIO clock configuration register
   type CLK_AUDIO_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU2.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU2.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU2.Disabled;
      --  Reserved.
      RESERVED : CLK_AUDIO_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_AUDIO_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------------------
   -- CLK_AUDIO_STAT_Register --
   -----------------------------

   subtype CLK_AUDIO_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_AUDIO_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_AUDIO_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_AUDIO_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_AUDIO clock status register
   type CLK_AUDIO_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_AUDIO_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_AUDIO_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_AUDIO_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_AUDIO_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_AUDIO_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ----------------------------------
   -- CLK_APB2_USART3_CFG_Register --
   ----------------------------------

   subtype CLK_APB2_USART3_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB2_USART3 clock configuration register
   type CLK_APB2_USART3_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU2.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU2.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU2.Disabled;
      --  Reserved.
      RESERVED : CLK_APB2_USART3_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB2_USART3_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------------------------
   -- CLK_APB2_USART3_STAT_Register --
   -----------------------------------

   subtype CLK_APB2_USART3_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB2_USART3_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB2_USART3_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB2_USART3_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB2_USART3 clock status register
   type CLK_APB2_USART3_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_APB2_USART3_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_APB2_USART3_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_APB2_USART3_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_APB2_USART3_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB2_USART3_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ----------------------------------
   -- CLK_APB2_USART2_CFG_Register --
   ----------------------------------

   subtype CLK_APB2_USART2_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB2_USART2 clock configuration register
   type CLK_APB2_USART2_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU2.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU2.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU2.Disabled;
      --  Reserved.
      RESERVED : CLK_APB2_USART2_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB2_USART2_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------------------------
   -- CLK_APB2_USART2_STAT_Register --
   -----------------------------------

   subtype CLK_APB2_USART2_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB2_USART2_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB2_USART2_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB2_USART2_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB2_USART clock status register
   type CLK_APB2_USART2_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_APB2_USART2_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_APB2_USART2_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_APB2_USART2_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_APB2_USART2_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB2_USART2_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -------------------------------------
   -- CLK_APB0_UART1_BUS_CFG_Register --
   -------------------------------------

   subtype CLK_APB0_UART1_BUS_CFG_RESERVED_Field is
     Interfaces.Bit_Types.UInt29;

   --  CLK_APB2_UART1 clock configuration register
   type CLK_APB0_UART1_BUS_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU2.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU2.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU2.Disabled;
      --  Reserved.
      RESERVED : CLK_APB0_UART1_BUS_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB0_UART1_BUS_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ----------------------------------
   -- CLK_APB0_UART1_STAT_Register --
   ----------------------------------

   subtype CLK_APB0_UART1_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB0_UART1_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB0_UART1_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB0_UART1_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB0_UART1 clock status register
   type CLK_APB0_UART1_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_APB0_UART1_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_APB0_UART1_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_APB0_UART1_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_APB0_UART1_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB0_UART1_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ----------------------------------
   -- CLK_APB0_USART0_CFG_Register --
   ----------------------------------

   subtype CLK_APB0_USART0_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB2_USART0 clock configuration register
   type CLK_APB0_USART0_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU2.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU2.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU2.Disabled;
      --  Reserved.
      RESERVED : CLK_APB0_USART0_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB0_USART0_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------------------------
   -- CLK_APB0_USART0_STAT_Register --
   -----------------------------------

   subtype CLK_APB0_USART0_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB0_USART0_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB0_USART0_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB0_USART0_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB0_USART0 clock status register
   type CLK_APB0_USART0_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_APB0_USART0_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_APB0_USART0_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_APB0_USART0_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_APB0_USART0_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB0_USART0_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_APB2_SSP1_CFG_Register --
   --------------------------------

   subtype CLK_APB2_SSP1_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB2_SSP1 clock configuration register
   type CLK_APB2_SSP1_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU2.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU2.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU2.Disabled;
      --  Reserved.
      RESERVED : CLK_APB2_SSP1_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB2_SSP1_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------
   -- CLK_APB2_SSP1_STAT_Register --
   ---------------------------------

   subtype CLK_APB2_SSP1_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB2_SSP1_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB2_SSP1_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB2_SSP1_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB2_SSP1 clock status register
   type CLK_APB2_SSP1_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_APB2_SSP1_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_APB2_SSP1_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_APB2_SSP1_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_APB2_SSP1_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB2_SSP1_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_APB0_SSP0_CFG_Register --
   --------------------------------

   subtype CLK_APB0_SSP0_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB0_SSP0 clock configuration register
   type CLK_APB0_SSP0_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU2.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU2.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU2.Disabled;
      --  Reserved.
      RESERVED : CLK_APB0_SSP0_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB0_SSP0_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------
   -- CLK_APB0_SSP0_STAT_Register --
   ---------------------------------

   subtype CLK_APB0_SSP0_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB0_SSP0_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB0_SSP0_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB0_SSP0_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB0_SSP0 clock status register
   type CLK_APB0_SSP0_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_APB0_SSP0_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_APB0_SSP0_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_APB0_SSP0_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_APB0_SSP0_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB0_SSP0_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------
   -- CLK_SDIO_CFG_Register --
   ---------------------------

   subtype CLK_SDIO_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_SDIO clock configuration register
   type CLK_SDIO_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU2.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU2.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU2.Disabled;
      --  Reserved.
      RESERVED : CLK_SDIO_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_SDIO_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ----------------------------
   -- CLK_SDIO_STAT_Register --
   ----------------------------

   subtype CLK_SDIO_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_SDIO_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_SDIO_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_SDIO_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_SDIO clock status register
   type CLK_SDIO_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_SDIO_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_SDIO_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_SDIO_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_SDIO_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_SDIO_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Clock Control Unit (CCU2)
   type CCU2_Peripheral is record
      --  Power mode register
      PM                     : PM_Register;
      --  CCU base clocks status register
      BASE_STAT              : BASE_STAT_Register;
      --  CLK_AUDIO clock configuration register
      CLK_AUDIO_CFG          : CLK_AUDIO_CFG_Register;
      --  CLK_AUDIO clock status register
      CLK_AUDIO_STAT         : CLK_AUDIO_STAT_Register;
      --  CLK_APB2_USART3 clock configuration register
      CLK_APB2_USART3_CFG    : CLK_APB2_USART3_CFG_Register;
      --  CLK_APB2_USART3 clock status register
      CLK_APB2_USART3_STAT   : CLK_APB2_USART3_STAT_Register;
      --  CLK_APB2_USART2 clock configuration register
      CLK_APB2_USART2_CFG    : CLK_APB2_USART2_CFG_Register;
      --  CLK_APB2_USART clock status register
      CLK_APB2_USART2_STAT   : CLK_APB2_USART2_STAT_Register;
      --  CLK_APB2_UART1 clock configuration register
      CLK_APB0_UART1_BUS_CFG : CLK_APB0_UART1_BUS_CFG_Register;
      --  CLK_APB0_UART1 clock status register
      CLK_APB0_UART1_STAT    : CLK_APB0_UART1_STAT_Register;
      --  CLK_APB2_USART0 clock configuration register
      CLK_APB0_USART0_CFG    : CLK_APB0_USART0_CFG_Register;
      --  CLK_APB0_USART0 clock status register
      CLK_APB0_USART0_STAT   : CLK_APB0_USART0_STAT_Register;
      --  CLK_APB2_SSP1 clock configuration register
      CLK_APB2_SSP1_CFG      : CLK_APB2_SSP1_CFG_Register;
      --  CLK_APB2_SSP1 clock status register
      CLK_APB2_SSP1_STAT     : CLK_APB2_SSP1_STAT_Register;
      --  CLK_APB0_SSP0 clock configuration register
      CLK_APB0_SSP0_CFG      : CLK_APB0_SSP0_CFG_Register;
      --  CLK_APB0_SSP0 clock status register
      CLK_APB0_SSP0_STAT     : CLK_APB0_SSP0_STAT_Register;
      --  CLK_SDIO clock configuration register
      CLK_SDIO_CFG           : CLK_SDIO_CFG_Register;
      --  CLK_SDIO clock status register
      CLK_SDIO_STAT          : CLK_SDIO_STAT_Register;
   end record
     with Volatile;

   for CCU2_Peripheral use record
      PM                     at 0 range 0 .. 31;
      BASE_STAT              at 4 range 0 .. 31;
      CLK_AUDIO_CFG          at 256 range 0 .. 31;
      CLK_AUDIO_STAT         at 260 range 0 .. 31;
      CLK_APB2_USART3_CFG    at 512 range 0 .. 31;
      CLK_APB2_USART3_STAT   at 516 range 0 .. 31;
      CLK_APB2_USART2_CFG    at 768 range 0 .. 31;
      CLK_APB2_USART2_STAT   at 772 range 0 .. 31;
      CLK_APB0_UART1_BUS_CFG at 1024 range 0 .. 31;
      CLK_APB0_UART1_STAT    at 1028 range 0 .. 31;
      CLK_APB0_USART0_CFG    at 1280 range 0 .. 31;
      CLK_APB0_USART0_STAT   at 1284 range 0 .. 31;
      CLK_APB2_SSP1_CFG      at 1536 range 0 .. 31;
      CLK_APB2_SSP1_STAT     at 1540 range 0 .. 31;
      CLK_APB0_SSP0_CFG      at 1792 range 0 .. 31;
      CLK_APB0_SSP0_STAT     at 1796 range 0 .. 31;
      CLK_SDIO_CFG           at 2048 range 0 .. 31;
      CLK_SDIO_STAT          at 2052 range 0 .. 31;
   end record;

   --  Clock Control Unit (CCU2)
   CCU2_Periph : aliased CCU2_Peripheral
     with Import, Address => CCU2_Base;

end Interfaces.LPC43xxC.CCU2;
