--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.WDT is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -----------------------
   -- WDT_CTRL_Register --
   -----------------------

   --  WDT Enable
   type ENSelect is
     (
      --  WDT is disabled.
      ENSelect_0,
      --  WDT is enabled
      ENSelect_1)
     with Size => 1;
   for ENSelect use
     (ENSelect_0 => 0,
      ENSelect_1 => 1);

   subtype CTRL_DAR_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_MODE_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_SFV_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_IM_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_FCD_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_PSEL_Field is Interfaces.Bit_Types.UInt5;
   subtype CTRL_CSSEL1_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_CEN_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_CSSEL_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_TBAN_Field is Interfaces.Bit_Types.UInt5;
   subtype CTRL_KEY_Field is Interfaces.Bit_Types.Byte;

   --  Control Register
   type WDT_CTRL_Register is record
      --  WDT Enable
      EN             : ENSelect := Interfaces.ATSAM4L.WDT.ENSelect_0;
      --  WDT Disable After Reset
      DAR            : CTRL_DAR_Field := 16#0#;
      --  WDT Mode
      MODE           : CTRL_MODE_Field := 16#0#;
      --  WDT Store Final Value
      SFV            : CTRL_SFV_Field := 16#0#;
      --  WDT Interruput Mode
      IM             : CTRL_IM_Field := 16#0#;
      --  unspecified
      Reserved_5_6   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  WDT Fuse Calibration Done
      FCD            : CTRL_FCD_Field := 16#1#;
      --  Timeout Prescale Select
      PSEL           : CTRL_PSEL_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Clock Source Selection1
      CSSEL1         : CTRL_CSSEL1_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Clock Enable
      CEN            : CTRL_CEN_Field := 16#1#;
      --  Clock Source Selection0
      CSSEL          : CTRL_CSSEL_Field := 16#0#;
      --  TBAN Prescale Select
      TBAN           : CTRL_TBAN_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Key
      KEY            : CTRL_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_CTRL_Register use record
      EN             at 0 range 0 .. 0;
      DAR            at 0 range 1 .. 1;
      MODE           at 0 range 2 .. 2;
      SFV            at 0 range 3 .. 3;
      IM             at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      FCD            at 0 range 7 .. 7;
      PSEL           at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CSSEL1         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CEN            at 0 range 16 .. 16;
      CSSEL          at 0 range 17 .. 17;
      TBAN           at 0 range 18 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      KEY            at 0 range 24 .. 31;
   end record;

   ----------------------
   -- WDT_CLR_Register --
   ----------------------

   subtype CLR_WDTCLR_Field is Interfaces.Bit_Types.Bit;
   subtype CLR_KEY_Field is Interfaces.Bit_Types.Byte;

   --  Clear Register
   type WDT_CLR_Register is record
      --  Write-only. Clear WDT counter
      WDTCLR        : CLR_WDTCLR_Field := 16#0#;
      --  unspecified
      Reserved_1_23 : Interfaces.Bit_Types.UInt23 := 16#0#;
      --  Write-only. Key
      KEY           : CLR_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_CLR_Register use record
      WDTCLR        at 0 range 0 .. 0;
      Reserved_1_23 at 0 range 1 .. 23;
      KEY           at 0 range 24 .. 31;
   end record;

   ---------------------
   -- WDT_SR_Register --
   ---------------------

   subtype SR_WINDOW_Field is Interfaces.Bit_Types.Bit;
   subtype SR_CLEARED_Field is Interfaces.Bit_Types.Bit;

   --  Status Register
   type WDT_SR_Register is record
      --  Read-only. WDT in window
      WINDOW        : SR_WINDOW_Field;
      --  Read-only. WDT cleared
      CLEARED       : SR_CLEARED_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_SR_Register use record
      WINDOW        at 0 range 0 .. 0;
      CLEARED       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   ----------------------
   -- WDT_IER_Register --
   ----------------------

   subtype IER_WINT_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Enable Register
   type WDT_IER_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Watchdog Interrupt
      WINT          : IER_WINT_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_IER_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      WINT          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   ----------------------
   -- WDT_IDR_Register --
   ----------------------

   subtype IDR_WINT_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Disable Register
   type WDT_IDR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Watchdog Interrupt
      WINT          : IDR_WINT_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_IDR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      WINT          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   ----------------------
   -- WDT_IMR_Register --
   ----------------------

   subtype IMR_WINT_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Mask Register
   type WDT_IMR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2;
      --  Read-only. Watchdog Interrupt
      WINT          : IMR_WINT_Field;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_IMR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      WINT          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   ----------------------
   -- WDT_ISR_Register --
   ----------------------

   subtype ISR_WINT_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Status Register
   type WDT_ISR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2;
      --  Read-only. Watchdog Interrupt
      WINT          : ISR_WINT_Field;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_ISR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      WINT          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   ----------------------
   -- WDT_ICR_Register --
   ----------------------

   subtype ICR_WINT_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Clear Register
   type WDT_ICR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Watchdog Interrupt
      WINT          : ICR_WINT_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_ICR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      WINT          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --------------------------
   -- WDT_VERSION_Register --
   --------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type WDT_VERSION_Register is record
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

   for WDT_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Watchdog Timer
   type WDT_Peripheral is record
      --  Control Register
      CTRL    : WDT_CTRL_Register;
      --  Clear Register
      CLR     : WDT_CLR_Register;
      --  Status Register
      SR      : WDT_SR_Register;
      --  Interrupt Enable Register
      IER     : WDT_IER_Register;
      --  Interrupt Disable Register
      IDR     : WDT_IDR_Register;
      --  Interrupt Mask Register
      IMR     : WDT_IMR_Register;
      --  Interrupt Status Register
      ISR     : WDT_ISR_Register;
      --  Interrupt Clear Register
      ICR     : WDT_ICR_Register;
      --  Version Register
      VERSION : WDT_VERSION_Register;
   end record
     with Volatile;

   for WDT_Peripheral use record
      CTRL    at 0 range 0 .. 31;
      CLR     at 4 range 0 .. 31;
      SR      at 8 range 0 .. 31;
      IER     at 12 range 0 .. 31;
      IDR     at 16 range 0 .. 31;
      IMR     at 20 range 0 .. 31;
      ISR     at 24 range 0 .. 31;
      ICR     at 28 range 0 .. 31;
      VERSION at 1020 range 0 .. 31;
   end record;

   --  Watchdog Timer
   WDT_Periph : aliased WDT_Peripheral
     with Import, Address => WDT_Base;

end Interfaces.ATSAM4L.WDT;
