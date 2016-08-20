--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.PARC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -----------------------
   -- PARC_CFG_Register --
   -----------------------

   subtype CFG_DSIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype CFG_SMODE_Field is Interfaces.Bit_Types.UInt2;
   subtype CFG_EMODE_Field is Interfaces.Bit_Types.Bit;
   subtype CFG_EDGE_Field is Interfaces.Bit_Types.Bit;
   subtype CFG_HALF_Field is Interfaces.Bit_Types.Bit;
   subtype CFG_ODD_Field is Interfaces.Bit_Types.Bit;

   --  Configuration Register
   type PARC_CFG_Register is record
      --  Data Size
      DSIZE         : CFG_DSIZE_Field := 16#0#;
      --  Sampling Mode
      SMODE         : CFG_SMODE_Field := 16#0#;
      --  Events Mode
      EMODE         : CFG_EMODE_Field := 16#0#;
      --  Sampling Edge Select
      EDGE          : CFG_EDGE_Field := 16#0#;
      --  Half Capture
      HALF          : CFG_HALF_Field := 16#0#;
      --  Odd Capture
      ODD           : CFG_ODD_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARC_CFG_Register use record
      DSIZE         at 0 range 0 .. 1;
      SMODE         at 0 range 2 .. 3;
      EMODE         at 0 range 4 .. 4;
      EDGE          at 0 range 5 .. 5;
      HALF          at 0 range 6 .. 6;
      ODD           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ----------------------
   -- PARC_CR_Register --
   ----------------------

   subtype CR_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_DIS_Field is Interfaces.Bit_Types.Bit;
   subtype CR_START_Field is Interfaces.Bit_Types.Bit;
   subtype CR_STOP_Field is Interfaces.Bit_Types.Bit;

   --  Control Register
   type PARC_CR_Register is record
      --  Enable
      EN            : CR_EN_Field := 16#0#;
      --  Write-only. Disable
      DIS           : CR_DIS_Field := 16#0#;
      --  Write-only. Start Capture
      START         : CR_START_Field := 16#0#;
      --  Stop Capture
      STOP          : CR_STOP_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARC_CR_Register use record
      EN            at 0 range 0 .. 0;
      DIS           at 0 range 1 .. 1;
      START         at 0 range 2 .. 2;
      STOP          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------------
   -- PARC_IER_Register --
   -----------------------

   subtype IER_DRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IER_OVR_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Enable Register
   type PARC_IER_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Data Ready Interrupt Enable
      DRDY          : IER_DRDY_Field := 16#0#;
      --  Write-only. Overrun Interrupt Enable
      OVR           : IER_OVR_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARC_IER_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DRDY          at 0 range 2 .. 2;
      OVR           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------------
   -- PARC_IDR_Register --
   -----------------------

   subtype IDR_DRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_OVR_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Disable Register
   type PARC_IDR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Data Ready Interrupt Disable
      DRDY          : IDR_DRDY_Field := 16#0#;
      --  Write-only. Overrun Interrupt Disable
      OVR           : IDR_OVR_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARC_IDR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DRDY          at 0 range 2 .. 2;
      OVR           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------------
   -- PARC_IMR_Register --
   -----------------------

   subtype IMR_DRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_OVR_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Mask Register
   type PARC_IMR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2;
      --  Read-only. Data Ready Interrupt Mask
      DRDY          : IMR_DRDY_Field;
      --  Read-only. Overrun Interrupt Mask
      OVR           : IMR_OVR_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARC_IMR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DRDY          at 0 range 2 .. 2;
      OVR           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   ----------------------
   -- PARC_SR_Register --
   ----------------------

   subtype SR_EN_Field is Interfaces.Bit_Types.Bit;
   subtype SR_CS_Field is Interfaces.Bit_Types.Bit;
   subtype SR_DRDY_Field is Interfaces.Bit_Types.Bit;
   subtype SR_OVR_Field is Interfaces.Bit_Types.Bit;

   --  Status Register
   type PARC_SR_Register is record
      --  Read-only. Enable Status
      EN            : SR_EN_Field;
      --  Read-only. Capture Status
      CS            : SR_CS_Field;
      --  Read-only. Data Ready Interrupt Status
      DRDY          : SR_DRDY_Field;
      --  Read-only. Overrun Interrupt Status
      OVR           : SR_OVR_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARC_SR_Register use record
      EN            at 0 range 0 .. 0;
      CS            at 0 range 1 .. 1;
      DRDY          at 0 range 2 .. 2;
      OVR           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------------
   -- PARC_ICR_Register --
   -----------------------

   subtype ICR_DRDY_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_OVR_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Status Clear Register
   type PARC_ICR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Data Ready Interrupt Status Clear
      DRDY          : ICR_DRDY_Field := 16#0#;
      --  Write-only. Overrun Interrupt Status Clear
      OVR           : ICR_OVR_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARC_ICR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DRDY          at 0 range 2 .. 2;
      OVR           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   ---------------------------
   -- PARC_VERSION_Register --
   ---------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type PARC_VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant Number
      VARIANT        : VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARC_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Parallel Capture
   type PARC_Peripheral is record
      --  Configuration Register
      CFG     : PARC_CFG_Register;
      --  Control Register
      CR      : PARC_CR_Register;
      --  Interrupt Enable Register
      IER     : PARC_IER_Register;
      --  Interrupt Disable Register
      IDR     : PARC_IDR_Register;
      --  Interrupt Mask Register
      IMR     : PARC_IMR_Register;
      --  Status Register
      SR      : PARC_SR_Register;
      --  Interrupt Status Clear Register
      ICR     : PARC_ICR_Register;
      --  Receive Holding Register
      RHR     : Interfaces.Bit_Types.Word;
      --  Version Register
      VERSION : PARC_VERSION_Register;
   end record
     with Volatile;

   for PARC_Peripheral use record
      CFG     at 0 range 0 .. 31;
      CR      at 4 range 0 .. 31;
      IER     at 8 range 0 .. 31;
      IDR     at 12 range 0 .. 31;
      IMR     at 16 range 0 .. 31;
      SR      at 20 range 0 .. 31;
      ICR     at 24 range 0 .. 31;
      RHR     at 28 range 0 .. 31;
      VERSION at 32 range 0 .. 31;
   end record;

   --  Parallel Capture
   PARC_Periph : aliased PARC_Peripheral
     with Import, Address => PARC_Base;

end Interfaces.ATSAM4L.PARC;
