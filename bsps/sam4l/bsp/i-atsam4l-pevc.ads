--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.PEVC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ------------------------
   -- PEVC_CHMX_Register --
   ------------------------

   --  Event Multiplexer
   type EVMXSelect is
     (
      --  Event 0
      EVMXSelect_0X00,
      --  Event 1
      EVMXSelect_0X01)
     with Size => 6;
   for EVMXSelect use
     (EVMXSelect_0X00 => 0,
      EVMXSelect_0X01 => 1);

   --  Software Event Multiplexer
   type SMXSelect is
     (
      --  Hardware events
      SMXSelect_0,
      --  Software event
      SMXSelect_1)
     with Size => 1;
   for SMXSelect use
     (SMXSelect_0 => 0,
      SMXSelect_1 => 1);

   --  Channel Multiplexer
   type PEVC_CHMX_Register is record
      --  Event Multiplexer
      EVMX          : EVMXSelect := Interfaces.ATSAM4L.PEVC.EVMXSelect_0X00;
      --  unspecified
      Reserved_6_7  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Software Event Multiplexer
      SMX           : SMXSelect := Interfaces.ATSAM4L.PEVC.SMXSelect_0;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PEVC_CHMX_Register use record
      EVMX          at 0 range 0 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      SMX           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Channel Multiplexer
   type PEVC_CHMX_Registers is array (0 .. 18) of PEVC_CHMX_Register;

   -----------------------
   -- PEVC_EVS_Register --
   -----------------------

   --  Event Shaper Enable
   type ENSelect is
     (
      --  No Action
      ENSelect_0,
      --  Event Shaper enable
      ENSelect_1)
     with Size => 1;
   for ENSelect use
     (ENSelect_0 => 0,
      ENSelect_1 => 1);

   --  Input Glitch Filter Rise
   type IGFRSelect is
     (
      --  No Action
      IGFRSelect_0,
      --  Input Glitch Filter : a rising edge on event input will raise trigger
      --  output
      IGFRSelect_1)
     with Size => 1;
   for IGFRSelect use
     (IGFRSelect_0 => 0,
      IGFRSelect_1 => 1);

   --  Input Glitch Filter Fall
   type IGFFSelect is
     (
      --  No Action
      IGFFSelect_0,
      --  Input Glitch Filter : a falling edge on event input will raise
      --  trigger output
      IGFFSelect_1)
     with Size => 1;
   for IGFFSelect use
     (IGFFSelect_0 => 0,
      IGFFSelect_1 => 1);

   subtype EVS_IGFON_Field is Interfaces.Bit_Types.Bit;

   --  Event Shaper
   type PEVC_EVS_Register is record
      --  Event Shaper Enable
      EN             : ENSelect := Interfaces.ATSAM4L.PEVC.ENSelect_0;
      --  unspecified
      Reserved_1_15  : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  Input Glitch Filter Rise
      IGFR           : IGFRSelect := Interfaces.ATSAM4L.PEVC.IGFRSelect_0;
      --  Input Glitch Filter Fall
      IGFF           : IGFFSelect := Interfaces.ATSAM4L.PEVC.IGFFSelect_0;
      --  Input Glitch Filter Status
      IGFON          : EVS_IGFON_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PEVC_EVS_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      IGFR           at 0 range 16 .. 16;
      IGFF           at 0 range 17 .. 17;
      IGFON          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Event Shaper
   type PEVC_EVS_Registers is array (0 .. 30) of PEVC_EVS_Register;

   -------------------------
   -- PEVC_IGFDR_Register --
   -------------------------

   subtype IGFDR_IGFDR_Field is Interfaces.Bit_Types.UInt4;

   --  Input Glitch Filter Divider Register
   type PEVC_IGFDR_Register is record
      --  Input Glitch Filter Divider Register
      IGFDR         : IGFDR_IGFDR_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PEVC_IGFDR_Register use record
      IGFDR         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------------------
   -- PEVC_PARAMETER_Register --
   -----------------------------

   subtype PARAMETER_IGF_COUNT_Field is Interfaces.Bit_Types.Byte;
   subtype PARAMETER_EVS_COUNT_Field is Interfaces.Bit_Types.Byte;
   subtype PARAMETER_EVIN_Field is Interfaces.Bit_Types.Byte;
   subtype PARAMETER_TRIGOUT_Field is Interfaces.Bit_Types.Byte;

   --  Parameter
   type PEVC_PARAMETER_Register is record
      --  Read-only. Number of Input Glitch Filters
      IGF_COUNT : PARAMETER_IGF_COUNT_Field;
      --  Read-only. Number of Event Shapers
      EVS_COUNT : PARAMETER_EVS_COUNT_Field;
      --  Read-only. Number of Event Inputs / Generators
      EVIN      : PARAMETER_EVIN_Field;
      --  Read-only. Number of Trigger Outputs / Channels / Users
      TRIGOUT   : PARAMETER_TRIGOUT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PEVC_PARAMETER_Register use record
      IGF_COUNT at 0 range 0 .. 7;
      EVS_COUNT at 0 range 8 .. 15;
      EVIN      at 0 range 16 .. 23;
      TRIGOUT   at 0 range 24 .. 31;
   end record;

   ---------------------------
   -- PEVC_VERSION_Register --
   ---------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version
   type PEVC_VERSION_Register is record
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

   for PEVC_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Peripheral Event Controller
   type PEVC_Peripheral is record
      --  Channel Status Register
      CHSR      : Interfaces.Bit_Types.Word;
      --  Channel Enable Register
      CHER      : Interfaces.Bit_Types.Word;
      --  Channel Disable Register
      CHDR      : Interfaces.Bit_Types.Word;
      --  Software Event
      SEV       : Interfaces.Bit_Types.Word;
      --  Channel / User Busy
      BUSY      : Interfaces.Bit_Types.Word;
      --  Trigger Interrupt Mask Enable Register
      TRIER     : Interfaces.Bit_Types.Word;
      --  Trigger Interrupt Mask Disable Register
      TRIDR     : Interfaces.Bit_Types.Word;
      --  Trigger Interrupt Mask Register
      TRIMR     : Interfaces.Bit_Types.Word;
      --  Trigger Status Register
      TRSR      : Interfaces.Bit_Types.Word;
      --  Trigger Status Clear Register
      TRSCR     : Interfaces.Bit_Types.Word;
      --  Overrun Interrupt Mask Enable Register
      OVIER     : Interfaces.Bit_Types.Word;
      --  Overrun Interrupt Mask Disable Register
      OVIDR     : Interfaces.Bit_Types.Word;
      --  Overrun Interrupt Mask Register
      OVIMR     : Interfaces.Bit_Types.Word;
      --  Overrun Status Register
      OVSR      : Interfaces.Bit_Types.Word;
      --  Overrun Status Clear Register
      OVSCR     : Interfaces.Bit_Types.Word;
      --  Channel Multiplexer
      CHMX      : PEVC_CHMX_Registers;
      --  Event Shaper
      EVS       : PEVC_EVS_Registers;
      --  Input Glitch Filter Divider Register
      IGFDR     : PEVC_IGFDR_Register;
      --  Parameter
      PARAMETER : PEVC_PARAMETER_Register;
      --  Version
      VERSION   : PEVC_VERSION_Register;
   end record
     with Volatile;

   for PEVC_Peripheral use record
      CHSR      at 0 range 0 .. 31;
      CHER      at 4 range 0 .. 31;
      CHDR      at 8 range 0 .. 31;
      SEV       at 16 range 0 .. 31;
      BUSY      at 20 range 0 .. 31;
      TRIER     at 32 range 0 .. 31;
      TRIDR     at 36 range 0 .. 31;
      TRIMR     at 40 range 0 .. 31;
      TRSR      at 48 range 0 .. 31;
      TRSCR     at 52 range 0 .. 31;
      OVIER     at 64 range 0 .. 31;
      OVIDR     at 68 range 0 .. 31;
      OVIMR     at 72 range 0 .. 31;
      OVSR      at 80 range 0 .. 31;
      OVSCR     at 84 range 0 .. 31;
      CHMX      at 256 range 0 .. 607;
      EVS       at 512 range 0 .. 991;
      IGFDR     at 768 range 0 .. 31;
      PARAMETER at 1016 range 0 .. 31;
      VERSION   at 1020 range 0 .. 31;
   end record;

   --  Peripheral Event Controller
   PEVC_Periph : aliased PEVC_Peripheral
     with Import, Address => PEVC_Base;

end Interfaces.ATSAM4L.PEVC;
