--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.TC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ------------------
   -- CCR_Register --
   ------------------

   --  Counter Clock Enable Command
   type CLKENSelect is
     (
      --  No effect.
      CLKENSelect_0,
      --  Enables the clock if CLKDIS is not 1.
      CLKENSelect_1)
     with Size => 1;
   for CLKENSelect use
     (CLKENSelect_0 => 0,
      CLKENSelect_1 => 1);

   --  Counter Clock Disable Command
   type CLKDISSelect is
     (
      --  No effect.
      CLKDISSelect_0,
      --  Disables the clock.
      CLKDISSelect_1)
     with Size => 1;
   for CLKDISSelect use
     (CLKDISSelect_0 => 0,
      CLKDISSelect_1 => 1);

   --  Software Trigger Command
   type SWTRGSelect is
     (
      --  No effect.
      SWTRGSelect_0,
      --  A software trigger is performed:the counter is reset and clock is
      --  started.
      SWTRGSelect_1)
     with Size => 1;
   for SWTRGSelect use
     (SWTRGSelect_0 => 0,
      SWTRGSelect_1 => 1);

   --  Channel Control Register Channel
   type CCR_Register is record
      --  Write-only. Counter Clock Enable Command
      CLKEN         : CLKENSelect := Interfaces.ATSAM4L.TC.CLKENSelect_0;
      --  Write-only. Counter Clock Disable Command
      CLKDIS        : CLKDISSelect := Interfaces.ATSAM4L.TC.CLKDISSelect_0;
      --  Write-only. Software Trigger Command
      SWTRG         : SWTRGSelect := Interfaces.ATSAM4L.TC.SWTRGSelect_0;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      CLKEN         at 0 range 0 .. 0;
      CLKDIS        at 0 range 1 .. 1;
      SWTRG         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --------------------------
   -- CMR_CAPTURE_Register --
   --------------------------

   --  Clock Selection
   type TCCLKSSelect is
     (
      --  TIMER_CLOCK1
      Timer_Clock1,
      --  TIMER_CLOCK2
      Timer_Clock2,
      --  TIMER_CLOCK3
      Timer_Clock3,
      --  TIMER_CLOCK4
      Timer_Clock4,
      --  TIMER_CLOCK5
      Timer_Clock5,
      --  XC0
      Xc0,
      --  XC1
      Xc1,
      --  XC2
      Xc2)
     with Size => 3;
   for TCCLKSSelect use
     (Timer_Clock1 => 0,
      Timer_Clock2 => 1,
      Timer_Clock3 => 2,
      Timer_Clock4 => 3,
      Timer_Clock5 => 4,
      Xc0 => 5,
      Xc1 => 6,
      Xc2 => 7);

   --  Clock Invert
   type CLKISelect is
     (
      --  Counter is incremented on rising edge of the clock.
      CLKISelect_0,
      --  Counter is incremented on falling edge of the clock.
      CLKISelect_1)
     with Size => 1;
   for CLKISelect use
     (CLKISelect_0 => 0,
      CLKISelect_1 => 1);

   --  Burst Signal Selection
   type BURSTSelect is
     (
      --  The clock is not gated by an external signal.
      Not_Gated,
      --  XC0 is ANDed with the selected clock.
      Clk_And_Xc0,
      --  XC1 is ANDed with the selected clock.
      Clk_And_Xc1,
      --  XC2 is ANDed with the selected clock.
      Clk_And_Xc2)
     with Size => 2;
   for BURSTSelect use
     (Not_Gated => 0,
      Clk_And_Xc0 => 1,
      Clk_And_Xc1 => 2,
      Clk_And_Xc2 => 3);

   --  Counter Clock Stopped with RB Loading
   type LDBSTOPSelect is
     (
      --  Counter clock is not stopped when RB loading occurs.
      LDBSTOPSelect_0,
      --  Counter clock is stopped when RB loading occurs.
      LDBSTOPSelect_1)
     with Size => 1;
   for LDBSTOPSelect use
     (LDBSTOPSelect_0 => 0,
      LDBSTOPSelect_1 => 1);

   --  Counter Clock Disable with RB Loading
   type LDBDISSelect is
     (
      --  Counter clock is not disabled when RB loading occurs.
      LDBDISSelect_0,
      --  Counter clock is disabled when RB loading occurs.
      LDBDISSelect_1)
     with Size => 1;
   for LDBDISSelect use
     (LDBDISSelect_0 => 0,
      LDBDISSelect_1 => 1);

   --  External Trigger Edge Selection
   type ETRGEDGSelect is
     (
      --  none
      No_Edge,
      --  rising edge
      Pos_Edge,
      --  falling edge
      Neg_Edge,
      --  each edge
      Both_Edges)
     with Size => 2;
   for ETRGEDGSelect use
     (No_Edge => 0,
      Pos_Edge => 1,
      Neg_Edge => 2,
      Both_Edges => 3);

   --  TIOA or TIOB External Trigger Selection
   type ABETRGSelect is
     (
      --  TIOB is used as an external trigger.
      ABETRGSelect_0,
      --  TIOA is used as an external trigger.
      ABETRGSelect_1)
     with Size => 1;
   for ABETRGSelect use
     (ABETRGSelect_0 => 0,
      ABETRGSelect_1 => 1);

   --  RC Compare Trigger Enable
   type CPCTRGSelect is
     (
      --  RC Compare has no effect on the counter and its clock.
      CPCTRGSelect_0,
      --  RC Compare resets the counter and starts the counter clock.
      CPCTRGSelect_1)
     with Size => 1;
   for CPCTRGSelect use
     (CPCTRGSelect_0 => 0,
      CPCTRGSelect_1 => 1);

   --  Wave
   type WAVESelect is
     (
      --  Capture Mode is enabled.
      WAVESelect_0,
      --  Capture Mode is disabled (Waveform Mode is enabled).
      WAVESelect_1)
     with Size => 1;
   for WAVESelect use
     (WAVESelect_0 => 0,
      WAVESelect_1 => 1);

   --  RA Loading Selection
   type LDRASelect is
     (
      --  none
      No_Edge,
      --  rising edge of TIOA
      Pos_Edge_Tioa,
      --  falling edge of TIOA
      Neg_Edge_Tioa,
      --  each edge of TIOA
      Both_Edges_Tioa)
     with Size => 2;
   for LDRASelect use
     (No_Edge => 0,
      Pos_Edge_Tioa => 1,
      Neg_Edge_Tioa => 2,
      Both_Edges_Tioa => 3);

   --  RB Loading Selection
   type LDRBSelect is
     (
      --  none
      No_Edge,
      --  rising edge of TIOA
      Pos_Edge_Tioa,
      --  falling edge of TIOA
      Neg_Edge_Tioa,
      --  each edge of TIOA
      Both_Edges_Tioa)
     with Size => 2;
   for LDRBSelect use
     (No_Edge => 0,
      Pos_Edge_Tioa => 1,
      Neg_Edge_Tioa => 2,
      Both_Edges_Tioa => 3);

   --  Channel Mode Register Channel
   type CMR_CAPTURE_Register is record
      --  Clock Selection
      TCCLKS         : TCCLKSSelect := Interfaces.ATSAM4L.TC.Timer_Clock1;
      --  Clock Invert
      CLKI           : CLKISelect := Interfaces.ATSAM4L.TC.CLKISelect_0;
      --  Burst Signal Selection
      BURST          : BURSTSelect := Interfaces.ATSAM4L.TC.Not_Gated;
      --  Counter Clock Stopped with RB Loading
      LDBSTOP        : LDBSTOPSelect := Interfaces.ATSAM4L.TC.LDBSTOPSelect_0;
      --  Counter Clock Disable with RB Loading
      LDBDIS         : LDBDISSelect := Interfaces.ATSAM4L.TC.LDBDISSelect_0;
      --  External Trigger Edge Selection
      ETRGEDG        : ETRGEDGSelect := Interfaces.ATSAM4L.TC.No_Edge;
      --  TIOA or TIOB External Trigger Selection
      ABETRG         : ABETRGSelect := Interfaces.ATSAM4L.TC.ABETRGSelect_0;
      --  unspecified
      Reserved_11_13 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  RC Compare Trigger Enable
      CPCTRG         : CPCTRGSelect := Interfaces.ATSAM4L.TC.CPCTRGSelect_0;
      --  Wave
      WAVE           : WAVESelect := Interfaces.ATSAM4L.TC.WAVESelect_0;
      --  RA Loading Selection
      LDRA           : LDRASelect := Interfaces.ATSAM4L.TC.No_Edge;
      --  RB Loading Selection
      LDRB           : LDRBSelect := Interfaces.ATSAM4L.TC.No_Edge;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMR_CAPTURE_Register use record
      TCCLKS         at 0 range 0 .. 2;
      CLKI           at 0 range 3 .. 3;
      BURST          at 0 range 4 .. 5;
      LDBSTOP        at 0 range 6 .. 6;
      LDBDIS         at 0 range 7 .. 7;
      ETRGEDG        at 0 range 8 .. 9;
      ABETRG         at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      CPCTRG         at 0 range 14 .. 14;
      WAVE           at 0 range 15 .. 15;
      LDRA           at 0 range 16 .. 17;
      LDRB           at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ---------------------------
   -- CMR_WAVEFORM_Register --
   ---------------------------

   --  Clock Selection
   type TCCLKSSelect_1 is
     (
      --  TIMER_DIV1_CLOCK
      Timer_Div1_Clock,
      --  TIMER_DIV2_CLOCK
      Timer_Div2_Clock,
      --  TIMER_DIV3_CLOCK
      Timer_Div3_Clock,
      --  TIMER_DIV4_CLOCK
      Timer_Div4_Clock,
      --  TIMER_DIV5_CLOCK
      Timer_Div5_Clock,
      --  XC0
      Xc0,
      --  XC1
      Xc1,
      --  XC2
      Xc2)
     with Size => 3;
   for TCCLKSSelect_1 use
     (Timer_Div1_Clock => 0,
      Timer_Div2_Clock => 1,
      Timer_Div3_Clock => 2,
      Timer_Div4_Clock => 3,
      Timer_Div5_Clock => 4,
      Xc0 => 5,
      Xc1 => 6,
      Xc2 => 7);

   --  Counter Clock Stopped with RC Compare
   type CPCSTOPSelect is
     (
      --  Counter clock is not stopped when counter reaches RC.
      CPCSTOPSelect_0,
      --  Counter clock is stopped when counter reaches RC.
      CPCSTOPSelect_1)
     with Size => 1;
   for CPCSTOPSelect use
     (CPCSTOPSelect_0 => 0,
      CPCSTOPSelect_1 => 1);

   --  Counter Clock Disable with RC Compare
   type CPCDISSelect is
     (
      --  Counter clock is not disabled when counter reaches RC.
      CPCDISSelect_0,
      --  Counter clock is disabled when counter reaches RC.
      CPCDISSelect_1)
     with Size => 1;
   for CPCDISSelect use
     (CPCDISSelect_0 => 0,
      CPCDISSelect_1 => 1);

   --  External Event Edge Selection
   type EEVTEDGSelect is
     (
      --  none
      No_Edge,
      --  rising edge
      Pos_Edge,
      --  falling edge
      Neg_Edge,
      --  each edge
      Both_Edges)
     with Size => 2;
   for EEVTEDGSelect use
     (No_Edge => 0,
      Pos_Edge => 1,
      Neg_Edge => 2,
      Both_Edges => 3);

   --  External Event Selection
   type EEVTSelect is
     (
      --  TIOB input. If TIOB is chosen as the external event signal, it is
      --  configured as an input and no longer generates waveforms.
      Tiob_Input,
      --  XC0 output
      Xc0_Output,
      --  XC1 output
      Xc1_Output,
      --  XC2 output
      Xc2_Output)
     with Size => 2;
   for EEVTSelect use
     (Tiob_Input => 0,
      Xc0_Output => 1,
      Xc1_Output => 2,
      Xc2_Output => 3);

   --  External Event Trigger Enable
   type ENETRGSelect is
     (
      --  The external event has no effect on the counter and its clock. In
      --  this case, the selected external event only controls the TIOA output.
      ENETRGSelect_0,
      --  The external event resets the counter and starts the counter clock.
      ENETRGSelect_1)
     with Size => 1;
   for ENETRGSelect use
     (ENETRGSelect_0 => 0,
      ENETRGSelect_1 => 1);

   --  Waveform Selection
   type WAVSELSelect is
     (
      --  UP mode without automatic trigger on RC Compare
      Up_No_Auto,
      --  UPDOWN mode without automatic trigger on RC Compare
      Updown_No_Auto,
      --  UP mode with automatic trigger on RC Compare
      Up_Auto,
      --  UPDOWN mode with automatic trigger on RC Compare
      Updown_Auto)
     with Size => 2;
   for WAVSELSelect use
     (Up_No_Auto => 0,
      Updown_No_Auto => 1,
      Up_Auto => 2,
      Updown_Auto => 3);

   --  RA Compare Effect on TIOA
   type ACPASelect is
     (
      --  none
      None,
      --  set
      Set,
      --  clear
      Clear,
      --  toggle
      Toggle)
     with Size => 2;
   for ACPASelect use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  RC Compare Effect on TIOA
   type ACPCSelect is
     (
      --  none
      None,
      --  set
      Set,
      --  clear
      Clear,
      --  toggle
      Toggle)
     with Size => 2;
   for ACPCSelect use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  External Event Effect on TIOA
   type AEEVTSelect is
     (
      --  none
      None,
      --  set
      Set,
      --  clear
      Clear,
      --  toggle
      Toggle)
     with Size => 2;
   for AEEVTSelect use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  Software Trigger Effect on TIOA
   type ASWTRGSelect is
     (
      --  none
      None,
      --  set
      Set,
      --  clear
      Clear,
      --  toggle
      Toggle)
     with Size => 2;
   for ASWTRGSelect use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  RB Compare Effect on TIOB
   type BCPBSelect is
     (
      --  none
      None,
      --  set
      Set,
      --  clear
      Clear,
      --  toggle
      Toggle)
     with Size => 2;
   for BCPBSelect use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  RC Compare Effect on TIOB
   type BCPCSelect is
     (
      --  none
      None,
      --  set
      Set,
      --  clear
      Clear,
      --  toggle
      Toggle)
     with Size => 2;
   for BCPCSelect use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  External Event Effect on TIOB
   type BEEVTSelect is
     (
      --  none
      None,
      --  set
      Set,
      --  clear
      Clear,
      --  toggle
      Toggle)
     with Size => 2;
   for BEEVTSelect use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  Software Trigger Effect on TIOB
   type BSWTRGSelect is
     (
      --  none
      None,
      --  set
      Set,
      --  clear
      Clear,
      --  toggle
      Toggle)
     with Size => 2;
   for BSWTRGSelect use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  Channel Mode Register Channel
   type CMR_WAVEFORM_Register is record
      --  Clock Selection
      TCCLKS  : TCCLKSSelect_1 := Interfaces.ATSAM4L.TC.Timer_Div1_Clock;
      --  Clock Invert
      CLKI    : CLKISelect := Interfaces.ATSAM4L.TC.CLKISelect_0;
      --  Burst Signal Selection
      BURST   : BURSTSelect := Interfaces.ATSAM4L.TC.Not_Gated;
      --  Counter Clock Stopped with RC Compare
      CPCSTOP : CPCSTOPSelect := Interfaces.ATSAM4L.TC.CPCSTOPSelect_0;
      --  Counter Clock Disable with RC Compare
      CPCDIS  : CPCDISSelect := Interfaces.ATSAM4L.TC.CPCDISSelect_0;
      --  External Event Edge Selection
      EEVTEDG : EEVTEDGSelect := Interfaces.ATSAM4L.TC.No_Edge;
      --  External Event Selection
      EEVT    : EEVTSelect := Interfaces.ATSAM4L.TC.Tiob_Input;
      --  External Event Trigger Enable
      ENETRG  : ENETRGSelect := Interfaces.ATSAM4L.TC.ENETRGSelect_0;
      --  Waveform Selection
      WAVSEL  : WAVSELSelect := Interfaces.ATSAM4L.TC.Up_No_Auto;
      --  WAVE
      WAVE    : WAVESelect := Interfaces.ATSAM4L.TC.WAVESelect_0;
      --  RA Compare Effect on TIOA
      ACPA    : ACPASelect := Interfaces.ATSAM4L.TC.None;
      --  RC Compare Effect on TIOA
      ACPC    : ACPCSelect := Interfaces.ATSAM4L.TC.None;
      --  External Event Effect on TIOA
      AEEVT   : AEEVTSelect := Interfaces.ATSAM4L.TC.None;
      --  Software Trigger Effect on TIOA
      ASWTRG  : ASWTRGSelect := Interfaces.ATSAM4L.TC.None;
      --  RB Compare Effect on TIOB
      BCPB    : BCPBSelect := Interfaces.ATSAM4L.TC.None;
      --  RC Compare Effect on TIOB
      BCPC    : BCPCSelect := Interfaces.ATSAM4L.TC.None;
      --  External Event Effect on TIOB
      BEEVT   : BEEVTSelect := Interfaces.ATSAM4L.TC.None;
      --  Software Trigger Effect on TIOB
      BSWTRG  : BSWTRGSelect := Interfaces.ATSAM4L.TC.None;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMR_WAVEFORM_Register use record
      TCCLKS  at 0 range 0 .. 2;
      CLKI    at 0 range 3 .. 3;
      BURST   at 0 range 4 .. 5;
      CPCSTOP at 0 range 6 .. 6;
      CPCDIS  at 0 range 7 .. 7;
      EEVTEDG at 0 range 8 .. 9;
      EEVT    at 0 range 10 .. 11;
      ENETRG  at 0 range 12 .. 12;
      WAVSEL  at 0 range 13 .. 14;
      WAVE    at 0 range 15 .. 15;
      ACPA    at 0 range 16 .. 17;
      ACPC    at 0 range 18 .. 19;
      AEEVT   at 0 range 20 .. 21;
      ASWTRG  at 0 range 22 .. 23;
      BCPB    at 0 range 24 .. 25;
      BCPC    at 0 range 26 .. 27;
      BEEVT   at 0 range 28 .. 29;
      BSWTRG  at 0 range 30 .. 31;
   end record;

   -------------------
   -- SMMR_Register --
   -------------------

   subtype SMMR0_GCEN_Field is Interfaces.Bit_Types.Bit;
   subtype SMMR0_DOWN_Field is Interfaces.Bit_Types.Bit;

   --  Stepper Motor Mode Register
   type SMMR_Register is record
      --  Gray Count Enable
      GCEN          : SMMR0_GCEN_Field := 16#0#;
      --  Down Count
      DOWN          : SMMR0_DOWN_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMMR_Register use record
      GCEN          at 0 range 0 .. 0;
      DOWN          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- CV_Register --
   -----------------

   subtype CV0_CV_Field is Interfaces.Bit_Types.Short;

   --  Counter Value Channel
   type CV_Register is record
      --  Read-only. Counter Value
      CV             : CV0_CV_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CV_Register use record
      CV             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- RA_Register --
   -----------------

   subtype RA0_RA_Field is Interfaces.Bit_Types.Short;

   --  Register A Channel
   type RA_Register is record
      --  Register A
      RA             : RA0_RA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RA_Register use record
      RA             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- RB_Register --
   -----------------

   subtype RB0_RB_Field is Interfaces.Bit_Types.Short;

   --  Register B Channel
   type RB_Register is record
      --  Register B
      RB             : RB0_RB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RB_Register use record
      RB             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- RC_Register --
   -----------------

   subtype RC0_RC_Field is Interfaces.Bit_Types.Short;

   --  Register C Channel
   type RC_Register is record
      --  Register C
      RC             : RC0_RC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RC_Register use record
      RC             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- SR_Register --
   -----------------

   --  Counter Overflow Status
   type COVFSSelect is
     (
      --  No counter overflow has occurred since the last read of the Status
      --  Register.
      COVFSSelect_0,
      --  A counter overflow has occurred since the last read of the Status
      --  Register.
      COVFSSelect_1)
     with Size => 1;
   for COVFSSelect use
     (COVFSSelect_0 => 0,
      COVFSSelect_1 => 1);

   --  Load Overrun Status
   type LOVRSSelect is
     (
      --  Load overrun has not occurred since the last read of the Status
      --  Register or WAVE:1.
      LOVRSSelect_0,
      --  RA or RB have been loaded at least twice without any read of the
      --  corresponding register since the last read of the StatusRegister, if
      --  WAVE:0.
      LOVRSSelect_1)
     with Size => 1;
   for LOVRSSelect use
     (LOVRSSelect_0 => 0,
      LOVRSSelect_1 => 1);

   --  RA Compare Status
   type CPASSelect is
     (
      --  RA Compare has not occurred since the last read of the Status
      --  Register or WAVE:0.
      CPASSelect_0,
      --  RA Compare has occurred since the last read of the Status Register,
      --  if WAVE:1.
      CPASSelect_1)
     with Size => 1;
   for CPASSelect use
     (CPASSelect_0 => 0,
      CPASSelect_1 => 1);

   --  RB Compare Status
   type CPBSSelect is
     (
      --  RB Compare has not occurred since the last read of the Status
      --  Register or WAVE:0.
      CPBSSelect_0,
      --  RB Compare has occurred since the last read of the Status Register,
      --  if WAVE:1.
      CPBSSelect_1)
     with Size => 1;
   for CPBSSelect use
     (CPBSSelect_0 => 0,
      CPBSSelect_1 => 1);

   --  RC Compare Status
   type CPCSSelect is
     (
      --  RC Compare has not occurred since the last read of the Status
      --  Register.
      CPCSSelect_0,
      --  RC Compare has occurred since the last read of the Status Register.
      CPCSSelect_1)
     with Size => 1;
   for CPCSSelect use
     (CPCSSelect_0 => 0,
      CPCSSelect_1 => 1);

   --  RA Loading Status
   type LDRASSelect is
     (
      --  RA Load has not occurred since the last read of the Status Register
      --  or WAVE:1.
      LDRASSelect_0,
      --  RA Load has occurred since the last read of the Status Register, if
      --  WAVE:0.
      LDRASSelect_1)
     with Size => 1;
   for LDRASSelect use
     (LDRASSelect_0 => 0,
      LDRASSelect_1 => 1);

   --  RB Loading Status
   type LDRBSSelect is
     (
      --  RB Load has not occurred since the last read of the Status Register
      --  or WAVE:1.
      LDRBSSelect_0,
      --  RB Load has occurred since the last read of the Status Register, if
      --  WAVE:0.
      LDRBSSelect_1)
     with Size => 1;
   for LDRBSSelect use
     (LDRBSSelect_0 => 0,
      LDRBSSelect_1 => 1);

   --  External Trigger Status
   type ETRGSSelect is
     (
      --  External trigger has not occurred since the last read of the Status
      --  Register.
      ETRGSSelect_0,
      --  External trigger has occurred since the last read of the Status
      --  Register.
      ETRGSSelect_1)
     with Size => 1;
   for ETRGSSelect use
     (ETRGSSelect_0 => 0,
      ETRGSSelect_1 => 1);

   --  Clock Enabling Status
   type CLKSTASelect is
     (
      --  Clock is disabled.
      CLKSTASelect_0,
      --  Clock is enabled.
      CLKSTASelect_1)
     with Size => 1;
   for CLKSTASelect use
     (CLKSTASelect_0 => 0,
      CLKSTASelect_1 => 1);

   --  TIOA Mirror
   type MTIOASelect is
     (
      --  TIOA is low. If WAVE:0, this means that TIOA pin is low. If WAVE:1,
      --  this means that TIOA is driven low.
      MTIOASelect_0,
      --  TIOA is high. If WAVE:0, this means that TIOA pin is high. If WAVE:1,
      --  this means that TIOA is driven high.
      MTIOASelect_1)
     with Size => 1;
   for MTIOASelect use
     (MTIOASelect_0 => 0,
      MTIOASelect_1 => 1);

   --  TIOB Mirror
   type MTIOBSelect is
     (
      --  TIOB is low. If WAVE:0, this means that TIOB pin is low. If WAVE:1,
      --  this means that TIOB is driven low.
      MTIOBSelect_0,
      --  TIOB is high. If WAVE:0, this means that TIOB pin is high. If WAVE:1,
      --  this means that TIOB is driven high.
      MTIOBSelect_1)
     with Size => 1;
   for MTIOBSelect use
     (MTIOBSelect_0 => 0,
      MTIOBSelect_1 => 1);

   --  Status Register Channel
   type SR_Register is record
      --  Read-only. Counter Overflow Status
      COVFS          : COVFSSelect;
      --  Read-only. Load Overrun Status
      LOVRS          : LOVRSSelect;
      --  Read-only. RA Compare Status
      CPAS           : CPASSelect;
      --  Read-only. RB Compare Status
      CPBS           : CPBSSelect;
      --  Read-only. RC Compare Status
      CPCS           : CPCSSelect;
      --  Read-only. RA Loading Status
      LDRAS          : LDRASSelect;
      --  Read-only. RB Loading Status
      LDRBS          : LDRBSSelect;
      --  Read-only. External Trigger Status
      ETRGS          : ETRGSSelect;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte;
      --  Read-only. Clock Enabling Status
      CLKSTA         : CLKSTASelect;
      --  Read-only. TIOA Mirror
      MTIOA          : MTIOASelect;
      --  Read-only. TIOB Mirror
      MTIOB          : MTIOBSelect;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      COVFS          at 0 range 0 .. 0;
      LOVRS          at 0 range 1 .. 1;
      CPAS           at 0 range 2 .. 2;
      CPBS           at 0 range 3 .. 3;
      CPCS           at 0 range 4 .. 4;
      LDRAS          at 0 range 5 .. 5;
      LDRBS          at 0 range 6 .. 6;
      ETRGS          at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      CLKSTA         at 0 range 16 .. 16;
      MTIOA          at 0 range 17 .. 17;
      MTIOB          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   ------------------
   -- IER_Register --
   ------------------

   --  Interrupt Enable Register Channel
   type IER_Register is record
      --  Write-only. Counter Overflow
      COVFS         : COVFSSelect := Interfaces.ATSAM4L.TC.COVFSSelect_0;
      --  Write-only. Load Overrun
      LOVRS         : LOVRSSelect := Interfaces.ATSAM4L.TC.LOVRSSelect_0;
      --  Write-only. RA Compare
      CPAS          : CPASSelect := Interfaces.ATSAM4L.TC.CPASSelect_0;
      --  Write-only. RB Compare
      CPBS          : CPBSSelect := Interfaces.ATSAM4L.TC.CPBSSelect_0;
      --  Write-only. RC Compare
      CPCS          : CPCSSelect := Interfaces.ATSAM4L.TC.CPCSSelect_0;
      --  Write-only. RA Loading
      LDRAS         : LDRASSelect := Interfaces.ATSAM4L.TC.LDRASSelect_0;
      --  Write-only. RB Loading
      LDRBS         : LDRBSSelect := Interfaces.ATSAM4L.TC.LDRBSSelect_0;
      --  Write-only. External Trigger
      ETRGS         : ETRGSSelect := Interfaces.ATSAM4L.TC.ETRGSSelect_0;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      COVFS         at 0 range 0 .. 0;
      LOVRS         at 0 range 1 .. 1;
      CPAS          at 0 range 2 .. 2;
      CPBS          at 0 range 3 .. 3;
      CPCS          at 0 range 4 .. 4;
      LDRAS         at 0 range 5 .. 5;
      LDRBS         at 0 range 6 .. 6;
      ETRGS         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ------------------
   -- IDR_Register --
   ------------------

   --  Interrupt Disable Register Channel
   type IDR_Register is record
      --  Write-only. Counter Overflow
      COVFS         : COVFSSelect := Interfaces.ATSAM4L.TC.COVFSSelect_0;
      --  Write-only. Load Overrun
      LOVRS         : LOVRSSelect := Interfaces.ATSAM4L.TC.LOVRSSelect_0;
      --  Write-only. RA Compare
      CPAS          : CPASSelect := Interfaces.ATSAM4L.TC.CPASSelect_0;
      --  Write-only. RB Compare
      CPBS          : CPBSSelect := Interfaces.ATSAM4L.TC.CPBSSelect_0;
      --  Write-only. RC Compare
      CPCS          : CPCSSelect := Interfaces.ATSAM4L.TC.CPCSSelect_0;
      --  Write-only. RA Loading
      LDRAS         : LDRASSelect := Interfaces.ATSAM4L.TC.LDRASSelect_0;
      --  Write-only. RB Loading
      LDRBS         : LDRBSSelect := Interfaces.ATSAM4L.TC.LDRBSSelect_0;
      --  Write-only. External Trigger
      ETRGS         : ETRGSSelect := Interfaces.ATSAM4L.TC.ETRGSSelect_0;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDR_Register use record
      COVFS         at 0 range 0 .. 0;
      LOVRS         at 0 range 1 .. 1;
      CPAS          at 0 range 2 .. 2;
      CPBS          at 0 range 3 .. 3;
      CPCS          at 0 range 4 .. 4;
      LDRAS         at 0 range 5 .. 5;
      LDRBS         at 0 range 6 .. 6;
      ETRGS         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ------------------
   -- IMR_Register --
   ------------------

   --  Interrupt Mask Register Channel
   type IMR_Register is record
      --  Read-only. Counter Overflow
      COVFS         : COVFSSelect;
      --  Read-only. Load Overrun
      LOVRS         : LOVRSSelect;
      --  Read-only. RA Compare
      CPAS          : CPASSelect;
      --  Read-only. RB Compare
      CPBS          : CPBSSelect;
      --  Read-only. RC Compare
      CPCS          : CPCSSelect;
      --  Read-only. RA Loading
      LDRAS         : LDRASSelect;
      --  Read-only. RB Loading
      LDRBS         : LDRBSSelect;
      --  Read-only. External Trigger
      ETRGS         : ETRGSSelect;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMR_Register use record
      COVFS         at 0 range 0 .. 0;
      LOVRS         at 0 range 1 .. 1;
      CPAS          at 0 range 2 .. 2;
      CPBS          at 0 range 3 .. 3;
      CPCS          at 0 range 4 .. 4;
      LDRAS         at 0 range 5 .. 5;
      LDRBS         at 0 range 6 .. 6;
      ETRGS         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ---------------------
   -- TC_BCR_Register --
   ---------------------

   --  Synchro Command
   type SYNCSelect is
     (
      --  No effect.
      SYNCSelect_0,
      --  Asserts the SYNC signal which generates a software trigger
      --  simultaneously for each of the channels.
      SYNCSelect_1)
     with Size => 1;
   for SYNCSelect use
     (SYNCSelect_0 => 0,
      SYNCSelect_1 => 1);

   --  TC Block Control Register
   type TC_BCR_Register is record
      --  Write-only. Synchro Command
      SYNC          : SYNCSelect := Interfaces.ATSAM4L.TC.SYNCSelect_0;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_BCR_Register use record
      SYNC          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ---------------------
   -- TC_BMR_Register --
   ---------------------

   --  External Clock Signal 0 Selection
   type TC0XC0SSelect is
     (
      --  Select TCLK0 as clock signal 0.
      Tclk0,
      --  Select no clock as clock signal 0.
      No_Clk,
      --  Select TIOA1 as clock signal 0.
      Tioa1,
      --  Select TIOA2 as clock signal 0.
      Tioa2)
     with Size => 2;
   for TC0XC0SSelect use
     (Tclk0 => 0,
      No_Clk => 1,
      Tioa1 => 2,
      Tioa2 => 3);

   --  External Clock Signal 1 Selection
   type TC1XC1SSelect is
     (
      --  Select TCLK1 as clock signal 1.
      Tclk1,
      --  Select no clock as clock signal 1.
      No_Clk,
      --  Select TIOA0 as clock signal 1.
      Tioa0,
      --  Select TIOA2 as clock signal 1.
      Tioa2)
     with Size => 2;
   for TC1XC1SSelect use
     (Tclk1 => 0,
      No_Clk => 1,
      Tioa0 => 2,
      Tioa2 => 3);

   --  External Clock Signal 2 Selection
   type TC2XC2SSelect is
     (
      --  Select TCLK2 as clock signal 2.
      Tclk2,
      --  Select no clock as clock signal 2.
      No_Clk,
      --  Select TIOA0 as clock signal 2.
      Tioa0,
      --  Select TIOA1 as clock signal 2.
      Tioa1)
     with Size => 2;
   for TC2XC2SSelect use
     (Tclk2 => 0,
      No_Clk => 1,
      Tioa0 => 2,
      Tioa1 => 3);

   --  TC Block Mode Register
   type TC_BMR_Register is record
      --  External Clock Signal 0 Selection
      TC0XC0S       : TC0XC0SSelect := Interfaces.ATSAM4L.TC.Tclk0;
      --  External Clock Signal 1 Selection
      TC1XC1S       : TC1XC1SSelect := Interfaces.ATSAM4L.TC.Tclk1;
      --  External Clock Signal 2 Selection
      TC2XC2S       : TC2XC2SSelect := Interfaces.ATSAM4L.TC.Tclk2;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_BMR_Register use record
      TC0XC0S       at 0 range 0 .. 1;
      TC1XC1S       at 0 range 2 .. 3;
      TC2XC2S       at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   ----------------------
   -- TC_WPMR_Register --
   ----------------------

   subtype WPMR_WPEN_Field is Interfaces.Bit_Types.Bit;
   subtype WPMR_WPKEY_Field is Interfaces.Bit_Types.UInt24;

   --  Write Protect Mode Register
   type TC_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write Protect Key
      WPKEY        : WPMR_WPKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   --------------------------
   -- TC_FEATURES_Register --
   --------------------------

   subtype FEATURES_CTRSIZE_Field is Interfaces.Bit_Types.Byte;
   subtype FEATURES_UPDNIMPL_Field is Interfaces.Bit_Types.Bit;
   subtype FEATURES_BRPBHSB_Field is Interfaces.Bit_Types.Bit;

   --  Features Register
   type TC_FEATURES_Register is record
      --  Read-only. Counter Size
      CTRSIZE        : FEATURES_CTRSIZE_Field;
      --  Read-only. Up Down is Implemented
      UPDNIMPL       : FEATURES_UPDNIMPL_Field;
      --  Read-only. Bridge Type is PB to HSB
      BRPBHSB        : FEATURES_BRPBHSB_Field;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_FEATURES_Register use record
      CTRSIZE        at 0 range 0 .. 7;
      UPDNIMPL       at 0 range 8 .. 8;
      BRPBHSB        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   -------------------------
   -- TC_VERSION_Register --
   -------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type TC_VERSION_Register is record
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

   for TC_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type TC0_Disc is
     (
      Capture0,
      Waveform0,
      Capture1,
      Waveform1,
      Capture2,
      Waveform2);

   --  Timer/Counter 0
   type TC_Peripheral
     (Discriminent : TC0_Disc := Capture0)
   is record
      --  Channel Control Register Channel
      CCR0          : CCR_Register;
      --  Stepper Motor Mode Register
      SMMR0         : SMMR_Register;
      --  Counter Value Channel
      CV0           : CV_Register;
      --  Register A Channel
      RA0           : RA_Register;
      --  Register B Channel
      RB0           : RB_Register;
      --  Register C Channel
      RC0           : RC_Register;
      --  Status Register Channel
      SR0           : SR_Register;
      --  Interrupt Enable Register Channel
      IER0          : IER_Register;
      --  Interrupt Disable Register Channel
      IDR0          : IDR_Register;
      --  Interrupt Mask Register Channel
      IMR0          : IMR_Register;
      --  Channel Control Register Channel
      CCR1          : CCR_Register;
      --  Stepper Motor Mode Register
      SMMR1         : SMMR_Register;
      --  Counter Value Channel
      CV1           : CV_Register;
      --  Register A Channel
      RA1           : RA_Register;
      --  Register B Channel
      RB1           : RB_Register;
      --  Register C Channel
      RC1           : RC_Register;
      --  Status Register Channel
      SR1           : SR_Register;
      --  Interrupt Enable Register Channel
      IER1          : IER_Register;
      --  Interrupt Disable Register Channel
      IDR1          : IDR_Register;
      --  Interrupt Mask Register Channel
      IMR1          : IMR_Register;
      --  Channel Control Register Channel
      CCR2          : CCR_Register;
      --  Stepper Motor Mode Register
      SMMR2         : SMMR_Register;
      --  Counter Value Channel
      CV2           : CV_Register;
      --  Register A Channel
      RA2           : RA_Register;
      --  Register B Channel
      RB2           : RB_Register;
      --  Register C Channel
      RC2           : RC_Register;
      --  Status Register Channel
      SR2           : SR_Register;
      --  Interrupt Enable Register Channel
      IER2          : IER_Register;
      --  Interrupt Disable Register Channel
      IDR2          : IDR_Register;
      --  Interrupt Mask Register Channel
      IMR2          : IMR_Register;
      --  TC Block Control Register
      BCR           : TC_BCR_Register;
      --  TC Block Mode Register
      BMR           : TC_BMR_Register;
      --  Write Protect Mode Register
      WPMR          : TC_WPMR_Register;
      --  Features Register
      FEATURES      : TC_FEATURES_Register;
      --  Version Register
      VERSION       : TC_VERSION_Register;
      case Discriminent is
         when Capture0 =>
            --  Channel Mode Register Channel
            CMR_CAPTURE0 : CMR_CAPTURE_Register;
         when Waveform0 =>
            --  Channel Mode Register Channel
            CMR_WAVEFORM0 : CMR_WAVEFORM_Register;
         when Capture1 =>
            --  Channel Mode Register Channel
            CMR_CAPTURE1 : CMR_CAPTURE_Register;
         when Waveform1 =>
            --  Channel Mode Register Channel
            CMR_WAVEFORM1 : CMR_WAVEFORM_Register;
         when Capture2 =>
            --  Channel Mode Register Channel
            CMR_CAPTURE2 : CMR_CAPTURE_Register;
         when Waveform2 =>
            --  Channel Mode Register Channel
            CMR_WAVEFORM2 : CMR_WAVEFORM_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TC_Peripheral use record
      CCR0          at 0 range 0 .. 31;
      SMMR0         at 8 range 0 .. 31;
      CV0           at 16 range 0 .. 31;
      RA0           at 20 range 0 .. 31;
      RB0           at 24 range 0 .. 31;
      RC0           at 28 range 0 .. 31;
      SR0           at 32 range 0 .. 31;
      IER0          at 36 range 0 .. 31;
      IDR0          at 40 range 0 .. 31;
      IMR0          at 44 range 0 .. 31;
      CCR1          at 64 range 0 .. 31;
      SMMR1         at 72 range 0 .. 31;
      CV1           at 80 range 0 .. 31;
      RA1           at 84 range 0 .. 31;
      RB1           at 88 range 0 .. 31;
      RC1           at 92 range 0 .. 31;
      SR1           at 96 range 0 .. 31;
      IER1          at 100 range 0 .. 31;
      IDR1          at 104 range 0 .. 31;
      IMR1          at 108 range 0 .. 31;
      CCR2          at 128 range 0 .. 31;
      SMMR2         at 136 range 0 .. 31;
      CV2           at 144 range 0 .. 31;
      RA2           at 148 range 0 .. 31;
      RB2           at 152 range 0 .. 31;
      RC2           at 156 range 0 .. 31;
      SR2           at 160 range 0 .. 31;
      IER2          at 164 range 0 .. 31;
      IDR2          at 168 range 0 .. 31;
      IMR2          at 172 range 0 .. 31;
      BCR           at 192 range 0 .. 31;
      BMR           at 196 range 0 .. 31;
      WPMR          at 228 range 0 .. 31;
      FEATURES      at 248 range 0 .. 31;
      VERSION       at 252 range 0 .. 31;
      CMR_CAPTURE0  at 4 range 0 .. 31;
      CMR_WAVEFORM0 at 4 range 0 .. 31;
      CMR_CAPTURE1  at 68 range 0 .. 31;
      CMR_WAVEFORM1 at 68 range 0 .. 31;
      CMR_CAPTURE2  at 132 range 0 .. 31;
      CMR_WAVEFORM2 at 132 range 0 .. 31;
   end record;

   --  Timer/Counter 0
   TC0_Periph : aliased TC_Peripheral
     with Import, Address => TC0_Base;

   --  Timer/Counter 1
   TC1_Periph : aliased TC_Peripheral
     with Import, Address => TC1_Base;

end Interfaces.ATSAM4L.TC;
