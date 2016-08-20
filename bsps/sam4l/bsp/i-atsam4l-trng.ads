--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.TRNG is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ----------------------
   -- TRNG_CR_Register --
   ----------------------

   subtype CR_ENABLE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_KEY_Field is Interfaces.Bit_Types.UInt24;

   --  Control Register
   type TRNG_CR_Register is record
      --  Write-only. Enables the TRNG to provide random values
      ENABLE       : CR_ENABLE_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write-only. Security Key
      KEY          : CR_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_CR_Register use record
      ENABLE       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      KEY          at 0 range 8 .. 31;
   end record;

   -----------------------
   -- TRNG_IER_Register --
   -----------------------

   subtype IER_DATRDY_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Enable Register
   type TRNG_IER_Register is record
      --  Write-only. Data Ready Interrupt Enable
      DATRDY        : IER_DATRDY_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_IER_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------------
   -- TRNG_IDR_Register --
   -----------------------

   subtype IDR_DATRDY_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Disable Register
   type TRNG_IDR_Register is record
      --  Write-only. Data Ready Interrupt Disable
      DATRDY        : IDR_DATRDY_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_IDR_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------------
   -- TRNG_IMR_Register --
   -----------------------

   subtype IMR_DATRDY_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Mask Register
   type TRNG_IMR_Register is record
      --  Read-only. Data Ready Interrupt Mask
      DATRDY        : IMR_DATRDY_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_IMR_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------------
   -- TRNG_ISR_Register --
   -----------------------

   subtype ISR_DATRDY_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Status Register
   type TRNG_ISR_Register is record
      --  Read-only. Data Ready Interrupt Status
      DATRDY        : ISR_DATRDY_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_ISR_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -------------------------
   -- TRNG_ODATA_Register --
   -------------------------

   subtype ODATA_ODATA_Field is Interfaces.Bit_Types.Bit;

   --  Output Data Register
   type TRNG_ODATA_Register is record
      --  Read-only. Output Data
      ODATA         : ODATA_ODATA_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_ODATA_Register use record
      ODATA         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ---------------------------
   -- TRNG_VERSION_Register --
   ---------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt3;

   --  Version Register
   type TRNG_VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant Number
      VARIANT        : VERSION_VARIANT_Field;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  True Random Number Generator
   type TRNG_Peripheral is record
      --  Control Register
      CR      : TRNG_CR_Register;
      --  Interrupt Enable Register
      IER     : TRNG_IER_Register;
      --  Interrupt Disable Register
      IDR     : TRNG_IDR_Register;
      --  Interrupt Mask Register
      IMR     : TRNG_IMR_Register;
      --  Interrupt Status Register
      ISR     : TRNG_ISR_Register;
      --  Output Data Register
      ODATA   : TRNG_ODATA_Register;
      --  Version Register
      VERSION : TRNG_VERSION_Register;
   end record
     with Volatile;

   for TRNG_Peripheral use record
      CR      at 0 range 0 .. 31;
      IER     at 16 range 0 .. 31;
      IDR     at 20 range 0 .. 31;
      IMR     at 24 range 0 .. 31;
      ISR     at 28 range 0 .. 31;
      ODATA   at 80 range 0 .. 31;
      VERSION at 252 range 0 .. 31;
   end record;

   --  True Random Number Generator
   TRNG_Periph : aliased TRNG_Peripheral
     with Import, Address => TRNG_Base;

end Interfaces.ATSAM4L.TRNG;
