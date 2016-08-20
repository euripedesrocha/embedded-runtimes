--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.AST is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ---------------------
   -- AST_CR_Register --
   ---------------------

   --  Enable
   type ENSelect is
     (
      --  The AST is disabled.
      ENSelect_0,
      --  The AST is enabled
      ENSelect_1)
     with Size => 1;
   for ENSelect use
     (ENSelect_0 => 0,
      ENSelect_1 => 1);

   subtype CR_PCLR_Field is Interfaces.Bit_Types.Bit;
   subtype CR_CAL_Field is Interfaces.Bit_Types.Bit;

   -----------
   -- CR.CA --
   -----------

   --  CR_CA array element
   subtype CR_CA_Element is Interfaces.Bit_Types.Bit;

   --  CR_CA array
   type CR_CA_Field_Array is array (0 .. 1) of CR_CA_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CR_CA
   type CR_CA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CA as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  CA as an array
            Arr : CR_CA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CR_CA_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CR_PSEL_Field is Interfaces.Bit_Types.UInt5;

   --  Control Register
   type AST_CR_Register is record
      --  Enable
      EN             : ENSelect := Interfaces.ATSAM4L.AST.ENSelect_0;
      --  Prescaler Clear
      PCLR           : CR_PCLR_Field := 16#0#;
      --  Calendar mode
      CAL            : CR_CAL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Clear on Alarm 0
      CA             : CR_CA_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Prescaler Select
      PSEL           : CR_PSEL_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_CR_Register use record
      EN             at 0 range 0 .. 0;
      PCLR           at 0 range 1 .. 1;
      CAL            at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      CA             at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PSEL           at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   ---------------------
   -- AST_SR_Register --
   ---------------------

   subtype SR_OVF_Field is Interfaces.Bit_Types.Bit;

   --------------
   -- SR.ALARM --
   --------------

   --  SR_ALARM array element
   subtype SR_ALARM_Element is Interfaces.Bit_Types.Bit;

   --  SR_ALARM array
   type SR_ALARM_Field_Array is array (0 .. 1) of SR_ALARM_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for SR_ALARM
   type SR_ALARM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ALARM as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  ALARM as an array
            Arr : SR_ALARM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SR_ALARM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   ------------
   -- SR.PER --
   ------------

   --  SR_PER array element
   subtype SR_PER_Element is Interfaces.Bit_Types.Bit;

   --  SR_PER array
   type SR_PER_Field_Array is array (0 .. 1) of SR_PER_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for SR_PER
   type SR_PER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PER as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  PER as an array
            Arr : SR_PER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SR_PER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  AST Busy
   type BUSYSelect is
     (
      --  The AST accepts writes to CV, WER, DTR, SCR, AR, PIR and CR
      BUSYSelect_0,
      --  The AST is busy and will discard writes to CV, WER, DTR, SCR, AR, PIR
      --  and CR
      BUSYSelect_1)
     with Size => 1;
   for BUSYSelect use
     (BUSYSelect_0 => 0,
      BUSYSelect_1 => 1);

   subtype SR_READY_Field is Interfaces.Bit_Types.Bit;

   --  Clock Busy
   type CLKBUSYSelect is
     (
      --  The clock is ready and can be changed
      CLKBUSYSelect_0,
      --  CEN has been written and the clock is busy
      CLKBUSYSelect_1)
     with Size => 1;
   for CLKBUSYSelect use
     (CLKBUSYSelect_0 => 0,
      CLKBUSYSelect_1 => 1);

   subtype SR_CLKRDY_Field is Interfaces.Bit_Types.Bit;

   --  Status Register
   type AST_SR_Register is record
      --  Read-only. Overflow
      OVF            : SR_OVF_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7;
      --  Read-only. Alarm 0
      ALARM          : SR_ALARM_Field;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6;
      --  Read-only. Periodic 0
      PER            : SR_PER_Field;
      --  unspecified
      Reserved_18_23 : Interfaces.Bit_Types.UInt6;
      --  Read-only. AST Busy
      BUSY           : BUSYSelect;
      --  Read-only. AST Ready
      READY          : SR_READY_Field;
      --  unspecified
      Reserved_26_27 : Interfaces.Bit_Types.UInt2;
      --  Read-only. Clock Busy
      CLKBUSY        : CLKBUSYSelect;
      --  Read-only. Clock Ready
      CLKRDY         : SR_CLKRDY_Field;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_SR_Register use record
      OVF            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      ALARM          at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PER            at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      BUSY           at 0 range 24 .. 24;
      READY          at 0 range 25 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      CLKBUSY        at 0 range 28 .. 28;
      CLKRDY         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   ----------------------
   -- AST_SCR_Register --
   ----------------------

   subtype SCR_OVF_Field is Interfaces.Bit_Types.Bit;

   ---------------
   -- SCR.ALARM --
   ---------------

   --  SCR_ALARM array element
   subtype SCR_ALARM_Element is Interfaces.Bit_Types.Bit;

   --  SCR_ALARM array
   type SCR_ALARM_Field_Array is array (0 .. 1) of SCR_ALARM_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for SCR_ALARM
   type SCR_ALARM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ALARM as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  ALARM as an array
            Arr : SCR_ALARM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SCR_ALARM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   -------------
   -- SCR.PER --
   -------------

   --  SCR_PER array element
   subtype SCR_PER_Element is Interfaces.Bit_Types.Bit;

   --  SCR_PER array
   type SCR_PER_Field_Array is array (0 .. 1) of SCR_PER_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for SCR_PER
   type SCR_PER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PER as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  PER as an array
            Arr : SCR_PER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SCR_PER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype SCR_READY_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_CLKRDY_Field is Interfaces.Bit_Types.Bit;

   --  Status Clear Register
   type AST_SCR_Register is record
      --  Write-only. Overflow
      OVF            : SCR_OVF_Field := 16#0#;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write-only. Alarm 0
      ALARM          : SCR_ALARM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Write-only. Periodic 0
      PER            : SCR_PER_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_24 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write-only. AST Ready
      READY          : SCR_READY_Field := 16#0#;
      --  unspecified
      Reserved_26_28 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Clock Ready
      CLKRDY         : SCR_CLKRDY_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_SCR_Register use record
      OVF            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      ALARM          at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PER            at 0 range 16 .. 17;
      Reserved_18_24 at 0 range 18 .. 24;
      READY          at 0 range 25 .. 25;
      Reserved_26_28 at 0 range 26 .. 28;
      CLKRDY         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   ----------------------
   -- AST_IER_Register --
   ----------------------

   --  Overflow
   type OVFSelect is
     (
      --  No effect
      OVFSelect_0,
      --  Enable Interrupt.
      OVFSelect_1)
     with Size => 1;
   for OVFSelect use
     (OVFSelect_0 => 0,
      OVFSelect_1 => 1);

   --  Alarm 0
   type ALARM0Select is
     (
      --  No effect
      ALARM0Select_0,
      --  Enable interrupt
      ALARM0Select_1)
     with Size => 1;
   for ALARM0Select use
     (ALARM0Select_0 => 0,
      ALARM0Select_1 => 1);

   --  Alarm 1
   type ALARM1Select is
     (
      --  No effect
      ALARM1Select_0,
      --  Enable interrupt
      ALARM1Select_1)
     with Size => 1;
   for ALARM1Select use
     (ALARM1Select_0 => 0,
      ALARM1Select_1 => 1);

   --  Periodic 0
   type PER0Select is
     (
      --  No effect
      PER0Select_0,
      --  Enable interrupt
      PER0Select_1)
     with Size => 1;
   for PER0Select use
     (PER0Select_0 => 0,
      PER0Select_1 => 1);

   --  Periodic 1
   type PER1Select is
     (
      --  No effect
      PER1Select_0,
      --  Enable interrupt
      PER1Select_1)
     with Size => 1;
   for PER1Select use
     (PER1Select_0 => 0,
      PER1Select_1 => 1);

   --  AST Ready
   type READYSelect is
     (
      --  No effect
      READYSelect_0,
      --  Enable interrupt
      READYSelect_1)
     with Size => 1;
   for READYSelect use
     (READYSelect_0 => 0,
      READYSelect_1 => 1);

   --  Clock Ready
   type CLKRDYSelect is
     (
      --  No effect
      CLKRDYSelect_0,
      --  Enable interrupt
      CLKRDYSelect_1)
     with Size => 1;
   for CLKRDYSelect use
     (CLKRDYSelect_0 => 0,
      CLKRDYSelect_1 => 1);

   --  Interrupt Enable Register
   type AST_IER_Register is record
      --  Write-only. Overflow
      OVF            : OVFSelect := Interfaces.ATSAM4L.AST.OVFSelect_0;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write-only. Alarm 0
      ALARM0         : ALARM0Select := Interfaces.ATSAM4L.AST.ALARM0Select_0;
      --  Write-only. Alarm 1
      ALARM1         : ALARM1Select := Interfaces.ATSAM4L.AST.ALARM1Select_0;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Write-only. Periodic 0
      PER0           : PER0Select := Interfaces.ATSAM4L.AST.PER0Select_0;
      --  Write-only. Periodic 1
      PER1           : PER1Select := Interfaces.ATSAM4L.AST.PER1Select_0;
      --  unspecified
      Reserved_18_24 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write-only. AST Ready
      READY          : READYSelect := Interfaces.ATSAM4L.AST.READYSelect_0;
      --  unspecified
      Reserved_26_28 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Clock Ready
      CLKRDY         : CLKRDYSelect := Interfaces.ATSAM4L.AST.CLKRDYSelect_0;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_IER_Register use record
      OVF            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      ALARM0         at 0 range 8 .. 8;
      ALARM1         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PER0           at 0 range 16 .. 16;
      PER1           at 0 range 17 .. 17;
      Reserved_18_24 at 0 range 18 .. 24;
      READY          at 0 range 25 .. 25;
      Reserved_26_28 at 0 range 26 .. 28;
      CLKRDY         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   ----------------------
   -- AST_IDR_Register --
   ----------------------

   --  Interrupt Disable Register
   type AST_IDR_Register is record
      --  Write-only. Overflow
      OVF            : OVFSelect := Interfaces.ATSAM4L.AST.OVFSelect_0;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write-only. Alarm 0
      ALARM0         : ALARM0Select := Interfaces.ATSAM4L.AST.ALARM0Select_0;
      --  Write-only. Alarm 1
      ALARM1         : ALARM1Select := Interfaces.ATSAM4L.AST.ALARM1Select_0;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Write-only. Periodic 0
      PER0           : PER0Select := Interfaces.ATSAM4L.AST.PER0Select_0;
      --  Write-only. Periodic 1
      PER1           : PER1Select := Interfaces.ATSAM4L.AST.PER1Select_0;
      --  unspecified
      Reserved_18_24 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write-only. AST Ready
      READY          : READYSelect := Interfaces.ATSAM4L.AST.READYSelect_0;
      --  unspecified
      Reserved_26_28 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Clock Ready
      CLKRDY         : CLKRDYSelect := Interfaces.ATSAM4L.AST.CLKRDYSelect_0;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_IDR_Register use record
      OVF            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      ALARM0         at 0 range 8 .. 8;
      ALARM1         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PER0           at 0 range 16 .. 16;
      PER1           at 0 range 17 .. 17;
      Reserved_18_24 at 0 range 18 .. 24;
      READY          at 0 range 25 .. 25;
      Reserved_26_28 at 0 range 26 .. 28;
      CLKRDY         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   ----------------------
   -- AST_IMR_Register --
   ----------------------

   --  Interrupt Mask Register
   type AST_IMR_Register is record
      --  Read-only. Overflow
      OVF            : OVFSelect;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7;
      --  Read-only. Alarm 0
      ALARM0         : ALARM0Select;
      --  Read-only. Alarm 1
      ALARM1         : ALARM1Select;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6;
      --  Read-only. Periodic 0
      PER0           : PER0Select;
      --  Read-only. Periodic 1
      PER1           : PER1Select;
      --  unspecified
      Reserved_18_24 : Interfaces.Bit_Types.UInt7;
      --  Read-only. AST Ready
      READY          : READYSelect;
      --  unspecified
      Reserved_26_28 : Interfaces.Bit_Types.UInt3;
      --  Read-only. Clock Ready
      CLKRDY         : CLKRDYSelect;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_IMR_Register use record
      OVF            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      ALARM0         at 0 range 8 .. 8;
      ALARM1         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PER0           at 0 range 16 .. 16;
      PER1           at 0 range 17 .. 17;
      Reserved_18_24 at 0 range 18 .. 24;
      READY          at 0 range 25 .. 25;
      Reserved_26_28 at 0 range 26 .. 28;
      CLKRDY         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   ----------------------
   -- AST_WER_Register --
   ----------------------

   --  Wake Enable Register
   type AST_WER_Register is record
      --  Overflow
      OVF            : OVFSelect := Interfaces.ATSAM4L.AST.OVFSelect_0;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Alarm 0
      ALARM0         : ALARM0Select := Interfaces.ATSAM4L.AST.ALARM0Select_0;
      --  Alarm 1
      ALARM1         : ALARM1Select := Interfaces.ATSAM4L.AST.ALARM1Select_0;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Periodic 0
      PER0           : PER0Select := Interfaces.ATSAM4L.AST.PER0Select_0;
      --  Periodic 1
      PER1           : PER1Select := Interfaces.ATSAM4L.AST.PER1Select_0;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_WER_Register use record
      OVF            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      ALARM0         at 0 range 8 .. 8;
      ALARM1         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PER0           at 0 range 16 .. 16;
      PER1           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   ------------------
   -- PIR_Register --
   ------------------

   subtype PIR0_INSEL_Field is Interfaces.Bit_Types.UInt5;

   --  Periodic Interval Register 0
   type PIR_Register is record
      --  Interval Select
      INSEL         : PIR0_INSEL_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIR_Register use record
      INSEL         at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   ------------------------
   -- AST_CLOCK_Register --
   ------------------------

   --  Clock Enable
   type CENSelect is
     (
      --  The clock is disabled
      CENSelect_0,
      --  The clock is enabled
      CENSelect_1)
     with Size => 1;
   for CENSelect use
     (CENSelect_0 => 0,
      CENSelect_1 => 1);

   --  Clock Source Selection
   type CSSELSelect is
     (
      --  Slow clock
      Slowclock,
      --  32 kHz clock
      CSSELSelect_32Khzclk,
      --  PB clock
      Pbclock,
      --  Generic clock
      Gclk,
      --  1kHz clock from 32 kHz oscillator
      CSSELSelect_1Khzclk)
     with Size => 3;
   for CSSELSelect use
     (Slowclock => 0,
      CSSELSelect_32Khzclk => 1,
      Pbclock => 2,
      Gclk => 3,
      CSSELSelect_1Khzclk => 4);

   --  Clock Control Register
   type AST_CLOCK_Register is record
      --  Clock Enable
      CEN            : CENSelect := Interfaces.ATSAM4L.AST.CENSelect_0;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Clock Source Selection
      CSSEL          : CSSELSelect := Interfaces.ATSAM4L.AST.Slowclock;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_CLOCK_Register use record
      CEN            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      CSSEL          at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   ----------------------
   -- AST_DTR_Register --
   ----------------------

   subtype DTR_EXP_Field is Interfaces.Bit_Types.UInt5;
   subtype DTR_ADD_Field is Interfaces.Bit_Types.Bit;
   subtype DTR_VALUE_Field is Interfaces.Bit_Types.Byte;

   --  Digital Tuner Register
   type AST_DTR_Register is record
      --  EXP
      EXP            : DTR_EXP_Field := 16#0#;
      --  ADD
      ADD            : DTR_ADD_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  VALUE
      VALUE          : DTR_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_DTR_Register use record
      EXP            at 0 range 0 .. 4;
      ADD            at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      VALUE          at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   ----------------------
   -- AST_EVE_Register --
   ----------------------

   subtype EVE_OVF_Field is Interfaces.Bit_Types.Bit;

   ---------------
   -- EVE.ALARM --
   ---------------

   --  EVE_ALARM array element
   subtype EVE_ALARM_Element is Interfaces.Bit_Types.Bit;

   --  EVE_ALARM array
   type EVE_ALARM_Field_Array is array (0 .. 1) of EVE_ALARM_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for EVE_ALARM
   type EVE_ALARM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ALARM as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  ALARM as an array
            Arr : EVE_ALARM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EVE_ALARM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   -------------
   -- EVE.PER --
   -------------

   --  EVE_PER array element
   subtype EVE_PER_Element is Interfaces.Bit_Types.Bit;

   --  EVE_PER array
   type EVE_PER_Field_Array is array (0 .. 1) of EVE_PER_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for EVE_PER
   type EVE_PER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PER as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  PER as an array
            Arr : EVE_PER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EVE_PER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Event Enable Register
   type AST_EVE_Register is record
      --  Write-only. Overflow
      OVF            : EVE_OVF_Field := 16#0#;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write-only. Alarm 0
      ALARM          : EVE_ALARM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Write-only. Perioidc 0
      PER            : EVE_PER_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_EVE_Register use record
      OVF            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      ALARM          at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PER            at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   ----------------------
   -- AST_EVD_Register --
   ----------------------

   subtype EVD_OVF_Field is Interfaces.Bit_Types.Bit;

   ---------------
   -- EVD.ALARM --
   ---------------

   --  EVD_ALARM array element
   subtype EVD_ALARM_Element is Interfaces.Bit_Types.Bit;

   --  EVD_ALARM array
   type EVD_ALARM_Field_Array is array (0 .. 1) of EVD_ALARM_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for EVD_ALARM
   type EVD_ALARM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ALARM as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  ALARM as an array
            Arr : EVD_ALARM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EVD_ALARM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   -------------
   -- EVD.PER --
   -------------

   --  EVD_PER array element
   subtype EVD_PER_Element is Interfaces.Bit_Types.Bit;

   --  EVD_PER array
   type EVD_PER_Field_Array is array (0 .. 1) of EVD_PER_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for EVD_PER
   type EVD_PER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PER as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  PER as an array
            Arr : EVD_PER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EVD_PER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Event Disable Register
   type AST_EVD_Register is record
      --  Write-only. Overflow
      OVF            : EVD_OVF_Field := 16#0#;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write-only. Alarm 0
      ALARM          : EVD_ALARM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Write-only. Perioidc 0
      PER            : EVD_PER_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_EVD_Register use record
      OVF            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      ALARM          at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PER            at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   ----------------------
   -- AST_EVM_Register --
   ----------------------

   subtype EVM_OVF_Field is Interfaces.Bit_Types.Bit;

   ---------------
   -- EVM.ALARM --
   ---------------

   --  EVM_ALARM array element
   subtype EVM_ALARM_Element is Interfaces.Bit_Types.Bit;

   --  EVM_ALARM array
   type EVM_ALARM_Field_Array is array (0 .. 1) of EVM_ALARM_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for EVM_ALARM
   type EVM_ALARM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ALARM as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  ALARM as an array
            Arr : EVM_ALARM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EVM_ALARM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   -------------
   -- EVM.PER --
   -------------

   --  EVM_PER array element
   subtype EVM_PER_Element is Interfaces.Bit_Types.Bit;

   --  EVM_PER array
   type EVM_PER_Field_Array is array (0 .. 1) of EVM_PER_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for EVM_PER
   type EVM_PER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PER as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  PER as an array
            Arr : EVM_PER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EVM_PER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Event Mask Register
   type AST_EVM_Register is record
      --  Read-only. Overflow
      OVF            : EVM_OVF_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7;
      --  Read-only. Alarm 0
      ALARM          : EVM_ALARM_Field;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6;
      --  Read-only. Perioidc 0
      PER            : EVM_PER_Field;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_EVM_Register use record
      OVF            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      ALARM          at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PER            at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   -----------------------
   -- AST_CALV_Register --
   -----------------------

   subtype CALV_SEC_Field is Interfaces.Bit_Types.UInt6;
   subtype CALV_MIN_Field is Interfaces.Bit_Types.UInt6;
   subtype CALV_HOUR_Field is Interfaces.Bit_Types.UInt5;
   subtype CALV_DAY_Field is Interfaces.Bit_Types.UInt5;
   subtype CALV_MONTH_Field is Interfaces.Bit_Types.UInt4;
   subtype CALV_YEAR_Field is Interfaces.Bit_Types.UInt6;

   --  Calendar Value
   type AST_CALV_Register is record
      --  Second
      SEC   : CALV_SEC_Field := 16#0#;
      --  Minute
      MIN   : CALV_MIN_Field := 16#0#;
      --  Hour
      HOUR  : CALV_HOUR_Field := 16#0#;
      --  Day
      DAY   : CALV_DAY_Field := 16#0#;
      --  Month
      MONTH : CALV_MONTH_Field := 16#0#;
      --  Year
      YEAR  : CALV_YEAR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_CALV_Register use record
      SEC   at 0 range 0 .. 5;
      MIN   at 0 range 6 .. 11;
      HOUR  at 0 range 12 .. 16;
      DAY   at 0 range 17 .. 21;
      MONTH at 0 range 22 .. 25;
      YEAR  at 0 range 26 .. 31;
   end record;

   ----------------------------
   -- AST_PARAMETER_Register --
   ----------------------------

   --  Digital Tuner
   type DTSelect is
     (
      --  Digital tuner off
      Off,
      --  Digital tuner on
      On)
     with Size => 1;
   for DTSelect use
     (Off => 0,
      On => 1);

   --  Digital Tuner Exponent Writeable
   type DTEXPWASelect is
     (
      --  Digital tuner exponent is a constant value. Writes to EXP bitfield in
      --  DTR will be discarded.
      DTEXPWASelect_0,
      --  Digital tuner exponent is chosen by writing to EXP bitfield in DTR
      DTEXPWASelect_1)
     with Size => 1;
   for DTEXPWASelect use
     (DTEXPWASelect_0 => 0,
      DTEXPWASelect_1 => 1);

   subtype PARAMETER_DTEXPVALUE_Field is Interfaces.Bit_Types.UInt5;

   --  Number of alarm comparators
   type NUMARSelect is
     (
      --  No alarm comparators
      Zero,
      --  One alarm comparator
      One,
      --  Two alarm comparators
      Two)
     with Size => 2;
   for NUMARSelect use
     (Zero => 0,
      One => 1,
      Two => 2);

   --  Number of periodic comparators
   type NUMPIRSelect is
     (
      --  One periodic comparator
      One,
      --  Two periodic comparators
      Two)
     with Size => 1;
   for NUMPIRSelect use
     (One => 0,
      Two => 1);

   --  Periodic Interval 0 Writeable
   type PIR0WASelect is
     (
      --  Periodic alarm prescaler 0 tapping is a constant value. Writes to
      --  INSEL bitfield in PIR0 will be discarded.
      PIR0WASelect_0,
      --  Periodic alarm prescaler 0 tapping is chosen by writing to INSEL
      --  bitfield in PIR0
      PIR0WASelect_1)
     with Size => 1;
   for PIR0WASelect use
     (PIR0WASelect_0 => 0,
      PIR0WASelect_1 => 1);

   --  Periodic Interval 1 Writeable
   type PIR1WASelect is
     (
      --  Writes to PIR1 will be discarded
      PIR1WASelect_0,
      --  PIR1 can be written
      PIR1WASelect_1)
     with Size => 1;
   for PIR1WASelect use
     (PIR1WASelect_0 => 0,
      PIR1WASelect_1 => 1);

   subtype PARAMETER_PER0VALUE_Field is Interfaces.Bit_Types.UInt5;
   subtype PARAMETER_PER1VALUE_Field is Interfaces.Bit_Types.UInt5;

   --  Parameter Register
   type AST_PARAMETER_Register is record
      --  Read-only. Digital Tuner
      DT             : DTSelect;
      --  Read-only. Digital Tuner Exponent Writeable
      DTEXPWA        : DTEXPWASelect;
      --  Read-only. Digital Tuner Exponent Value
      DTEXPVALUE     : PARAMETER_DTEXPVALUE_Field;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit;
      --  Read-only. Number of alarm comparators
      NUMAR          : NUMARSelect;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2;
      --  Read-only. Number of periodic comparators
      NUMPIR         : NUMPIRSelect;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit;
      --  Read-only. Periodic Interval 0 Writeable
      PIR0WA         : PIR0WASelect;
      --  Read-only. Periodic Interval 1 Writeable
      PIR1WA         : PIR1WASelect;
      --  Read-only. Periodic Interval 0 Value
      PER0VALUE      : PARAMETER_PER0VALUE_Field;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3;
      --  Read-only. Periodic Interval 1 Value
      PER1VALUE      : PARAMETER_PER1VALUE_Field;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AST_PARAMETER_Register use record
      DT             at 0 range 0 .. 0;
      DTEXPWA        at 0 range 1 .. 1;
      DTEXPVALUE     at 0 range 2 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NUMAR          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      NUMPIR         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      PIR0WA         at 0 range 14 .. 14;
      PIR1WA         at 0 range 15 .. 15;
      PER0VALUE      at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PER1VALUE      at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --------------------------
   -- AST_VERSION_Register --
   --------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type AST_VERSION_Register is record
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

   for AST_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Asynchronous Timer
   type AST_Peripheral is record
      --  Control Register
      CR        : AST_CR_Register;
      --  Counter Value
      CV        : Interfaces.Bit_Types.Word;
      --  Status Register
      SR        : AST_SR_Register;
      --  Status Clear Register
      SCR       : AST_SCR_Register;
      --  Interrupt Enable Register
      IER       : AST_IER_Register;
      --  Interrupt Disable Register
      IDR       : AST_IDR_Register;
      --  Interrupt Mask Register
      IMR       : AST_IMR_Register;
      --  Wake Enable Register
      WER       : AST_WER_Register;
      --  Alarm Register 0
      AR0       : Interfaces.Bit_Types.Word;
      --  Alarm Register 1
      AR1       : Interfaces.Bit_Types.Word;
      --  Periodic Interval Register 0
      PIR0      : PIR_Register;
      --  Periodic Interval Register 1
      PIR1      : PIR_Register;
      --  Clock Control Register
      CLOCK     : AST_CLOCK_Register;
      --  Digital Tuner Register
      DTR       : AST_DTR_Register;
      --  Event Enable Register
      EVE       : AST_EVE_Register;
      --  Event Disable Register
      EVD       : AST_EVD_Register;
      --  Event Mask Register
      EVM       : AST_EVM_Register;
      --  Calendar Value
      CALV      : AST_CALV_Register;
      --  Parameter Register
      PARAMETER : AST_PARAMETER_Register;
      --  Version Register
      VERSION   : AST_VERSION_Register;
   end record
     with Volatile;

   for AST_Peripheral use record
      CR        at 0 range 0 .. 31;
      CV        at 4 range 0 .. 31;
      SR        at 8 range 0 .. 31;
      SCR       at 12 range 0 .. 31;
      IER       at 16 range 0 .. 31;
      IDR       at 20 range 0 .. 31;
      IMR       at 24 range 0 .. 31;
      WER       at 28 range 0 .. 31;
      AR0       at 32 range 0 .. 31;
      AR1       at 36 range 0 .. 31;
      PIR0      at 48 range 0 .. 31;
      PIR1      at 52 range 0 .. 31;
      CLOCK     at 64 range 0 .. 31;
      DTR       at 68 range 0 .. 31;
      EVE       at 72 range 0 .. 31;
      EVD       at 76 range 0 .. 31;
      EVM       at 80 range 0 .. 31;
      CALV      at 84 range 0 .. 31;
      PARAMETER at 240 range 0 .. 31;
      VERSION   at 252 range 0 .. 31;
   end record;

   --  Asynchronous Timer
   AST_Periph : aliased AST_Peripheral
     with Import, Address => AST_Base;

end Interfaces.ATSAM4L.AST;
