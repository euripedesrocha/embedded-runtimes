--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.ABDACB is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ------------------------
   -- ABDACB_CR_Register --
   ------------------------

   --  Enable
   type ENSelect is
     (
      --  Audio DAC is disabled
      ENSelect_0,
      --  Audio DAC is enabled
      ENSelect_1)
     with Size => 1;
   for ENSelect use
     (ENSelect_0 => 0,
      ENSelect_1 => 1);

   --  Swap Channels
   type SWAPSelect is
     (
      --  The CHANNEL0 and CHANNEL1 samples will not be swapped when writing
      --  the Audio DAC Sample Data Register (SDR)
      SWAPSelect_0,
      --  The CHANNEL0 and CHANNEL1 samples will be swapped when writing the
      --  Audio DAC Sample Data Register (SDR)
      SWAPSelect_1)
     with Size => 1;
   for SWAPSelect use
     (SWAPSelect_0 => 0,
      SWAPSelect_1 => 1);

   subtype CR_ALTUPR_Field is Interfaces.Bit_Types.Bit;
   subtype CR_CMOC_Field is Interfaces.Bit_Types.Bit;
   subtype CR_MONO_Field is Interfaces.Bit_Types.Bit;
   subtype CR_SWRST_Field is Interfaces.Bit_Types.Bit;
   subtype CR_DATAFORMAT_Field is Interfaces.Bit_Types.UInt3;
   subtype CR_FS_Field is Interfaces.Bit_Types.UInt4;

   --  Control Register
   type ABDACB_CR_Register is record
      --  Enable
      EN             : ENSelect := Interfaces.ATSAM4L.ABDACB.ENSelect_0;
      --  Swap Channels
      SWAP           : SWAPSelect := Interfaces.ATSAM4L.ABDACB.SWAPSelect_0;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Alternative up-sampling ratio
      ALTUPR         : CR_ALTUPR_Field := 16#0#;
      --  Common mode offset control
      CMOC           : CR_CMOC_Field := 16#0#;
      --  Mono mode
      MONO           : CR_MONO_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Software reset
      SWRST          : CR_SWRST_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Data word format
      DATAFORMAT     : CR_DATAFORMAT_Field := 16#0#;
      --  unspecified
      Reserved_19_23 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Sampling frequency
      FS             : CR_FS_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ABDACB_CR_Register use record
      EN             at 0 range 0 .. 0;
      SWAP           at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ALTUPR         at 0 range 3 .. 3;
      CMOC           at 0 range 4 .. 4;
      MONO           at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      SWRST          at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DATAFORMAT     at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      FS             at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   ------------------
   -- VCR_Register --
   ------------------

   subtype VCR0_VOLUME_Field is Interfaces.Bit_Types.UInt15;
   subtype VCR0_MUTE_Field is Interfaces.Bit_Types.Bit;

   --  Volume Control Register 0
   type VCR_Register is record
      --  Volume Control
      VOLUME         : VCR0_VOLUME_Field := 16#0#;
      --  unspecified
      Reserved_15_30 : Interfaces.Bit_Types.Short := 16#0#;
      --  Mute
      MUTE           : VCR0_MUTE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VCR_Register use record
      VOLUME         at 0 range 0 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      MUTE           at 0 range 31 .. 31;
   end record;

   -------------------------
   -- ABDACB_IER_Register --
   -------------------------

   --  Transmit Ready Interrupt Enable
   type TXRDYSelect is
     (
      --  No effect
      TXRDYSelect_0,
      --  Enables the Audio DAC TX Ready interrupt
      TXRDYSelect_1)
     with Size => 1;
   for TXRDYSelect use
     (TXRDYSelect_0 => 0,
      TXRDYSelect_1 => 1);

   --  Transmit Underrun Interrupt Enable
   type TXURSelect is
     (
      --  No effect
      TXURSelect_0,
      --  Enables the Audio DAC Underrun interrupt
      TXURSelect_1)
     with Size => 1;
   for TXURSelect use
     (TXURSelect_0 => 0,
      TXURSelect_1 => 1);

   --  Interrupt Enable Register
   type ABDACB_IER_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Transmit Ready Interrupt Enable
      TXRDY         : TXRDYSelect := Interfaces.ATSAM4L.ABDACB.TXRDYSelect_0;
      --  Write-only. Transmit Underrun Interrupt Enable
      TXUR          : TXURSelect := Interfaces.ATSAM4L.ABDACB.TXURSelect_0;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ABDACB_IER_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      TXRDY         at 0 range 1 .. 1;
      TXUR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -------------------------
   -- ABDACB_IDR_Register --
   -------------------------

   --  Interupt Disable Register
   type ABDACB_IDR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Transmit Ready Interrupt Disable
      TXRDY         : TXRDYSelect := Interfaces.ATSAM4L.ABDACB.TXRDYSelect_0;
      --  Write-only. Transmit Underrun Interrupt Disable
      TXUR          : TXURSelect := Interfaces.ATSAM4L.ABDACB.TXURSelect_0;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ABDACB_IDR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      TXRDY         at 0 range 1 .. 1;
      TXUR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -------------------------
   -- ABDACB_IMR_Register --
   -------------------------

   --  Interrupt Mask Register
   type ABDACB_IMR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit;
      --  Read-only. Transmit Ready Interrupt Mask
      TXRDY         : TXRDYSelect;
      --  Read-only. Transmit Underrun Interrupt Mask
      TXUR          : TXURSelect;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ABDACB_IMR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      TXRDY         at 0 range 1 .. 1;
      TXUR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   ------------------------
   -- ABDACB_SR_Register --
   ------------------------

   subtype SR_BUSY_Field is Interfaces.Bit_Types.Bit;

   --  Status Register
   type ABDACB_SR_Register is record
      --  Read-only. ABDACB Busy
      BUSY          : SR_BUSY_Field;
      --  Read-only. Transmit Ready
      TXRDY         : TXRDYSelect;
      --  Read-only. Transmit Underrun
      TXUR          : TXURSelect;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ABDACB_SR_Register use record
      BUSY          at 0 range 0 .. 0;
      TXRDY         at 0 range 1 .. 1;
      TXUR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -------------------------
   -- ABDACB_SCR_Register --
   -------------------------

   --  Status Clear Register
   type ABDACB_SCR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Transmit Ready Interrupt Clear
      TXRDY         : TXRDYSelect := Interfaces.ATSAM4L.ABDACB.TXRDYSelect_0;
      --  Write-only. Transmit Underrun Interrupt Clear
      TXUR          : TXURSelect := Interfaces.ATSAM4L.ABDACB.TXURSelect_0;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ABDACB_SCR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      TXRDY         at 0 range 1 .. 1;
      TXUR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------------------
   -- ABDACB_VERSION_Register --
   -----------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type ABDACB_VERSION_Register is record
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

   for ABDACB_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Audio Bitstream DAC
   type ABDACB_Peripheral is record
      --  Control Register
      CR        : ABDACB_CR_Register;
      --  Sample Data Register 0
      SDR0      : Interfaces.Bit_Types.Word;
      --  Sample Data Register 1
      SDR1      : Interfaces.Bit_Types.Word;
      --  Volume Control Register 0
      VCR0      : VCR_Register;
      --  Volume Control Register 1
      VCR1      : VCR_Register;
      --  Interrupt Enable Register
      IER       : ABDACB_IER_Register;
      --  Interupt Disable Register
      IDR       : ABDACB_IDR_Register;
      --  Interrupt Mask Register
      IMR       : ABDACB_IMR_Register;
      --  Status Register
      SR        : ABDACB_SR_Register;
      --  Status Clear Register
      SCR       : ABDACB_SCR_Register;
      --  Parameter Register
      PARAMETER : Interfaces.Bit_Types.Word;
      --  Version Register
      VERSION   : ABDACB_VERSION_Register;
   end record
     with Volatile;

   for ABDACB_Peripheral use record
      CR        at 0 range 0 .. 31;
      SDR0      at 4 range 0 .. 31;
      SDR1      at 8 range 0 .. 31;
      VCR0      at 12 range 0 .. 31;
      VCR1      at 16 range 0 .. 31;
      IER       at 20 range 0 .. 31;
      IDR       at 24 range 0 .. 31;
      IMR       at 28 range 0 .. 31;
      SR        at 32 range 0 .. 31;
      SCR       at 36 range 0 .. 31;
      PARAMETER at 40 range 0 .. 31;
      VERSION   at 44 range 0 .. 31;
   end record;

   --  Audio Bitstream DAC
   ABDACB_Periph : aliased ABDACB_Peripheral
     with Import, Address => ABDACB_Base;

end Interfaces.ATSAM4L.ABDACB;
