--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.SCIF is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -----------------------
   -- SCIF_IER_Register --
   -----------------------

   subtype IER_OSC0RDY_Field is Interfaces.Bit_Types.Bit;
   subtype IER_DFLL0LOCKC_Field is Interfaces.Bit_Types.Bit;
   subtype IER_DFLL0LOCKF_Field is Interfaces.Bit_Types.Bit;
   subtype IER_DFLL0RDY_Field is Interfaces.Bit_Types.Bit;
   subtype IER_DFLL0RCS_Field is Interfaces.Bit_Types.Bit;
   subtype IER_DFLL0OOB_Field is Interfaces.Bit_Types.Bit;
   subtype IER_PLL0LOCK_Field is Interfaces.Bit_Types.Bit;
   subtype IER_PLL0LOCKLOST_Field is Interfaces.Bit_Types.Bit;
   subtype IER_RCFASTLOCK_Field is Interfaces.Bit_Types.Bit;
   subtype IER_RCFASTLOCKLOST_Field is Interfaces.Bit_Types.Bit;
   subtype IER_AE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Enable Register
   type SCIF_IER_Register is record
      --  Write-only. OSC0 Ready
      OSC0RDY        : IER_OSC0RDY_Field := 16#0#;
      --  Write-only. DFLL0 Lock Coarse
      DFLL0LOCKC     : IER_DFLL0LOCKC_Field := 16#0#;
      --  Write-only. DFLL0 Lock Fine
      DFLL0LOCKF     : IER_DFLL0LOCKF_Field := 16#0#;
      --  Write-only. DFLL0 Ready
      DFLL0RDY       : IER_DFLL0RDY_Field := 16#0#;
      --  Write-only. DFLL0 Reference Clock Stopped
      DFLL0RCS       : IER_DFLL0RCS_Field := 16#0#;
      --  Write-only. DFLL0 Out Of Bounds
      DFLL0OOB       : IER_DFLL0OOB_Field := 16#0#;
      --  Write-only. PLL0 Lock
      PLL0LOCK       : IER_PLL0LOCK_Field := 16#0#;
      --  Write-only. PLL0 Lock Lost
      PLL0LOCKLOST   : IER_PLL0LOCKLOST_Field := 16#0#;
      --  unspecified
      Reserved_8_12  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. RCFAST Lock
      RCFASTLOCK     : IER_RCFASTLOCK_Field := 16#0#;
      --  Write-only. RCFAST Lock Lost
      RCFASTLOCKLOST : IER_RCFASTLOCKLOST_Field := 16#0#;
      --  unspecified
      Reserved_15_30 : Interfaces.Bit_Types.Short := 16#0#;
      --  Write-only. Access Error
      AE             : IER_AE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_IER_Register use record
      OSC0RDY        at 0 range 0 .. 0;
      DFLL0LOCKC     at 0 range 1 .. 1;
      DFLL0LOCKF     at 0 range 2 .. 2;
      DFLL0RDY       at 0 range 3 .. 3;
      DFLL0RCS       at 0 range 4 .. 4;
      DFLL0OOB       at 0 range 5 .. 5;
      PLL0LOCK       at 0 range 6 .. 6;
      PLL0LOCKLOST   at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      RCFASTLOCK     at 0 range 13 .. 13;
      RCFASTLOCKLOST at 0 range 14 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   -----------------------
   -- SCIF_IDR_Register --
   -----------------------

   subtype IDR_OSC0RDY_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_DFLL0LOCKC_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_DFLL0LOCKF_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_DFLL0RDY_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_DFLL0RCS_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_DFLL0OOB_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_PLL0LOCK_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_PLL0LOCKLOST_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_RCFASTLOCK_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_RCFASTLOCKLOST_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_AE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Disable Register
   type SCIF_IDR_Register is record
      --  Write-only. OSC0 Ready
      OSC0RDY        : IDR_OSC0RDY_Field := 16#0#;
      --  Write-only. DFLL0 Lock Coarse
      DFLL0LOCKC     : IDR_DFLL0LOCKC_Field := 16#0#;
      --  Write-only. DFLL0 Lock Fine
      DFLL0LOCKF     : IDR_DFLL0LOCKF_Field := 16#0#;
      --  Write-only. DFLL0 Ready
      DFLL0RDY       : IDR_DFLL0RDY_Field := 16#0#;
      --  Write-only. DFLL0 Reference Clock Stopped
      DFLL0RCS       : IDR_DFLL0RCS_Field := 16#0#;
      --  Write-only. DFLL0 Out Of Bounds
      DFLL0OOB       : IDR_DFLL0OOB_Field := 16#0#;
      --  Write-only. PLL0 Lock
      PLL0LOCK       : IDR_PLL0LOCK_Field := 16#0#;
      --  Write-only. PLL0 Lock Lost
      PLL0LOCKLOST   : IDR_PLL0LOCKLOST_Field := 16#0#;
      --  unspecified
      Reserved_8_12  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. RCFAST Lock
      RCFASTLOCK     : IDR_RCFASTLOCK_Field := 16#0#;
      --  Write-only. RCFAST Lock Lost
      RCFASTLOCKLOST : IDR_RCFASTLOCKLOST_Field := 16#0#;
      --  unspecified
      Reserved_15_30 : Interfaces.Bit_Types.Short := 16#0#;
      --  Write-only. Access Error
      AE             : IDR_AE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_IDR_Register use record
      OSC0RDY        at 0 range 0 .. 0;
      DFLL0LOCKC     at 0 range 1 .. 1;
      DFLL0LOCKF     at 0 range 2 .. 2;
      DFLL0RDY       at 0 range 3 .. 3;
      DFLL0RCS       at 0 range 4 .. 4;
      DFLL0OOB       at 0 range 5 .. 5;
      PLL0LOCK       at 0 range 6 .. 6;
      PLL0LOCKLOST   at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      RCFASTLOCK     at 0 range 13 .. 13;
      RCFASTLOCKLOST at 0 range 14 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   -----------------------
   -- SCIF_IMR_Register --
   -----------------------

   subtype IMR_OSC0RDY_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_DFLL0LOCKC_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_DFLL0LOCKF_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_DFLL0RDY_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_DFLL0RCS_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_DFLL0OOB_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_PLL0LOCK_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_PLL0LOCKLOST_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_RCFASTLOCK_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_RCFASTLOCKLOST_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_AE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Mask Register
   type SCIF_IMR_Register is record
      --  Read-only. OSC0 Ready
      OSC0RDY        : IMR_OSC0RDY_Field;
      --  Read-only. DFLL0 Lock Coarse
      DFLL0LOCKC     : IMR_DFLL0LOCKC_Field;
      --  Read-only. DFLL0 Lock Fine
      DFLL0LOCKF     : IMR_DFLL0LOCKF_Field;
      --  Read-only. DFLL0 Ready
      DFLL0RDY       : IMR_DFLL0RDY_Field;
      --  Read-only. DFLL0 Reference Clock Stopped
      DFLL0RCS       : IMR_DFLL0RCS_Field;
      --  Read-only. DFLL0 Out Of Bounds
      DFLL0OOB       : IMR_DFLL0OOB_Field;
      --  Read-only. PLL0 Lock
      PLL0LOCK       : IMR_PLL0LOCK_Field;
      --  Read-only. PLL0 Lock Lost
      PLL0LOCKLOST   : IMR_PLL0LOCKLOST_Field;
      --  unspecified
      Reserved_8_12  : Interfaces.Bit_Types.UInt5;
      --  Read-only. RCFAST Lock
      RCFASTLOCK     : IMR_RCFASTLOCK_Field;
      --  Read-only. RCFAST Lock Lost
      RCFASTLOCKLOST : IMR_RCFASTLOCKLOST_Field;
      --  unspecified
      Reserved_15_30 : Interfaces.Bit_Types.Short;
      --  Read-only. Access Error
      AE             : IMR_AE_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_IMR_Register use record
      OSC0RDY        at 0 range 0 .. 0;
      DFLL0LOCKC     at 0 range 1 .. 1;
      DFLL0LOCKF     at 0 range 2 .. 2;
      DFLL0RDY       at 0 range 3 .. 3;
      DFLL0RCS       at 0 range 4 .. 4;
      DFLL0OOB       at 0 range 5 .. 5;
      PLL0LOCK       at 0 range 6 .. 6;
      PLL0LOCKLOST   at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      RCFASTLOCK     at 0 range 13 .. 13;
      RCFASTLOCKLOST at 0 range 14 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   -----------------------
   -- SCIF_ISR_Register --
   -----------------------

   subtype ISR_OSC0RDY_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_DFLL0LOCKC_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_DFLL0LOCKF_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_DFLL0RDY_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_DFLL0RCS_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_DFLL0OOB_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_PLL0LOCK_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_PLL0LOCKLOST_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_RCFASTLOCK_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_RCFASTLOCKLOST_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_AE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Status Register
   type SCIF_ISR_Register is record
      --  Read-only. OSC0 Ready
      OSC0RDY        : ISR_OSC0RDY_Field;
      --  Read-only. DFLL0 Lock Coarse
      DFLL0LOCKC     : ISR_DFLL0LOCKC_Field;
      --  Read-only. DFLL0 Lock Fine
      DFLL0LOCKF     : ISR_DFLL0LOCKF_Field;
      --  Read-only. DFLL0 Ready
      DFLL0RDY       : ISR_DFLL0RDY_Field;
      --  Read-only. DFLL0 Reference Clock Stopped
      DFLL0RCS       : ISR_DFLL0RCS_Field;
      --  Read-only. DFLL0 Out Of Bounds
      DFLL0OOB       : ISR_DFLL0OOB_Field;
      --  Read-only. PLL0 Lock
      PLL0LOCK       : ISR_PLL0LOCK_Field;
      --  Read-only. PLL0 Lock Lost
      PLL0LOCKLOST   : ISR_PLL0LOCKLOST_Field;
      --  unspecified
      Reserved_8_12  : Interfaces.Bit_Types.UInt5;
      --  Read-only. RCFAST Lock
      RCFASTLOCK     : ISR_RCFASTLOCK_Field;
      --  Read-only. RCFAST Lock Lost
      RCFASTLOCKLOST : ISR_RCFASTLOCKLOST_Field;
      --  unspecified
      Reserved_15_30 : Interfaces.Bit_Types.Short;
      --  Read-only. Access Error
      AE             : ISR_AE_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_ISR_Register use record
      OSC0RDY        at 0 range 0 .. 0;
      DFLL0LOCKC     at 0 range 1 .. 1;
      DFLL0LOCKF     at 0 range 2 .. 2;
      DFLL0RDY       at 0 range 3 .. 3;
      DFLL0RCS       at 0 range 4 .. 4;
      DFLL0OOB       at 0 range 5 .. 5;
      PLL0LOCK       at 0 range 6 .. 6;
      PLL0LOCKLOST   at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      RCFASTLOCK     at 0 range 13 .. 13;
      RCFASTLOCKLOST at 0 range 14 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   -----------------------
   -- SCIF_ICR_Register --
   -----------------------

   subtype ICR_OSC0RDY_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_DFLL0LOCKC_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_DFLL0LOCKF_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_DFLL0RDY_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_DFLL0RCS_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_DFLL0OOB_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_PLL0LOCK_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_PLL0LOCKLOST_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_RCFASTLOCK_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_RCFASTLOCKLOST_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_AE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Clear Register
   type SCIF_ICR_Register is record
      --  Write-only. OSC0 Ready
      OSC0RDY        : ICR_OSC0RDY_Field := 16#0#;
      --  Write-only. DFLL0 Lock Coarse
      DFLL0LOCKC     : ICR_DFLL0LOCKC_Field := 16#0#;
      --  Write-only. DFLL0 Lock Fine
      DFLL0LOCKF     : ICR_DFLL0LOCKF_Field := 16#0#;
      --  Write-only. DFLL0 Ready
      DFLL0RDY       : ICR_DFLL0RDY_Field := 16#0#;
      --  Write-only. DFLL0 Reference Clock Stopped
      DFLL0RCS       : ICR_DFLL0RCS_Field := 16#0#;
      --  Write-only. DFLL0 Out Of Bounds
      DFLL0OOB       : ICR_DFLL0OOB_Field := 16#0#;
      --  Write-only. PLL0 Lock
      PLL0LOCK       : ICR_PLL0LOCK_Field := 16#0#;
      --  Write-only. PLL0 Lock Lost
      PLL0LOCKLOST   : ICR_PLL0LOCKLOST_Field := 16#0#;
      --  unspecified
      Reserved_8_12  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. RCFAST Lock
      RCFASTLOCK     : ICR_RCFASTLOCK_Field := 16#0#;
      --  Write-only. RCFAST Lock Lost
      RCFASTLOCKLOST : ICR_RCFASTLOCKLOST_Field := 16#0#;
      --  unspecified
      Reserved_15_30 : Interfaces.Bit_Types.Short := 16#0#;
      --  Write-only. Access Error
      AE             : ICR_AE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_ICR_Register use record
      OSC0RDY        at 0 range 0 .. 0;
      DFLL0LOCKC     at 0 range 1 .. 1;
      DFLL0LOCKF     at 0 range 2 .. 2;
      DFLL0RDY       at 0 range 3 .. 3;
      DFLL0RCS       at 0 range 4 .. 4;
      DFLL0OOB       at 0 range 5 .. 5;
      PLL0LOCK       at 0 range 6 .. 6;
      PLL0LOCKLOST   at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      RCFASTLOCK     at 0 range 13 .. 13;
      RCFASTLOCKLOST at 0 range 14 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   --------------------------
   -- SCIF_PCLKSR_Register --
   --------------------------

   subtype PCLKSR_OSC0RDY_Field is Interfaces.Bit_Types.Bit;
   subtype PCLKSR_DFLL0LOCKC_Field is Interfaces.Bit_Types.Bit;
   subtype PCLKSR_DFLL0LOCKF_Field is Interfaces.Bit_Types.Bit;
   subtype PCLKSR_DFLL0RDY_Field is Interfaces.Bit_Types.Bit;
   subtype PCLKSR_DFLL0RCS_Field is Interfaces.Bit_Types.Bit;
   subtype PCLKSR_DFLL0OOB_Field is Interfaces.Bit_Types.Bit;
   subtype PCLKSR_PLL0LOCK_Field is Interfaces.Bit_Types.Bit;
   subtype PCLKSR_PLL0LOCKLOST_Field is Interfaces.Bit_Types.Bit;
   subtype PCLKSR_RCFASTLOCK_Field is Interfaces.Bit_Types.Bit;
   subtype PCLKSR_RCFASTLOCKLOST_Field is Interfaces.Bit_Types.Bit;

   --  Power and Clocks Status Register
   type SCIF_PCLKSR_Register is record
      --  Read-only. OSC0 Ready
      OSC0RDY        : PCLKSR_OSC0RDY_Field;
      --  Read-only. DFLL0 Locked on Coarse Value
      DFLL0LOCKC     : PCLKSR_DFLL0LOCKC_Field;
      --  Read-only. DFLL0 Locked on Fine Value
      DFLL0LOCKF     : PCLKSR_DFLL0LOCKF_Field;
      --  Read-only. DFLL0 Synchronization Ready
      DFLL0RDY       : PCLKSR_DFLL0RDY_Field;
      --  Read-only. DFLL0 Reference Clock Stopped
      DFLL0RCS       : PCLKSR_DFLL0RCS_Field;
      --  Read-only. DFLL0 Track Out Of Bounds
      DFLL0OOB       : PCLKSR_DFLL0OOB_Field;
      --  Read-only. PLL0 Locked on Accurate value
      PLL0LOCK       : PCLKSR_PLL0LOCK_Field;
      --  Read-only. PLL0 lock lost value
      PLL0LOCKLOST   : PCLKSR_PLL0LOCKLOST_Field;
      --  unspecified
      Reserved_8_12  : Interfaces.Bit_Types.UInt5;
      --  Read-only. RCFAST Locked on Accurate value
      RCFASTLOCK     : PCLKSR_RCFASTLOCK_Field;
      --  Read-only. RCFAST lock lost value
      RCFASTLOCKLOST : PCLKSR_RCFASTLOCKLOST_Field;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_PCLKSR_Register use record
      OSC0RDY        at 0 range 0 .. 0;
      DFLL0LOCKC     at 0 range 1 .. 1;
      DFLL0LOCKF     at 0 range 2 .. 2;
      DFLL0RDY       at 0 range 3 .. 3;
      DFLL0RCS       at 0 range 4 .. 4;
      DFLL0OOB       at 0 range 5 .. 5;
      PLL0LOCK       at 0 range 6 .. 6;
      PLL0LOCKLOST   at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      RCFASTLOCK     at 0 range 13 .. 13;
      RCFASTLOCKLOST at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --------------------------
   -- SCIF_UNLOCK_Register --
   --------------------------

   subtype UNLOCK_ADDR_Field is Interfaces.Bit_Types.UInt10;
   subtype UNLOCK_KEY_Field is Interfaces.Bit_Types.Byte;

   --  Unlock Register
   type SCIF_UNLOCK_Register is record
      --  Write-only. Unlock Address
      ADDR           : UNLOCK_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_10_23 : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  Write-only. Unlock Key
      KEY            : UNLOCK_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_UNLOCK_Register use record
      ADDR           at 0 range 0 .. 9;
      Reserved_10_23 at 0 range 10 .. 23;
      KEY            at 0 range 24 .. 31;
   end record;

   ----------------------------
   -- SCIF_OSCCTRL0_Register --
   ----------------------------

   subtype OSCCTRL0_MODE_Field is Interfaces.Bit_Types.Bit;
   subtype OSCCTRL0_GAIN_Field is Interfaces.Bit_Types.UInt2;
   subtype OSCCTRL0_AGC_Field is Interfaces.Bit_Types.Bit;
   subtype OSCCTRL0_STARTUP_Field is Interfaces.Bit_Types.UInt4;
   subtype OSCCTRL0_OSCEN_Field is Interfaces.Bit_Types.Bit;

   --  Oscillator Control Register
   type SCIF_OSCCTRL0_Register is record
      --  Oscillator Mode
      MODE           : OSCCTRL0_MODE_Field := 16#0#;
      --  Gain
      GAIN           : OSCCTRL0_GAIN_Field := 16#0#;
      --  Automatic Gain Control
      AGC            : OSCCTRL0_AGC_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Oscillator Start-up Time
      STARTUP        : OSCCTRL0_STARTUP_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Oscillator Enable
      OSCEN          : OSCCTRL0_OSCEN_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_OSCCTRL0_Register use record
      MODE           at 0 range 0 .. 0;
      GAIN           at 0 range 1 .. 2;
      AGC            at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      STARTUP        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      OSCEN          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   -----------------------
   -- SCIF_PLL_Register --
   -----------------------

   subtype PLL_PLLEN_Field is Interfaces.Bit_Types.Bit;
   subtype PLL_PLLOSC_Field is Interfaces.Bit_Types.UInt2;
   subtype PLL_PLLOPT_Field is Interfaces.Bit_Types.UInt3;
   subtype PLL_PLLDIV_Field is Interfaces.Bit_Types.UInt4;
   subtype PLL_PLLMUL_Field is Interfaces.Bit_Types.UInt4;
   subtype PLL_PLLCOUNT_Field is Interfaces.Bit_Types.UInt6;

   --  PLL0 Control Register
   type SCIF_PLL_Register is record
      --  PLL Enable
      PLLEN          : PLL_PLLEN_Field := 16#0#;
      --  PLL Oscillator Select
      PLLOSC         : PLL_PLLOSC_Field := 16#0#;
      --  PLL Option
      PLLOPT         : PLL_PLLOPT_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  PLL Division Factor
      PLLDIV         : PLL_PLLDIV_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  PLL Multiply Factor
      PLLMUL         : PLL_PLLMUL_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  PLL Count
      PLLCOUNT       : PLL_PLLCOUNT_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_PLL_Register use record
      PLLEN          at 0 range 0 .. 0;
      PLLOSC         at 0 range 1 .. 2;
      PLLOPT         at 0 range 3 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      PLLDIV         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      PLLMUL         at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      PLLCOUNT       at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   -----------------------------
   -- SCIF_DFLL0CONF_Register --
   -----------------------------

   subtype DFLL0CONF_EN_Field is Interfaces.Bit_Types.Bit;
   subtype DFLL0CONF_MODE_Field is Interfaces.Bit_Types.Bit;
   subtype DFLL0CONF_STABLE_Field is Interfaces.Bit_Types.Bit;
   subtype DFLL0CONF_LLAW_Field is Interfaces.Bit_Types.Bit;
   subtype DFLL0CONF_CCDIS_Field is Interfaces.Bit_Types.Bit;
   subtype DFLL0CONF_QLDIS_Field is Interfaces.Bit_Types.Bit;
   subtype DFLL0CONF_RANGE_Field is Interfaces.Bit_Types.UInt2;
   subtype DFLL0CONF_FCD_Field is Interfaces.Bit_Types.Bit;
   subtype DFLL0CONF_CALIB_Field is Interfaces.Bit_Types.UInt4;

   --  DFLL0 Config Register
   type SCIF_DFLL0CONF_Register is record
      --  Enable
      EN             : DFLL0CONF_EN_Field := 16#0#;
      --  Mode Selection
      MODE           : DFLL0CONF_MODE_Field := 16#0#;
      --  Stable DFLL Frequency
      STABLE         : DFLL0CONF_STABLE_Field := 16#0#;
      --  Lose Lock After Wake
      LLAW           : DFLL0CONF_LLAW_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Chill Cycle Disable
      CCDIS          : DFLL0CONF_CCDIS_Field := 16#0#;
      --  Quick Lock Disable
      QLDIS          : DFLL0CONF_QLDIS_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Range Value
      RANGE_k        : DFLL0CONF_RANGE_Field := 16#0#;
      --  unspecified
      Reserved_18_22 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Fuse Calibration Done
      FCD            : DFLL0CONF_FCD_Field := 16#0#;
      --  Calibration Value
      CALIB          : DFLL0CONF_CALIB_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_DFLL0CONF_Register use record
      EN             at 0 range 0 .. 0;
      MODE           at 0 range 1 .. 1;
      STABLE         at 0 range 2 .. 2;
      LLAW           at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      CCDIS          at 0 range 5 .. 5;
      QLDIS          at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      RANGE_k        at 0 range 16 .. 17;
      Reserved_18_22 at 0 range 18 .. 22;
      FCD            at 0 range 23 .. 23;
      CALIB          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   ----------------------------
   -- SCIF_DFLL0VAL_Register --
   ----------------------------

   subtype DFLL0VAL_FINE_Field is Interfaces.Bit_Types.Byte;
   subtype DFLL0VAL_COARSE_Field is Interfaces.Bit_Types.UInt5;

   --  DFLL Value Register
   type SCIF_DFLL0VAL_Register is record
      --  Fine Value
      FINE           : DFLL0VAL_FINE_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Coarse Value
      COARSE         : DFLL0VAL_COARSE_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_DFLL0VAL_Register use record
      FINE           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      COARSE         at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   ----------------------------
   -- SCIF_DFLL0MUL_Register --
   ----------------------------

   subtype DFLL0MUL_MUL_Field is Interfaces.Bit_Types.Short;

   --  DFLL0 Multiplier Register
   type SCIF_DFLL0MUL_Register is record
      --  DFLL Multiply Factor
      MUL            : DFLL0MUL_MUL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_DFLL0MUL_Register use record
      MUL            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------------------
   -- SCIF_DFLL0STEP_Register --
   -----------------------------

   subtype DFLL0STEP_FSTEP_Field is Interfaces.Bit_Types.Byte;
   subtype DFLL0STEP_CSTEP_Field is Interfaces.Bit_Types.UInt5;

   --  DFLL0 Step Register
   type SCIF_DFLL0STEP_Register is record
      --  Fine Maximum Step
      FSTEP          : DFLL0STEP_FSTEP_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Coarse Maximum Step
      CSTEP          : DFLL0STEP_CSTEP_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_DFLL0STEP_Register use record
      FSTEP          at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      CSTEP          at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   ----------------------------
   -- SCIF_DFLL0SSG_Register --
   ----------------------------

   subtype DFLL0SSG_EN_Field is Interfaces.Bit_Types.Bit;
   subtype DFLL0SSG_PRBS_Field is Interfaces.Bit_Types.Bit;
   subtype DFLL0SSG_AMPLITUDE_Field is Interfaces.Bit_Types.UInt5;
   subtype DFLL0SSG_STEPSIZE_Field is Interfaces.Bit_Types.UInt5;

   --  DFLL0 Spread Spectrum Generator Control Register
   type SCIF_DFLL0SSG_Register is record
      --  Write-only. Enable
      EN             : DFLL0SSG_EN_Field := 16#0#;
      --  Write-only. Pseudo Random Bit Sequence
      PRBS           : DFLL0SSG_PRBS_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Write-only. SSG Amplitude
      AMPLITUDE      : DFLL0SSG_AMPLITUDE_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. SSG Step Size
      STEPSIZE       : DFLL0SSG_STEPSIZE_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_DFLL0SSG_Register use record
      EN             at 0 range 0 .. 0;
      PRBS           at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      AMPLITUDE      at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      STEPSIZE       at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   ------------------------------
   -- SCIF_DFLL0RATIO_Register --
   ------------------------------

   subtype DFLL0RATIO_RATIODIFF_Field is Interfaces.Bit_Types.Short;

   --  DFLL0 Ratio Registe
   type SCIF_DFLL0RATIO_Register is record
      --  Read-only. Multiplication Ratio Difference
      RATIODIFF      : DFLL0RATIO_RATIODIFF_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_DFLL0RATIO_Register use record
      RATIODIFF      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------------------
   -- SCIF_DFLL0SYNC_Register --
   -----------------------------

   subtype DFLL0SYNC_SYNC_Field is Interfaces.Bit_Types.Bit;

   --  DFLL0 Synchronization Register
   type SCIF_DFLL0SYNC_Register is record
      --  Write-only. Synchronization
      SYNC          : DFLL0SYNC_SYNC_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_DFLL0SYNC_Register use record
      SYNC          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ------------------------
   -- SCIF_RCCR_Register --
   ------------------------

   subtype RCCR_CALIB_Field is Interfaces.Bit_Types.UInt10;
   subtype RCCR_FCD_Field is Interfaces.Bit_Types.Bit;

   --  System RC Oscillator Calibration Register
   type SCIF_RCCR_Register is record
      --  Calibration Value
      CALIB          : RCCR_CALIB_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Flash Calibration Done
      FCD            : RCCR_FCD_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_RCCR_Register use record
      CALIB          at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      FCD            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   -----------------------------
   -- SCIF_RCFASTCFG_Register --
   -----------------------------

   subtype RCFASTCFG_EN_Field is Interfaces.Bit_Types.Bit;
   subtype RCFASTCFG_TUNEEN_Field is Interfaces.Bit_Types.Bit;
   subtype RCFASTCFG_JITMODE_Field is Interfaces.Bit_Types.Bit;
   subtype RCFASTCFG_NBPERIODS_Field is Interfaces.Bit_Types.UInt3;
   subtype RCFASTCFG_FCD_Field is Interfaces.Bit_Types.Bit;
   subtype RCFASTCFG_FRANGE_Field is Interfaces.Bit_Types.UInt2;
   subtype RCFASTCFG_LOCKMARGIN_Field is Interfaces.Bit_Types.UInt4;
   subtype RCFASTCFG_CALIB_Field is Interfaces.Bit_Types.UInt7;

   --  4/8/12 MHz RC Oscillator Configuration Register
   type SCIF_RCFASTCFG_Register is record
      --  Oscillator Enable
      EN             : RCFASTCFG_EN_Field := 16#0#;
      --  Tuner Enable
      TUNEEN         : RCFASTCFG_TUNEEN_Field := 16#0#;
      --  Jitter Mode
      JITMODE        : RCFASTCFG_JITMODE_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Number of 32kHz Periods
      NBPERIODS      : RCFASTCFG_NBPERIODS_Field := 16#0#;
      --  RCFAST Fuse Calibration Done
      FCD            : RCFASTCFG_FCD_Field := 16#0#;
      --  Frequency Range
      FRANGE         : RCFASTCFG_FRANGE_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Accepted Count Error for Lock
      LOCKMARGIN     : RCFASTCFG_LOCKMARGIN_Field := 16#0#;
      --  Oscillator Calibration Value
      CALIB          : RCFASTCFG_CALIB_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_RCFASTCFG_Register use record
      EN             at 0 range 0 .. 0;
      TUNEEN         at 0 range 1 .. 1;
      JITMODE        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      NBPERIODS      at 0 range 4 .. 6;
      FCD            at 0 range 7 .. 7;
      FRANGE         at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      LOCKMARGIN     at 0 range 12 .. 15;
      CALIB          at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   ----------------------------
   -- SCIF_RCFASTSR_Register --
   ----------------------------

   subtype RCFASTSR_CURTRIM_Field is Interfaces.Bit_Types.UInt7;
   subtype RCFASTSR_CNTERR_Field is Interfaces.Bit_Types.UInt5;
   subtype RCFASTSR_SIGN_Field is Interfaces.Bit_Types.Bit;
   subtype RCFASTSR_LOCK_Field is Interfaces.Bit_Types.Bit;
   subtype RCFASTSR_LOCKLOST_Field is Interfaces.Bit_Types.Bit;
   subtype RCFASTSR_UPDATED_Field is Interfaces.Bit_Types.Bit;

   --  4/8/12 MHz RC Oscillator Status Register
   type SCIF_RCFASTSR_Register is record
      --  Current Trim Value
      CURTRIM        : RCFASTSR_CURTRIM_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Current Count Error
      CNTERR         : RCFASTSR_CNTERR_Field := 16#0#;
      --  Sign of Current Count Error
      SIGN           : RCFASTSR_SIGN_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Lock
      LOCK           : RCFASTSR_LOCK_Field := 16#0#;
      --  Lock Lost
      LOCKLOST       : RCFASTSR_LOCKLOST_Field := 16#0#;
      --  unspecified
      Reserved_26_30 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Current Trim Value Updated
      UPDATED        : RCFASTSR_UPDATED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_RCFASTSR_Register use record
      CURTRIM        at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      CNTERR         at 0 range 16 .. 20;
      SIGN           at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      LOCK           at 0 range 24 .. 24;
      LOCKLOST       at 0 range 25 .. 25;
      Reserved_26_30 at 0 range 26 .. 30;
      UPDATED        at 0 range 31 .. 31;
   end record;

   ---------------------------
   -- SCIF_RC80MCR_Register --
   ---------------------------

   subtype RC80MCR_EN_Field is Interfaces.Bit_Types.Bit;
   subtype RC80MCR_FCD_Field is Interfaces.Bit_Types.Bit;
   subtype RC80MCR_CALIB_Field is Interfaces.Bit_Types.UInt2;

   --  80 MHz RC Oscillator Register
   type SCIF_RC80MCR_Register is record
      --  Enable
      EN             : RC80MCR_EN_Field := 16#0#;
      --  unspecified
      Reserved_1_6   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Flash Calibration Done
      FCD            : RC80MCR_FCD_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Calibration Value
      CALIB          : RC80MCR_CALIB_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_RC80MCR_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_6   at 0 range 1 .. 6;
      FCD            at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      CALIB          at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   -------------------------
   -- SCIF_HRPCR_Register --
   -------------------------

   subtype HRPCR_HRPEN_Field is Interfaces.Bit_Types.Bit;
   subtype HRPCR_CKSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype HRPCR_HRCOUNT_Field is Interfaces.Bit_Types.UInt24;

   --  High Resolution Prescaler Control Register
   type SCIF_HRPCR_Register is record
      --  High Resolution Prescaler Enable
      HRPEN        : HRPCR_HRPEN_Field := 16#0#;
      --  Clock Input Selection
      CKSEL        : HRPCR_CKSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  High Resolution Counter
      HRCOUNT      : HRPCR_HRCOUNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_HRPCR_Register use record
      HRPEN        at 0 range 0 .. 0;
      CKSEL        at 0 range 1 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
      HRCOUNT      at 0 range 8 .. 31;
   end record;

   ------------------------
   -- SCIF_FPCR_Register --
   ------------------------

   subtype FPCR_FPEN_Field is Interfaces.Bit_Types.Bit;
   subtype FPCR_CKSEL_Field is Interfaces.Bit_Types.UInt3;

   --  Fractional Prescaler Control Register
   type SCIF_FPCR_Register is record
      --  High Resolution Prescaler Enable
      FPEN          : FPCR_FPEN_Field := 16#0#;
      --  Clock Input Selection
      CKSEL         : FPCR_CKSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_FPCR_Register use record
      FPEN          at 0 range 0 .. 0;
      CKSEL         at 0 range 1 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -------------------------
   -- SCIF_FPMUL_Register --
   -------------------------

   subtype FPMUL_FPMUL_Field is Interfaces.Bit_Types.Short;

   --  Fractional Prescaler Multiplier Register
   type SCIF_FPMUL_Register is record
      --  Fractional Prescaler Multiplication Factor
      FPMUL          : FPMUL_FPMUL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_FPMUL_Register use record
      FPMUL          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -------------------------
   -- SCIF_FPDIV_Register --
   -------------------------

   subtype FPDIV_FPDIV_Field is Interfaces.Bit_Types.Short;

   --  Fractional Prescaler DIVIDER Register
   type SCIF_FPDIV_Register is record
      --  Fractional Prescaler Division Factor
      FPDIV          : FPDIV_FPDIV_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_FPDIV_Register use record
      FPDIV          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --------------------------
   -- SCIF_GCCTRL_Register --
   --------------------------

   subtype GCCTRL_CEN_Field is Interfaces.Bit_Types.Bit;
   subtype GCCTRL_DIVEN_Field is Interfaces.Bit_Types.Bit;
   subtype GCCTRL_OSCSEL_Field is Interfaces.Bit_Types.UInt5;
   subtype GCCTRL_DIV_Field is Interfaces.Bit_Types.Short;

   --  Generic Clock Control
   type SCIF_GCCTRL_Register is record
      --  Clock Enable
      CEN            : GCCTRL_CEN_Field := 16#0#;
      --  Divide Enable
      DIVEN          : GCCTRL_DIVEN_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Clock Select
      OSCSEL         : GCCTRL_OSCSEL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Division Factor
      DIV            : GCCTRL_DIV_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_GCCTRL_Register use record
      CEN            at 0 range 0 .. 0;
      DIVEN          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      OSCSEL         at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DIV            at 0 range 16 .. 31;
   end record;

   --  Generic Clock Control
   type SCIF_GCCTRL_Registers is array (0 .. 11) of SCIF_GCCTRL_Register;

   ---------------------------------
   -- SCIF_RCFASTVERSION_Register --
   ---------------------------------

   subtype RCFASTVERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype RCFASTVERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  4/8/12 MHz RC Oscillator Version Register
   type SCIF_RCFASTVERSION_Register is record
      --  Read-only. Version number
      VERSION        : RCFASTVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant number
      VARIANT        : RCFASTVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_RCFASTVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ------------------------------------
   -- SCIF_GCLKPRESCVERSION_Register --
   ------------------------------------

   subtype GCLKPRESCVERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype GCLKPRESCVERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Generic Clock Prescaler Version Register
   type SCIF_GCLKPRESCVERSION_Register is record
      --  Read-only. Version number
      VERSION        : GCLKPRESCVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant number
      VARIANT        : GCLKPRESCVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_GCLKPRESCVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ---------------------------------
   -- SCIF_PLLIFAVERSION_Register --
   ---------------------------------

   subtype PLLIFAVERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype PLLIFAVERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  PLL Version Register
   type SCIF_PLLIFAVERSION_Register is record
      --  Read-only. Version number
      VERSION        : PLLIFAVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant nubmer
      VARIANT        : PLLIFAVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_PLLIFAVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ---------------------------------
   -- SCIF_OSCIFAVERSION_Register --
   ---------------------------------

   subtype OSCIFAVERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype OSCIFAVERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Oscillator 0 Version Register
   type SCIF_OSCIFAVERSION_Register is record
      --  Read-only. Version number
      VERSION        : OSCIFAVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant nubmer
      VARIANT        : OSCIFAVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_OSCIFAVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ----------------------------------
   -- SCIF_DFLLIFBVERSION_Register --
   ----------------------------------

   subtype DFLLIFBVERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype DFLLIFBVERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  DFLL Version Register
   type SCIF_DFLLIFBVERSION_Register is record
      --  Read-only. Version number
      VERSION        : DFLLIFBVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant number
      VARIANT        : DFLLIFBVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_DFLLIFBVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------------
   -- SCIF_RCOSCIFAVERSION_Register --
   -----------------------------------

   subtype RCOSCIFAVERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype RCOSCIFAVERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  System RC Oscillator Version Register
   type SCIF_RCOSCIFAVERSION_Register is record
      --  Read-only. Version number
      VERSION        : RCOSCIFAVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant number
      VARIANT        : RCOSCIFAVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_RCOSCIFAVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ------------------------------
   -- SCIF_FLOVERSION_Register --
   ------------------------------

   subtype FLOVERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype FLOVERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Frequency Locked Oscillator Version Register
   type SCIF_FLOVERSION_Register is record
      --  Read-only. Version number
      VERSION        : FLOVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant number
      VARIANT        : FLOVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_FLOVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --------------------------------
   -- SCIF_RC80MVERSION_Register --
   --------------------------------

   subtype RC80MVERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype RC80MVERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  80MHz RC Oscillator Version Register
   type SCIF_RC80MVERSION_Register is record
      --  Read-only. Version number
      VERSION        : RC80MVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant number
      VARIANT        : RC80MVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_RC80MVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ---------------------------------
   -- SCIF_GCLKIFVERSION_Register --
   ---------------------------------

   subtype GCLKIFVERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype GCLKIFVERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Generic Clock Version Register
   type SCIF_GCLKIFVERSION_Register is record
      --  Read-only. Version number
      VERSION        : GCLKIFVERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant number
      VARIANT        : GCLKIFVERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCIF_GCLKIFVERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ---------------------------
   -- SCIF_VERSION_Register --
   ---------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  SCIF Version Register
   type SCIF_VERSION_Register is record
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

   for SCIF_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Control Interface
   type SCIF_Peripheral is record
      --  Interrupt Enable Register
      IER              : SCIF_IER_Register;
      --  Interrupt Disable Register
      IDR              : SCIF_IDR_Register;
      --  Interrupt Mask Register
      IMR              : SCIF_IMR_Register;
      --  Interrupt Status Register
      ISR              : SCIF_ISR_Register;
      --  Interrupt Clear Register
      ICR              : SCIF_ICR_Register;
      --  Power and Clocks Status Register
      PCLKSR           : SCIF_PCLKSR_Register;
      --  Unlock Register
      UNLOCK           : SCIF_UNLOCK_Register;
      --  Chip Specific Configuration Register
      CSCR             : Interfaces.Bit_Types.Word;
      --  Oscillator Control Register
      OSCCTRL0         : SCIF_OSCCTRL0_Register;
      --  PLL0 Control Register
      PLL              : SCIF_PLL_Register;
      --  DFLL0 Config Register
      DFLL0CONF        : SCIF_DFLL0CONF_Register;
      --  DFLL Value Register
      DFLL0VAL         : SCIF_DFLL0VAL_Register;
      --  DFLL0 Multiplier Register
      DFLL0MUL         : SCIF_DFLL0MUL_Register;
      --  DFLL0 Step Register
      DFLL0STEP        : SCIF_DFLL0STEP_Register;
      --  DFLL0 Spread Spectrum Generator Control Register
      DFLL0SSG         : SCIF_DFLL0SSG_Register;
      --  DFLL0 Ratio Registe
      DFLL0RATIO       : SCIF_DFLL0RATIO_Register;
      --  DFLL0 Synchronization Register
      DFLL0SYNC        : SCIF_DFLL0SYNC_Register;
      --  System RC Oscillator Calibration Register
      RCCR             : SCIF_RCCR_Register;
      --  4/8/12 MHz RC Oscillator Configuration Register
      RCFASTCFG        : SCIF_RCFASTCFG_Register;
      --  4/8/12 MHz RC Oscillator Status Register
      RCFASTSR         : SCIF_RCFASTSR_Register;
      --  80 MHz RC Oscillator Register
      RC80MCR          : SCIF_RC80MCR_Register;
      --  High Resolution Prescaler Control Register
      HRPCR            : SCIF_HRPCR_Register;
      --  Fractional Prescaler Control Register
      FPCR             : SCIF_FPCR_Register;
      --  Fractional Prescaler Multiplier Register
      FPMUL            : SCIF_FPMUL_Register;
      --  Fractional Prescaler DIVIDER Register
      FPDIV            : SCIF_FPDIV_Register;
      --  Generic Clock Control
      GCCTRL           : SCIF_GCCTRL_Registers;
      --  4/8/12 MHz RC Oscillator Version Register
      RCFASTVERSION    : SCIF_RCFASTVERSION_Register;
      --  Generic Clock Prescaler Version Register
      GCLKPRESCVERSION : SCIF_GCLKPRESCVERSION_Register;
      --  PLL Version Register
      PLLIFAVERSION    : SCIF_PLLIFAVERSION_Register;
      --  Oscillator 0 Version Register
      OSCIFAVERSION    : SCIF_OSCIFAVERSION_Register;
      --  DFLL Version Register
      DFLLIFBVERSION   : SCIF_DFLLIFBVERSION_Register;
      --  System RC Oscillator Version Register
      RCOSCIFAVERSION  : SCIF_RCOSCIFAVERSION_Register;
      --  Frequency Locked Oscillator Version Register
      FLOVERSION       : SCIF_FLOVERSION_Register;
      --  80MHz RC Oscillator Version Register
      RC80MVERSION     : SCIF_RC80MVERSION_Register;
      --  Generic Clock Version Register
      GCLKIFVERSION    : SCIF_GCLKIFVERSION_Register;
      --  SCIF Version Register
      VERSION          : SCIF_VERSION_Register;
   end record
     with Volatile;

   for SCIF_Peripheral use record
      IER              at 0 range 0 .. 31;
      IDR              at 4 range 0 .. 31;
      IMR              at 8 range 0 .. 31;
      ISR              at 12 range 0 .. 31;
      ICR              at 16 range 0 .. 31;
      PCLKSR           at 20 range 0 .. 31;
      UNLOCK           at 24 range 0 .. 31;
      CSCR             at 28 range 0 .. 31;
      OSCCTRL0         at 32 range 0 .. 31;
      PLL              at 36 range 0 .. 31;
      DFLL0CONF        at 40 range 0 .. 31;
      DFLL0VAL         at 44 range 0 .. 31;
      DFLL0MUL         at 48 range 0 .. 31;
      DFLL0STEP        at 52 range 0 .. 31;
      DFLL0SSG         at 56 range 0 .. 31;
      DFLL0RATIO       at 60 range 0 .. 31;
      DFLL0SYNC        at 64 range 0 .. 31;
      RCCR             at 68 range 0 .. 31;
      RCFASTCFG        at 72 range 0 .. 31;
      RCFASTSR         at 76 range 0 .. 31;
      RC80MCR          at 80 range 0 .. 31;
      HRPCR            at 100 range 0 .. 31;
      FPCR             at 104 range 0 .. 31;
      FPMUL            at 108 range 0 .. 31;
      FPDIV            at 112 range 0 .. 31;
      GCCTRL           at 116 range 0 .. 383;
      RCFASTVERSION    at 984 range 0 .. 31;
      GCLKPRESCVERSION at 988 range 0 .. 31;
      PLLIFAVERSION    at 992 range 0 .. 31;
      OSCIFAVERSION    at 996 range 0 .. 31;
      DFLLIFBVERSION   at 1000 range 0 .. 31;
      RCOSCIFAVERSION  at 1004 range 0 .. 31;
      FLOVERSION       at 1008 range 0 .. 31;
      RC80MVERSION     at 1012 range 0 .. 31;
      GCLKIFVERSION    at 1016 range 0 .. 31;
      VERSION          at 1020 range 0 .. 31;
   end record;

   --  System Control Interface
   SCIF_Periph : aliased SCIF_Peripheral
     with Import, Address => SCIF_Base;

end Interfaces.ATSAM4L.SCIF;
