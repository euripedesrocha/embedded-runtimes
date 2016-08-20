--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.BSCIF is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ------------------------
   -- BSCIF_IER_Register --
   ------------------------

   subtype IER_OSC32RDY_Field is Interfaces.Bit_Types.Bit;
   subtype IER_RC32KRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IER_RC32KLOCK_Field is Interfaces.Bit_Types.Bit;
   subtype IER_RC32KREFE_Field is Interfaces.Bit_Types.Bit;
   subtype IER_RC32KSAT_Field is Interfaces.Bit_Types.Bit;
   subtype IER_BOD33DET_Field is Interfaces.Bit_Types.Bit;
   subtype IER_BOD18DET_Field is Interfaces.Bit_Types.Bit;
   subtype IER_BOD33SYNRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IER_BOD18SYNRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IER_SSWRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IER_VREGOK_Field is Interfaces.Bit_Types.Bit;
   subtype IER_LPBGRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IER_AE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Enable Register
   type BSCIF_IER_Register is record
      --  Write-only. 32kHz Oscillator Ready
      OSC32RDY       : IER_OSC32RDY_Field := 16#0#;
      --  Write-only. 32kHz RC Oscillator Ready
      RC32KRDY       : IER_RC32KRDY_Field := 16#0#;
      --  Write-only. 32kHz RC Oscillator Lock
      RC32KLOCK      : IER_RC32KLOCK_Field := 16#0#;
      --  Write-only. 32kHz RC Oscillator Reference Error
      RC32KREFE      : IER_RC32KREFE_Field := 16#0#;
      --  Write-only. 32kHz RC Oscillator Saturation
      RC32KSAT       : IER_RC32KSAT_Field := 16#0#;
      --  Write-only. BOD33 Detected
      BOD33DET       : IER_BOD33DET_Field := 16#0#;
      --  Write-only. BOD18 Detected
      BOD18DET       : IER_BOD18DET_Field := 16#0#;
      --  Write-only. BOD33 Synchronization Ready
      BOD33SYNRDY    : IER_BOD33SYNRDY_Field := 16#0#;
      --  Write-only. BOD18 Synchronization Ready
      BOD18SYNRDY    : IER_BOD18SYNRDY_Field := 16#0#;
      --  Write-only. VREG Stop Switching Ready
      SSWRDY         : IER_SSWRDY_Field := 16#0#;
      --  Write-only. Main VREG OK
      VREGOK         : IER_VREGOK_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Low Power Bandgap Voltage Reference Ready
      LPBGRDY        : IER_LPBGRDY_Field := 16#0#;
      --  unspecified
      Reserved_13_30 : Interfaces.Bit_Types.UInt18 := 16#0#;
      --  Write-only. Access Error
      AE             : IER_AE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_IER_Register use record
      OSC32RDY       at 0 range 0 .. 0;
      RC32KRDY       at 0 range 1 .. 1;
      RC32KLOCK      at 0 range 2 .. 2;
      RC32KREFE      at 0 range 3 .. 3;
      RC32KSAT       at 0 range 4 .. 4;
      BOD33DET       at 0 range 5 .. 5;
      BOD18DET       at 0 range 6 .. 6;
      BOD33SYNRDY    at 0 range 7 .. 7;
      BOD18SYNRDY    at 0 range 8 .. 8;
      SSWRDY         at 0 range 9 .. 9;
      VREGOK         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LPBGRDY        at 0 range 12 .. 12;
      Reserved_13_30 at 0 range 13 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   ------------------------
   -- BSCIF_IDR_Register --
   ------------------------

   subtype IDR_OSC32RDY_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_RC32KRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_RC32KLOCK_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_RC32KREFE_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_RC32KSAT_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_BOD33DET_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_BOD18DET_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_BOD33SYNRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_BOD18SYNRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_SSWRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_VREGOK_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_LPBGRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_AE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Disable Register
   type BSCIF_IDR_Register is record
      --  Write-only. 32kHz Oscillator Ready
      OSC32RDY       : IDR_OSC32RDY_Field := 16#0#;
      --  Write-only. 32kHz RC Oscillator Ready
      RC32KRDY       : IDR_RC32KRDY_Field := 16#0#;
      --  Write-only. 32kHz RC Oscillator Lock
      RC32KLOCK      : IDR_RC32KLOCK_Field := 16#0#;
      --  Write-only. 32kHz RC Oscillator Reference Error
      RC32KREFE      : IDR_RC32KREFE_Field := 16#0#;
      --  Write-only. 32kHz RC Oscillator Saturation
      RC32KSAT       : IDR_RC32KSAT_Field := 16#0#;
      --  Write-only. BOD33 Detected
      BOD33DET       : IDR_BOD33DET_Field := 16#0#;
      --  Write-only. BOD18 Detected
      BOD18DET       : IDR_BOD18DET_Field := 16#0#;
      --  Write-only. BOD33 Synchronization Ready
      BOD33SYNRDY    : IDR_BOD33SYNRDY_Field := 16#0#;
      --  Write-only. BOD18 Synchronization Ready
      BOD18SYNRDY    : IDR_BOD18SYNRDY_Field := 16#0#;
      --  Write-only. VREG Stop Switching Ready
      SSWRDY         : IDR_SSWRDY_Field := 16#0#;
      --  Write-only. Mai n VREG OK
      VREGOK         : IDR_VREGOK_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Low Power Bandgap Voltage Reference Ready
      LPBGRDY        : IDR_LPBGRDY_Field := 16#0#;
      --  unspecified
      Reserved_13_30 : Interfaces.Bit_Types.UInt18 := 16#0#;
      --  Write-only. Access Error
      AE             : IDR_AE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_IDR_Register use record
      OSC32RDY       at 0 range 0 .. 0;
      RC32KRDY       at 0 range 1 .. 1;
      RC32KLOCK      at 0 range 2 .. 2;
      RC32KREFE      at 0 range 3 .. 3;
      RC32KSAT       at 0 range 4 .. 4;
      BOD33DET       at 0 range 5 .. 5;
      BOD18DET       at 0 range 6 .. 6;
      BOD33SYNRDY    at 0 range 7 .. 7;
      BOD18SYNRDY    at 0 range 8 .. 8;
      SSWRDY         at 0 range 9 .. 9;
      VREGOK         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LPBGRDY        at 0 range 12 .. 12;
      Reserved_13_30 at 0 range 13 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   ------------------------
   -- BSCIF_IMR_Register --
   ------------------------

   subtype IMR_OSC32RDY_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_RC32KRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_RC32KLOCK_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_RC32KREFE_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_RC32KSAT_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_BOD33DET_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_BOD18DET_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_BOD33SYNRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_BOD18SYNRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_SSWRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_VREGOK_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_LPBGRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_AE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Mask Register
   type BSCIF_IMR_Register is record
      --  Read-only. 32kHz Oscillator Ready
      OSC32RDY       : IMR_OSC32RDY_Field;
      --  Read-only. 32kHz RC Oscillator Ready
      RC32KRDY       : IMR_RC32KRDY_Field;
      --  Read-only. 32kHz RC Oscillator Lock
      RC32KLOCK      : IMR_RC32KLOCK_Field;
      --  Read-only. 32kHz RC Oscillator Reference Error
      RC32KREFE      : IMR_RC32KREFE_Field;
      --  Read-only. 32kHz RC Oscillator Saturation
      RC32KSAT       : IMR_RC32KSAT_Field;
      --  Read-only. BOD33 Detected
      BOD33DET       : IMR_BOD33DET_Field;
      --  Read-only. BOD18 Detected
      BOD18DET       : IMR_BOD18DET_Field;
      --  Read-only. BOD33 Synchronization Ready
      BOD33SYNRDY    : IMR_BOD33SYNRDY_Field;
      --  Read-only. BOD18 Synchronization Ready
      BOD18SYNRDY    : IMR_BOD18SYNRDY_Field;
      --  Read-only. VREG Stop Switching Ready
      SSWRDY         : IMR_SSWRDY_Field;
      --  Read-only. Main VREG OK
      VREGOK         : IMR_VREGOK_Field;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit;
      --  Read-only. Low Power Bandgap Voltage Reference Ready
      LPBGRDY        : IMR_LPBGRDY_Field;
      --  unspecified
      Reserved_13_30 : Interfaces.Bit_Types.UInt18;
      --  Read-only. Access Error
      AE             : IMR_AE_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_IMR_Register use record
      OSC32RDY       at 0 range 0 .. 0;
      RC32KRDY       at 0 range 1 .. 1;
      RC32KLOCK      at 0 range 2 .. 2;
      RC32KREFE      at 0 range 3 .. 3;
      RC32KSAT       at 0 range 4 .. 4;
      BOD33DET       at 0 range 5 .. 5;
      BOD18DET       at 0 range 6 .. 6;
      BOD33SYNRDY    at 0 range 7 .. 7;
      BOD18SYNRDY    at 0 range 8 .. 8;
      SSWRDY         at 0 range 9 .. 9;
      VREGOK         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LPBGRDY        at 0 range 12 .. 12;
      Reserved_13_30 at 0 range 13 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   ------------------------
   -- BSCIF_ISR_Register --
   ------------------------

   subtype ISR_OSC32RDY_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_RC32KRDY_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_RC32KLOCK_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_RC32KREFE_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_RC32KSAT_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_BOD33DET_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_BOD18DET_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_BOD33SYNRDY_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_BOD18SYNRDY_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_SSWRDY_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_VREGOK_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_LPBGRDY_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_AE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Status Register
   type BSCIF_ISR_Register is record
      --  Read-only. 32kHz Oscillator Ready
      OSC32RDY       : ISR_OSC32RDY_Field;
      --  Read-only. 32kHz RC Oscillator Ready
      RC32KRDY       : ISR_RC32KRDY_Field;
      --  Read-only. 32kHz RC Oscillator Lock
      RC32KLOCK      : ISR_RC32KLOCK_Field;
      --  Read-only. 32kHz RC Oscillator Reference Error
      RC32KREFE      : ISR_RC32KREFE_Field;
      --  Read-only. 32kHz RC Oscillator Saturation
      RC32KSAT       : ISR_RC32KSAT_Field;
      --  Read-only. BOD33 Detected
      BOD33DET       : ISR_BOD33DET_Field;
      --  Read-only. BOD18 Detected
      BOD18DET       : ISR_BOD18DET_Field;
      --  Read-only. BOD33 Synchronization Ready
      BOD33SYNRDY    : ISR_BOD33SYNRDY_Field;
      --  Read-only. BOD18 Synchronization Ready
      BOD18SYNRDY    : ISR_BOD18SYNRDY_Field;
      --  Read-only. VREG Stop Switching Ready
      SSWRDY         : ISR_SSWRDY_Field;
      --  Read-only. Main VREG OK
      VREGOK         : ISR_VREGOK_Field;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit;
      --  Read-only. Low Power Bandgap Voltage Reference Ready
      LPBGRDY        : ISR_LPBGRDY_Field;
      --  unspecified
      Reserved_13_30 : Interfaces.Bit_Types.UInt18;
      --  Read-only. Access Error
      AE             : ISR_AE_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_ISR_Register use record
      OSC32RDY       at 0 range 0 .. 0;
      RC32KRDY       at 0 range 1 .. 1;
      RC32KLOCK      at 0 range 2 .. 2;
      RC32KREFE      at 0 range 3 .. 3;
      RC32KSAT       at 0 range 4 .. 4;
      BOD33DET       at 0 range 5 .. 5;
      BOD18DET       at 0 range 6 .. 6;
      BOD33SYNRDY    at 0 range 7 .. 7;
      BOD18SYNRDY    at 0 range 8 .. 8;
      SSWRDY         at 0 range 9 .. 9;
      VREGOK         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LPBGRDY        at 0 range 12 .. 12;
      Reserved_13_30 at 0 range 13 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   ------------------------
   -- BSCIF_ICR_Register --
   ------------------------

   subtype ICR_OSC32RDY_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_RC32KRDY_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_RC32KLOCK_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_RC32KREFE_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_RC32KSAT_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_BOD33DET_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_BOD18DET_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_BOD33SYNRDY_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_BOD18SYNRDY_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_SSWRDY_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_VREGOK_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_LPBGRDY_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_AE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Clear Register
   type BSCIF_ICR_Register is record
      --  Write-only. 32kHz Oscillator Ready
      OSC32RDY       : ICR_OSC32RDY_Field := 16#0#;
      --  Write-only. 32kHz RC Oscillator Ready
      RC32KRDY       : ICR_RC32KRDY_Field := 16#0#;
      --  Write-only. 32kHz RC Oscillator Lock
      RC32KLOCK      : ICR_RC32KLOCK_Field := 16#0#;
      --  Write-only. 32kHz RC Oscillator Reference Error
      RC32KREFE      : ICR_RC32KREFE_Field := 16#0#;
      --  Write-only. 32kHz RC Oscillator Saturation
      RC32KSAT       : ICR_RC32KSAT_Field := 16#0#;
      --  Write-only. BOD33 Detected
      BOD33DET       : ICR_BOD33DET_Field := 16#0#;
      --  Write-only. BOD18 Detected
      BOD18DET       : ICR_BOD18DET_Field := 16#0#;
      --  Write-only. BOD33 Synchronization Ready
      BOD33SYNRDY    : ICR_BOD33SYNRDY_Field := 16#0#;
      --  Write-only. BOD18 Synchronization Ready
      BOD18SYNRDY    : ICR_BOD18SYNRDY_Field := 16#0#;
      --  Write-only. VREG Stop Switching Ready
      SSWRDY         : ICR_SSWRDY_Field := 16#0#;
      --  Write-only. Main VREG OK
      VREGOK         : ICR_VREGOK_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Low Power Bandgap Voltage Reference Ready
      LPBGRDY        : ICR_LPBGRDY_Field := 16#0#;
      --  unspecified
      Reserved_13_30 : Interfaces.Bit_Types.UInt18 := 16#0#;
      --  Write-only. Access Error
      AE             : ICR_AE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_ICR_Register use record
      OSC32RDY       at 0 range 0 .. 0;
      RC32KRDY       at 0 range 1 .. 1;
      RC32KLOCK      at 0 range 2 .. 2;
      RC32KREFE      at 0 range 3 .. 3;
      RC32KSAT       at 0 range 4 .. 4;
      BOD33DET       at 0 range 5 .. 5;
      BOD18DET       at 0 range 6 .. 6;
      BOD33SYNRDY    at 0 range 7 .. 7;
      BOD18SYNRDY    at 0 range 8 .. 8;
      SSWRDY         at 0 range 9 .. 9;
      VREGOK         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LPBGRDY        at 0 range 12 .. 12;
      Reserved_13_30 at 0 range 13 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   ---------------------------
   -- BSCIF_PCLKSR_Register --
   ---------------------------

   subtype PCLKSR_OSC32RDY_Field is Interfaces.Bit_Types.Bit;
   subtype PCLKSR_RC32KRDY_Field is Interfaces.Bit_Types.Bit;
   subtype PCLKSR_RC32KLOCK_Field is Interfaces.Bit_Types.Bit;
   subtype PCLKSR_RC32KREFE_Field is Interfaces.Bit_Types.Bit;
   subtype PCLKSR_RC32KSAT_Field is Interfaces.Bit_Types.Bit;
   subtype PCLKSR_BOD33DET_Field is Interfaces.Bit_Types.Bit;
   subtype PCLKSR_BOD18DET_Field is Interfaces.Bit_Types.Bit;
   subtype PCLKSR_BOD33SYNRDY_Field is Interfaces.Bit_Types.Bit;
   subtype PCLKSR_BOD18SYNRDY_Field is Interfaces.Bit_Types.Bit;
   subtype PCLKSR_SSWRDY_Field is Interfaces.Bit_Types.Bit;
   subtype PCLKSR_VREGOK_Field is Interfaces.Bit_Types.Bit;
   subtype PCLKSR_RC1MRDY_Field is Interfaces.Bit_Types.Bit;
   subtype PCLKSR_LPBGRDY_Field is Interfaces.Bit_Types.Bit;

   --  Power and Clocks Status Register
   type BSCIF_PCLKSR_Register is record
      --  Read-only. 32kHz Oscillator Ready
      OSC32RDY       : PCLKSR_OSC32RDY_Field;
      --  Read-only. 32kHz RC Oscillator Ready
      RC32KRDY       : PCLKSR_RC32KRDY_Field;
      --  Read-only. 32kHz RC Oscillator Lock
      RC32KLOCK      : PCLKSR_RC32KLOCK_Field;
      --  Read-only. 32kHz RC Oscillator Reference Error
      RC32KREFE      : PCLKSR_RC32KREFE_Field;
      --  Read-only. 32kHz RC Oscillator Saturation
      RC32KSAT       : PCLKSR_RC32KSAT_Field;
      --  Read-only. BOD33 Detected
      BOD33DET       : PCLKSR_BOD33DET_Field;
      --  Read-only. BOD18 Detected
      BOD18DET       : PCLKSR_BOD18DET_Field;
      --  Read-only. BOD33 Synchronization Ready
      BOD33SYNRDY    : PCLKSR_BOD33SYNRDY_Field;
      --  Read-only. BOD18 Synchronization Ready
      BOD18SYNRDY    : PCLKSR_BOD18SYNRDY_Field;
      --  Read-only. VREG Stop Switching Ready
      SSWRDY         : PCLKSR_SSWRDY_Field;
      --  Read-only. Main VREG OK
      VREGOK         : PCLKSR_VREGOK_Field;
      --  Read-only. RC 1MHz Oscillator Ready
      RC1MRDY        : PCLKSR_RC1MRDY_Field;
      --  Read-only. Low Power Bandgap Voltage Reference Ready
      LPBGRDY        : PCLKSR_LPBGRDY_Field;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_PCLKSR_Register use record
      OSC32RDY       at 0 range 0 .. 0;
      RC32KRDY       at 0 range 1 .. 1;
      RC32KLOCK      at 0 range 2 .. 2;
      RC32KREFE      at 0 range 3 .. 3;
      RC32KSAT       at 0 range 4 .. 4;
      BOD33DET       at 0 range 5 .. 5;
      BOD18DET       at 0 range 6 .. 6;
      BOD33SYNRDY    at 0 range 7 .. 7;
      BOD18SYNRDY    at 0 range 8 .. 8;
      SSWRDY         at 0 range 9 .. 9;
      VREGOK         at 0 range 10 .. 10;
      RC1MRDY        at 0 range 11 .. 11;
      LPBGRDY        at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   ---------------------------
   -- BSCIF_UNLOCK_Register --
   ---------------------------

   subtype UNLOCK_ADDR_Field is Interfaces.Bit_Types.UInt10;

   --  Unlock Key
   type KEYSelect is
     (
      --  Reset value for the field
      Keyselect_Reset,
      --  Valid Key to Unlock register
      Valid)
     with Size => 8;
   for KEYSelect use
     (Keyselect_Reset => 0,
      Valid => 170);

   --  Unlock Register
   type BSCIF_UNLOCK_Register is record
      --  Write-only. Unlock Address
      ADDR           : UNLOCK_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_10_23 : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  Write-only. Unlock Key
      KEY            : KEYSelect := Keyselect_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_UNLOCK_Register use record
      ADDR           at 0 range 0 .. 9;
      Reserved_10_23 at 0 range 10 .. 23;
      KEY            at 0 range 24 .. 31;
   end record;

   ------------------------------
   -- BSCIF_OSCCTRL32_Register --
   ------------------------------

   subtype OSCCTRL32_OSC32EN_Field is Interfaces.Bit_Types.Bit;
   subtype OSCCTRL32_PINSEL_Field is Interfaces.Bit_Types.Bit;
   subtype OSCCTRL32_EN32K_Field is Interfaces.Bit_Types.Bit;
   subtype OSCCTRL32_EN1K_Field is Interfaces.Bit_Types.Bit;
   subtype OSCCTRL32_MODE_Field is Interfaces.Bit_Types.UInt3;
   subtype OSCCTRL32_SELCURR_Field is Interfaces.Bit_Types.UInt4;
   subtype OSCCTRL32_STARTUP_Field is Interfaces.Bit_Types.UInt3;

   --  Oscillator 32 Control Register
   type BSCIF_OSCCTRL32_Register is record
      --  32 KHz Oscillator Enable
      OSC32EN        : OSCCTRL32_OSC32EN_Field := 16#0#;
      --  Pins Select
      PINSEL         : OSCCTRL32_PINSEL_Field := 16#0#;
      --  32 KHz output Enable
      EN32K          : OSCCTRL32_EN32K_Field := 16#1#;
      --  1 KHz output Enable
      EN1K           : OSCCTRL32_EN1K_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Oscillator Mode
      MODE           : OSCCTRL32_MODE_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Current selection
      SELCURR        : OSCCTRL32_SELCURR_Field := 16#0#;
      --  Oscillator Start-up Time
      STARTUP        : OSCCTRL32_STARTUP_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_OSCCTRL32_Register use record
      OSC32EN        at 0 range 0 .. 0;
      PINSEL         at 0 range 1 .. 1;
      EN32K          at 0 range 2 .. 2;
      EN1K           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      MODE           at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SELCURR        at 0 range 12 .. 15;
      STARTUP        at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   ----------------------------
   -- BSCIF_RC32KCR_Register --
   ----------------------------

   subtype RC32KCR_EN_Field is Interfaces.Bit_Types.Bit;
   subtype RC32KCR_TCEN_Field is Interfaces.Bit_Types.Bit;
   subtype RC32KCR_EN32K_Field is Interfaces.Bit_Types.Bit;
   subtype RC32KCR_EN1K_Field is Interfaces.Bit_Types.Bit;
   subtype RC32KCR_MODE_Field is Interfaces.Bit_Types.Bit;
   subtype RC32KCR_REF_Field is Interfaces.Bit_Types.Bit;
   subtype RC32KCR_FCD_Field is Interfaces.Bit_Types.Bit;

   --  32 kHz RC Oscillator Control Register
   type BSCIF_RC32KCR_Register is record
      --  Enable as Generic clock source
      EN            : RC32KCR_EN_Field := 16#0#;
      --  Temperature Compensation Enable
      TCEN          : RC32KCR_TCEN_Field := 16#0#;
      --  Enable 32 KHz output
      EN32K         : RC32KCR_EN32K_Field := 16#0#;
      --  Enable 1 kHz output
      EN1K          : RC32KCR_EN1K_Field := 16#0#;
      --  Mode Selection
      MODE          : RC32KCR_MODE_Field := 16#0#;
      --  Reference select
      REF           : RC32KCR_REF_Field := 16#0#;
      --  unspecified
      Reserved_6_6  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Flash calibration done
      FCD           : RC32KCR_FCD_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_RC32KCR_Register use record
      EN            at 0 range 0 .. 0;
      TCEN          at 0 range 1 .. 1;
      EN32K         at 0 range 2 .. 2;
      EN1K          at 0 range 3 .. 3;
      MODE          at 0 range 4 .. 4;
      REF           at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      FCD           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ------------------------------
   -- BSCIF_RC32KTUNE_Register --
   ------------------------------

   subtype RC32KTUNE_FINE_Field is Interfaces.Bit_Types.UInt6;
   subtype RC32KTUNE_COARSE_Field is Interfaces.Bit_Types.UInt7;

   --  32kHz RC Oscillator Tuning Register
   type BSCIF_RC32KTUNE_Register is record
      --  Fine value
      FINE           : RC32KTUNE_FINE_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Coarse Value
      COARSE         : RC32KTUNE_COARSE_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_RC32KTUNE_Register use record
      FINE           at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      COARSE         at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   ------------------------------
   -- BSCIF_BOD33CTRL_Register --
   ------------------------------

   subtype BOD33CTRL_EN_Field is Interfaces.Bit_Types.Bit;
   subtype BOD33CTRL_HYST_Field is Interfaces.Bit_Types.Bit;
   subtype BOD33CTRL_ACTION_Field is Interfaces.Bit_Types.UInt2;
   subtype BOD33CTRL_MODE_Field is Interfaces.Bit_Types.Bit;
   subtype BOD33CTRL_FCD_Field is Interfaces.Bit_Types.Bit;
   subtype BOD33CTRL_SFV_Field is Interfaces.Bit_Types.Bit;

   --  BOD33 Control Register
   type BSCIF_BOD33CTRL_Register is record
      --  Enable
      EN             : BOD33CTRL_EN_Field := 16#0#;
      --  BOD Hysteresis
      HYST           : BOD33CTRL_HYST_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Action
      ACTION         : BOD33CTRL_ACTION_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Operation modes
      MODE           : BOD33CTRL_MODE_Field := 16#0#;
      --  unspecified
      Reserved_17_29 : Interfaces.Bit_Types.UInt13 := 16#0#;
      --  BOD Fuse Calibration Done
      FCD            : BOD33CTRL_FCD_Field := 16#0#;
      --  BOD Control Register Store Final Value
      SFV            : BOD33CTRL_SFV_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_BOD33CTRL_Register use record
      EN             at 0 range 0 .. 0;
      HYST           at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      ACTION         at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      MODE           at 0 range 16 .. 16;
      Reserved_17_29 at 0 range 17 .. 29;
      FCD            at 0 range 30 .. 30;
      SFV            at 0 range 31 .. 31;
   end record;

   -------------------------------
   -- BSCIF_BOD33LEVEL_Register --
   -------------------------------

   subtype BOD33LEVEL_VAL_Field is Interfaces.Bit_Types.UInt6;

   --  BOD33 Level Register
   type BSCIF_BOD33LEVEL_Register is record
      --  BOD Value
      VAL           : BOD33LEVEL_VAL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_BOD33LEVEL_Register use record
      VAL           at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   ----------------------------------
   -- BSCIF_BOD33SAMPLING_Register --
   ----------------------------------

   subtype BOD33SAMPLING_CEN_Field is Interfaces.Bit_Types.Bit;
   subtype BOD33SAMPLING_CSSEL_Field is Interfaces.Bit_Types.Bit;
   subtype BOD33SAMPLING_PSEL_Field is Interfaces.Bit_Types.UInt4;

   --  BOD33 Sampling Control Register
   type BSCIF_BOD33SAMPLING_Register is record
      --  Clock Enable
      CEN            : BOD33SAMPLING_CEN_Field := 16#0#;
      --  Clock Source Select
      CSSEL          : BOD33SAMPLING_CSSEL_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Prescaler Select
      PSEL           : BOD33SAMPLING_PSEL_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_BOD33SAMPLING_Register use record
      CEN            at 0 range 0 .. 0;
      CSSEL          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      PSEL           at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   ------------------------------
   -- BSCIF_BOD18CTRL_Register --
   ------------------------------

   subtype BOD18CTRL_EN_Field is Interfaces.Bit_Types.Bit;
   subtype BOD18CTRL_HYST_Field is Interfaces.Bit_Types.Bit;
   subtype BOD18CTRL_ACTION_Field is Interfaces.Bit_Types.UInt2;
   subtype BOD18CTRL_MODE_Field is Interfaces.Bit_Types.Bit;
   subtype BOD18CTRL_FCD_Field is Interfaces.Bit_Types.Bit;
   subtype BOD18CTRL_SFV_Field is Interfaces.Bit_Types.Bit;

   --  BOD18 Control Register
   type BSCIF_BOD18CTRL_Register is record
      --  Enable
      EN             : BOD18CTRL_EN_Field := 16#0#;
      --  BOD Hysteresis
      HYST           : BOD18CTRL_HYST_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Action
      ACTION         : BOD18CTRL_ACTION_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Operation modes
      MODE           : BOD18CTRL_MODE_Field := 16#0#;
      --  unspecified
      Reserved_17_29 : Interfaces.Bit_Types.UInt13 := 16#0#;
      --  BOD Fuse Calibration Done
      FCD            : BOD18CTRL_FCD_Field := 16#0#;
      --  BOD Control Register Store Final Value
      SFV            : BOD18CTRL_SFV_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_BOD18CTRL_Register use record
      EN             at 0 range 0 .. 0;
      HYST           at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      ACTION         at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      MODE           at 0 range 16 .. 16;
      Reserved_17_29 at 0 range 17 .. 29;
      FCD            at 0 range 30 .. 30;
      SFV            at 0 range 31 .. 31;
   end record;

   -------------------------------
   -- BSCIF_BOD18LEVEL_Register --
   -------------------------------

   subtype BOD18LEVEL_VAL_Field is Interfaces.Bit_Types.UInt6;
   subtype BOD18LEVEL_RANGE_Field is Interfaces.Bit_Types.Bit;

   --  BOD18 Level Register
   type BSCIF_BOD18LEVEL_Register is record
      --  BOD Value
      VAL           : BOD18LEVEL_VAL_Field := 16#0#;
      --  unspecified
      Reserved_6_30 : Interfaces.Bit_Types.UInt25 := 16#0#;
      --  BOD Threshold Range
      RANGE_k       : BOD18LEVEL_RANGE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_BOD18LEVEL_Register use record
      VAL           at 0 range 0 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      RANGE_k       at 0 range 31 .. 31;
   end record;

   ---------------------------
   -- BSCIF_VREGCR_Register --
   ---------------------------

   subtype VREGCR_DIS_Field is Interfaces.Bit_Types.Bit;
   subtype VREGCR_SSG_Field is Interfaces.Bit_Types.Bit;
   subtype VREGCR_SSW_Field is Interfaces.Bit_Types.Bit;
   subtype VREGCR_SSWEVT_Field is Interfaces.Bit_Types.Bit;
   subtype VREGCR_SFV_Field is Interfaces.Bit_Types.Bit;

   --  Voltage Regulator Configuration Register
   type BSCIF_VREGCR_Register is record
      --  Voltage Regulator disable
      DIS            : VREGCR_DIS_Field := 16#0#;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Spread Spectrum Generator Enable
      SSG            : VREGCR_SSG_Field := 16#0#;
      --  Stop Switching
      SSW            : VREGCR_SSW_Field := 16#0#;
      --  Stop Switching On Event Enable
      SSWEVT         : VREGCR_SSWEVT_Field := 16#0#;
      --  unspecified
      Reserved_11_30 : Interfaces.Bit_Types.UInt20 := 16#0#;
      --  Store Final Value
      SFV            : VREGCR_SFV_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_VREGCR_Register use record
      DIS            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SSG            at 0 range 8 .. 8;
      SSW            at 0 range 9 .. 9;
      SSWEVT         at 0 range 10 .. 10;
      Reserved_11_30 at 0 range 11 .. 30;
      SFV            at 0 range 31 .. 31;
   end record;

   ---------------------------
   -- BSCIF_RC1MCR_Register --
   ---------------------------

   subtype RC1MCR_CLKOE_Field is Interfaces.Bit_Types.Bit;
   subtype RC1MCR_FCD_Field is Interfaces.Bit_Types.Bit;
   subtype RC1MCR_CLKCAL_Field is Interfaces.Bit_Types.UInt5;

   --  1MHz RC Clock Configuration Register
   type BSCIF_RC1MCR_Register is record
      --  1MHz RC Osc Clock Output Enable
      CLKOE          : RC1MCR_CLKOE_Field := 16#0#;
      --  unspecified
      Reserved_1_6   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Flash Calibration Done
      FCD            : RC1MCR_FCD_Field := 16#0#;
      --  1MHz RC Osc Calibration
      CLKCAL         : RC1MCR_CLKCAL_Field := 16#F#;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_RC1MCR_Register use record
      CLKOE          at 0 range 0 .. 0;
      Reserved_1_6   at 0 range 1 .. 6;
      FCD            at 0 range 7 .. 7;
      CLKCAL         at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   ---------------------------
   -- BSCIF_BGCTRL_Register --
   ---------------------------

   --  ADC Input Selection
   type ADCISELSelect is
     (
      Dis,
      Vtemp,
      Vref)
     with Size => 2;
   for ADCISELSelect use
     (Dis => 0,
      Vtemp => 1,
      Vref => 2);

   subtype BGCTRL_TSEN_Field is Interfaces.Bit_Types.Bit;

   --  Bandgap Control Register
   type BSCIF_BGCTRL_Register is record
      --  ADC Input Selection
      ADCISEL       : ADCISELSelect := Interfaces.ATSAM4L.BSCIF.Dis;
      --  unspecified
      Reserved_2_7  : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Temperature Sensor Enable
      TSEN          : BGCTRL_TSEN_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_BGCTRL_Register use record
      ADCISEL       at 0 range 0 .. 1;
      Reserved_2_7  at 0 range 2 .. 7;
      TSEN          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -------------------------
   -- BSCIF_BGSR_Register --
   -------------------------

   --  Bandgap Buffer Ready
   type BGBUFRDYSelect is
     (
      Flash,
      Pll,
      Vreg,
      Bufrr,
      Adc,
      Lcd)
     with Size => 8;
   for BGBUFRDYSelect use
     (Flash => 1,
      Pll => 2,
      Vreg => 4,
      Bufrr => 8,
      Adc => 16,
      Lcd => 32);

   subtype BGSR_BGRDY_Field is Interfaces.Bit_Types.Bit;
   subtype BGSR_LPBGRDY_Field is Interfaces.Bit_Types.Bit;
   subtype BGSR_VREF_Field is Interfaces.Bit_Types.UInt2;

   --  Bandgap Status Register
   type BSCIF_BGSR_Register is record
      --  Read-only. Bandgap Buffer Ready
      BGBUFRDY       : BGBUFRDYSelect;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte;
      --  Read-only. Bandgap Voltage Reference Ready
      BGRDY          : BGSR_BGRDY_Field;
      --  Read-only. Low Power Bandgap Voltage Reference Ready
      LPBGRDY        : BGSR_LPBGRDY_Field;
      --  Read-only. Voltage Reference Used by the System
      VREF           : BGSR_VREF_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_BGSR_Register use record
      BGBUFRDY       at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      BGRDY          at 0 range 16 .. 16;
      LPBGRDY        at 0 range 17 .. 17;
      VREF           at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Backup Register

   --  Backup Register
   type BSCIF_BR_Registers is array (0 .. 3) of Interfaces.Bit_Types.Word;

   ---------------------------------
   -- BSCIF_BRIFBVERSION_Register --
   ---------------------------------

   subtype BRIFBVERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype BRIFBVERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Backup Register Interface Version Register
   type BSCIF_BRIFBVERSION_Register is record
      --  Read-only. Version Number
      VERSION        : BRIFBVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant Number
      VARIANT        : BRIFBVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_BRIFBVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ------------------------------------
   -- BSCIF_BGREFIFBVERSION_Register --
   ------------------------------------

   subtype BGREFIFBVERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype BGREFIFBVERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  BGREFIFB Version Register
   type BSCIF_BGREFIFBVERSION_Register is record
      --  Read-only. Version Number
      VERSION        : BGREFIFBVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant Number
      VARIANT        : BGREFIFBVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_BGREFIFBVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------------
   -- BSCIF_VREGIFGVERSION_Register --
   -----------------------------------

   subtype VREGIFGVERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VREGIFGVERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  VREGIFA Version Register
   type BSCIF_VREGIFGVERSION_Register is record
      --  Read-only. Version Number
      VERSION        : VREGIFGVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant Number
      VARIANT        : VREGIFGVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_VREGIFGVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ----------------------------------
   -- BSCIF_BODIFCVERSION_Register --
   ----------------------------------

   subtype BODIFCVERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype BODIFCVERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  BODIFC Version Register
   type BSCIF_BODIFCVERSION_Register is record
      --  Read-only. Version Number
      VERSION        : BODIFCVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant Number
      VARIANT        : BODIFCVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_BODIFCVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ------------------------------------
   -- BSCIF_RC32KIFBVERSION_Register --
   ------------------------------------

   subtype RC32KIFBVERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype RC32KIFBVERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  32 kHz RC Oscillator Version Register
   type BSCIF_RC32KIFBVERSION_Register is record
      --  Read-only. Version number
      VERSION        : RC32KIFBVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant number
      VARIANT        : RC32KIFBVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_RC32KIFBVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ------------------------------------
   -- BSCIF_OSC32IFAVERSION_Register --
   ------------------------------------

   subtype OSC32IFAVERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype OSC32IFAVERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  32 KHz Oscillator Version Register
   type BSCIF_OSC32IFAVERSION_Register is record
      --  Read-only. Version number
      VERSION        : OSC32IFAVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant nubmer
      VARIANT        : OSC32IFAVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSCIF_OSC32IFAVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ----------------------------
   -- BSCIF_VERSION_Register --
   ----------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  BSCIF Version Register
   type BSCIF_VERSION_Register is record
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

   for BSCIF_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Backup System Control Interface
   type BSCIF_Peripheral is record
      --  Interrupt Enable Register
      IER             : BSCIF_IER_Register;
      --  Interrupt Disable Register
      IDR             : BSCIF_IDR_Register;
      --  Interrupt Mask Register
      IMR             : BSCIF_IMR_Register;
      --  Interrupt Status Register
      ISR             : BSCIF_ISR_Register;
      --  Interrupt Clear Register
      ICR             : BSCIF_ICR_Register;
      --  Power and Clocks Status Register
      PCLKSR          : BSCIF_PCLKSR_Register;
      --  Unlock Register
      UNLOCK          : BSCIF_UNLOCK_Register;
      --  Chip Specific Configuration Register
      CSCR            : Interfaces.Bit_Types.Word;
      --  Oscillator 32 Control Register
      OSCCTRL32       : BSCIF_OSCCTRL32_Register;
      --  32 kHz RC Oscillator Control Register
      RC32KCR         : BSCIF_RC32KCR_Register;
      --  32kHz RC Oscillator Tuning Register
      RC32KTUNE       : BSCIF_RC32KTUNE_Register;
      --  BOD33 Control Register
      BOD33CTRL       : BSCIF_BOD33CTRL_Register;
      --  BOD33 Level Register
      BOD33LEVEL      : BSCIF_BOD33LEVEL_Register;
      --  BOD33 Sampling Control Register
      BOD33SAMPLING   : BSCIF_BOD33SAMPLING_Register;
      --  BOD18 Control Register
      BOD18CTRL       : BSCIF_BOD18CTRL_Register;
      --  BOD18 Level Register
      BOD18LEVEL      : BSCIF_BOD18LEVEL_Register;
      --  Voltage Regulator Configuration Register
      VREGCR          : BSCIF_VREGCR_Register;
      --  Normal Mode Control and Status Register
      VREGNCSR        : Interfaces.Bit_Types.Word;
      --  LP Mode Control and Status Register
      VREGLPCSR       : Interfaces.Bit_Types.Word;
      --  1MHz RC Clock Configuration Register
      RC1MCR          : BSCIF_RC1MCR_Register;
      --  Bandgap Calibration Register
      BGCR            : Interfaces.Bit_Types.Word;
      --  Bandgap Control Register
      BGCTRL          : BSCIF_BGCTRL_Register;
      --  Bandgap Status Register
      BGSR            : BSCIF_BGSR_Register;
      --  Backup Register
      BR              : BSCIF_BR_Registers;
      --  Backup Register Interface Version Register
      BRIFBVERSION    : BSCIF_BRIFBVERSION_Register;
      --  BGREFIFB Version Register
      BGREFIFBVERSION : BSCIF_BGREFIFBVERSION_Register;
      --  VREGIFA Version Register
      VREGIFGVERSION  : BSCIF_VREGIFGVERSION_Register;
      --  BODIFC Version Register
      BODIFCVERSION   : BSCIF_BODIFCVERSION_Register;
      --  32 kHz RC Oscillator Version Register
      RC32KIFBVERSION : BSCIF_RC32KIFBVERSION_Register;
      --  32 KHz Oscillator Version Register
      OSC32IFAVERSION : BSCIF_OSC32IFAVERSION_Register;
      --  BSCIF Version Register
      VERSION         : BSCIF_VERSION_Register;
   end record
     with Volatile;

   for BSCIF_Peripheral use record
      IER             at 0 range 0 .. 31;
      IDR             at 4 range 0 .. 31;
      IMR             at 8 range 0 .. 31;
      ISR             at 12 range 0 .. 31;
      ICR             at 16 range 0 .. 31;
      PCLKSR          at 20 range 0 .. 31;
      UNLOCK          at 24 range 0 .. 31;
      CSCR            at 28 range 0 .. 31;
      OSCCTRL32       at 32 range 0 .. 31;
      RC32KCR         at 36 range 0 .. 31;
      RC32KTUNE       at 40 range 0 .. 31;
      BOD33CTRL       at 44 range 0 .. 31;
      BOD33LEVEL      at 48 range 0 .. 31;
      BOD33SAMPLING   at 52 range 0 .. 31;
      BOD18CTRL       at 56 range 0 .. 31;
      BOD18LEVEL      at 60 range 0 .. 31;
      VREGCR          at 68 range 0 .. 31;
      VREGNCSR        at 76 range 0 .. 31;
      VREGLPCSR       at 80 range 0 .. 31;
      RC1MCR          at 88 range 0 .. 31;
      BGCR            at 92 range 0 .. 31;
      BGCTRL          at 96 range 0 .. 31;
      BGSR            at 100 range 0 .. 31;
      BR              at 120 range 0 .. 127;
      BRIFBVERSION    at 996 range 0 .. 31;
      BGREFIFBVERSION at 1000 range 0 .. 31;
      VREGIFGVERSION  at 1004 range 0 .. 31;
      BODIFCVERSION   at 1008 range 0 .. 31;
      RC32KIFBVERSION at 1012 range 0 .. 31;
      OSC32IFAVERSION at 1016 range 0 .. 31;
      VERSION         at 1020 range 0 .. 31;
   end record;

   --  Backup System Control Interface
   BSCIF_Periph : aliased BSCIF_Peripheral
     with Import, Address => BSCIF_Base;

end Interfaces.ATSAM4L.BSCIF;
