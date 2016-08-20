--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.IISC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ----------------------
   -- IISC_CR_Register --
   ----------------------

   --  Receive Enable
   type RXENSelect is
     (
      --  No effect
      Off,
      --  Enables Data Receive if RXDIS is not set
      On)
     with Size => 1;
   for RXENSelect use
     (Off => 0,
      On => 1);

   --  Receive Disable
   type RXDISSelect is
     (
      --  No effect
      Off,
      --  Disables Data Receive
      On)
     with Size => 1;
   for RXDISSelect use
     (Off => 0,
      On => 1);

   --  Clocks Enable
   type CKENSelect is
     (
      --  No effect
      Off,
      --  Enables clocks if CKDIS is not set
      On)
     with Size => 1;
   for CKENSelect use
     (Off => 0,
      On => 1);

   --  Clocks Disable
   type CKDISSelect is
     (
      --  No effect
      Off,
      --  Disables clocks
      On)
     with Size => 1;
   for CKDISSelect use
     (Off => 0,
      On => 1);

   --  Transmit Enable
   type TXENSelect is
     (
      --  No effect
      Off,
      --  Enables Data Transmit if TXDIS is not set
      On)
     with Size => 1;
   for TXENSelect use
     (Off => 0,
      On => 1);

   --  Transmit Disable
   type TXDISSelect is
     (
      --  No effect
      Off,
      --  Disables Data Transmit
      On)
     with Size => 1;
   for TXDISSelect use
     (Off => 0,
      On => 1);

   --  Software Reset
   type SWRSTSelect is
     (
      --  No effect
      Off,
      --  Performs a software reset. Has priority on any other bit in CR
      On)
     with Size => 1;
   for SWRSTSelect use
     (Off => 0,
      On => 1);

   --  Control Register
   type IISC_CR_Register is record
      --  Write-only. Receive Enable
      RXEN          : RXENSelect := Interfaces.ATSAM4L.IISC.Off;
      --  Write-only. Receive Disable
      RXDIS         : RXDISSelect := Interfaces.ATSAM4L.IISC.Off;
      --  Write-only. Clocks Enable
      CKEN          : CKENSelect := Interfaces.ATSAM4L.IISC.Off;
      --  Write-only. Clocks Disable
      CKDIS         : CKDISSelect := Interfaces.ATSAM4L.IISC.Off;
      --  Write-only. Transmit Enable
      TXEN          : TXENSelect := Interfaces.ATSAM4L.IISC.Off;
      --  Write-only. Transmit Disable
      TXDIS         : TXDISSelect := Interfaces.ATSAM4L.IISC.Off;
      --  unspecified
      Reserved_6_6  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Software Reset
      SWRST         : SWRSTSelect := Interfaces.ATSAM4L.IISC.Off;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IISC_CR_Register use record
      RXEN          at 0 range 0 .. 0;
      RXDIS         at 0 range 1 .. 1;
      CKEN          at 0 range 2 .. 2;
      CKDIS         at 0 range 3 .. 3;
      TXEN          at 0 range 4 .. 4;
      TXDIS         at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      SWRST         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ----------------------
   -- IISC_MR_Register --
   ----------------------

   --  Master/Slave/Controller Mode
   type MODESelect is
     (
      --  Slave mode (only serial data handled, clocks received from external
      --  master or controller)
      Slave,
      --  Master mode (clocks generated and output by IISC, serial data handled
      --  if CR.RXEN and/or CR.TXEN written to 1)
      Master)
     with Size => 1;
   for MODESelect use
     (Slave => 0,
      Master => 1);

   --  Data Word Length
   type DATALENGTHSelect is
     (
      --  32 bits
      DATALENGTHSelect_32,
      --  24 bits
      DATALENGTHSelect_24,
      --  20 bits
      DATALENGTHSelect_20,
      --  18 bits
      DATALENGTHSelect_18,
      --  16 bits
      DATALENGTHSelect_16,
      --  16 bits compact stereo
      DATALENGTHSelect_16C,
      --  8 bits
      DATALENGTHSelect_8,
      --  8 bits compact stereo
      DATALENGTHSelect_8C)
     with Size => 3;
   for DATALENGTHSelect use
     (DATALENGTHSelect_32 => 0,
      DATALENGTHSelect_24 => 1,
      DATALENGTHSelect_20 => 2,
      DATALENGTHSelect_18 => 3,
      DATALENGTHSelect_16 => 4,
      DATALENGTHSelect_16C => 5,
      DATALENGTHSelect_8 => 6,
      DATALENGTHSelect_8C => 7);

   --  Receiver Mono
   type RXMONOSelect is
     (
      --  Normal mode
      Stereo,
      --  Left channel data is duplicated to right channel
      Mono)
     with Size => 1;
   for RXMONOSelect use
     (Stereo => 0,
      Mono => 1);

   --  Single or Multiple DMA Channels for Receiver
   type RXDMASelect is
     (
      --  Single DMA channel
      Single,
      --  One DMA channel per data channel
      Multiple)
     with Size => 1;
   for RXDMASelect use
     (Single => 0,
      Multiple => 1);

   --  Loop-back Test Mode
   type RXLOOPSelect is
     (
      --  Normal mode
      Off,
      --  ISDO internally connected to ISDI
      On)
     with Size => 1;
   for RXLOOPSelect use
     (Off => 0,
      On => 1);

   --  Transmitter Mono
   type TXMONOSelect is
     (
      --  Normal mode
      Stereo,
      --  Left channel data is duplicated to right channel
      Mono)
     with Size => 1;
   for TXMONOSelect use
     (Stereo => 0,
      Mono => 1);

   --  Single or Multiple DMA Channels for Transmitter
   type TXDMASelect is
     (
      --  Single DMA channel
      Single,
      --  One DMA channel per data channel
      Multiple)
     with Size => 1;
   for TXDMASelect use
     (Single => 0,
      Multiple => 1);

   --  Transmit Data when Underrun
   type TXSAMESelect is
     (
      --  Zero data transmitted in case of underrun
      Zero,
      --  Last data transmitted in case of underrun
      Same)
     with Size => 1;
   for TXSAMESelect use
     (Zero => 0,
      Same => 1);

   --  Master Clock to fs Ratio
   type IMCKFSSelect is
     (
      --  16 fs
      IMCKFSSelect_16,
      --  32 fs
      IMCKFSSelect_32,
      --  64 fs
      IMCKFSSelect_64,
      --  128 fs
      IMCKFSSelect_128,
      --  256 fs
      IMCKFSSelect_256,
      --  384 fs
      IMCKFSSelect_384,
      --  512 fs
      IMCKFSSelect_512,
      --  768 fs
      IMCKFSSelect_768,
      --  1024 fs
      IMCKFSSelect_1024)
     with Size => 6;
   for IMCKFSSelect use
     (IMCKFSSelect_16 => 0,
      IMCKFSSelect_32 => 1,
      IMCKFSSelect_64 => 3,
      IMCKFSSelect_128 => 7,
      IMCKFSSelect_256 => 15,
      IMCKFSSelect_384 => 23,
      IMCKFSSelect_512 => 31,
      IMCKFSSelect_768 => 47,
      IMCKFSSelect_1024 => 63);

   --  Master Clock Mode
   type IMCKMODESelect is
     (
      --  No IMCK generated
      No_Imck,
      --  IMCK generated
      Imck)
     with Size => 1;
   for IMCKMODESelect use
     (No_Imck => 0,
      Imck => 1);

   --  IWS Data Slot Width
   type IWS24Select is
     (
      --  IWS Data Slot is 32-bit wide for DATALENGTH=18/20/24-bit
      IWS24Select_32,
      --  IWS Data Slot is 24-bit wide for DATALENGTH=18/20/24-bit
      IWS24Select_24)
     with Size => 1;
   for IWS24Select use
     (IWS24Select_32 => 0,
      IWS24Select_24 => 1);

   --  Mode Register
   type IISC_MR_Register is record
      --  Master/Slave/Controller Mode
      MODE           : MODESelect := Interfaces.ATSAM4L.IISC.Slave;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Data Word Length
      DATALENGTH     : DATALENGTHSelect :=
                        Interfaces.ATSAM4L.IISC.DATALENGTHSelect_32;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Receiver Mono
      RXMONO         : RXMONOSelect := Interfaces.ATSAM4L.IISC.Stereo;
      --  Single or Multiple DMA Channels for Receiver
      RXDMA          : RXDMASelect := Interfaces.ATSAM4L.IISC.Single;
      --  Loop-back Test Mode
      RXLOOP         : RXLOOPSelect := Interfaces.ATSAM4L.IISC.Off;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Transmitter Mono
      TXMONO         : TXMONOSelect := Interfaces.ATSAM4L.IISC.Stereo;
      --  Single or Multiple DMA Channels for Transmitter
      TXDMA          : TXDMASelect := Interfaces.ATSAM4L.IISC.Single;
      --  Transmit Data when Underrun
      TXSAME         : TXSAMESelect := Interfaces.ATSAM4L.IISC.Zero;
      --  unspecified
      Reserved_15_23 : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Master Clock to fs Ratio
      IMCKFS         : IMCKFSSelect :=
                        Interfaces.ATSAM4L.IISC.IMCKFSSelect_16;
      --  Master Clock Mode
      IMCKMODE       : IMCKMODESelect := Interfaces.ATSAM4L.IISC.No_Imck;
      --  IWS Data Slot Width
      IWS24          : IWS24Select := Interfaces.ATSAM4L.IISC.IWS24Select_32;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IISC_MR_Register use record
      MODE           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      DATALENGTH     at 0 range 2 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      RXMONO         at 0 range 8 .. 8;
      RXDMA          at 0 range 9 .. 9;
      RXLOOP         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TXMONO         at 0 range 12 .. 12;
      TXDMA          at 0 range 13 .. 13;
      TXSAME         at 0 range 14 .. 14;
      Reserved_15_23 at 0 range 15 .. 23;
      IMCKFS         at 0 range 24 .. 29;
      IMCKMODE       at 0 range 30 .. 30;
      IWS24          at 0 range 31 .. 31;
   end record;

   ----------------------
   -- IISC_SR_Register --
   ----------------------

   --  Receive Ready
   type RXRDYSelect is
     (
      --  The register RHR is empty and can't be read
      Empty,
      --  The register RHR is full and is ready to be read
      Full)
     with Size => 1;
   for RXRDYSelect use
     (Empty => 0,
      Full => 1);

   --  Receive Overrun
   type RXORSelect is
     (
      --  No overrun
      No,
      --  The previous received data has not been read. This data is lost
      Yes)
     with Size => 1;
   for RXORSelect use
     (No => 0,
      Yes => 1);

   --  Transmit Ready
   type TXRDYSelect is
     (
      --  The register THR is full and can't be written
      Full,
      --  The register THR is empty and is ready to be written
      Empty)
     with Size => 1;
   for TXRDYSelect use
     (Full => 0,
      Empty => 1);

   --  Transmit Underrun
   type TXURSelect is
     (
      --  No underrun
      No,
      --  The last bit of the last data written to the register THR has been
      --  set. Until the next write to THR, data will be sent according to
      --  MR.TXSAME field
      Yes)
     with Size => 1;
   for TXURSelect use
     (No => 0,
      Yes => 1);

   --  Receive Overrun Channels
   type RXORCHSelect is
     (
      --  Overrun first occurred on left channel
      Left,
      --  Overrun first occurred on right channel
      Right)
     with Size => 2;
   for RXORCHSelect use
     (Left => 0,
      Right => 1);

   --  Transmit Underrun Channels
   type TXURCHSelect is
     (
      --  Underrun first occurred on left channel
      Left,
      --  Underrun first occurred on right channel
      Right)
     with Size => 2;
   for TXURCHSelect use
     (Left => 0,
      Right => 1);

   --  Status Register
   type IISC_SR_Register is record
      --  Read-only. Receive Enable
      RXEN           : RXENSelect;
      --  Read-only. Receive Ready
      RXRDY          : RXRDYSelect;
      --  Read-only. Receive Overrun
      RXOR           : RXORSelect;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit;
      --  Read-only. Transmit Enable
      TXEN           : TXENSelect;
      --  Read-only. Transmit Ready
      TXRDY          : TXRDYSelect;
      --  Read-only. Transmit Underrun
      TXUR           : TXURSelect;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit;
      --  Read-only. Receive Overrun Channels
      RXORCH         : RXORCHSelect;
      --  unspecified
      Reserved_10_19 : Interfaces.Bit_Types.UInt10;
      --  Read-only. Transmit Underrun Channels
      TXURCH         : TXURCHSelect;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IISC_SR_Register use record
      RXEN           at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      RXOR           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TXEN           at 0 range 4 .. 4;
      TXRDY          at 0 range 5 .. 5;
      TXUR           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RXORCH         at 0 range 8 .. 9;
      Reserved_10_19 at 0 range 10 .. 19;
      TXURCH         at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   -----------------------
   -- IISC_SCR_Register --
   -----------------------

   --  Receive Overrun
   type RXORSelect_1 is
     (
      --  No effect
      No,
      --  Clears the corresponding SR bit
      Clear)
     with Size => 1;
   for RXORSelect_1 use
     (No => 0,
      Clear => 1);

   --  Transmit Underrun
   type TXURSelect_1 is
     (
      --  No effect
      No,
      --  Clears the corresponding SR bit
      Clear)
     with Size => 1;
   for TXURSelect_1 use
     (No => 0,
      Clear => 1);

   subtype SCR_RXORCH_Field is Interfaces.Bit_Types.UInt2;
   subtype SCR_TXURCH_Field is Interfaces.Bit_Types.UInt2;

   --  Status Clear Register
   type IISC_SCR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Receive Overrun
      RXOR           : RXORSelect_1 := Interfaces.ATSAM4L.IISC.No;
      --  unspecified
      Reserved_3_5   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Transmit Underrun
      TXUR           : TXURSelect_1 := Interfaces.ATSAM4L.IISC.No;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Receive Overrun Channels
      RXORCH         : SCR_RXORCH_Field := 16#0#;
      --  unspecified
      Reserved_10_19 : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Write-only. Transmit Underrun Channels
      TXURCH         : SCR_TXURCH_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IISC_SCR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RXOR           at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      TXUR           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RXORCH         at 0 range 8 .. 9;
      Reserved_10_19 at 0 range 10 .. 19;
      TXURCH         at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   -----------------------
   -- IISC_SSR_Register --
   -----------------------

   --  Receive Overrun
   type RXORSelect_2 is
     (
      --  No effect
      No,
      --  Sets corresponding SR bit
      Set)
     with Size => 1;
   for RXORSelect_2 use
     (No => 0,
      Set => 1);

   --  Transmit Underrun
   type TXURSelect_2 is
     (
      --  No effect
      No,
      --  Sets corresponding SR bit
      Set)
     with Size => 1;
   for TXURSelect_2 use
     (No => 0,
      Set => 1);

   subtype SSR_RXORCH_Field is Interfaces.Bit_Types.UInt2;
   subtype SSR_TXURCH_Field is Interfaces.Bit_Types.UInt2;

   --  Status Set Register
   type IISC_SSR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Receive Overrun
      RXOR           : RXORSelect_2 := Interfaces.ATSAM4L.IISC.No;
      --  unspecified
      Reserved_3_5   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Transmit Underrun
      TXUR           : TXURSelect_2 := Interfaces.ATSAM4L.IISC.No;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Receive Overrun Channels
      RXORCH         : SSR_RXORCH_Field := 16#0#;
      --  unspecified
      Reserved_10_19 : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Write-only. Transmit Underrun Channels
      TXURCH         : SSR_TXURCH_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IISC_SSR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RXOR           at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      TXUR           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RXORCH         at 0 range 8 .. 9;
      Reserved_10_19 at 0 range 10 .. 19;
      TXURCH         at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   -----------------------
   -- IISC_IER_Register --
   -----------------------

   --  Receiver Ready Interrupt Enable
   type RXRDYSelect_1 is
     (
      --  No effect
      Off,
      --  Enables the corresponding interrupt
      On)
     with Size => 1;
   for RXRDYSelect_1 use
     (Off => 0,
      On => 1);

   --  Receive Overrun Interrupt Enable
   type RXORSelect_3 is
     (
      --  No effect
      Off,
      --  Enables the corresponding interrupt
      On)
     with Size => 1;
   for RXORSelect_3 use
     (Off => 0,
      On => 1);

   --  Transmit Ready Interrupt Enable
   type TXRDYSelect_1 is
     (
      --  No effect
      Off,
      --  Enables the corresponding interrupt
      On)
     with Size => 1;
   for TXRDYSelect_1 use
     (Off => 0,
      On => 1);

   --  Transmit Underrun Interrupt Enable
   type TXURSelect_3 is
     (
      --  No effect
      Off,
      --  Enables the corresponding interrupt
      On)
     with Size => 1;
   for TXURSelect_3 use
     (Off => 0,
      On => 1);

   --  Interrupt Enable Register
   type IISC_IER_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Receiver Ready Interrupt Enable
      RXRDY         : RXRDYSelect_1 := Interfaces.ATSAM4L.IISC.Off;
      --  Write-only. Receive Overrun Interrupt Enable
      RXOR          : RXORSelect_3 := Interfaces.ATSAM4L.IISC.Off;
      --  unspecified
      Reserved_3_4  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Transmit Ready Interrupt Enable
      TXRDY         : TXRDYSelect_1 := Interfaces.ATSAM4L.IISC.Off;
      --  Write-only. Transmit Underrun Interrupt Enable
      TXUR          : TXURSelect_3 := Interfaces.ATSAM4L.IISC.Off;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IISC_IER_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      RXRDY         at 0 range 1 .. 1;
      RXOR          at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      TXRDY         at 0 range 5 .. 5;
      TXUR          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   -----------------------
   -- IISC_IDR_Register --
   -----------------------

   --  Interrupt Disable Register
   type IISC_IDR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Receive Ready Interrupt Disable
      RXRDY         : RXRDYSelect_1 := Interfaces.ATSAM4L.IISC.Off;
      --  Write-only. Receive Overrun Interrupt Disable
      RXOR          : RXORSelect_3 := Interfaces.ATSAM4L.IISC.Off;
      --  unspecified
      Reserved_3_4  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Transmit Ready Interrupt Disable
      TXRDY         : TXRDYSelect_1 := Interfaces.ATSAM4L.IISC.Off;
      --  Write-only. Transmit Underrun Interrupt Disable
      TXUR          : TXURSelect_3 := Interfaces.ATSAM4L.IISC.Off;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IISC_IDR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      RXRDY         at 0 range 1 .. 1;
      RXOR          at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      TXRDY         at 0 range 5 .. 5;
      TXUR          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   -----------------------
   -- IISC_IMR_Register --
   -----------------------

   --  Receive Ready Interrupt Mask
   type RXRDYSelect_2 is
     (
      --  The corresponding interrupt is disabled
      Disabled,
      --  The corresponding interrupt is enabled
      Enabled)
     with Size => 1;
   for RXRDYSelect_2 use
     (Disabled => 0,
      Enabled => 1);

   --  Receive Overrun Interrupt Mask
   type RXORSelect_4 is
     (
      --  The corresponding interrupt is disabled
      Disabled,
      --  The corresponding interrupt is enabled
      Enabled)
     with Size => 1;
   for RXORSelect_4 use
     (Disabled => 0,
      Enabled => 1);

   --  Transmit Ready Interrupt Mask
   type TXRDYSelect_2 is
     (
      --  The corresponding interrupt is disabled
      Disabled,
      --  The corresponding interrupt is enabled
      Enabled)
     with Size => 1;
   for TXRDYSelect_2 use
     (Disabled => 0,
      Enabled => 1);

   --  Transmit Underrun Interrupt Mask
   type TXURSelect_4 is
     (
      --  The corresponding interrupt is disabled
      Disabled,
      --  The corresponding interrupt is enabled
      Enabled)
     with Size => 1;
   for TXURSelect_4 use
     (Disabled => 0,
      Enabled => 1);

   --  Interrupt Mask Register
   type IISC_IMR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit;
      --  Read-only. Receive Ready Interrupt Mask
      RXRDY         : RXRDYSelect_2;
      --  Read-only. Receive Overrun Interrupt Mask
      RXOR          : RXORSelect_4;
      --  unspecified
      Reserved_3_4  : Interfaces.Bit_Types.UInt2;
      --  Read-only. Transmit Ready Interrupt Mask
      TXRDY         : TXRDYSelect_2;
      --  Read-only. Transmit Underrun Interrupt Mask
      TXUR          : TXURSelect_4;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IISC_IMR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      RXRDY         at 0 range 1 .. 1;
      RXOR          at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      TXRDY         at 0 range 5 .. 5;
      TXUR          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   ---------------------------
   -- IISC_VERSION_Register --
   ---------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type IISC_VERSION_Register is record
      --  Read-only. Reserved. Value subject to change. No functionality
      --  associated. This is the Atmel internal version of the macrocell.
      VERSION        : VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Reserved. Value subject to change. No functionality
      --  associated.
      VARIANT        : VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IISC_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------
   -- IISC_PARAMETER_Register --
   -----------------------------

   --  Data protocol format
   type FORMATSelect is
     (
      --  I2S format, stereo with IWS low for left channel
      I2S)
     with Size => 1;
   for FORMATSelect use
     (I2S => 0);

   subtype PARAMETER_NBCHAN_Field is Interfaces.Bit_Types.UInt5;

   --  Parameter Register
   type IISC_PARAMETER_Register is record
      --  unspecified
      Reserved_0_6   : Interfaces.Bit_Types.UInt7;
      --  Read-only. Data protocol format
      FORMAT         : FORMATSelect;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte;
      --  Read-only. Maximum number of channels - 1
      NBCHAN         : PARAMETER_NBCHAN_Field;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IISC_PARAMETER_Register use record
      Reserved_0_6   at 0 range 0 .. 6;
      FORMAT         at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      NBCHAN         at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Inter-IC Sound (I2S) Controller
   type IISC_Peripheral is record
      --  Control Register
      CR        : IISC_CR_Register;
      --  Mode Register
      MR        : IISC_MR_Register;
      --  Status Register
      SR        : IISC_SR_Register;
      --  Status Clear Register
      SCR       : IISC_SCR_Register;
      --  Status Set Register
      SSR       : IISC_SSR_Register;
      --  Interrupt Enable Register
      IER       : IISC_IER_Register;
      --  Interrupt Disable Register
      IDR       : IISC_IDR_Register;
      --  Interrupt Mask Register
      IMR       : IISC_IMR_Register;
      --  Receive Holding Register
      RHR       : Interfaces.Bit_Types.Word;
      --  Transmit Holding Register
      THR       : Interfaces.Bit_Types.Word;
      --  Version Register
      VERSION   : IISC_VERSION_Register;
      --  Parameter Register
      PARAMETER : IISC_PARAMETER_Register;
   end record
     with Volatile;

   for IISC_Peripheral use record
      CR        at 0 range 0 .. 31;
      MR        at 4 range 0 .. 31;
      SR        at 8 range 0 .. 31;
      SCR       at 12 range 0 .. 31;
      SSR       at 16 range 0 .. 31;
      IER       at 20 range 0 .. 31;
      IDR       at 24 range 0 .. 31;
      IMR       at 28 range 0 .. 31;
      RHR       at 32 range 0 .. 31;
      THR       at 36 range 0 .. 31;
      VERSION   at 40 range 0 .. 31;
      PARAMETER at 44 range 0 .. 31;
   end record;

   --  Inter-IC Sound (I2S) Controller
   IISC_Periph : aliased IISC_Peripheral
     with Import, Address => IISC_Base;

end Interfaces.ATSAM4L.IISC;
