--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.FREQM is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -------------------------
   -- FREQM_CTRL_Register --
   -------------------------

   subtype CTRL_START_Field is Interfaces.Bit_Types.Bit;

   --  Control register
   type FREQM_CTRL_Register is record
      --  Write-only. Start frequency measurement
      START         : CTRL_START_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQM_CTRL_Register use record
      START         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -------------------------
   -- FREQM_MODE_Register --
   -------------------------

   subtype MODE_REFSEL_Field is Interfaces.Bit_Types.UInt2;
   subtype MODE_REFNUM_Field is Interfaces.Bit_Types.Byte;
   subtype MODE_CLKSEL_Field is Interfaces.Bit_Types.UInt5;
   subtype MODE_REFCEN_Field is Interfaces.Bit_Types.Bit;

   --  Mode register
   type FREQM_MODE_Register is record
      --  Reference Clock Selection
      REFSEL         : MODE_REFSEL_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Number of Reference CLock Cycles
      REFNUM         : MODE_REFNUM_Field := 16#0#;
      --  Clock Source Selection
      CLKSEL         : MODE_CLKSEL_Field := 16#0#;
      --  unspecified
      Reserved_21_30 : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Reference Clock Enable
      REFCEN         : MODE_REFCEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQM_MODE_Register use record
      REFSEL         at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      REFNUM         at 0 range 8 .. 15;
      CLKSEL         at 0 range 16 .. 20;
      Reserved_21_30 at 0 range 21 .. 30;
      REFCEN         at 0 range 31 .. 31;
   end record;

   ---------------------------
   -- FREQM_STATUS_Register --
   ---------------------------

   subtype STATUS_BUSY_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_RCLKBUSY_Field is Interfaces.Bit_Types.Bit;

   --  Status register
   type FREQM_STATUS_Register is record
      --  Read-only. Frequency measurement on-going
      BUSY          : STATUS_BUSY_Field;
      --  Read-only. Reference Clock busy
      RCLKBUSY      : STATUS_RCLKBUSY_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQM_STATUS_Register use record
      BUSY          at 0 range 0 .. 0;
      RCLKBUSY      at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --------------------------
   -- FREQM_VALUE_Register --
   --------------------------

   subtype VALUE_VALUE_Field is Interfaces.Bit_Types.UInt24;

   --  Value register
   type FREQM_VALUE_Register is record
      --  Read-only. Measured frequency
      VALUE          : VALUE_VALUE_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQM_VALUE_Register use record
      VALUE          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   ------------------------
   -- FREQM_IER_Register --
   ------------------------

   subtype IER_DONE_Field is Interfaces.Bit_Types.Bit;
   subtype IER_RCLKRDY_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Enable Register
   type FREQM_IER_Register is record
      --  Write-only. Frequency measurment done
      DONE          : IER_DONE_Field := 16#0#;
      --  Write-only. Reference Clock ready
      RCLKRDY       : IER_RCLKRDY_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQM_IER_Register use record
      DONE          at 0 range 0 .. 0;
      RCLKRDY       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   ------------------------
   -- FREQM_IDR_Register --
   ------------------------

   subtype IDR_DONE_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_RCLKRDY_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Diable Register
   type FREQM_IDR_Register is record
      --  Write-only. Frequency measurment done
      DONE          : IDR_DONE_Field := 16#0#;
      --  Write-only. Reference Clock ready
      RCLKRDY       : IDR_RCLKRDY_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQM_IDR_Register use record
      DONE          at 0 range 0 .. 0;
      RCLKRDY       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   ------------------------
   -- FREQM_IMR_Register --
   ------------------------

   subtype IMR_DONE_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_RCLKRDY_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Mask Register
   type FREQM_IMR_Register is record
      --  Read-only. Frequency measurment done
      DONE          : IMR_DONE_Field;
      --  Read-only. Reference Clock ready
      RCLKRDY       : IMR_RCLKRDY_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQM_IMR_Register use record
      DONE          at 0 range 0 .. 0;
      RCLKRDY       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   ------------------------
   -- FREQM_ISR_Register --
   ------------------------

   subtype ISR_DONE_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_RCLKRDY_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Status Register
   type FREQM_ISR_Register is record
      --  Read-only. Frequency measurment done
      DONE          : ISR_DONE_Field;
      --  Read-only. Reference Clock ready
      RCLKRDY       : ISR_RCLKRDY_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQM_ISR_Register use record
      DONE          at 0 range 0 .. 0;
      RCLKRDY       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   ------------------------
   -- FREQM_ICR_Register --
   ------------------------

   subtype ICR_DONE_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_RCLKRDY_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Clear Register
   type FREQM_ICR_Register is record
      --  Write-only. Frequency measurment done
      DONE          : ICR_DONE_Field := 16#0#;
      --  Write-only. Reference Clock ready
      RCLKRDY       : ICR_RCLKRDY_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQM_ICR_Register use record
      DONE          at 0 range 0 .. 0;
      RCLKRDY       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   ----------------------------
   -- FREQM_VERSION_Register --
   ----------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type FREQM_VERSION_Register is record
      --  Read-only. Version number
      VERSION        : VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant number
      VARIANT        : VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQM_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Frequency Meter
   type FREQM_Peripheral is record
      --  Control register
      CTRL    : FREQM_CTRL_Register;
      --  Mode register
      MODE    : FREQM_MODE_Register;
      --  Status register
      STATUS  : FREQM_STATUS_Register;
      --  Value register
      VALUE   : FREQM_VALUE_Register;
      --  Interrupt Enable Register
      IER     : FREQM_IER_Register;
      --  Interrupt Diable Register
      IDR     : FREQM_IDR_Register;
      --  Interrupt Mask Register
      IMR     : FREQM_IMR_Register;
      --  Interrupt Status Register
      ISR     : FREQM_ISR_Register;
      --  Interrupt Clear Register
      ICR     : FREQM_ICR_Register;
      --  Version Register
      VERSION : FREQM_VERSION_Register;
   end record
     with Volatile;

   for FREQM_Peripheral use record
      CTRL    at 0 range 0 .. 31;
      MODE    at 4 range 0 .. 31;
      STATUS  at 8 range 0 .. 31;
      VALUE   at 12 range 0 .. 31;
      IER     at 16 range 0 .. 31;
      IDR     at 20 range 0 .. 31;
      IMR     at 24 range 0 .. 31;
      ISR     at 28 range 0 .. 31;
      ICR     at 32 range 0 .. 31;
      VERSION at 1020 range 0 .. 31;
   end record;

   --  Frequency Meter
   FREQM_Periph : aliased FREQM_Peripheral
     with Import, Address => FREQM_Base;

end Interfaces.ATSAM4L.FREQM;
