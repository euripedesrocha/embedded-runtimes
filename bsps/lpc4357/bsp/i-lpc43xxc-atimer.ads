--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43xxC.ATIMER is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --------------------------
   -- DOWNCOUNTER_Register --
   --------------------------

   subtype DOWNCOUNTER_CVAL_Field is Interfaces.Bit_Types.Short;
   subtype DOWNCOUNTER_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Downcounter register
   type DOWNCOUNTER_Register is record
      --  When equal to zero an interrupt is raised. When equal to zero PRESET
      --  is loaded and counting continues.
      CVAL     : DOWNCOUNTER_CVAL_Field := 16#0#;
      --  Reserved.
      RESERVED : DOWNCOUNTER_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOWNCOUNTER_Register use record
      CVAL     at 0 range 0 .. 15;
      RESERVED at 0 range 16 .. 31;
   end record;

   ---------------------
   -- PRESET_Register --
   ---------------------

   subtype PRESET_PRESETVAL_Field is Interfaces.Bit_Types.Short;
   subtype PRESET_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Preset value register
   type PRESET_Register is record
      --  Value loaded in DOWNCOUNTER when DOWNCOUNTER equals zero
      PRESETVAL : PRESET_PRESETVAL_Field := 16#0#;
      --  Reserved.
      RESERVED  : PRESET_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRESET_Register use record
      PRESETVAL at 0 range 0 .. 15;
      RESERVED  at 0 range 16 .. 31;
   end record;

   ---------------------
   -- CLR_EN_Register --
   ---------------------

   subtype CLR_EN_CLR_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_EN_RESERVED_Field is Interfaces.Bit_Types.UInt31;

   --  Interrupt clear enable register
   type CLR_EN_Register is record
      --  Write-only. Writing a 1 to this bit clears the interrupt enable bit
      --  in the ENABLE register.
      CLR_EN   : CLR_EN_CLR_EN_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED : CLR_EN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLR_EN_Register use record
      CLR_EN   at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 31;
   end record;

   ---------------------
   -- SET_EN_Register --
   ---------------------

   subtype SET_EN_SET_EN_Field is Interfaces.Bit_Types.Bit;
   subtype SET_EN_RESERVED_Field is Interfaces.Bit_Types.UInt31;

   --  Interrupt set enable register
   type SET_EN_Register is record
      --  Write-only. Writing a 1 to this bit sets the interrupt enable bit in
      --  the ENABLE register.
      SET_EN   : SET_EN_SET_EN_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED : SET_EN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET_EN_Register use record
      SET_EN   at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 31;
   end record;

   ---------------------
   -- STATUS_Register --
   ---------------------

   subtype STATUS_STAT_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_RESERVED_Field is Interfaces.Bit_Types.UInt31;

   --  Status register
   type STATUS_Register is record
      --  Read-only. A 1 in this bit shows that the STATUS interrupt has been
      --  raised.
      STAT     : STATUS_STAT_Field;
      --  Read-only. Reserved.
      RESERVED : STATUS_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      STAT     at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 31;
   end record;

   ---------------------
   -- ENABLE_Register --
   ---------------------

   subtype ENABLE_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ENABLE_RESERVED_Field is Interfaces.Bit_Types.UInt31;

   --  Enable register
   type ENABLE_Register is record
      --  Read-only. A 1 in this bit shows that the STATUS interrupt has been
      --  enabled and that the STATUS interrupt request signal is asserted when
      --  STAT = 1 in the STATUS register.
      EN       : ENABLE_EN_Field;
      --  Read-only. Reserved.
      RESERVED : ENABLE_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE_Register use record
      EN       at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 31;
   end record;

   -----------------------
   -- CLR_STAT_Register --
   -----------------------

   subtype CLR_STAT_CSTAT_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt31;

   --  Clear register
   type CLR_STAT_Register is record
      --  Write-only. Writing a 1 to this bit clears the STATUS interrupt bit
      --  in the STATUS register.
      CSTAT    : CLR_STAT_CSTAT_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED : CLR_STAT_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLR_STAT_Register use record
      CSTAT    at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 31;
   end record;

   -----------------------
   -- SET_STAT_Register --
   -----------------------

   subtype SET_STAT_SSTAT_Field is Interfaces.Bit_Types.Bit;
   subtype SET_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt31;

   --  Set register
   type SET_STAT_Register is record
      --  Write-only. Writing a 1 to this bit sets the STATUS interrupt bit in
      --  the STATUS register.
      SSTAT    : SET_STAT_SSTAT_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED : SET_STAT_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET_STAT_Register use record
      SSTAT    at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Alarm timer
   type ATIMER_Peripheral is record
      --  Downcounter register
      DOWNCOUNTER : DOWNCOUNTER_Register;
      --  Preset value register
      PRESET      : PRESET_Register;
      --  Interrupt clear enable register
      CLR_EN      : CLR_EN_Register;
      --  Interrupt set enable register
      SET_EN      : SET_EN_Register;
      --  Status register
      STATUS      : STATUS_Register;
      --  Enable register
      ENABLE      : ENABLE_Register;
      --  Clear register
      CLR_STAT    : CLR_STAT_Register;
      --  Set register
      SET_STAT    : SET_STAT_Register;
   end record
     with Volatile;

   for ATIMER_Peripheral use record
      DOWNCOUNTER at 0 range 0 .. 31;
      PRESET      at 4 range 0 .. 31;
      CLR_EN      at 4056 range 0 .. 31;
      SET_EN      at 4060 range 0 .. 31;
      STATUS      at 4064 range 0 .. 31;
      ENABLE      at 4068 range 0 .. 31;
      CLR_STAT    at 4072 range 0 .. 31;
      SET_STAT    at 4076 range 0 .. 31;
   end record;

   --  Alarm timer
   ATIMER_Periph : aliased ATIMER_Peripheral
     with Import, Address => ATIMER_Base;

end Interfaces.LPC43xxC.ATIMER;
