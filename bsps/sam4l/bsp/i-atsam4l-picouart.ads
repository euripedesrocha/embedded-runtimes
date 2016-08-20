--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.PICOUART is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --------------------------
   -- PICOUART_CR_Register --
   --------------------------

   subtype CR_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_DIS_Field is Interfaces.Bit_Types.Bit;

   --  Control Register
   type PICOUART_CR_Register is record
      --  Write-only. Enable
      EN            : CR_EN_Field := 16#0#;
      --  Write-only. Disable
      DIS           : CR_DIS_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PICOUART_CR_Register use record
      EN            at 0 range 0 .. 0;
      DIS           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   ---------------------------
   -- PICOUART_CFG_Register --
   ---------------------------

   subtype CFG_SOURCE_Field is Interfaces.Bit_Types.UInt2;
   subtype CFG_ACTION_Field is Interfaces.Bit_Types.Bit;
   subtype CFG_MATCH_Field is Interfaces.Bit_Types.Byte;

   --  Configuration Register
   type PICOUART_CFG_Register is record
      --  Source Enable Mode
      SOURCE         : CFG_SOURCE_Field := 16#0#;
      --  Action to perform
      ACTION         : CFG_ACTION_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Data Match
      MATCH          : CFG_MATCH_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PICOUART_CFG_Register use record
      SOURCE         at 0 range 0 .. 1;
      ACTION         at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      MATCH          at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --------------------------
   -- PICOUART_SR_Register --
   --------------------------

   subtype SR_EN_Field is Interfaces.Bit_Types.Bit;
   subtype SR_DRDY_Field is Interfaces.Bit_Types.Bit;

   --  Status Register
   type PICOUART_SR_Register is record
      --  Read-only. Enable Interrupt Status
      EN            : SR_EN_Field;
      --  Read-only. Data Ready Interrupt Status
      DRDY          : SR_DRDY_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PICOUART_SR_Register use record
      EN            at 0 range 0 .. 0;
      DRDY          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -------------------------------
   -- PICOUART_VERSION_Register --
   -------------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type PICOUART_VERSION_Register is record
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

   for PICOUART_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Pico UART
   type PICOUART_Peripheral is record
      --  Control Register
      CR      : PICOUART_CR_Register;
      --  Configuration Register
      CFG     : PICOUART_CFG_Register;
      --  Status Register
      SR      : PICOUART_SR_Register;
      --  Receive Holding Register
      RHR     : Interfaces.Bit_Types.Word;
      --  Version Register
      VERSION : PICOUART_VERSION_Register;
   end record
     with Volatile;

   for PICOUART_Peripheral use record
      CR      at 0 range 0 .. 31;
      CFG     at 4 range 0 .. 31;
      SR      at 8 range 0 .. 31;
      RHR     at 12 range 0 .. 31;
      VERSION at 32 range 0 .. 31;
   end record;

   --  Pico UART
   PICOUART_Periph : aliased PICOUART_Peripheral
     with Import, Address => PICOUART_Base;

end Interfaces.ATSAM4L.PICOUART;
