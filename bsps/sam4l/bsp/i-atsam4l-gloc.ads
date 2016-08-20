--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.GLOC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- CR_Register --
   -----------------

   subtype CR0_AEN_Field is Interfaces.Bit_Types.UInt4;
   subtype CR0_FILTEN_Field is Interfaces.Bit_Types.Bit;

   --  Control Register
   type CR_Register is record
      --  Input mask
      AEN           : CR0_AEN_Field := 16#0#;
      --  unspecified
      Reserved_4_30 : Interfaces.Bit_Types.UInt27 := 16#0#;
      --  Filter enable
      FILTEN        : CR0_FILTEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      AEN           at 0 range 0 .. 3;
      Reserved_4_30 at 0 range 4 .. 30;
      FILTEN        at 0 range 31 .. 31;
   end record;

   --------------------
   -- TRUTH_Register --
   --------------------

   subtype TRUTH0_TRUTH_Field is Interfaces.Bit_Types.Short;

   --  Truth Register
   type TRUTH_Register is record
      --  Truth
      TRUTH          : TRUTH0_TRUTH_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRUTH_Register use record
      TRUTH          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------------------
   -- GLOC_PARAMETER_Register --
   -----------------------------

   subtype PARAMETER_LUTS_Field is Interfaces.Bit_Types.Byte;

   --  Parameter Register
   type GLOC_PARAMETER_Register is record
      --  Read-only. LUTs
      LUTS          : PARAMETER_LUTS_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GLOC_PARAMETER_Register use record
      LUTS          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ---------------------------
   -- GLOC_VERSION_Register --
   ---------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type GLOC_VERSION_Register is record
      --  Read-only. Version
      VERSION        : VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant
      VARIANT        : VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GLOC_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Glue Logic Controller
   type GLOC_Peripheral is record
      --  Control Register
      CR0       : CR_Register;
      --  Truth Register
      TRUTH0    : TRUTH_Register;
      --  Control Register
      CR1       : CR_Register;
      --  Truth Register
      TRUTH1    : TRUTH_Register;
      --  Parameter Register
      PARAMETER : GLOC_PARAMETER_Register;
      --  Version Register
      VERSION   : GLOC_VERSION_Register;
   end record
     with Volatile;

   for GLOC_Peripheral use record
      CR0       at 0 range 0 .. 31;
      TRUTH0    at 4 range 0 .. 31;
      CR1       at 8 range 0 .. 31;
      TRUTH1    at 12 range 0 .. 31;
      PARAMETER at 56 range 0 .. 31;
      VERSION   at 60 range 0 .. 31;
   end record;

   --  Glue Logic Controller
   GLOC_Periph : aliased GLOC_Peripheral
     with Import, Address => GLOC_Base;

end Interfaces.ATSAM4L.GLOC;
