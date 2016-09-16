--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43xxC.CCU1 is
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

   --  CCU1 power mode register
   type PM_Register is record
      --  Initiate power-down mode
      PD       : ENUM := Interfaces.LPC43xxC.CCU1.Normal_Operation;
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

   subtype BASE_STAT_BASE_APB3_CLK_IND_Field is Interfaces.Bit_Types.Bit;
   subtype BASE_STAT_BASE_APB1_CLK_IND_Field is Interfaces.Bit_Types.Bit;
   subtype BASE_STAT_BASE_SPIFI_CLK_IND_Field is Interfaces.Bit_Types.Bit;
   subtype BASE_STAT_BASE_M3_CLK_IND_Field is Interfaces.Bit_Types.Bit;
   subtype BASE_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt3;
   subtype BASE_STAT_BASE_USB0_CLK_IND_Field is Interfaces.Bit_Types.Bit;
   subtype BASE_STAT_BASE_USB1_CLK_IND_Field is Interfaces.Bit_Types.Bit;
   subtype BASE_STAT_RESERVED_Field_1 is Interfaces.Bit_Types.UInt23;

   --  CCU1 base clocks status register
   type BASE_STAT_Register is record
      --  Read-only. Base clock indicator for BASE_APB3_CLK 0 = All branch
      --  clocks switched off. 1 = At least one branch clock running.
      BASE_APB3_CLK_IND  : BASE_STAT_BASE_APB3_CLK_IND_Field;
      --  Read-only. Base clock indicator for BASE_APB1_CLK 0 = All branch
      --  clocks switched off. 1 = At least one branch clock running.
      BASE_APB1_CLK_IND  : BASE_STAT_BASE_APB1_CLK_IND_Field;
      --  Read-only. Base clock indicator for BASE_SPIFI_CLK 0 = All branch
      --  clocks switched off. 1 = At least one branch clock running.
      BASE_SPIFI_CLK_IND : BASE_STAT_BASE_SPIFI_CLK_IND_Field;
      --  Read-only. Base clock indicator for BASE_M3_CLK 0 = All branch clocks
      --  switched off. 1 = At least one branch clock running.
      BASE_M3_CLK_IND    : BASE_STAT_BASE_M3_CLK_IND_Field;
      --  Read-only. Reserved
      RESERVED           : BASE_STAT_RESERVED_Field;
      --  Read-only. Base clock indicator for BASE_USB0_CLK 0 = All branch
      --  clocks switched off. 1 = At least one branch clock running.
      BASE_USB0_CLK_IND  : BASE_STAT_BASE_USB0_CLK_IND_Field;
      --  Read-only. Base clock indicator for BASE_USB1_CLK 0 = All branch
      --  clocks switched off. 1 = at least one branch clock running.
      BASE_USB1_CLK_IND  : BASE_STAT_BASE_USB1_CLK_IND_Field;
      --  Read-only. Reserved
      RESERVED_1         : BASE_STAT_RESERVED_Field_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_STAT_Register use record
      BASE_APB3_CLK_IND  at 0 range 0 .. 0;
      BASE_APB1_CLK_IND  at 0 range 1 .. 1;
      BASE_SPIFI_CLK_IND at 0 range 2 .. 2;
      BASE_M3_CLK_IND    at 0 range 3 .. 3;
      RESERVED           at 0 range 4 .. 6;
      BASE_USB0_CLK_IND  at 0 range 7 .. 7;
      BASE_USB1_CLK_IND  at 0 range 8 .. 8;
      RESERVED_1         at 0 range 9 .. 31;
   end record;

   -------------------------------
   -- CLK_APB3_BUS_CFG_Register --
   -------------------------------

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

   subtype CLK_APB3_BUS_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB3_BUS clock configuration register
   type CLK_APB3_BUS_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB3_BUS_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_BUS_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_APB3_BUS_STAT_Register --
   --------------------------------

   subtype CLK_APB3_BUS_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB3_BUS_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB3_BUS_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB3_BUS_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB3_BUS clock status register
   type CLK_APB3_BUS_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_APB3_BUS_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_APB3_BUS_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_APB3_BUS_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_APB3_BUS_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_BUS_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_APB3_I2C1_CFG_Register --
   --------------------------------

   subtype CLK_APB3_I2C1_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB3_I2C1 clock configuration register
   type CLK_APB3_I2C1_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB3_I2C1_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_I2C1_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------
   -- CLK_APB3_I2C1_STAT_Register --
   ---------------------------------

   subtype CLK_APB3_I2C1_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB3_I2C1_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB3_I2C1_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB3_I2C1_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB3_I2C1 clock status register
   type CLK_APB3_I2C1_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_APB3_I2C1_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_APB3_I2C1_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_APB3_I2C1_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_APB3_I2C1_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_I2C1_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -------------------------------
   -- CLK_APB3_DAC_CFG_Register --
   -------------------------------

   subtype CLK_APB3_DAC_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB3_DAC clock configuration register
   type CLK_APB3_DAC_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB3_DAC_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_DAC_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_APB3_DAC_STAT_Register --
   --------------------------------

   subtype CLK_APB3_DAC_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB3_DAC_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB3_DAC_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB3_DAC_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB3_DAC clock status register
   type CLK_APB3_DAC_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_APB3_DAC_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_APB3_DAC_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_APB3_DAC_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_APB3_DAC_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_DAC_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_APB3_ADC0_CFG_Register --
   --------------------------------

   subtype CLK_APB3_ADC0_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB3_ADC0 clock configuration register
   type CLK_APB3_ADC0_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB3_ADC0_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_ADC0_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------
   -- CLK_APB3_ADC0_STAT_Register --
   ---------------------------------

   subtype CLK_APB3_ADC0_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB3_ADC0_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB3_ADC0_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB3_ADC0_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB3_ADC0 clock status register
   type CLK_APB3_ADC0_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_APB3_ADC0_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_APB3_ADC0_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_APB3_ADC0_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_APB3_ADC0_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_ADC0_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_APB3_ADC1_CFG_Register --
   --------------------------------

   subtype CLK_APB3_ADC1_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB3_ADC1 clock configuration register
   type CLK_APB3_ADC1_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB3_ADC1_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_ADC1_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------
   -- CLK_APB3_ADC1_STAT_Register --
   ---------------------------------

   subtype CLK_APB3_ADC1_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB3_ADC1_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB3_ADC1_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB3_ADC1_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB3_ADC1 clock status register
   type CLK_APB3_ADC1_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_APB3_ADC1_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_APB3_ADC1_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_APB3_ADC1_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_APB3_ADC1_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_ADC1_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_APB3_CAN0_CFG_Register --
   --------------------------------

   subtype CLK_APB3_CAN0_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB3_CAN0 clock configuration register
   type CLK_APB3_CAN0_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB3_CAN0_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_CAN0_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------
   -- CLK_APB3_CAN0_STAT_Register --
   ---------------------------------

   subtype CLK_APB3_CAN0_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB3_CAN0_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB3_CAN0_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB3_CAN0_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB3_CAN0 clock status register
   type CLK_APB3_CAN0_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_APB3_CAN0_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_APB3_CAN0_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_APB3_CAN0_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_APB3_CAN0_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_CAN0_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -------------------------------
   -- CLK_APB1_BUS_CFG_Register --
   -------------------------------

   subtype CLK_APB1_BUS_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB1_BUS clock configuration register
   type CLK_APB1_BUS_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB1_BUS_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB1_BUS_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_APB1_BUS_STAT_Register --
   --------------------------------

   subtype CLK_APB1_BUS_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB1_BUS_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB1_BUS_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB1_BUS_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB1_BUS clock status register
   type CLK_APB1_BUS_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_APB1_BUS_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_APB1_BUS_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_APB1_BUS_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_APB1_BUS_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB1_BUS_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------------
   -- CLK_APB1_MOTOCONPWM_CFG_Register --
   --------------------------------------

   subtype CLK_APB1_MOTOCONPWM_CFG_RESERVED_Field is
     Interfaces.Bit_Types.UInt29;

   --  CLK_APB1_MOTOCONPWM clock configuration register
   type CLK_APB1_MOTOCONPWM_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB1_MOTOCONPWM_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB1_MOTOCONPWM_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------------
   -- CLK_APB1_MOTOCONPWM_STAT_Register --
   ---------------------------------------

   subtype CLK_APB1_MOTOCONPWM_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB1_MOTOCONPWM_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB1_MOTOCONPWM_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB1_MOTOCONPWM_STAT_RESERVED_Field is
     Interfaces.Bit_Types.UInt29;

   --  CLK_APB1_MOTOCONPWM clock status register
   type CLK_APB1_MOTOCONPWM_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_APB1_MOTOCONPWM_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_APB1_MOTOCONPWM_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_APB1_MOTOCONPWM_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_APB1_MOTOCONPWM_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB1_MOTOCONPWM_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_APB1_I2C0_CFG_Register --
   --------------------------------

   subtype CLK_APB1_I2C0_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_ABP1_I2C0 clock configuration register
   type CLK_APB1_I2C0_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB1_I2C0_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB1_I2C0_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------
   -- CLK_APB1_I2C0_STAT_Register --
   ---------------------------------

   subtype CLK_APB1_I2C0_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB1_I2C0_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB1_I2C0_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB1_I2C0_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB1_I2C0 clock status register
   type CLK_APB1_I2C0_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_APB1_I2C0_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_APB1_I2C0_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_APB1_I2C0_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_APB1_I2C0_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB1_I2C0_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -------------------------------
   -- CLK_APB1_I2S_CFG_Register --
   -------------------------------

   subtype CLK_APB1_I2S_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB1_I2S clock configuration register
   type CLK_APB1_I2S_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB1_I2S_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB1_I2S_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_APB1_I2S_STAT_Register --
   --------------------------------

   subtype CLK_APB1_I2S_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB1_I2S_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB1_I2S_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB1_I2S_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB1_I2S clock status register
   type CLK_APB1_I2S_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_APB1_I2S_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_APB1_I2S_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_APB1_I2S_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_APB1_I2S_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB1_I2S_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_APB1_CAN1_CFG_Register --
   --------------------------------

   subtype CLK_APB1_CAN1_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB1_CAN1 clock configuration register
   type CLK_APB1_CAN1_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB1_CAN1_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB1_CAN1_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------
   -- CLK_APB1_CAN1_STAT_Register --
   ---------------------------------

   subtype CLK_APB1_CAN1_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB1_CAN1_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB1_CAN1_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_APB1_CAN1_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB1_CAN1 clock status register
   type CLK_APB1_CAN1_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_APB1_CAN1_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_APB1_CAN1_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_APB1_CAN1_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_APB1_CAN1_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB1_CAN1_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ----------------------------
   -- CLK_SPIFI_CFG_Register --
   ----------------------------

   subtype CLK_SPIFI_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_SPIFI clock configuration register
   type CLK_SPIFI_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_SPIFI_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_SPIFI_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------------------
   -- CLK_SPIFI_STAT_Register --
   -----------------------------

   subtype CLK_SPIFI_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_SPIFI_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_SPIFI_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_SPIFI_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_APB1_SPIFI clock status register
   type CLK_SPIFI_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_SPIFI_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_SPIFI_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_SPIFI_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_SPIFI_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_SPIFI_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------------------
   -- CLK_M4_BUS_CFG_Register --
   -----------------------------

   subtype CLK_M4_BUS_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_BUS clock configuration register
   type CLK_M4_BUS_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_BUS_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_BUS_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ------------------------------
   -- CLK_M4_BUS_STAT_Register --
   ------------------------------

   subtype CLK_M4_BUS_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_BUS_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_BUS_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_BUS_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_BUSclock status register
   type CLK_M4_BUS_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_BUS_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_BUS_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_BUS_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_BUS_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_BUS_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -------------------------------
   -- CLK_M4_SPIFI_CFG_Register --
   -------------------------------

   subtype CLK_M4_SPIFI_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_SPIFI clock configuration register
   type CLK_M4_SPIFI_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_SPIFI_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SPIFI_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_M4_SPIFI_STAT_Register --
   --------------------------------

   subtype CLK_M4_SPIFI_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_SPIFI_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_SPIFI_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_SPIFI_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_SPIFI clock status register
   type CLK_M4_SPIFI_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_SPIFI_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_SPIFI_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_SPIFI_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_SPIFI_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SPIFI_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ------------------------------
   -- CLK_M4_GPIO_CFG_Register --
   ------------------------------

   subtype CLK_M4_GPIO_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_GPIO clock configuration register
   type CLK_M4_GPIO_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_GPIO_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_GPIO_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -------------------------------
   -- CLK_M4_GPIO_STAT_Register --
   -------------------------------

   subtype CLK_M4_GPIO_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_GPIO_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_GPIO_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_GPIO_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_GPIO clock status register
   type CLK_M4_GPIO_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_GPIO_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_GPIO_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_GPIO_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_GPIO_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_GPIO_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------------------
   -- CLK_M4_LCD_CFG_Register --
   -----------------------------

   subtype CLK_M4_LCD_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_LCD clock configuration register
   type CLK_M4_LCD_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_LCD_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_LCD_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ------------------------------
   -- CLK_M4_LCD_STAT_Register --
   ------------------------------

   subtype CLK_M4_LCD_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_LCD_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_LCD_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_LCD_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_LCD clock status register
   type CLK_M4_LCD_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_LCD_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_LCD_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_LCD_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_LCD_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_LCD_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ----------------------------------
   -- CLK_M4_ETHERNET_CFG_Register --
   ----------------------------------

   subtype CLK_M4_ETHERNET_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_ETHERNET clock configuration register
   type CLK_M4_ETHERNET_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_ETHERNET_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_ETHERNET_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------------------------
   -- CLK_M4_ETHERNET_STAT_Register --
   -----------------------------------

   subtype CLK_M4_ETHERNET_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_ETHERNET_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_ETHERNET_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_ETHERNET_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_ETHERNET clock status register
   type CLK_M4_ETHERNET_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_ETHERNET_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_ETHERNET_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_ETHERNET_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_ETHERNET_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_ETHERNET_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ------------------------------
   -- CLK_M4_USB0_CFG_Register --
   ------------------------------

   subtype CLK_M4_USB0_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_USB0 clock configuration register
   type CLK_M4_USB0_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_USB0_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_USB0_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -------------------------------
   -- CLK_M4_USB0_STAT_Register --
   -------------------------------

   subtype CLK_M4_USB0_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_USB0_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_USB0_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_USB0_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_USB0 clock status register
   type CLK_M4_USB0_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_USB0_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_USB0_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_USB0_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_USB0_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_USB0_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------------------
   -- CLK_M4_EMC_CFG_Register --
   -----------------------------

   subtype CLK_M4_EMC_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_EMC clock configuration register
   type CLK_M4_EMC_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_EMC_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_EMC_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ------------------------------
   -- CLK_M4_EMC_STAT_Register --
   ------------------------------

   subtype CLK_M4_EMC_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_EMC_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_EMC_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_EMC_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_EMC clock status register
   type CLK_M4_EMC_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_EMC_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_EMC_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_EMC_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_EMC_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_EMC_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ------------------------------
   -- CLK_M4_SDIO_CFG_Register --
   ------------------------------

   subtype CLK_M4_SDIO_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_SDIO clock configuration register
   type CLK_M4_SDIO_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_SDIO_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SDIO_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -------------------------------
   -- CLK_M4_SDIO_STAT_Register --
   -------------------------------

   subtype CLK_M4_SDIO_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_SDIO_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_SDIO_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_SDIO_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_SDIO clock status register
   type CLK_M4_SDIO_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_SDIO_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_SDIO_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_SDIO_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_SDIO_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SDIO_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------------------
   -- CLK_M4_DMA_CFG_Register --
   -----------------------------

   subtype CLK_M4_DMA_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_DMA clock configuration register
   type CLK_M4_DMA_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_DMA_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_DMA_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ------------------------------
   -- CLK_M4_DMA_STAT_Register --
   ------------------------------

   subtype CLK_M4_DMA_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_DMA_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_DMA_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_DMA_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_DMA clock status register
   type CLK_M4_DMA_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_DMA_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_DMA_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_DMA_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_DMA_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_DMA_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_M4_M4CORE_CFG_Register --
   --------------------------------

   subtype CLK_M4_M4CORE_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_M4CORE clock configuration register
   type CLK_M4_M4CORE_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_M4CORE_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_M4CORE_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------
   -- CLK_M4_M4CORE_STAT_Register --
   ---------------------------------

   subtype CLK_M4_M4CORE_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_M4CORE_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_M4CORE_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_M4CORE_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_M3CORE clock status register
   type CLK_M4_M4CORE_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_M4CORE_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_M4CORE_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_M4CORE_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_M4CORE_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_M4CORE_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------------------
   -- CLK_M4_SCT_CFG_Register --
   -----------------------------

   subtype CLK_M4_SCT_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_SCT clock configuration register
   type CLK_M4_SCT_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_SCT_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SCT_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ------------------------------
   -- CLK_M4_SCT_STAT_Register --
   ------------------------------

   subtype CLK_M4_SCT_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_SCT_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_SCT_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_SCT_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_SCT clock status register
   type CLK_M4_SCT_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_SCT_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_SCT_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_SCT_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_SCT_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SCT_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ------------------------------
   -- CLK_M4_USB1_CFG_Register --
   ------------------------------

   subtype CLK_M4_USB1_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_USB1 clock configuration register
   type CLK_M4_USB1_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_USB1_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_USB1_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -------------------------------
   -- CLK_M4_USB1_STAT_Register --
   -------------------------------

   subtype CLK_M4_USB1_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_USB1_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_USB1_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_USB1_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_USB1 clock status register
   type CLK_M4_USB1_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_USB1_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_USB1_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_USB1_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_USB1_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_USB1_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_M4_EMCDIV_CFG_Register --
   --------------------------------

   subtype CLK_M4_EMCDIV_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt2;

   --  Clock divider value
   type DIV_Field is
     (
      --  No division. Divide by 1.
      Divideby1,
      --  Divide by 2.
      Divideby2)
     with Size => 3;
   for DIV_Field use
     (Divideby1 => 0,
      Divideby2 => 1);

   subtype CLK_M4_EMCDIV_CFG_RESERVED_Field_1 is Interfaces.Bit_Types.UInt24;

   --  CLK_M4_EMCDIV clock configuration register
   type CLK_M4_EMCDIV_CFG_Register is record
      --  Run enable
      RUN        : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO       : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED   : CLK_M4_EMCDIV_CFG_RESERVED_Field := 16#0#;
      --  Clock divider value
      DIV        : DIV_Field := Interfaces.LPC43xxC.CCU1.Divideby1;
      --  Reserved
      RESERVED_1 : CLK_M4_EMCDIV_CFG_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_EMCDIV_CFG_Register use record
      RUN        at 0 range 0 .. 0;
      AUTO       at 0 range 1 .. 1;
      WAKEUP     at 0 range 2 .. 2;
      RESERVED   at 0 range 3 .. 4;
      DIV        at 0 range 5 .. 7;
      RESERVED_1 at 0 range 8 .. 31;
   end record;

   ---------------------------------
   -- CLK_M4_EMCDIV_STAT_Register --
   ---------------------------------

   subtype CLK_M4_EMCDIV_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_EMCDIV_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_EMCDIV_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_EMCDIV_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_EMCDIV clock status register
   type CLK_M4_EMCDIV_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_EMCDIV_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_EMCDIV_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_EMCDIV_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_EMCDIV_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_EMCDIV_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_M4_FLASHA_CFG_Register --
   --------------------------------

   subtype CLK_M4_FLASHA_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_FLASHA clock configuration register
   type CLK_M4_FLASHA_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_FLASHA_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_FLASHA_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------
   -- CLK_M4_FLASHA_STAT_Register --
   ---------------------------------

   subtype CLK_M4_FLASHA_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_FLASHA_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_FLASHA_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_FLASHA_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_FLASHA clock status register
   type CLK_M4_FLASHA_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_FLASHA_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_FLASHA_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_FLASHA_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_FLASHA_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_FLASHA_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_M4_FLASHB_CFG_Register --
   --------------------------------

   subtype CLK_M4_FLASHB_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_FLASHB clock configuration register
   type CLK_M4_FLASHB_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_FLASHB_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_FLASHB_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------
   -- CLK_M4_FLASHB_STAT_Register --
   ---------------------------------

   subtype CLK_M4_FLASHB_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_FLASHB_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_FLASHB_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_FLASHB_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_FLASHB clock status register
   type CLK_M4_FLASHB_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_FLASHB_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_FLASHB_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_FLASHB_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_FLASHB_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_FLASHB_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -------------------------------
   -- CLK_M4_M0APP_CFG_Register --
   -------------------------------

   subtype CLK_M4_M0APP_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M0APP_CFG clock configuration register
   type CLK_M4_M0APP_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_M0APP_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_M0APP_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_M4_M0APP_STAT_Register --
   --------------------------------

   subtype CLK_M4_M0APP_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_M0APP_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_M0APP_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_M0APP_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_MOAPP clock status register
   type CLK_M4_M0APP_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_M0APP_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_M0APP_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_M0APP_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_M0APP_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_M0APP_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -------------------------------
   -- CLK_M4_ADCHS_CFG_Register --
   -------------------------------

   subtype CLK_M4_ADCHS_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_ADCHS_CFG clock configuration register
   type CLK_M4_ADCHS_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_ADCHS_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_ADCHS_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_M4_ADCHS_STAT_Register --
   --------------------------------

   subtype CLK_M4_ADCHS_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_ADCHS_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_ADCHS_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_ADCHS_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_ADCHS clock status register
   type CLK_M4_ADCHS_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_ADCHS_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_ADCHS_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_ADCHS_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_ADCHS_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_ADCHS_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_M4_EEPROM_CFG_Register --
   --------------------------------

   subtype CLK_M4_EEPROM_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_EEPROM_CFG clock configuration register
   type CLK_M4_EEPROM_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_EEPROM_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_EEPROM_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------
   -- CLK_M4_EEPROM_STAT_Register --
   ---------------------------------

   subtype CLK_M4_EEPROM_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_EEPROM_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_EEPROM_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_EEPROM_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_EEPROM clock status register
   type CLK_M4_EEPROM_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_EEPROM_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_EEPROM_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_EEPROM_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_EEPROM_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_EEPROM_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ------------------------------
   -- CLK_M4_WWDT_CFG_Register --
   ------------------------------

   subtype CLK_M4_WWDT_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_WWDT clock configuration register
   type CLK_M4_WWDT_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_WWDT_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_WWDT_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -------------------------------
   -- CLK_M4_WWDT_STAT_Register --
   -------------------------------

   subtype CLK_M4_WWDT_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_WWDT_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_WWDT_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_WWDT_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_WWDT clock status register
   type CLK_M4_WWDT_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_WWDT_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_WWDT_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_WWDT_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_WWDT_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_WWDT_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_M4_USART0_CFG_Register --
   --------------------------------

   subtype CLK_M4_USART0_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_USART0 clock configuration register
   type CLK_M4_USART0_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_USART0_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_USART0_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------
   -- CLK_M4_USART0_STAT_Register --
   ---------------------------------

   subtype CLK_M4_USART0_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_USART0_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_USART0_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_USART0_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_USART0 clock status register
   type CLK_M4_USART0_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_USART0_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_USART0_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_USART0_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_USART0_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_USART0_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -------------------------------
   -- CLK_M4_UART1_CFG_Register --
   -------------------------------

   subtype CLK_M4_UART1_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_UART1 clock configuration register
   type CLK_M4_UART1_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_UART1_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_UART1_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_M4_UART1_STAT_Register --
   --------------------------------

   subtype CLK_M4_UART1_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_UART1_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_UART1_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_UART1_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_UART1 clock status register
   type CLK_M4_UART1_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_UART1_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_UART1_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_UART1_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_UART1_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_UART1_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ------------------------------
   -- CLK_M4_SSP0_CFG_Register --
   ------------------------------

   subtype CLK_M4_SSP0_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_SSP0 clock configuration register
   type CLK_M4_SSP0_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_SSP0_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SSP0_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -------------------------------
   -- CLK_M4_SSP0_STAT_Register --
   -------------------------------

   subtype CLK_M4_SSP0_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_SSP0_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_SSP0_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_SSP0_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_SSP0 clock status register
   type CLK_M4_SSP0_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_SSP0_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_SSP0_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_SSP0_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_SSP0_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SSP0_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_M4_TIMER0_CFG_Register --
   --------------------------------

   subtype CLK_M4_TIMER0_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_TIMER0 clock configuration register
   type CLK_M4_TIMER0_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_TIMER0_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_TIMER0_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------
   -- CLK_M4_TIMER0_STAT_Register --
   ---------------------------------

   subtype CLK_M4_TIMER0_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_TIMER0_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_TIMER0_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_TIMER0_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_TIMER0 clock status register
   type CLK_M4_TIMER0_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_TIMER0_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_TIMER0_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_TIMER0_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_TIMER0_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_TIMER0_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_M4_TIMER1_CFG_Register --
   --------------------------------

   subtype CLK_M4_TIMER1_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_TIMER1clock configuration register
   type CLK_M4_TIMER1_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_TIMER1_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_TIMER1_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------
   -- CLK_M4_TIMER1_STAT_Register --
   ---------------------------------

   subtype CLK_M4_TIMER1_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_TIMER1_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_TIMER1_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_TIMER1_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_TIMER1 clock status register
   type CLK_M4_TIMER1_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_TIMER1_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_TIMER1_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_TIMER1_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_TIMER1_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_TIMER1_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------------------
   -- CLK_M4_SCU_CFG_Register --
   -----------------------------

   subtype CLK_M4_SCU_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_SCU clock configuration register
   type CLK_M4_SCU_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_SCU_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SCU_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ------------------------------
   -- CLK_M4_SCU_STAT_Register --
   ------------------------------

   subtype CLK_M4_SCU_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_SCU_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_SCU_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_SCU_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_SCU_XXX clock status register
   type CLK_M4_SCU_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_SCU_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_SCU_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_SCU_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_SCU_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SCU_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ------------------------------
   -- CLK_M4_CREG_CFG_Register --
   ------------------------------

   subtype CLK_M4_CREG_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_CREGclock configuration register
   type CLK_M4_CREG_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_CREG_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_CREG_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -------------------------------
   -- CLK_M4_CREG_STAT_Register --
   -------------------------------

   subtype CLK_M4_CREG_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_CREG_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_CREG_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_CREG_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_CREG clock status register
   type CLK_M4_CREG_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_CREG_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_CREG_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_CREG_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_CREG_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_CREG_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------
   -- CLK_M4_RITIMER_CFG_Register --
   ---------------------------------

   subtype CLK_M4_RITIMER_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_RITIMER clock configuration register
   type CLK_M4_RITIMER_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_RITIMER_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_RITIMER_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ----------------------------------
   -- CLK_M4_RITIMER_STAT_Register --
   ----------------------------------

   subtype CLK_M4_RITIMER_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_RITIMER_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_RITIMER_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_RITIMER_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_RITIMER clock status register
   type CLK_M4_RITIMER_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_RITIMER_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_RITIMER_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_RITIMER_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_RITIMER_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_RITIMER_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_M4_USART2_CFG_Register --
   --------------------------------

   subtype CLK_M4_USART2_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_USART2 clock configuration register
   type CLK_M4_USART2_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_USART2_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_USART2_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------
   -- CLK_M4_USART2_STAT_Register --
   ---------------------------------

   subtype CLK_M4_USART2_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_USART2_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_USART2_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_USART2_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_USART2 clock status register
   type CLK_M4_USART2_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_USART2_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_USART2_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_USART2_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_USART2_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_USART2_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_M4_USART3_CFG_Register --
   --------------------------------

   subtype CLK_M4_USART3_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_USART3 clock configuration register
   type CLK_M4_USART3_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_USART3_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_USART3_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------
   -- CLK_M4_USART3_STAT_Register --
   ---------------------------------

   subtype CLK_M4_USART3_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_USART3_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_USART3_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_USART3_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_USART3 clock status register
   type CLK_M4_USART3_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_USART3_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_USART3_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_USART3_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_USART3_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_USART3_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_M4_TIMER2_CFG_Register --
   --------------------------------

   subtype CLK_M4_TIMER2_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_TIMER2 clock configuration register
   type CLK_M4_TIMER2_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_TIMER2_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_TIMER2_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------
   -- CLK_M4_TIMER2_STAT_Register --
   ---------------------------------

   subtype CLK_M4_TIMER2_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_TIMER2_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_TIMER2_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_TIMER2_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_TIMER2 clock status register
   type CLK_M4_TIMER2_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_TIMER2_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_TIMER2_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_TIMER2_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_TIMER2_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_TIMER2_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------------
   -- CLK_M4_TIMER3_CFG_Register --
   --------------------------------

   subtype CLK_M4_TIMER3_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_TIMER3 clock configuration register
   type CLK_M4_TIMER3_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_TIMER3_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_TIMER3_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------
   -- CLK_M4_TIMER3_STAT_Register --
   ---------------------------------

   subtype CLK_M4_TIMER3_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_TIMER3_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_TIMER3_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_TIMER3_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_TIMER3 clock status register
   type CLK_M4_TIMER3_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_TIMER3_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_TIMER3_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_TIMER3_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_TIMER3_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_TIMER3_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ------------------------------
   -- CLK_M4_SSP1_CFG_Register --
   ------------------------------

   subtype CLK_M4_SSP1_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_SSP1 clock configuration register
   type CLK_M4_SSP1_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_SSP1_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SSP1_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -------------------------------
   -- CLK_M4_SSP1_STAT_Register --
   -------------------------------

   subtype CLK_M4_SSP1_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_SSP1_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_SSP1_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_SSP1_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_SSP1 clock status register
   type CLK_M4_SSP1_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_SSP1_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_SSP1_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_SSP1_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_SSP1_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SSP1_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------------------
   -- CLK_M4_QEI_CFG_Register --
   -----------------------------

   subtype CLK_M4_QEI_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_QEIclock configuration register
   type CLK_M4_QEI_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_QEI_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_QEI_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ------------------------------
   -- CLK_M4_QEI_STAT_Register --
   ------------------------------

   subtype CLK_M4_QEI_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_QEI_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_QEI_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_M4_QEI_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_QEI clock status register
   type CLK_M4_QEI_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_M4_QEI_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_M4_QEI_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_M4_QEI_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_M4_QEI_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_QEI_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------------
   -- CLK_PERIPH_BUS_CFG_Register --
   ---------------------------------

   subtype CLK_PERIPH_BUS_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_PERIPH_BUS_CFG clock configuration register
   type CLK_PERIPH_BUS_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_PERIPH_BUS_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_PERIPH_BUS_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ----------------------------------
   -- CLK_PERIPH_BUS_STAT_Register --
   ----------------------------------

   subtype CLK_PERIPH_BUS_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_PERIPH_BUS_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_PERIPH_BUS_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_PERIPH_BUS_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_PERIPH_BUS_STAT clock status register
   type CLK_PERIPH_BUS_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_PERIPH_BUS_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_PERIPH_BUS_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_PERIPH_BUS_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_PERIPH_BUS_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_PERIPH_BUS_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ----------------------------------
   -- CLK_PERIPH_CORE_CFG_Register --
   ----------------------------------

   subtype CLK_PERIPH_CORE_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_PERIPH_CORE_CFG clock configuration register
   type CLK_PERIPH_CORE_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_PERIPH_CORE_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_PERIPH_CORE_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------------------------
   -- CLK_PERIPH_CORE_STAT_Register --
   -----------------------------------

   subtype CLK_PERIPH_CORE_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_PERIPH_CORE_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_PERIPH_CORE_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_PERIPH_CORE_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_CORE_BUS_STAT clock status register
   type CLK_PERIPH_CORE_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_PERIPH_CORE_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_PERIPH_CORE_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_PERIPH_CORE_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_PERIPH_CORE_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_PERIPH_CORE_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------------------------
   -- CLK_PERIPH_SGPIO_CFG_Register --
   -----------------------------------

   subtype CLK_PERIPH_SGPIO_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_PERIPH_SGPIO_CFG clock configuration register
   type CLK_PERIPH_SGPIO_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_1 := Interfaces.LPC43xxC.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_PERIPH_SGPIO_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_PERIPH_SGPIO_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ------------------------------------
   -- CLK_PERIPH_SGPIO_STAT_Register --
   ------------------------------------

   subtype CLK_PERIPH_SGPIO_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_PERIPH_SGPIO_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_PERIPH_SGPIO_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_PERIPH_SGPIO_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_CORE_SGPIO_STAT clock status register
   type CLK_PERIPH_SGPIO_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_PERIPH_SGPIO_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_PERIPH_SGPIO_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_PERIPH_SGPIO_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_PERIPH_SGPIO_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_PERIPH_SGPIO_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------
   -- CLK_USB0_CFG_Register --
   ---------------------------

   --  Auto (AHB disable mechanism) enable
   type ENUM_2 is
     (
      --  Auto is disabled.
      Auto_Is_Disabled,
      --  Auto is enabled.
      Auto_Is_Enabled)
     with Size => 1;
   for ENUM_2 use
     (Auto_Is_Disabled => 0,
      Auto_Is_Enabled => 1);

   --  Wake-up mechanism enable
   type ENUM_3 is
     (
      --  Wake-up is disabled.
      Wake_Up_Is_Disabled,
      --  Wake-up is enabled.
      Wake_Up_Is_Enabled)
     with Size => 1;
   for ENUM_3 use
     (Wake_Up_Is_Disabled => 0,
      Wake_Up_Is_Enabled => 1);

   subtype CLK_USB0_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_M4_USB0 clock configuration register
   type CLK_USB0_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_2 := Interfaces.LPC43xxC.CCU1.Auto_Is_Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_3 := Interfaces.LPC43xxC.CCU1.Wake_Up_Is_Disabled;
      --  Reserved
      RESERVED : CLK_USB0_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_USB0_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ----------------------------
   -- CLK_USB0_STAT_Register --
   ----------------------------

   subtype CLK_USB0_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_USB0_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_USB0_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_USB0_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_USB0 clock status register
   type CLK_USB0_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_USB0_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_USB0_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_USB0_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_USB0_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_USB0_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------
   -- CLK_USB1_CFG_Register --
   ---------------------------

   subtype CLK_USB1_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_USB1 clock configuration register
   type CLK_USB1_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_2 := Interfaces.LPC43xxC.CCU1.Auto_Is_Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_3 := Interfaces.LPC43xxC.CCU1.Wake_Up_Is_Disabled;
      --  Reserved
      RESERVED : CLK_USB1_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_USB1_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ----------------------------
   -- CLK_USB1_STAT_Register --
   ----------------------------

   subtype CLK_USB1_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_USB1_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_USB1_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_USB1_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_USB1 clock status register
   type CLK_USB1_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_USB1_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_USB1_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_USB1_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_USB1_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_USB1_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --------------------------
   -- CLK_SPI_CFG_Register --
   --------------------------

   subtype CLK_SPI_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_SPI clock configuration register
   type CLK_SPI_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_2 := Interfaces.LPC43xxC.CCU1.Auto_Is_Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_3 := Interfaces.LPC43xxC.CCU1.Wake_Up_Is_Disabled;
      --  Reserved
      RESERVED : CLK_SPI_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_SPI_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------
   -- CLK_SPI_STAT_Register --
   ---------------------------

   subtype CLK_SPI_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_SPI_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_SPI_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_SPI_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_SPI clock status register
   type CLK_SPI_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_SPI_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_SPI_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_SPI_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_SPI_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_SPI_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ----------------------------
   -- CLK_ADCHS_CFG_Register --
   ----------------------------

   subtype CLK_ADCHS_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_ADCHS clock configuration register
   type CLK_ADCHS_CFG_Register is record
      --  Run enable
      RUN      : ENUM_1 := Interfaces.LPC43xxC.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : ENUM_2 := Interfaces.LPC43xxC.CCU1.Auto_Is_Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : ENUM_3 := Interfaces.LPC43xxC.CCU1.Wake_Up_Is_Disabled;
      --  Reserved
      RESERVED : CLK_ADCHS_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_ADCHS_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------------------
   -- CLK_ADCHS_STAT_Register --
   -----------------------------

   subtype CLK_ADCHS_STAT_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_ADCHS_STAT_AUTO_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_ADCHS_STAT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype CLK_ADCHS_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  CLK_ADCHS clock status register
   type CLK_ADCHS_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : CLK_ADCHS_STAT_RUN_Field;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : CLK_ADCHS_STAT_AUTO_Field;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : CLK_ADCHS_STAT_WAKEUP_Field;
      --  Read-only. Reserved
      RESERVED : CLK_ADCHS_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_ADCHS_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Clock Control Unit (CCU)
   type CCU1_Peripheral is record
      --  CCU1 power mode register
      PM                       : PM_Register;
      --  CCU1 base clocks status register
      BASE_STAT                : BASE_STAT_Register;
      --  CLK_APB3_BUS clock configuration register
      CLK_APB3_BUS_CFG         : CLK_APB3_BUS_CFG_Register;
      --  CLK_APB3_BUS clock status register
      CLK_APB3_BUS_STAT        : CLK_APB3_BUS_STAT_Register;
      --  CLK_APB3_I2C1 clock configuration register
      CLK_APB3_I2C1_CFG        : CLK_APB3_I2C1_CFG_Register;
      --  CLK_APB3_I2C1 clock status register
      CLK_APB3_I2C1_STAT       : CLK_APB3_I2C1_STAT_Register;
      --  CLK_APB3_DAC clock configuration register
      CLK_APB3_DAC_CFG         : CLK_APB3_DAC_CFG_Register;
      --  CLK_APB3_DAC clock status register
      CLK_APB3_DAC_STAT        : CLK_APB3_DAC_STAT_Register;
      --  CLK_APB3_ADC0 clock configuration register
      CLK_APB3_ADC0_CFG        : CLK_APB3_ADC0_CFG_Register;
      --  CLK_APB3_ADC0 clock status register
      CLK_APB3_ADC0_STAT       : CLK_APB3_ADC0_STAT_Register;
      --  CLK_APB3_ADC1 clock configuration register
      CLK_APB3_ADC1_CFG        : CLK_APB3_ADC1_CFG_Register;
      --  CLK_APB3_ADC1 clock status register
      CLK_APB3_ADC1_STAT       : CLK_APB3_ADC1_STAT_Register;
      --  CLK_APB3_CAN0 clock configuration register
      CLK_APB3_CAN0_CFG        : CLK_APB3_CAN0_CFG_Register;
      --  CLK_APB3_CAN0 clock status register
      CLK_APB3_CAN0_STAT       : CLK_APB3_CAN0_STAT_Register;
      --  CLK_APB1_BUS clock configuration register
      CLK_APB1_BUS_CFG         : CLK_APB1_BUS_CFG_Register;
      --  CLK_APB1_BUS clock status register
      CLK_APB1_BUS_STAT        : CLK_APB1_BUS_STAT_Register;
      --  CLK_APB1_MOTOCONPWM clock configuration register
      CLK_APB1_MOTOCONPWM_CFG  : CLK_APB1_MOTOCONPWM_CFG_Register;
      --  CLK_APB1_MOTOCONPWM clock status register
      CLK_APB1_MOTOCONPWM_STAT : CLK_APB1_MOTOCONPWM_STAT_Register;
      --  CLK_ABP1_I2C0 clock configuration register
      CLK_APB1_I2C0_CFG        : CLK_APB1_I2C0_CFG_Register;
      --  CLK_APB1_I2C0 clock status register
      CLK_APB1_I2C0_STAT       : CLK_APB1_I2C0_STAT_Register;
      --  CLK_APB1_I2S clock configuration register
      CLK_APB1_I2S_CFG         : CLK_APB1_I2S_CFG_Register;
      --  CLK_APB1_I2S clock status register
      CLK_APB1_I2S_STAT        : CLK_APB1_I2S_STAT_Register;
      --  CLK_APB1_CAN1 clock configuration register
      CLK_APB1_CAN1_CFG        : CLK_APB1_CAN1_CFG_Register;
      --  CLK_APB1_CAN1 clock status register
      CLK_APB1_CAN1_STAT       : CLK_APB1_CAN1_STAT_Register;
      --  CLK_SPIFI clock configuration register
      CLK_SPIFI_CFG            : CLK_SPIFI_CFG_Register;
      --  CLK_APB1_SPIFI clock status register
      CLK_SPIFI_STAT           : CLK_SPIFI_STAT_Register;
      --  CLK_M4_BUS clock configuration register
      CLK_M4_BUS_CFG           : CLK_M4_BUS_CFG_Register;
      --  CLK_M4_BUSclock status register
      CLK_M4_BUS_STAT          : CLK_M4_BUS_STAT_Register;
      --  CLK_M4_SPIFI clock configuration register
      CLK_M4_SPIFI_CFG         : CLK_M4_SPIFI_CFG_Register;
      --  CLK_M4_SPIFI clock status register
      CLK_M4_SPIFI_STAT        : CLK_M4_SPIFI_STAT_Register;
      --  CLK_M4_GPIO clock configuration register
      CLK_M4_GPIO_CFG          : CLK_M4_GPIO_CFG_Register;
      --  CLK_M4_GPIO clock status register
      CLK_M4_GPIO_STAT         : CLK_M4_GPIO_STAT_Register;
      --  CLK_M4_LCD clock configuration register
      CLK_M4_LCD_CFG           : CLK_M4_LCD_CFG_Register;
      --  CLK_M4_LCD clock status register
      CLK_M4_LCD_STAT          : CLK_M4_LCD_STAT_Register;
      --  CLK_M4_ETHERNET clock configuration register
      CLK_M4_ETHERNET_CFG      : CLK_M4_ETHERNET_CFG_Register;
      --  CLK_M4_ETHERNET clock status register
      CLK_M4_ETHERNET_STAT     : CLK_M4_ETHERNET_STAT_Register;
      --  CLK_M4_USB0 clock configuration register
      CLK_M4_USB0_CFG          : CLK_M4_USB0_CFG_Register;
      --  CLK_M4_USB0 clock status register
      CLK_M4_USB0_STAT         : CLK_M4_USB0_STAT_Register;
      --  CLK_M4_EMC clock configuration register
      CLK_M4_EMC_CFG           : CLK_M4_EMC_CFG_Register;
      --  CLK_M4_EMC clock status register
      CLK_M4_EMC_STAT          : CLK_M4_EMC_STAT_Register;
      --  CLK_M4_SDIO clock configuration register
      CLK_M4_SDIO_CFG          : CLK_M4_SDIO_CFG_Register;
      --  CLK_M4_SDIO clock status register
      CLK_M4_SDIO_STAT         : CLK_M4_SDIO_STAT_Register;
      --  CLK_M4_DMA clock configuration register
      CLK_M4_DMA_CFG           : CLK_M4_DMA_CFG_Register;
      --  CLK_M4_DMA clock status register
      CLK_M4_DMA_STAT          : CLK_M4_DMA_STAT_Register;
      --  CLK_M4_M4CORE clock configuration register
      CLK_M4_M4CORE_CFG        : CLK_M4_M4CORE_CFG_Register;
      --  CLK_M4_M3CORE clock status register
      CLK_M4_M4CORE_STAT       : CLK_M4_M4CORE_STAT_Register;
      --  CLK_M4_SCT clock configuration register
      CLK_M4_SCT_CFG           : CLK_M4_SCT_CFG_Register;
      --  CLK_M4_SCT clock status register
      CLK_M4_SCT_STAT          : CLK_M4_SCT_STAT_Register;
      --  CLK_M4_USB1 clock configuration register
      CLK_M4_USB1_CFG          : CLK_M4_USB1_CFG_Register;
      --  CLK_M4_USB1 clock status register
      CLK_M4_USB1_STAT         : CLK_M4_USB1_STAT_Register;
      --  CLK_M4_EMCDIV clock configuration register
      CLK_M4_EMCDIV_CFG        : CLK_M4_EMCDIV_CFG_Register;
      --  CLK_M4_EMCDIV clock status register
      CLK_M4_EMCDIV_STAT       : CLK_M4_EMCDIV_STAT_Register;
      --  CLK_M4_FLASHA clock configuration register
      CLK_M4_FLASHA_CFG        : CLK_M4_FLASHA_CFG_Register;
      --  CLK_M4_FLASHA clock status register
      CLK_M4_FLASHA_STAT       : CLK_M4_FLASHA_STAT_Register;
      --  CLK_M4_FLASHB clock configuration register
      CLK_M4_FLASHB_CFG        : CLK_M4_FLASHB_CFG_Register;
      --  CLK_M4_FLASHB clock status register
      CLK_M4_FLASHB_STAT       : CLK_M4_FLASHB_STAT_Register;
      --  CLK_M0APP_CFG clock configuration register
      CLK_M4_M0APP_CFG         : CLK_M4_M0APP_CFG_Register;
      --  CLK_M4_MOAPP clock status register
      CLK_M4_M0APP_STAT        : CLK_M4_M0APP_STAT_Register;
      --  CLK_ADCHS_CFG clock configuration register
      CLK_M4_ADCHS_CFG         : CLK_M4_ADCHS_CFG_Register;
      --  CLK_M4_ADCHS clock status register
      CLK_M4_ADCHS_STAT        : CLK_M4_ADCHS_STAT_Register;
      --  CLK_EEPROM_CFG clock configuration register
      CLK_M4_EEPROM_CFG        : CLK_M4_EEPROM_CFG_Register;
      --  CLK_M4_EEPROM clock status register
      CLK_M4_EEPROM_STAT       : CLK_M4_EEPROM_STAT_Register;
      --  CLK_M4_WWDT clock configuration register
      CLK_M4_WWDT_CFG          : CLK_M4_WWDT_CFG_Register;
      --  CLK_M4_WWDT clock status register
      CLK_M4_WWDT_STAT         : CLK_M4_WWDT_STAT_Register;
      --  CLK_M4_USART0 clock configuration register
      CLK_M4_USART0_CFG        : CLK_M4_USART0_CFG_Register;
      --  CLK_M4_USART0 clock status register
      CLK_M4_USART0_STAT       : CLK_M4_USART0_STAT_Register;
      --  CLK_M4_UART1 clock configuration register
      CLK_M4_UART1_CFG         : CLK_M4_UART1_CFG_Register;
      --  CLK_M4_UART1 clock status register
      CLK_M4_UART1_STAT        : CLK_M4_UART1_STAT_Register;
      --  CLK_M4_SSP0 clock configuration register
      CLK_M4_SSP0_CFG          : CLK_M4_SSP0_CFG_Register;
      --  CLK_M4_SSP0 clock status register
      CLK_M4_SSP0_STAT         : CLK_M4_SSP0_STAT_Register;
      --  CLK_M4_TIMER0 clock configuration register
      CLK_M4_TIMER0_CFG        : CLK_M4_TIMER0_CFG_Register;
      --  CLK_M4_TIMER0 clock status register
      CLK_M4_TIMER0_STAT       : CLK_M4_TIMER0_STAT_Register;
      --  CLK_M4_TIMER1clock configuration register
      CLK_M4_TIMER1_CFG        : CLK_M4_TIMER1_CFG_Register;
      --  CLK_M4_TIMER1 clock status register
      CLK_M4_TIMER1_STAT       : CLK_M4_TIMER1_STAT_Register;
      --  CLK_M4_SCU clock configuration register
      CLK_M4_SCU_CFG           : CLK_M4_SCU_CFG_Register;
      --  CLK_SCU_XXX clock status register
      CLK_M4_SCU_STAT          : CLK_M4_SCU_STAT_Register;
      --  CLK_M4_CREGclock configuration register
      CLK_M4_CREG_CFG          : CLK_M4_CREG_CFG_Register;
      --  CLK_M4_CREG clock status register
      CLK_M4_CREG_STAT         : CLK_M4_CREG_STAT_Register;
      --  CLK_M4_RITIMER clock configuration register
      CLK_M4_RITIMER_CFG       : CLK_M4_RITIMER_CFG_Register;
      --  CLK_M4_RITIMER clock status register
      CLK_M4_RITIMER_STAT      : CLK_M4_RITIMER_STAT_Register;
      --  CLK_M4_USART2 clock configuration register
      CLK_M4_USART2_CFG        : CLK_M4_USART2_CFG_Register;
      --  CLK_M4_USART2 clock status register
      CLK_M4_USART2_STAT       : CLK_M4_USART2_STAT_Register;
      --  CLK_M4_USART3 clock configuration register
      CLK_M4_USART3_CFG        : CLK_M4_USART3_CFG_Register;
      --  CLK_M4_USART3 clock status register
      CLK_M4_USART3_STAT       : CLK_M4_USART3_STAT_Register;
      --  CLK_M4_TIMER2 clock configuration register
      CLK_M4_TIMER2_CFG        : CLK_M4_TIMER2_CFG_Register;
      --  CLK_M4_TIMER2 clock status register
      CLK_M4_TIMER2_STAT       : CLK_M4_TIMER2_STAT_Register;
      --  CLK_M4_TIMER3 clock configuration register
      CLK_M4_TIMER3_CFG        : CLK_M4_TIMER3_CFG_Register;
      --  CLK_M4_TIMER3 clock status register
      CLK_M4_TIMER3_STAT       : CLK_M4_TIMER3_STAT_Register;
      --  CLK_M4_SSP1 clock configuration register
      CLK_M4_SSP1_CFG          : CLK_M4_SSP1_CFG_Register;
      --  CLK_M4_SSP1 clock status register
      CLK_M4_SSP1_STAT         : CLK_M4_SSP1_STAT_Register;
      --  CLK_M4_QEIclock configuration register
      CLK_M4_QEI_CFG           : CLK_M4_QEI_CFG_Register;
      --  CLK_M4_QEI clock status register
      CLK_M4_QEI_STAT          : CLK_M4_QEI_STAT_Register;
      --  CLK_PERIPH_BUS_CFG clock configuration register
      CLK_PERIPH_BUS_CFG       : CLK_PERIPH_BUS_CFG_Register;
      --  CLK_PERIPH_BUS_STAT clock status register
      CLK_PERIPH_BUS_STAT      : CLK_PERIPH_BUS_STAT_Register;
      --  CLK_PERIPH_CORE_CFG clock configuration register
      CLK_PERIPH_CORE_CFG      : CLK_PERIPH_CORE_CFG_Register;
      --  CLK_CORE_BUS_STAT clock status register
      CLK_PERIPH_CORE_STAT     : CLK_PERIPH_CORE_STAT_Register;
      --  CLK_PERIPH_SGPIO_CFG clock configuration register
      CLK_PERIPH_SGPIO_CFG     : CLK_PERIPH_SGPIO_CFG_Register;
      --  CLK_CORE_SGPIO_STAT clock status register
      CLK_PERIPH_SGPIO_STAT    : CLK_PERIPH_SGPIO_STAT_Register;
      --  CLK_M4_USB0 clock configuration register
      CLK_USB0_CFG             : CLK_USB0_CFG_Register;
      --  CLK_USB0 clock status register
      CLK_USB0_STAT            : CLK_USB0_STAT_Register;
      --  CLK_USB1 clock configuration register
      CLK_USB1_CFG             : CLK_USB1_CFG_Register;
      --  CLK_USB1 clock status register
      CLK_USB1_STAT            : CLK_USB1_STAT_Register;
      --  CLK_SPI clock configuration register
      CLK_SPI_CFG              : CLK_SPI_CFG_Register;
      --  CLK_SPI clock status register
      CLK_SPI_STAT             : CLK_SPI_STAT_Register;
      --  CLK_ADCHS clock configuration register
      CLK_ADCHS_CFG            : CLK_ADCHS_CFG_Register;
      --  CLK_ADCHS clock status register
      CLK_ADCHS_STAT           : CLK_ADCHS_STAT_Register;
   end record
     with Volatile;

   for CCU1_Peripheral use record
      PM                       at 0 range 0 .. 31;
      BASE_STAT                at 4 range 0 .. 31;
      CLK_APB3_BUS_CFG         at 256 range 0 .. 31;
      CLK_APB3_BUS_STAT        at 260 range 0 .. 31;
      CLK_APB3_I2C1_CFG        at 264 range 0 .. 31;
      CLK_APB3_I2C1_STAT       at 268 range 0 .. 31;
      CLK_APB3_DAC_CFG         at 272 range 0 .. 31;
      CLK_APB3_DAC_STAT        at 276 range 0 .. 31;
      CLK_APB3_ADC0_CFG        at 280 range 0 .. 31;
      CLK_APB3_ADC0_STAT       at 284 range 0 .. 31;
      CLK_APB3_ADC1_CFG        at 288 range 0 .. 31;
      CLK_APB3_ADC1_STAT       at 292 range 0 .. 31;
      CLK_APB3_CAN0_CFG        at 296 range 0 .. 31;
      CLK_APB3_CAN0_STAT       at 300 range 0 .. 31;
      CLK_APB1_BUS_CFG         at 512 range 0 .. 31;
      CLK_APB1_BUS_STAT        at 516 range 0 .. 31;
      CLK_APB1_MOTOCONPWM_CFG  at 520 range 0 .. 31;
      CLK_APB1_MOTOCONPWM_STAT at 524 range 0 .. 31;
      CLK_APB1_I2C0_CFG        at 528 range 0 .. 31;
      CLK_APB1_I2C0_STAT       at 532 range 0 .. 31;
      CLK_APB1_I2S_CFG         at 536 range 0 .. 31;
      CLK_APB1_I2S_STAT        at 540 range 0 .. 31;
      CLK_APB1_CAN1_CFG        at 544 range 0 .. 31;
      CLK_APB1_CAN1_STAT       at 548 range 0 .. 31;
      CLK_SPIFI_CFG            at 768 range 0 .. 31;
      CLK_SPIFI_STAT           at 772 range 0 .. 31;
      CLK_M4_BUS_CFG           at 1024 range 0 .. 31;
      CLK_M4_BUS_STAT          at 1028 range 0 .. 31;
      CLK_M4_SPIFI_CFG         at 1032 range 0 .. 31;
      CLK_M4_SPIFI_STAT        at 1036 range 0 .. 31;
      CLK_M4_GPIO_CFG          at 1040 range 0 .. 31;
      CLK_M4_GPIO_STAT         at 1044 range 0 .. 31;
      CLK_M4_LCD_CFG           at 1048 range 0 .. 31;
      CLK_M4_LCD_STAT          at 1052 range 0 .. 31;
      CLK_M4_ETHERNET_CFG      at 1056 range 0 .. 31;
      CLK_M4_ETHERNET_STAT     at 1060 range 0 .. 31;
      CLK_M4_USB0_CFG          at 1064 range 0 .. 31;
      CLK_M4_USB0_STAT         at 1068 range 0 .. 31;
      CLK_M4_EMC_CFG           at 1072 range 0 .. 31;
      CLK_M4_EMC_STAT          at 1076 range 0 .. 31;
      CLK_M4_SDIO_CFG          at 1080 range 0 .. 31;
      CLK_M4_SDIO_STAT         at 1084 range 0 .. 31;
      CLK_M4_DMA_CFG           at 1088 range 0 .. 31;
      CLK_M4_DMA_STAT          at 1092 range 0 .. 31;
      CLK_M4_M4CORE_CFG        at 1096 range 0 .. 31;
      CLK_M4_M4CORE_STAT       at 1100 range 0 .. 31;
      CLK_M4_SCT_CFG           at 1128 range 0 .. 31;
      CLK_M4_SCT_STAT          at 1132 range 0 .. 31;
      CLK_M4_USB1_CFG          at 1136 range 0 .. 31;
      CLK_M4_USB1_STAT         at 1140 range 0 .. 31;
      CLK_M4_EMCDIV_CFG        at 1144 range 0 .. 31;
      CLK_M4_EMCDIV_STAT       at 1148 range 0 .. 31;
      CLK_M4_FLASHA_CFG        at 1152 range 0 .. 31;
      CLK_M4_FLASHA_STAT       at 1156 range 0 .. 31;
      CLK_M4_FLASHB_CFG        at 1160 range 0 .. 31;
      CLK_M4_FLASHB_STAT       at 1164 range 0 .. 31;
      CLK_M4_M0APP_CFG         at 1168 range 0 .. 31;
      CLK_M4_M0APP_STAT        at 1172 range 0 .. 31;
      CLK_M4_ADCHS_CFG         at 1176 range 0 .. 31;
      CLK_M4_ADCHS_STAT        at 1180 range 0 .. 31;
      CLK_M4_EEPROM_CFG        at 1184 range 0 .. 31;
      CLK_M4_EEPROM_STAT       at 1188 range 0 .. 31;
      CLK_M4_WWDT_CFG          at 1280 range 0 .. 31;
      CLK_M4_WWDT_STAT         at 1284 range 0 .. 31;
      CLK_M4_USART0_CFG        at 1288 range 0 .. 31;
      CLK_M4_USART0_STAT       at 1292 range 0 .. 31;
      CLK_M4_UART1_CFG         at 1296 range 0 .. 31;
      CLK_M4_UART1_STAT        at 1300 range 0 .. 31;
      CLK_M4_SSP0_CFG          at 1304 range 0 .. 31;
      CLK_M4_SSP0_STAT         at 1308 range 0 .. 31;
      CLK_M4_TIMER0_CFG        at 1312 range 0 .. 31;
      CLK_M4_TIMER0_STAT       at 1316 range 0 .. 31;
      CLK_M4_TIMER1_CFG        at 1320 range 0 .. 31;
      CLK_M4_TIMER1_STAT       at 1324 range 0 .. 31;
      CLK_M4_SCU_CFG           at 1328 range 0 .. 31;
      CLK_M4_SCU_STAT          at 1332 range 0 .. 31;
      CLK_M4_CREG_CFG          at 1336 range 0 .. 31;
      CLK_M4_CREG_STAT         at 1340 range 0 .. 31;
      CLK_M4_RITIMER_CFG       at 1536 range 0 .. 31;
      CLK_M4_RITIMER_STAT      at 1540 range 0 .. 31;
      CLK_M4_USART2_CFG        at 1544 range 0 .. 31;
      CLK_M4_USART2_STAT       at 1548 range 0 .. 31;
      CLK_M4_USART3_CFG        at 1552 range 0 .. 31;
      CLK_M4_USART3_STAT       at 1556 range 0 .. 31;
      CLK_M4_TIMER2_CFG        at 1560 range 0 .. 31;
      CLK_M4_TIMER2_STAT       at 1564 range 0 .. 31;
      CLK_M4_TIMER3_CFG        at 1568 range 0 .. 31;
      CLK_M4_TIMER3_STAT       at 1572 range 0 .. 31;
      CLK_M4_SSP1_CFG          at 1576 range 0 .. 31;
      CLK_M4_SSP1_STAT         at 1580 range 0 .. 31;
      CLK_M4_QEI_CFG           at 1584 range 0 .. 31;
      CLK_M4_QEI_STAT          at 1588 range 0 .. 31;
      CLK_PERIPH_BUS_CFG       at 1792 range 0 .. 31;
      CLK_PERIPH_BUS_STAT      at 1796 range 0 .. 31;
      CLK_PERIPH_CORE_CFG      at 1808 range 0 .. 31;
      CLK_PERIPH_CORE_STAT     at 1812 range 0 .. 31;
      CLK_PERIPH_SGPIO_CFG     at 1816 range 0 .. 31;
      CLK_PERIPH_SGPIO_STAT    at 1820 range 0 .. 31;
      CLK_USB0_CFG             at 2048 range 0 .. 31;
      CLK_USB0_STAT            at 2052 range 0 .. 31;
      CLK_USB1_CFG             at 2304 range 0 .. 31;
      CLK_USB1_STAT            at 2308 range 0 .. 31;
      CLK_SPI_CFG              at 2560 range 0 .. 31;
      CLK_SPI_STAT             at 2564 range 0 .. 31;
      CLK_ADCHS_CFG            at 2816 range 0 .. 31;
      CLK_ADCHS_STAT           at 2820 range 0 .. 31;
   end record;

   --  Clock Control Unit (CCU)
   CCU1_Periph : aliased CCU1_Peripheral
     with Import, Address => CCU1_Base;

end Interfaces.LPC43xxC.CCU1;
