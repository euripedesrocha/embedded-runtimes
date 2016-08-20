--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.CRCCU is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -------------------------
   -- CRCCU_DSCR_Register --
   -------------------------

   subtype DSCR_DSCR_Field is Interfaces.Bit_Types.UInt23;

   --  Descriptor Base Register
   type CRCCU_DSCR_Register is record
      --  unspecified
      Reserved_0_8 : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Description Base Address
      DSCR         : DSCR_DSCR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DSCR_Register use record
      Reserved_0_8 at 0 range 0 .. 8;
      DSCR         at 0 range 9 .. 31;
   end record;

   --------------------------
   -- CRCCU_DMAEN_Register --
   --------------------------

   subtype DMAEN_DMAEN_Field is Interfaces.Bit_Types.Bit;

   --  DMA Enable Register
   type CRCCU_DMAEN_Register is record
      --  Write-only. DMA Enable
      DMAEN         : DMAEN_DMAEN_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DMAEN_Register use record
      DMAEN         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ---------------------------
   -- CRCCU_DMADIS_Register --
   ---------------------------

   subtype DMADIS_DMADIS_Field is Interfaces.Bit_Types.Bit;

   --  DMA Disable Register
   type CRCCU_DMADIS_Register is record
      --  Write-only. DMA Disable
      DMADIS        : DMADIS_DMADIS_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DMADIS_Register use record
      DMADIS        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --------------------------
   -- CRCCU_DMASR_Register --
   --------------------------

   subtype DMASR_DMASR_Field is Interfaces.Bit_Types.Bit;

   --  DMA Status Register
   type CRCCU_DMASR_Register is record
      --  Read-only. DMA Channel Status
      DMASR         : DMASR_DMASR_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DMASR_Register use record
      DMASR         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ---------------------------
   -- CRCCU_DMAIER_Register --
   ---------------------------

   subtype DMAIER_DMAIER_Field is Interfaces.Bit_Types.Bit;

   --  DMA Interrupt Enable Register
   type CRCCU_DMAIER_Register is record
      --  Write-only. DMA Interrupt Enable
      DMAIER        : DMAIER_DMAIER_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DMAIER_Register use record
      DMAIER        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ---------------------------
   -- CRCCU_DMAIDR_Register --
   ---------------------------

   subtype DMAIDR_DMAIDR_Field is Interfaces.Bit_Types.Bit;

   --  DMA Interrupt Disable Register
   type CRCCU_DMAIDR_Register is record
      --  Write-only. DMA Interrupt Disable
      DMAIDR        : DMAIDR_DMAIDR_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DMAIDR_Register use record
      DMAIDR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ---------------------------
   -- CRCCU_DMAIMR_Register --
   ---------------------------

   subtype DMAIMR_DMAIMR_Field is Interfaces.Bit_Types.Bit;

   --  DMA Interrupt Mask Register
   type CRCCU_DMAIMR_Register is record
      --  Write-only. DMA Interrupt Mask
      DMAIMR        : DMAIMR_DMAIMR_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DMAIMR_Register use record
      DMAIMR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ---------------------------
   -- CRCCU_DMAISR_Register --
   ---------------------------

   subtype DMAISR_DMAISR_Field is Interfaces.Bit_Types.Bit;

   --  DMA Interrupt Status Register
   type CRCCU_DMAISR_Register is record
      --  Read-only. DMA Interrupt Status
      DMAISR        : DMAISR_DMAISR_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DMAISR_Register use record
      DMAISR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------------
   -- CRCCU_CR_Register --
   -----------------------

   subtype CR_RESET_Field is Interfaces.Bit_Types.Bit;

   --  Control Register
   type CRCCU_CR_Register is record
      --  Write-only. Reset CRCComputation
      RESET         : CR_RESET_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_CR_Register use record
      RESET         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------------
   -- CRCCU_MR_Register --
   -----------------------

   subtype MR_ENABLE_Field is Interfaces.Bit_Types.Bit;
   subtype MR_COMPARE_Field is Interfaces.Bit_Types.Bit;

   --  Polynomial Type
   type PTYPESelect is
     (
      Ccitt8023,
      Castagnoli,
      Ccitt16)
     with Size => 2;
   for PTYPESelect use
     (Ccitt8023 => 0,
      Castagnoli => 1,
      Ccitt16 => 2);

   subtype MR_DIVIDER_Field is Interfaces.Bit_Types.UInt4;

   --  Mode Register
   type CRCCU_MR_Register is record
      --  CRC Computation Enable
      ENABLE        : MR_ENABLE_Field := 16#0#;
      --  CRC Compare
      COMPARE       : MR_COMPARE_Field := 16#0#;
      --  Polynomial Type
      PTYPE         : PTYPESelect := Interfaces.ATSAM4L.CRCCU.Ccitt8023;
      --  Bandwidth Divider
      DIVIDER       : MR_DIVIDER_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_MR_Register use record
      ENABLE        at 0 range 0 .. 0;
      COMPARE       at 0 range 1 .. 1;
      PTYPE         at 0 range 2 .. 3;
      DIVIDER       at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CRCCU_IER_Register --
   ------------------------

   subtype IER_ERRIER_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Enable Register
   type CRCCU_IER_Register is record
      --  Write-only. CRC Error Interrupt Enable
      ERRIER        : IER_ERRIER_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_IER_Register use record
      ERRIER        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ------------------------
   -- CRCCU_IDR_Register --
   ------------------------

   subtype IDR_ERRIDR_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Disable Register
   type CRCCU_IDR_Register is record
      --  Write-only. CRC Error Interrupt Disable
      ERRIDR        : IDR_ERRIDR_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_IDR_Register use record
      ERRIDR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ------------------------
   -- CRCCU_IMR_Register --
   ------------------------

   subtype IMR_ERRIMR_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Mask Register
   type CRCCU_IMR_Register is record
      --  Read-only. CRC Error Interrupt Mask
      ERRIMR        : IMR_ERRIMR_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_IMR_Register use record
      ERRIMR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ------------------------
   -- CRCCU_ISR_Register --
   ------------------------

   subtype ISR_ERRISR_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Status Register
   type CRCCU_ISR_Register is record
      --  Read-only. CRC Error Interrupt Status
      ERRISR        : ISR_ERRISR_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_ISR_Register use record
      ERRISR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ----------------------------
   -- CRCCU_VERSION_Register --
   ----------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type CRCCU_VERSION_Register is record
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

   for CRCCU_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CRC Calculation Unit
   type CRCCU_Peripheral is record
      --  Descriptor Base Register
      DSCR    : CRCCU_DSCR_Register;
      --  DMA Enable Register
      DMAEN   : CRCCU_DMAEN_Register;
      --  DMA Disable Register
      DMADIS  : CRCCU_DMADIS_Register;
      --  DMA Status Register
      DMASR   : CRCCU_DMASR_Register;
      --  DMA Interrupt Enable Register
      DMAIER  : CRCCU_DMAIER_Register;
      --  DMA Interrupt Disable Register
      DMAIDR  : CRCCU_DMAIDR_Register;
      --  DMA Interrupt Mask Register
      DMAIMR  : CRCCU_DMAIMR_Register;
      --  DMA Interrupt Status Register
      DMAISR  : CRCCU_DMAISR_Register;
      --  Control Register
      CR      : CRCCU_CR_Register;
      --  Mode Register
      MR      : CRCCU_MR_Register;
      --  Status Register
      SR      : Interfaces.Bit_Types.Word;
      --  Interrupt Enable Register
      IER     : CRCCU_IER_Register;
      --  Interrupt Disable Register
      IDR     : CRCCU_IDR_Register;
      --  Interrupt Mask Register
      IMR     : CRCCU_IMR_Register;
      --  Interrupt Status Register
      ISR     : CRCCU_ISR_Register;
      --  Version Register
      VERSION : CRCCU_VERSION_Register;
   end record
     with Volatile;

   for CRCCU_Peripheral use record
      DSCR    at 0 range 0 .. 31;
      DMAEN   at 8 range 0 .. 31;
      DMADIS  at 12 range 0 .. 31;
      DMASR   at 16 range 0 .. 31;
      DMAIER  at 20 range 0 .. 31;
      DMAIDR  at 24 range 0 .. 31;
      DMAIMR  at 28 range 0 .. 31;
      DMAISR  at 32 range 0 .. 31;
      CR      at 52 range 0 .. 31;
      MR      at 56 range 0 .. 31;
      SR      at 60 range 0 .. 31;
      IER     at 64 range 0 .. 31;
      IDR     at 68 range 0 .. 31;
      IMR     at 72 range 0 .. 31;
      ISR     at 76 range 0 .. 31;
      VERSION at 252 range 0 .. 31;
   end record;

   --  CRC Calculation Unit
   CRCCU_Periph : aliased CRCCU_Peripheral
     with Import, Address => CRCCU_Base;

end Interfaces.ATSAM4L.CRCCU;
