--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43xxC.MCPWM is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ------------------
   -- CON_Register --
   ------------------

   --  Stops/starts timer channel 0.
   type ENUM is
     (
      --  Stop.
      Stop,
      --  Run.
      Run)
     with Size => 1;
   for ENUM use
     (Stop => 0,
      Run => 1);

   --  Edge/center aligned operation for channel 0.
   type ENUM_1 is
     (
      --  Edge-aligned.
      Edge_Aligned,
      --  Center-aligned.
      Center_Aligned)
     with Size => 1;
   for ENUM_1 use
     (Edge_Aligned => 0,
      Center_Aligned => 1);

   --  Selects polarity of the MCOA0 and MCOB0 pins.
   type ENUM_2 is
     (
      --  Passive state is LOW, active state is HIGH.
      Passive_State_Is_Low,
      --  Passive state is HIGH, active state is LOW.
      Passive_State_Is_Hig)
     with Size => 1;
   for ENUM_2 use
     (Passive_State_Is_Low => 0,
      Passive_State_Is_Hig => 1);

   --  Controls the dead-time feature for channel 0.
   type ENUM_3 is
     (
      --  Dead-time disabled.
      Dead_Time_Disabled,
      --  Dead-time enabled.
      Dead_Time_Enabled)
     with Size => 1;
   for ENUM_3 use
     (Dead_Time_Disabled => 0,
      Dead_Time_Enabled => 1);

   --  Enable/disable updates of functional registers for channel 0 (see
   --  Section 24.8.2).
   type ENUM_4 is
     (
      --  Functional registers are updated from the write registers at the end
      --  of each PWM cycle.
      Update,
      --  Functional registers remain the same as long as the timer is running.
      Noupdate)
     with Size => 1;
   for ENUM_4 use
     (Update => 0,
      Noupdate => 1);

   subtype CON_RESERVED_Field is Interfaces.Bit_Types.UInt3;
   subtype CON_RESERVED_Field_1 is Interfaces.Bit_Types.Byte;

   --  Controls the polarity of the MCOB outputs for all 3 channels. This bit
   --  is typically set to 1 only in 3-phase DC mode.
   type ENUM_5 is
     (
      --  The MCOB outputs have opposite polarity from the MCOA outputs (aside
      --  from dead time).
      Opposite,
      --  The MCOB outputs have the same basic polarity as the MCOA outputs.
      --  (see Section 24.8.6)
      Same)
     with Size => 1;
   for ENUM_5 use
     (Opposite => 0,
      Same => 1);

   --  3-phase AC mode select (see Section 24.8.7).
   type ENUM_6 is
     (
      --  3-phase AC-mode off: Each PWM channel uses its own timer-counter and
      --  period register.
      ENUM_3_Phase_Ac_Mode_Off,
      --  3-phase AC-mode on: All PWM channels use the timer-counter and period
      --  register of channel 0.
      ENUM_3_Phase_Ac_Mode_On)
     with Size => 1;
   for ENUM_6 use
     (ENUM_3_Phase_Ac_Mode_Off => 0,
      ENUM_3_Phase_Ac_Mode_On => 1);

   --  3-phase DC mode select (see Section 24.8.6).
   type ENUM_7 is
     (
      --  3-phase DC mode off: PWM channels are independent (unless bit ACMODE
      --  = 1)
      ENUM_3_Phase_Dc_Mode_Off,
      --  3-phase DC mode on: The internal MCOA0 output is routed through the
      --  CP register (i.e. a mask) register to all six PWM outputs.
      ENUM_3_Phase_Dc_Mode_On)
     with Size => 1;
   for ENUM_7 use
     (ENUM_3_Phase_Dc_Mode_Off => 0,
      ENUM_3_Phase_Dc_Mode_On => 1);

   --  PWM Control read address
   type CON_Register is record
      --  Read-only. Stops/starts timer channel 0.
      RUN0       : ENUM;
      --  Read-only. Edge/center aligned operation for channel 0.
      CENTER0    : ENUM_1;
      --  Read-only. Selects polarity of the MCOA0 and MCOB0 pins.
      POLA0      : ENUM_2;
      --  Read-only. Controls the dead-time feature for channel 0.
      DTE0       : ENUM_3;
      --  Read-only. Enable/disable updates of functional registers for channel
      --  0 (see Section 24.8.2).
      DISUP0     : ENUM_4;
      --  Read-only. Reserved.
      RESERVED   : CON_RESERVED_Field;
      --  Read-only. Stops/starts timer channel 1.
      RUN1       : ENUM;
      --  Read-only. Edge/center aligned operation for channel 1.
      CENTER1    : ENUM_1;
      --  Read-only. Selects polarity of the MCOA1 and MCOB1 pins.
      POLA1      : ENUM_2;
      --  Read-only. Controls the dead-time feature for channel 1.
      DTE1       : ENUM_3;
      --  Read-only. Enable/disable updates of functional registers for channel
      --  1 (see Section 24.8.2).
      DISUP1     : ENUM_4;
      --  Read-only. Reserved.
      RESERVED_1 : CON_RESERVED_Field;
      --  Read-only. Stops/starts timer channel 2.
      RUN2       : ENUM;
      --  Read-only. Edge/center aligned operation for channel 2.
      CENTER2    : ENUM_1;
      --  Read-only. Selects polarity of the MCOA2 and MCOB2 pins.
      POLA2      : ENUM_2;
      --  Read-only. Controls the dead-time feature for channel 1.
      DTE2       : ENUM_3;
      --  Read-only. Enable/disable updates of functional registers for channel
      --  2 (see Section 24.8.2).
      DISUP2     : ENUM_4;
      --  Read-only. Reserved.
      RESERVED_2 : CON_RESERVED_Field_1;
      --  Read-only. Controls the polarity of the MCOB outputs for all 3
      --  channels. This bit is typically set to 1 only in 3-phase DC mode.
      INVBDC     : ENUM_5;
      --  Read-only. 3-phase AC mode select (see Section 24.8.7).
      ACMODE     : ENUM_6;
      --  Read-only. 3-phase DC mode select (see Section 24.8.6).
      DCMODE     : ENUM_7;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CON_Register use record
      RUN0       at 0 range 0 .. 0;
      CENTER0    at 0 range 1 .. 1;
      POLA0      at 0 range 2 .. 2;
      DTE0       at 0 range 3 .. 3;
      DISUP0     at 0 range 4 .. 4;
      RESERVED   at 0 range 5 .. 7;
      RUN1       at 0 range 8 .. 8;
      CENTER1    at 0 range 9 .. 9;
      POLA1      at 0 range 10 .. 10;
      DTE1       at 0 range 11 .. 11;
      DISUP1     at 0 range 12 .. 12;
      RESERVED_1 at 0 range 13 .. 15;
      RUN2       at 0 range 16 .. 16;
      CENTER2    at 0 range 17 .. 17;
      POLA2      at 0 range 18 .. 18;
      DTE2       at 0 range 19 .. 19;
      DISUP2     at 0 range 20 .. 20;
      RESERVED_2 at 0 range 21 .. 28;
      INVBDC     at 0 range 29 .. 29;
      ACMODE     at 0 range 30 .. 30;
      DCMODE     at 0 range 31 .. 31;
   end record;

   ----------------------
   -- CON_SET_Register --
   ----------------------

   subtype CON_SET_RUN0_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CON_SET_CENTER0_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CON_SET_POLA0_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CON_SET_DTE0_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CON_SET_DISUP0_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CON_SET_RESERVED_Field is Interfaces.Bit_Types.UInt3;
   subtype CON_SET_RUN1_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CON_SET_CENTER1_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CON_SET_POLA1_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CON_SET_DTE1_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CON_SET_DISUP1_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CON_SET_RUN2_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CON_SET_CENTER2_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CON_SET_POLA2_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CON_SET_DTE2_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CON_SET_DISUP2_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CON_SET_RESERVED_Field_1 is Interfaces.Bit_Types.Byte;
   subtype CON_SET_INVBDC_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CON_SET_ACMODE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CON_SET_DCMODE_SET_Field is Interfaces.Bit_Types.Bit;

   --  PWM Control set address
   type CON_SET_Register is record
      --  Write-only. Writing a one sets the corresponding bit in the CON
      --  register.
      RUN0_SET    : CON_SET_RUN0_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CON
      --  register.
      CENTER0_SET : CON_SET_CENTER0_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CON
      --  register.
      POLA0_SET   : CON_SET_POLA0_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CON
      --  register.
      DTE0_SET    : CON_SET_DTE0_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CON
      --  register.
      DISUP0_SET  : CON_SET_DISUP0_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CON
      --  register.
      RESERVED    : CON_SET_RESERVED_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CON
      --  register.
      RUN1_SET    : CON_SET_RUN1_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CON
      --  register.
      CENTER1_SET : CON_SET_CENTER1_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CON
      --  register.
      POLA1_SET   : CON_SET_POLA1_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CON
      --  register.
      DTE1_SET    : CON_SET_DTE1_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CON
      --  register.
      DISUP1_SET  : CON_SET_DISUP1_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CON
      --  register.
      RESERVED_1  : CON_SET_RESERVED_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CON
      --  register.
      RUN2_SET    : CON_SET_RUN2_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CON
      --  register.
      CENTER2_SET : CON_SET_CENTER2_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CON
      --  register.
      POLA2_SET   : CON_SET_POLA2_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CON
      --  register.
      DTE2_SET    : CON_SET_DTE2_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CON
      --  register.
      DISUP2_SET  : CON_SET_DISUP2_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CON
      --  register.
      RESERVED_2  : CON_SET_RESERVED_Field_1 := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CON
      --  register.
      INVBDC_SET  : CON_SET_INVBDC_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CON
      --  register.
      ACMODE_SET  : CON_SET_ACMODE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CON
      --  register.
      DCMODE_SET  : CON_SET_DCMODE_SET_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CON_SET_Register use record
      RUN0_SET    at 0 range 0 .. 0;
      CENTER0_SET at 0 range 1 .. 1;
      POLA0_SET   at 0 range 2 .. 2;
      DTE0_SET    at 0 range 3 .. 3;
      DISUP0_SET  at 0 range 4 .. 4;
      RESERVED    at 0 range 5 .. 7;
      RUN1_SET    at 0 range 8 .. 8;
      CENTER1_SET at 0 range 9 .. 9;
      POLA1_SET   at 0 range 10 .. 10;
      DTE1_SET    at 0 range 11 .. 11;
      DISUP1_SET  at 0 range 12 .. 12;
      RESERVED_1  at 0 range 13 .. 15;
      RUN2_SET    at 0 range 16 .. 16;
      CENTER2_SET at 0 range 17 .. 17;
      POLA2_SET   at 0 range 18 .. 18;
      DTE2_SET    at 0 range 19 .. 19;
      DISUP2_SET  at 0 range 20 .. 20;
      RESERVED_2  at 0 range 21 .. 28;
      INVBDC_SET  at 0 range 29 .. 29;
      ACMODE_SET  at 0 range 30 .. 30;
      DCMODE_SET  at 0 range 31 .. 31;
   end record;

   ----------------------
   -- CON_CLR_Register --
   ----------------------

   subtype CON_CLR_RUN0_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CON_CLR_CENTER0_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CON_CLR_POLA0_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CON_CLR_DTE0_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CON_CLR_DISUP0_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CON_CLR_RESERVED_Field is Interfaces.Bit_Types.UInt3;
   subtype CON_CLR_RUN1_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CON_CLR_CENTER1_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CON_CLR_POLA1_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CON_CLR_DTE1_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CON_CLR_DISUP1_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CON_CLR_RUN2_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CON_CLR_CENTER2_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CON_CLR_POLA2_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CON_CLR_DTE2_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CON_CLR_DISUP2_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CON_CLR_RESERVED_Field_1 is Interfaces.Bit_Types.Byte;
   subtype CON_CLR_INVBDC_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CON_CLR_ACMOD_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CON_CLR_DCMODE_CLR_Field is Interfaces.Bit_Types.Bit;

   --  PWM Control clear address
   type CON_CLR_Register is record
      --  Write-only. Writing a one clears the corresponding bit in the CON
      --  register.
      RUN0_CLR    : CON_CLR_RUN0_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CON
      --  register.
      CENTER0_CLR : CON_CLR_CENTER0_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CON
      --  register.
      POLA0_CLR   : CON_CLR_POLA0_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CON
      --  register.
      DTE0_CLR    : CON_CLR_DTE0_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CON
      --  register.
      DISUP0_CLR  : CON_CLR_DISUP0_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CON
      --  register.
      RESERVED    : CON_CLR_RESERVED_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CON
      --  register.
      RUN1_CLR    : CON_CLR_RUN1_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CON
      --  register.
      CENTER1_CLR : CON_CLR_CENTER1_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CON
      --  register.
      POLA1_CLR   : CON_CLR_POLA1_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CON
      --  register.
      DTE1_CLR    : CON_CLR_DTE1_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CON
      --  register.
      DISUP1_CLR  : CON_CLR_DISUP1_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CON
      --  register.
      RESERVED_1  : CON_CLR_RESERVED_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CON
      --  register.
      RUN2_CLR    : CON_CLR_RUN2_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CON
      --  register.
      CENTER2_CLR : CON_CLR_CENTER2_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CON
      --  register.
      POLA2_CLR   : CON_CLR_POLA2_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CON
      --  register.
      DTE2_CLR    : CON_CLR_DTE2_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CON
      --  register.
      DISUP2_CLR  : CON_CLR_DISUP2_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CON
      --  register.
      RESERVED_2  : CON_CLR_RESERVED_Field_1 := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CON
      --  register.
      INVBDC_CLR  : CON_CLR_INVBDC_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CON
      --  register.
      ACMOD_CLR   : CON_CLR_ACMOD_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CON
      --  register.
      DCMODE_CLR  : CON_CLR_DCMODE_CLR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CON_CLR_Register use record
      RUN0_CLR    at 0 range 0 .. 0;
      CENTER0_CLR at 0 range 1 .. 1;
      POLA0_CLR   at 0 range 2 .. 2;
      DTE0_CLR    at 0 range 3 .. 3;
      DISUP0_CLR  at 0 range 4 .. 4;
      RESERVED    at 0 range 5 .. 7;
      RUN1_CLR    at 0 range 8 .. 8;
      CENTER1_CLR at 0 range 9 .. 9;
      POLA1_CLR   at 0 range 10 .. 10;
      DTE1_CLR    at 0 range 11 .. 11;
      DISUP1_CLR  at 0 range 12 .. 12;
      RESERVED_1  at 0 range 13 .. 15;
      RUN2_CLR    at 0 range 16 .. 16;
      CENTER2_CLR at 0 range 17 .. 17;
      POLA2_CLR   at 0 range 18 .. 18;
      DTE2_CLR    at 0 range 19 .. 19;
      DISUP2_CLR  at 0 range 20 .. 20;
      RESERVED_2  at 0 range 21 .. 28;
      INVBDC_CLR  at 0 range 29 .. 29;
      ACMOD_CLR   at 0 range 30 .. 30;
      DCMODE_CLR  at 0 range 31 .. 31;
   end record;

   ---------------------
   -- CAPCON_Register --
   ---------------------

   subtype CAPCON_CAP0MCI0_RE_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CAP0MCI0_FE_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CAP0MCI1_RE_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CAP0MCI1_FE_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CAP0MCI2_RE_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CAP0MCI2_FE_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CAP1MCI0_RE_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CAP1MCI0_FE_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CAP1MCI1_RE_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CAP1MCI1_FE_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CAP1MCI2_RE_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CAP1MCI2_FE_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CAP2MCI0_RE_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CAP2MCI0_FE_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CAP2MCI1_RE_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CAP2MCI1_FE_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CAP2MCI2_RE_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CAP2MCI2_FE_Field is Interfaces.Bit_Types.Bit;

   ---------------
   -- CAPCON.RT --
   ---------------

   --  CAPCON_RT array element
   subtype CAPCON_RT_Element is Interfaces.Bit_Types.Bit;

   --  CAPCON_RT array
   type CAPCON_RT_Field_Array is array (0 .. 2) of CAPCON_RT_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CAPCON_RT
   type CAPCON_RT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  RT as an array
            Arr : CAPCON_RT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CAPCON_RT_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype CAPCON_RESERVED_Field is Interfaces.Bit_Types.UInt11;

   --  Capture Control read address
   type CAPCON_Register is record
      --  Read-only. A 1 in this bit enables a channel 0 capture event on a
      --  rising edge on MCI0.
      CAP0MCI0_RE : CAPCON_CAP0MCI0_RE_Field;
      --  Read-only. A 1 in this bit enables a channel 0 capture event on a
      --  falling edge on MCI0.
      CAP0MCI0_FE : CAPCON_CAP0MCI0_FE_Field;
      --  Read-only. A 1 in this bit enables a channel 0 capture event on a
      --  rising edge on MCI1.
      CAP0MCI1_RE : CAPCON_CAP0MCI1_RE_Field;
      --  Read-only. A 1 in this bit enables a channel 0 capture event on a
      --  falling edge on MCI1.
      CAP0MCI1_FE : CAPCON_CAP0MCI1_FE_Field;
      --  Read-only. A 1 in this bit enables a channel 0 capture event on a
      --  rising edge on MCI2.
      CAP0MCI2_RE : CAPCON_CAP0MCI2_RE_Field;
      --  Read-only. A 1 in this bit enables a channel 0 capture event on a
      --  falling edge on MCI2.
      CAP0MCI2_FE : CAPCON_CAP0MCI2_FE_Field;
      --  Read-only. A 1 in this bit enables a channel 1 capture event on a
      --  rising edge on MCI0.
      CAP1MCI0_RE : CAPCON_CAP1MCI0_RE_Field;
      --  Read-only. A 1 in this bit enables a channel 1 capture event on a
      --  falling edge on MCI0.
      CAP1MCI0_FE : CAPCON_CAP1MCI0_FE_Field;
      --  Read-only. A 1 in this bit enables a channel 1 capture event on a
      --  rising edge on MCI1.
      CAP1MCI1_RE : CAPCON_CAP1MCI1_RE_Field;
      --  Read-only. A 1 in this bit enables a channel 1 capture event on a
      --  falling edge on MCI1.
      CAP1MCI1_FE : CAPCON_CAP1MCI1_FE_Field;
      --  Read-only. A 1 in this bit enables a channel 1 capture event on a
      --  rising edge on MCI2.
      CAP1MCI2_RE : CAPCON_CAP1MCI2_RE_Field;
      --  Read-only. A 1 in this bit enables a channel 1 capture event on a
      --  falling edge on MCI2.
      CAP1MCI2_FE : CAPCON_CAP1MCI2_FE_Field;
      --  Read-only. A 1 in this bit enables a channel 2 capture event on a
      --  rising edge on MCI0.
      CAP2MCI0_RE : CAPCON_CAP2MCI0_RE_Field;
      --  Read-only. A 1 in this bit enables a channel 2 capture event on a
      --  falling edge on MCI0.
      CAP2MCI0_FE : CAPCON_CAP2MCI0_FE_Field;
      --  Read-only. A 1 in this bit enables a channel 2 capture event on a
      --  rising edge on MCI1.
      CAP2MCI1_RE : CAPCON_CAP2MCI1_RE_Field;
      --  Read-only. A 1 in this bit enables a channel 2 capture event on a
      --  falling edge on MCI1.
      CAP2MCI1_FE : CAPCON_CAP2MCI1_FE_Field;
      --  Read-only. A 1 in this bit enables a channel 2 capture event on a
      --  rising edge on MCI2.
      CAP2MCI2_RE : CAPCON_CAP2MCI2_RE_Field;
      --  Read-only. A 1 in this bit enables a channel 2 capture event on a
      --  falling edge on MCI2.
      CAP2MCI2_FE : CAPCON_CAP2MCI2_FE_Field;
      --  Read-only. If this bit is 1, TC0 is reset by a channel 0 capture
      --  event.
      RT          : CAPCON_RT_Field;
      --  Read-only. Reserved.
      RESERVED    : CAPCON_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAPCON_Register use record
      CAP0MCI0_RE at 0 range 0 .. 0;
      CAP0MCI0_FE at 0 range 1 .. 1;
      CAP0MCI1_RE at 0 range 2 .. 2;
      CAP0MCI1_FE at 0 range 3 .. 3;
      CAP0MCI2_RE at 0 range 4 .. 4;
      CAP0MCI2_FE at 0 range 5 .. 5;
      CAP1MCI0_RE at 0 range 6 .. 6;
      CAP1MCI0_FE at 0 range 7 .. 7;
      CAP1MCI1_RE at 0 range 8 .. 8;
      CAP1MCI1_FE at 0 range 9 .. 9;
      CAP1MCI2_RE at 0 range 10 .. 10;
      CAP1MCI2_FE at 0 range 11 .. 11;
      CAP2MCI0_RE at 0 range 12 .. 12;
      CAP2MCI0_FE at 0 range 13 .. 13;
      CAP2MCI1_RE at 0 range 14 .. 14;
      CAP2MCI1_FE at 0 range 15 .. 15;
      CAP2MCI2_RE at 0 range 16 .. 16;
      CAP2MCI2_FE at 0 range 17 .. 17;
      RT          at 0 range 18 .. 20;
      RESERVED    at 0 range 21 .. 31;
   end record;

   -------------------------
   -- CAPCON_SET_Register --
   -------------------------

   subtype CAPCON_SET_CAP0MCI0_RE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_SET_CAP0MCI0_FE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_SET_CAP0MCI1_RE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_SET_CAP0MCI1_FE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_SET_CAP0MCI2_RE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_SET_CAP0MCI2_FE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_SET_CAP1MCI0_RE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_SET_CAP1MCI0_FE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_SET_CAP1MCI1_RE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_SET_CAP1MCI1_FE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_SET_CAP1MCI2_RE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_SET_CAP1MCI2_FE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_SET_CAP2MCI0_RE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_SET_CAP2MCI0_FE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_SET_CAP2MCI1_RE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_SET_CAP2MCI1_FE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_SET_CAP2MCI2_RE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_SET_CAP2MCI2_FE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_SET_RT0_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_SET_RT1_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_SET_RT2_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_SET_RESERVED_Field is Interfaces.Bit_Types.UInt11;

   --  Capture Control set address
   type CAPCON_SET_Register is record
      --  Write-only. Writing a one sets the corresponding bits in the CAPCON
      --  register.
      CAP0MCI0_RE_SET : CAPCON_SET_CAP0MCI0_RE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bits in the CAPCON
      --  register.
      CAP0MCI0_FE_SET : CAPCON_SET_CAP0MCI0_FE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bits in the CAPCON
      --  register.
      CAP0MCI1_RE_SET : CAPCON_SET_CAP0MCI1_RE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bits in the CAPCON
      --  register.
      CAP0MCI1_FE_SET : CAPCON_SET_CAP0MCI1_FE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bits in the CAPCON
      --  register.
      CAP0MCI2_RE_SET : CAPCON_SET_CAP0MCI2_RE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bits in the CAPCON
      --  register.
      CAP0MCI2_FE_SET : CAPCON_SET_CAP0MCI2_FE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bits in the CAPCON
      --  register.
      CAP1MCI0_RE_SET : CAPCON_SET_CAP1MCI0_RE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bits in the CAPCON
      --  register.
      CAP1MCI0_FE_SET : CAPCON_SET_CAP1MCI0_FE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bits in the CAPCON
      --  register.
      CAP1MCI1_RE_SET : CAPCON_SET_CAP1MCI1_RE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bits in the CAPCON
      --  register.
      CAP1MCI1_FE_SET : CAPCON_SET_CAP1MCI1_FE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bits in the CAPCON
      --  register.
      CAP1MCI2_RE_SET : CAPCON_SET_CAP1MCI2_RE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bits in the CAPCON
      --  register.
      CAP1MCI2_FE_SET : CAPCON_SET_CAP1MCI2_FE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bits in the CAPCON
      --  register.
      CAP2MCI0_RE_SET : CAPCON_SET_CAP2MCI0_RE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bits in the CAPCON
      --  register.
      CAP2MCI0_FE_SET : CAPCON_SET_CAP2MCI0_FE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bits in the CAPCON
      --  register.
      CAP2MCI1_RE_SET : CAPCON_SET_CAP2MCI1_RE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bits in the CAPCON
      --  register.
      CAP2MCI1_FE_SET : CAPCON_SET_CAP2MCI1_FE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bits in the CAPCON
      --  register.
      CAP2MCI2_RE_SET : CAPCON_SET_CAP2MCI2_RE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bits in the CAPCON
      --  register.
      CAP2MCI2_FE_SET : CAPCON_SET_CAP2MCI2_FE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bits in the CAPCON
      --  register.
      RT0_SET         : CAPCON_SET_RT0_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bits in the CAPCON
      --  register.
      RT1_SET         : CAPCON_SET_RT1_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bits in the CAPCON
      --  register.
      RT2_SET         : CAPCON_SET_RT2_SET_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED        : CAPCON_SET_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAPCON_SET_Register use record
      CAP0MCI0_RE_SET at 0 range 0 .. 0;
      CAP0MCI0_FE_SET at 0 range 1 .. 1;
      CAP0MCI1_RE_SET at 0 range 2 .. 2;
      CAP0MCI1_FE_SET at 0 range 3 .. 3;
      CAP0MCI2_RE_SET at 0 range 4 .. 4;
      CAP0MCI2_FE_SET at 0 range 5 .. 5;
      CAP1MCI0_RE_SET at 0 range 6 .. 6;
      CAP1MCI0_FE_SET at 0 range 7 .. 7;
      CAP1MCI1_RE_SET at 0 range 8 .. 8;
      CAP1MCI1_FE_SET at 0 range 9 .. 9;
      CAP1MCI2_RE_SET at 0 range 10 .. 10;
      CAP1MCI2_FE_SET at 0 range 11 .. 11;
      CAP2MCI0_RE_SET at 0 range 12 .. 12;
      CAP2MCI0_FE_SET at 0 range 13 .. 13;
      CAP2MCI1_RE_SET at 0 range 14 .. 14;
      CAP2MCI1_FE_SET at 0 range 15 .. 15;
      CAP2MCI2_RE_SET at 0 range 16 .. 16;
      CAP2MCI2_FE_SET at 0 range 17 .. 17;
      RT0_SET         at 0 range 18 .. 18;
      RT1_SET         at 0 range 19 .. 19;
      RT2_SET         at 0 range 20 .. 20;
      RESERVED        at 0 range 21 .. 31;
   end record;

   -------------------------
   -- CAPCON_CLR_Register --
   -------------------------

   subtype CAPCON_CLR_CAP0MCI0_RE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CLR_CAP0MCI0_FE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CLR_CAP0MCI1_RE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CLR_CAP0MCI1_FE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CLR_CAP0MCI2_RE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CLR_CAP0MCI2_FE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CLR_CAP1MCI0_RE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CLR_CAP1MCI0_FE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CLR_CAP1MCI1_RE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CLR_CAP1MCI1_FE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CLR_CAP1MCI2_RE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CLR_CAP1MCI2_FE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CLR_CAP2MCI0_RE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CLR_CAP2MCI0_FE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CLR_CAP2MCI1_RE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CLR_CAP2MCI1_FE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CLR_CAP2MCI2_RE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CLR_CAP2MCI2_FE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CLR_RT0_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CLR_RT1_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CLR_RT2_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CAPCON_CLR_RESERVED_Field is Interfaces.Bit_Types.UInt11;

   --  Event Control clear address
   type CAPCON_CLR_Register is record
      --  Write-only. Writing a one clears the corresponding bits in the CAPCON
      --  register.
      CAP0MCI0_RE_CLR : CAPCON_CLR_CAP0MCI0_RE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bits in the CAPCON
      --  register.
      CAP0MCI0_FE_CLR : CAPCON_CLR_CAP0MCI0_FE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bits in the CAPCON
      --  register.
      CAP0MCI1_RE_CLR : CAPCON_CLR_CAP0MCI1_RE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bits in the CAPCON
      --  register.
      CAP0MCI1_FE_CLR : CAPCON_CLR_CAP0MCI1_FE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bits in the CAPCON
      --  register.
      CAP0MCI2_RE_CLR : CAPCON_CLR_CAP0MCI2_RE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bits in the CAPCON
      --  register.
      CAP0MCI2_FE_CLR : CAPCON_CLR_CAP0MCI2_FE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bits in the CAPCON
      --  register.
      CAP1MCI0_RE_CLR : CAPCON_CLR_CAP1MCI0_RE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bits in the CAPCON
      --  register.
      CAP1MCI0_FE_CLR : CAPCON_CLR_CAP1MCI0_FE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bits in the CAPCON
      --  register.
      CAP1MCI1_RE_CLR : CAPCON_CLR_CAP1MCI1_RE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bits in the CAPCON
      --  register.
      CAP1MCI1_FE_CLR : CAPCON_CLR_CAP1MCI1_FE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bits in the CAPCON
      --  register.
      CAP1MCI2_RE_CLR : CAPCON_CLR_CAP1MCI2_RE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bits in the CAPCON
      --  register.
      CAP1MCI2_FE_CLR : CAPCON_CLR_CAP1MCI2_FE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bits in the CAPCON
      --  register.
      CAP2MCI0_RE_CLR : CAPCON_CLR_CAP2MCI0_RE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bits in the CAPCON
      --  register.
      CAP2MCI0_FE_CLR : CAPCON_CLR_CAP2MCI0_FE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bits in the CAPCON
      --  register.
      CAP2MCI1_RE_CLR : CAPCON_CLR_CAP2MCI1_RE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bits in the CAPCON
      --  register.
      CAP2MCI1_FE_CLR : CAPCON_CLR_CAP2MCI1_FE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bits in the CAPCON
      --  register.
      CAP2MCI2_RE_CLR : CAPCON_CLR_CAP2MCI2_RE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bits in the CAPCON
      --  register.
      CAP2MCI2_FE_CLR : CAPCON_CLR_CAP2MCI2_FE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bits in the CAPCON
      --  register.
      RT0_CLR         : CAPCON_CLR_RT0_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bits in the CAPCON
      --  register.
      RT1_CLR         : CAPCON_CLR_RT1_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bits in the CAPCON
      --  register.
      RT2_CLR         : CAPCON_CLR_RT2_CLR_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED        : CAPCON_CLR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAPCON_CLR_Register use record
      CAP0MCI0_RE_CLR at 0 range 0 .. 0;
      CAP0MCI0_FE_CLR at 0 range 1 .. 1;
      CAP0MCI1_RE_CLR at 0 range 2 .. 2;
      CAP0MCI1_FE_CLR at 0 range 3 .. 3;
      CAP0MCI2_RE_CLR at 0 range 4 .. 4;
      CAP0MCI2_FE_CLR at 0 range 5 .. 5;
      CAP1MCI0_RE_CLR at 0 range 6 .. 6;
      CAP1MCI0_FE_CLR at 0 range 7 .. 7;
      CAP1MCI1_RE_CLR at 0 range 8 .. 8;
      CAP1MCI1_FE_CLR at 0 range 9 .. 9;
      CAP1MCI2_RE_CLR at 0 range 10 .. 10;
      CAP1MCI2_FE_CLR at 0 range 11 .. 11;
      CAP2MCI0_RE_CLR at 0 range 12 .. 12;
      CAP2MCI0_FE_CLR at 0 range 13 .. 13;
      CAP2MCI1_RE_CLR at 0 range 14 .. 14;
      CAP2MCI1_FE_CLR at 0 range 15 .. 15;
      CAP2MCI2_RE_CLR at 0 range 16 .. 16;
      CAP2MCI2_FE_CLR at 0 range 17 .. 17;
      RT0_CLR         at 0 range 18 .. 18;
      RT1_CLR         at 0 range 19 .. 19;
      RT2_CLR         at 0 range 20 .. 20;
      RESERVED        at 0 range 21 .. 31;
   end record;

   --  Timer Counter register

   --  Timer Counter register
   type TC_Registers is array (0 .. 2) of Interfaces.Bit_Types.Word;

   --  Limit register

   --  Limit register
   type LIM_Registers is array (0 .. 2) of Interfaces.Bit_Types.Word;

   --  Match register

   --  Match register
   type MAT_Registers is array (0 .. 2) of Interfaces.Bit_Types.Word;

   -----------------
   -- DT_Register --
   -----------------

   -----------
   -- DT.DT --
   -----------

   --  DT array element
   subtype DT_Element is Interfaces.Bit_Types.UInt10;

   --  DT array
   type DT_Field_Array is array (0 .. 2) of DT_Element
     with Component_Size => 10, Size => 30;

   --  Type definition for DT
   type DT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DT as a value
            Val : Interfaces.Bit_Types.UInt30;
         when True =>
            --  DT as an array
            Arr : DT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 30;

   for DT_Field use record
      Val at 0 range 0 .. 29;
      Arr at 0 range 0 .. 29;
   end record;

   subtype DT_RESERVED_Field is Interfaces.Bit_Types.UInt2;

   --  Dead time register
   type DT_Register is record
      --  Dead time for channel 0.[1]
      DT       : DT_Field := (As_Array => False, Val => 16#3FF#);
      --  reserved
      RESERVED : DT_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DT_Register use record
      DT       at 0 range 0 .. 29;
      RESERVED at 0 range 30 .. 31;
   end record;

   ------------------
   -- CCP_Register --
   ------------------

   --  Communication pattern output A, channel 0.
   type ENUM_8 is
     (
      --  MCOA0 passive.
      Mcoa0_Passive,
      --  internal MCOA0.
      Internal_Mcoa0)
     with Size => 1;
   for ENUM_8 use
     (Mcoa0_Passive => 0,
      Internal_Mcoa0 => 1);

   --  Communication pattern output B, channel 0.
   type ENUM_9 is
     (
      --  MCOB0 passive.
      Mcob0_Passive,
      --  MCOB0 tracks internal MCOA0.
      Mcob0_Tracks_Interna)
     with Size => 1;
   for ENUM_9 use
     (Mcob0_Passive => 0,
      Mcob0_Tracks_Interna => 1);

   --  Communication pattern output A, channel 1.
   type ENUM_10 is
     (
      --  MCOA1 passive.
      Mcoa1_Passive,
      --  MCOA1 tracks internal MCOA0.
      Mcoa1_Tracks_Interna)
     with Size => 1;
   for ENUM_10 use
     (Mcoa1_Passive => 0,
      Mcoa1_Tracks_Interna => 1);

   --  Communication pattern output B, channel 1.
   type ENUM_11 is
     (
      --  MCOB1 passive.
      Mcob1_Passive,
      --  MCOB1 tracks internal MCOA0.
      Mcob1_Tracks_Interna)
     with Size => 1;
   for ENUM_11 use
     (Mcob1_Passive => 0,
      Mcob1_Tracks_Interna => 1);

   --  Communication pattern output A, channel 2.
   type ENUM_12 is
     (
      --  MCOA2 passive.
      Mcoa2_Passive,
      --  MCOA2 tracks internal MCOA0.
      Mcoa2_Tracks_Interna)
     with Size => 1;
   for ENUM_12 use
     (Mcoa2_Passive => 0,
      Mcoa2_Tracks_Interna => 1);

   --  Communication pattern output B, channel 2.
   type ENUM_13 is
     (
      --  MCOB2 passive.
      Mcob2_Passive,
      --  MCOB2 tracks internal MCOA0.
      Mcob2_Tracks_Interna)
     with Size => 1;
   for ENUM_13 use
     (Mcob2_Passive => 0,
      Mcob2_Tracks_Interna => 1);

   subtype CCP_RESERVED_Field is Interfaces.Bit_Types.UInt26;

   --  Communication Pattern register
   type CCP_Register is record
      --  Communication pattern output A, channel 0.
      CCPA0    : ENUM_8 := Interfaces.LPC43xxC.MCPWM.Mcoa0_Passive;
      --  Communication pattern output B, channel 0.
      CCPB0    : ENUM_9 := Interfaces.LPC43xxC.MCPWM.Mcob0_Passive;
      --  Communication pattern output A, channel 1.
      CCPA1    : ENUM_10 := Interfaces.LPC43xxC.MCPWM.Mcoa1_Passive;
      --  Communication pattern output B, channel 1.
      CCPB1    : ENUM_11 := Interfaces.LPC43xxC.MCPWM.Mcob1_Passive;
      --  Communication pattern output A, channel 2.
      CCPA2    : ENUM_12 := Interfaces.LPC43xxC.MCPWM.Mcoa2_Passive;
      --  Communication pattern output B, channel 2.
      CCPB2    : ENUM_13 := Interfaces.LPC43xxC.MCPWM.Mcob2_Passive;
      --  Reserved.
      RESERVED : CCP_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCP_Register use record
      CCPA0    at 0 range 0 .. 0;
      CCPB0    at 0 range 1 .. 1;
      CCPA1    at 0 range 2 .. 2;
      CCPB1    at 0 range 3 .. 3;
      CCPA2    at 0 range 4 .. 4;
      CCPB2    at 0 range 5 .. 5;
      RESERVED at 0 range 6 .. 31;
   end record;

   --  Capture register

   --  Capture register
   type CAP_Registers is array (0 .. 2) of Interfaces.Bit_Types.Word;

   --------------------
   -- INTEN_Register --
   --------------------

   --  Limit interrupt for channel 0.
   type ENUM_14 is
     (
      --  Interrupt disabled.
      Interrupt_Disabled,
      --  Interrupt enabled.
      Interrupt_Enabled)
     with Size => 1;
   for ENUM_14 use
     (Interrupt_Disabled => 0,
      Interrupt_Enabled => 1);

   subtype INTEN_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_RESERVED_Field_1 is Interfaces.Bit_Types.UInt4;
   subtype INTEN_RESERVED_Field_2 is Interfaces.Bit_Types.Short;

   --  Interrupt Enable read address
   type INTEN_Register is record
      --  Read-only. Limit interrupt for channel 0.
      ILIM0      : ENUM_14;
      --  Read-only. Match interrupt for channel 0.
      IMAT0      : ENUM_14;
      --  Read-only. Capture interrupt for channel 0.
      ICAP0      : ENUM_14;
      --  Read-only. Reserved.
      RESERVED   : INTEN_RESERVED_Field;
      --  Read-only. Limit interrupt for channel 1.
      ILIM1      : ENUM_14;
      --  Read-only. Match interrupt for channel 1.
      IMAT1      : ENUM_14;
      --  Read-only. Capture interrupt for channel 1.
      ICAP1      : ENUM_14;
      --  Read-only. Reserved.
      RESERVED_1 : INTEN_RESERVED_Field;
      --  Read-only. Limit interrupt for channel 2.
      ILIM2      : ENUM_14;
      --  Read-only. Match interrupt for channel 2.
      IMAT2      : ENUM_14;
      --  Read-only. Capture interrupt for channel 2.
      ICAP2      : ENUM_14;
      --  Read-only. Reserved.
      RESERVED_2 : INTEN_RESERVED_Field_1;
      --  Read-only. Fast abort interrupt.
      ABORT_k    : ENUM_14;
      --  Read-only. Reserved.
      RESERVED_3 : INTEN_RESERVED_Field_2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      ILIM0      at 0 range 0 .. 0;
      IMAT0      at 0 range 1 .. 1;
      ICAP0      at 0 range 2 .. 2;
      RESERVED   at 0 range 3 .. 3;
      ILIM1      at 0 range 4 .. 4;
      IMAT1      at 0 range 5 .. 5;
      ICAP1      at 0 range 6 .. 6;
      RESERVED_1 at 0 range 7 .. 7;
      ILIM2      at 0 range 8 .. 8;
      IMAT2      at 0 range 9 .. 9;
      ICAP2      at 0 range 10 .. 10;
      RESERVED_2 at 0 range 11 .. 14;
      ABORT_k    at 0 range 15 .. 15;
      RESERVED_3 at 0 range 16 .. 31;
   end record;

   ------------------------
   -- INTEN_SET_Register --
   ------------------------

   subtype INTEN_SET_ILIM0_SET_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_SET_IMAT0_SET_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_SET_ICAP0_SET_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_SET_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_SET_ILIM1_SET_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_SET_IMAT1_SET_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_SET_ICAP1_SET_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_SET_ILIM2_SET_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_SET_IMAT2_SET_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_SET_ICAP2_SET_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_SET_RESERVED_Field_1 is Interfaces.Bit_Types.UInt3;
   subtype INTEN_SET_ABORT_SET_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_SET_RESERVED_Field_2 is Interfaces.Bit_Types.Short;

   --  Interrupt Enable set address
   type INTEN_SET_Register is record
      --  Write-only. Writing a one sets the corresponding bit in INTEN, thus
      --  enabling the interrupt.
      ILIM0_SET    : INTEN_SET_ILIM0_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in INTEN, thus
      --  enabling the interrupt.
      IMAT0_SET    : INTEN_SET_IMAT0_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in INTEN, thus
      --  enabling the interrupt.
      ICAP0_SET    : INTEN_SET_ICAP0_SET_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED     : INTEN_SET_RESERVED_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in INTEN, thus
      --  enabling the interrupt.
      ILIM1_SET    : INTEN_SET_ILIM1_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in INTEN, thus
      --  enabling the interrupt.
      IMAT1_SET    : INTEN_SET_IMAT1_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in INTEN, thus
      --  enabling the interrupt.
      ICAP1_SET    : INTEN_SET_ICAP1_SET_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED_1   : INTEN_SET_RESERVED_Field := 16#0#;
      --  unspecified
      Reserved_8_8 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in INTEN, thus
      --  enabling the interrupt.
      ILIM2_SET    : INTEN_SET_ILIM2_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in INTEN, thus
      --  enabling the interrupt.
      IMAT2_SET    : INTEN_SET_IMAT2_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in INTEN, thus
      --  enabling the interrupt.
      ICAP2_SET    : INTEN_SET_ICAP2_SET_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED_2   : INTEN_SET_RESERVED_Field_1 := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in INTEN, thus
      --  enabling the interrupt.
      ABORT_SET    : INTEN_SET_ABORT_SET_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED_3   : INTEN_SET_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_SET_Register use record
      ILIM0_SET    at 0 range 0 .. 0;
      IMAT0_SET    at 0 range 1 .. 1;
      ICAP0_SET    at 0 range 2 .. 2;
      RESERVED     at 0 range 3 .. 3;
      ILIM1_SET    at 0 range 4 .. 4;
      IMAT1_SET    at 0 range 5 .. 5;
      ICAP1_SET    at 0 range 6 .. 6;
      RESERVED_1   at 0 range 7 .. 7;
      Reserved_8_8 at 0 range 8 .. 8;
      ILIM2_SET    at 0 range 9 .. 9;
      IMAT2_SET    at 0 range 10 .. 10;
      ICAP2_SET    at 0 range 11 .. 11;
      RESERVED_2   at 0 range 12 .. 14;
      ABORT_SET    at 0 range 15 .. 15;
      RESERVED_3   at 0 range 16 .. 31;
   end record;

   ------------------------
   -- INTEN_CLR_Register --
   ------------------------

   subtype INTEN_CLR_ILIM0_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_CLR_IMAT0_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_CLR_ICAP0_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_CLR_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_CLR_ILIM1_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_CLR_IMAT1_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_CLR_ICAP1_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_CLR_ILIM2_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_CLR_IMAT2_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_CLR_ICAP2_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_CLR_RESERVED_Field_1 is Interfaces.Bit_Types.UInt4;
   subtype INTEN_CLR_ABORT_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_CLR_RESERVED_Field_2 is Interfaces.Bit_Types.Short;

   --  Interrupt Enable clear address
   type INTEN_CLR_Register is record
      --  Write-only. Writing a one clears the corresponding bit in INTEN, thus
      --  disabling the interrupt.
      ILIM0_CLR  : INTEN_CLR_ILIM0_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in INTEN, thus
      --  disabling the interrupt.
      IMAT0_CLR  : INTEN_CLR_IMAT0_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in INTEN, thus
      --  disabling the interrupt.
      ICAP0_CLR  : INTEN_CLR_ICAP0_CLR_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED   : INTEN_CLR_RESERVED_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in INTEN, thus
      --  disabling the interrupt.
      ILIM1_CLR  : INTEN_CLR_ILIM1_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in INTEN, thus
      --  disabling the interrupt.
      IMAT1_CLR  : INTEN_CLR_IMAT1_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in INTEN, thus
      --  disabling the interrupt.
      ICAP1_CLR  : INTEN_CLR_ICAP1_CLR_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED_1 : INTEN_CLR_RESERVED_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in INTEN, thus
      --  disabling the interrupt.
      ILIM2_CLR  : INTEN_CLR_ILIM2_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in INTEN, thus
      --  disabling the interrupt.
      IMAT2_CLR  : INTEN_CLR_IMAT2_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in INTEN, thus
      --  disabling the interrupt.
      ICAP2_CLR  : INTEN_CLR_ICAP2_CLR_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED_2 : INTEN_CLR_RESERVED_Field_1 := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in INTEN, thus
      --  disabling the interrupt.
      ABORT_CLR  : INTEN_CLR_ABORT_CLR_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED_3 : INTEN_CLR_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_CLR_Register use record
      ILIM0_CLR  at 0 range 0 .. 0;
      IMAT0_CLR  at 0 range 1 .. 1;
      ICAP0_CLR  at 0 range 2 .. 2;
      RESERVED   at 0 range 3 .. 3;
      ILIM1_CLR  at 0 range 4 .. 4;
      IMAT1_CLR  at 0 range 5 .. 5;
      ICAP1_CLR  at 0 range 6 .. 6;
      RESERVED_1 at 0 range 7 .. 7;
      ILIM2_CLR  at 0 range 8 .. 8;
      IMAT2_CLR  at 0 range 9 .. 9;
      ICAP2_CLR  at 0 range 10 .. 10;
      RESERVED_2 at 0 range 11 .. 14;
      ABORT_CLR  at 0 range 15 .. 15;
      RESERVED_3 at 0 range 16 .. 31;
   end record;

   ---------------------
   -- CNTCON_Register --
   ---------------------

   --  Counter 0 rising edge mode, channel 0.
   type ENUM_15 is
     (
      --  A rising edge on MCI0 does not affect counter 0.
      Noeffect,
      --  If MODE0 is 1, counter 0 advances on a rising edge on MCI0.
      Rising)
     with Size => 1;
   for ENUM_15 use
     (Noeffect => 0,
      Rising => 1);

   --  Counter 0 falling edge mode, channel 0.
   type ENUM_16 is
     (
      --  A falling edge on MCI0 does not affect counter 0.
      Noefect,
      --  If MODE0 is 1, counter 0 advances on a falling edge on MCI0.
      Falling)
     with Size => 1;
   for ENUM_16 use
     (Noefect => 0,
      Falling => 1);

   --  Counter 0 falling edge mode, channel 1.
   type ENUM_17 is
     (
      --  A falling edge on MCI1 does not affect counter 0.
      Noeffect,
      --  If MODE0 is 1, counter 0 advances on a falling edge on MCI1.
      Falling)
     with Size => 1;
   for ENUM_17 use
     (Noeffect => 0,
      Falling => 1);

   --  Counter 1 falling edge mode, channel 0.
   type ENUM_18 is
     (
      --  A falling edge on MCI0 does not affect counter 1.
      Rising,
      --  If MODE1 is 1, counter 1 advances on a falling edge on MCI0.
      Falling)
     with Size => 1;
   for ENUM_18 use
     (Rising => 0,
      Falling => 1);

   subtype CNTCON_RESERVED_Field is Interfaces.Bit_Types.UInt11;

   --  Channel 0 counter/timer mode.
   type ENUM_19 is
     (
      --  Channel 0 is in timer mode.
      Channel_0_Is_In_Time,
      --  Channel 0 is in counter mode.
      Channel_0_Is_In_Coun)
     with Size => 1;
   for ENUM_19 use
     (Channel_0_Is_In_Time => 0,
      Channel_0_Is_In_Coun => 1);

   --  Channel 1 counter/timer mode.
   type ENUM_20 is
     (
      --  Channel 1 is in timer mode.
      Channel_1_Is_In_Time,
      --  Channel 1 is in counter mode.
      Channel_1_Is_In_Coun)
     with Size => 1;
   for ENUM_20 use
     (Channel_1_Is_In_Time => 0,
      Channel_1_Is_In_Coun => 1);

   --  Channel 2 counter/timer mode.
   type ENUM_21 is
     (
      --  Channel 2 is in timer mode.
      Channel_2_Is_In_Time,
      --  Channel 2 is in counter mode.
      Channel_2_Is_In_Coun)
     with Size => 1;
   for ENUM_21 use
     (Channel_2_Is_In_Time => 0,
      Channel_2_Is_In_Coun => 1);

   --  Count Control read address
   type CNTCON_Register is record
      --  Read-only. Counter 0 rising edge mode, channel 0.
      TC0MCI0_RE : ENUM_15;
      --  Read-only. Counter 0 falling edge mode, channel 0.
      TC0MCI0_FE : ENUM_16;
      --  Read-only. Counter 0 rising edge mode, channel 1.
      TC0MCI1_RE : ENUM_15;
      --  Read-only. Counter 0 falling edge mode, channel 1.
      TC0MCI1_FE : ENUM_17;
      --  Read-only. Counter 0 rising edge mode, channel 2.
      TC0MCI2_RE : ENUM_15;
      --  Read-only. Counter 0 falling edge mode, channel 2.
      TC0MCI2_FE : ENUM_17;
      --  Read-only. Counter 1 rising edge mode, channel 0.
      TC1MCI0_RE : ENUM_15;
      --  Read-only. Counter 1 falling edge mode, channel 0.
      TC1MCI0_FE : ENUM_18;
      --  Read-only. Counter 1 rising edge mode, channel 1.
      TC1MCI1_RE : ENUM_15;
      --  Read-only. Counter 1 falling edge mode, channel 1.
      TC1MCI1_FE : ENUM_17;
      --  Read-only. Counter 1 rising edge mode, channel 2.
      TC1MCI2_RE : ENUM_15;
      --  Read-only. Counter 1 falling edge mode, channel 2.
      TC1MCI2_FE : ENUM_15;
      --  Read-only. Counter 2 rising edge mode, channel 0.
      TC2MCI0_RE : ENUM_17;
      --  Read-only. Counter 2 falling edge mode, channel 0.
      TC2MCI0_FE : ENUM_17;
      --  Read-only. Counter 2 rising edge mode, channel 1.
      TC2MCI1_RE : ENUM_17;
      --  Read-only. Counter 2 falling edge mode, channel 1.
      TC2MCI1_FE : ENUM_17;
      --  Read-only. Counter 2 rising edge mode, channel 2.
      TC2MCI2_RE : ENUM_17;
      --  Read-only. Counter 2 falling edge mode, channel 2.
      TC2MCI2_FE : ENUM_17;
      --  Read-only. Reserved.
      RESERVED   : CNTCON_RESERVED_Field;
      --  Read-only. Channel 0 counter/timer mode.
      CNTR0      : ENUM_19;
      --  Read-only. Channel 1 counter/timer mode.
      CNTR1      : ENUM_20;
      --  Read-only. Channel 2 counter/timer mode.
      CNTR2      : ENUM_21;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNTCON_Register use record
      TC0MCI0_RE at 0 range 0 .. 0;
      TC0MCI0_FE at 0 range 1 .. 1;
      TC0MCI1_RE at 0 range 2 .. 2;
      TC0MCI1_FE at 0 range 3 .. 3;
      TC0MCI2_RE at 0 range 4 .. 4;
      TC0MCI2_FE at 0 range 5 .. 5;
      TC1MCI0_RE at 0 range 6 .. 6;
      TC1MCI0_FE at 0 range 7 .. 7;
      TC1MCI1_RE at 0 range 8 .. 8;
      TC1MCI1_FE at 0 range 9 .. 9;
      TC1MCI2_RE at 0 range 10 .. 10;
      TC1MCI2_FE at 0 range 11 .. 11;
      TC2MCI0_RE at 0 range 12 .. 12;
      TC2MCI0_FE at 0 range 13 .. 13;
      TC2MCI1_RE at 0 range 14 .. 14;
      TC2MCI1_FE at 0 range 15 .. 15;
      TC2MCI2_RE at 0 range 16 .. 16;
      TC2MCI2_FE at 0 range 17 .. 17;
      RESERVED   at 0 range 18 .. 28;
      CNTR0      at 0 range 29 .. 29;
      CNTR1      at 0 range 30 .. 30;
      CNTR2      at 0 range 31 .. 31;
   end record;

   -------------------------
   -- CNTCON_SET_Register --
   -------------------------

   subtype CNTCON_SET_TC0MCI0_RE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_SET_TC0MCI0_FE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_SET_TC0MCI1_RE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_SET_TC0MCI1_FE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_SET_TC0MCI2_RE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_SET_TC0MCI2_FE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_SET_TC1MCI0_RE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_SET_TC1MCI0_FE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_SET_TC1MCI1_RE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_SET_TC1MCI1_FE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_SET_TC1MCI2_RE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_SET_TC1MCI2_FE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_SET_TC2MCI0_RE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_SET_TC2MCI0_FE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_SET_TC2MCI1_RE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_SET_TC2MCI1_FE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_SET_TC2MCI2_RE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_SET_TC2MCI2_FE_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_SET_RESERVED_Field is Interfaces.Bit_Types.UInt11;
   subtype CNTCON_SET_CNTR0_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_SET_CNTR1_SET_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_SET_CNTR2_SET_Field is Interfaces.Bit_Types.Bit;

   --  Count Control set address
   type CNTCON_SET_Register is record
      --  Write-only. Writing a one sets the corresponding bit in the CNTCON
      --  register.
      TC0MCI0_RE_SET : CNTCON_SET_TC0MCI0_RE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CNTCON
      --  register.
      TC0MCI0_FE_SET : CNTCON_SET_TC0MCI0_FE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CNTCON
      --  register.
      TC0MCI1_RE_SET : CNTCON_SET_TC0MCI1_RE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CNTCON
      --  register.
      TC0MCI1_FE_SET : CNTCON_SET_TC0MCI1_FE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CNTCON
      --  register.
      TC0MCI2_RE_SET : CNTCON_SET_TC0MCI2_RE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CNTCON
      --  register.
      TC0MCI2_FE_SET : CNTCON_SET_TC0MCI2_FE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CNTCON
      --  register.
      TC1MCI0_RE_SET : CNTCON_SET_TC1MCI0_RE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CNTCON
      --  register.
      TC1MCI0_FE_SET : CNTCON_SET_TC1MCI0_FE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CNTCON
      --  register.
      TC1MCI1_RE_SET : CNTCON_SET_TC1MCI1_RE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CNTCON
      --  register.
      TC1MCI1_FE_SET : CNTCON_SET_TC1MCI1_FE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CNTCON
      --  register.
      TC1MCI2_RE_SET : CNTCON_SET_TC1MCI2_RE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CNTCON
      --  register.
      TC1MCI2_FE_SET : CNTCON_SET_TC1MCI2_FE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CNTCON
      --  register.
      TC2MCI0_RE_SET : CNTCON_SET_TC2MCI0_RE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CNTCON
      --  register.
      TC2MCI0_FE_SET : CNTCON_SET_TC2MCI0_FE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CNTCON
      --  register.
      TC2MCI1_RE_SET : CNTCON_SET_TC2MCI1_RE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CNTCON
      --  register.
      TC2MCI1_FE_SET : CNTCON_SET_TC2MCI1_FE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CNTCON
      --  register.
      TC2MCI2_RE_SET : CNTCON_SET_TC2MCI2_RE_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CNTCON
      --  register.
      TC2MCI2_FE_SET : CNTCON_SET_TC2MCI2_FE_SET_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED       : CNTCON_SET_RESERVED_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CNTCON
      --  register.
      CNTR0_SET      : CNTCON_SET_CNTR0_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CNTCON
      --  register.
      CNTR1_SET      : CNTCON_SET_CNTR1_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the CNTCON
      --  register.
      CNTR2_SET      : CNTCON_SET_CNTR2_SET_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNTCON_SET_Register use record
      TC0MCI0_RE_SET at 0 range 0 .. 0;
      TC0MCI0_FE_SET at 0 range 1 .. 1;
      TC0MCI1_RE_SET at 0 range 2 .. 2;
      TC0MCI1_FE_SET at 0 range 3 .. 3;
      TC0MCI2_RE_SET at 0 range 4 .. 4;
      TC0MCI2_FE_SET at 0 range 5 .. 5;
      TC1MCI0_RE_SET at 0 range 6 .. 6;
      TC1MCI0_FE_SET at 0 range 7 .. 7;
      TC1MCI1_RE_SET at 0 range 8 .. 8;
      TC1MCI1_FE_SET at 0 range 9 .. 9;
      TC1MCI2_RE_SET at 0 range 10 .. 10;
      TC1MCI2_FE_SET at 0 range 11 .. 11;
      TC2MCI0_RE_SET at 0 range 12 .. 12;
      TC2MCI0_FE_SET at 0 range 13 .. 13;
      TC2MCI1_RE_SET at 0 range 14 .. 14;
      TC2MCI1_FE_SET at 0 range 15 .. 15;
      TC2MCI2_RE_SET at 0 range 16 .. 16;
      TC2MCI2_FE_SET at 0 range 17 .. 17;
      RESERVED       at 0 range 18 .. 28;
      CNTR0_SET      at 0 range 29 .. 29;
      CNTR1_SET      at 0 range 30 .. 30;
      CNTR2_SET      at 0 range 31 .. 31;
   end record;

   -------------------------
   -- CNTCON_CLR_Register --
   -------------------------

   subtype CNTCON_CLR_TC0MCI0_RE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_CLR_TC0MCI0_FE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_CLR_TC0MCI1_RE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_CLR_TC0MCI1_FE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_CLR_TC0MCI2_RE_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_CLR_TC0MCI2_FE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_CLR_TC1MCI0_RE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_CLR_TC1MCI0_FE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_CLR_TC1MCI1_RE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_CLR_TC1MCI1_FE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_CLR_TC1MCI2_RE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_CLR_TC1MCI2_FE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_CLR_TC2MCI0_RE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_CLR_TC2MCI0_FE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_CLR_TC2MCI1_RE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_CLR_TC2MCI1_FE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_CLR_TC2MCI2_RE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_CLR_TC2MCI2_FE_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_CLR_RESERVED_Field is Interfaces.Bit_Types.UInt11;
   subtype CNTCON_CLR_CNTR0_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_CLR_CNTR1_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype CNTCON_CLR_CNTR2_CLR_Field is Interfaces.Bit_Types.Bit;

   --  Count Control clear address
   type CNTCON_CLR_Register is record
      --  Write-only. Writing a one clears the corresponding bit in the CNTCON
      --  register.
      TC0MCI0_RE_CLR : CNTCON_CLR_TC0MCI0_RE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CNTCON
      --  register.
      TC0MCI0_FE_CLR : CNTCON_CLR_TC0MCI0_FE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CNTCON
      --  register.
      TC0MCI1_RE_CLR : CNTCON_CLR_TC0MCI1_RE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CNTCON
      --  register.
      TC0MCI1_FE_CLR : CNTCON_CLR_TC0MCI1_FE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CNTCON
      --  register.
      TC0MCI2_RE     : CNTCON_CLR_TC0MCI2_RE_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CNTCON
      --  register.
      TC0MCI2_FE_CLR : CNTCON_CLR_TC0MCI2_FE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CNTCON
      --  register.
      TC1MCI0_RE_CLR : CNTCON_CLR_TC1MCI0_RE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CNTCON
      --  register.
      TC1MCI0_FE_CLR : CNTCON_CLR_TC1MCI0_FE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CNTCON
      --  register.
      TC1MCI1_RE_CLR : CNTCON_CLR_TC1MCI1_RE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CNTCON
      --  register.
      TC1MCI1_FE_CLR : CNTCON_CLR_TC1MCI1_FE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CNTCON
      --  register.
      TC1MCI2_RE_CLR : CNTCON_CLR_TC1MCI2_RE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CNTCON
      --  register.
      TC1MCI2_FE_CLR : CNTCON_CLR_TC1MCI2_FE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CNTCON
      --  register.
      TC2MCI0_RE_CLR : CNTCON_CLR_TC2MCI0_RE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CNTCON
      --  register.
      TC2MCI0_FE_CLR : CNTCON_CLR_TC2MCI0_FE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CNTCON
      --  register.
      TC2MCI1_RE_CLR : CNTCON_CLR_TC2MCI1_RE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CNTCON
      --  register.
      TC2MCI1_FE_CLR : CNTCON_CLR_TC2MCI1_FE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CNTCON
      --  register.
      TC2MCI2_RE_CLR : CNTCON_CLR_TC2MCI2_RE_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CNTCON
      --  register.
      TC2MCI2_FE_CLR : CNTCON_CLR_TC2MCI2_FE_CLR_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED       : CNTCON_CLR_RESERVED_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CNTCON
      --  register.
      CNTR0_CLR      : CNTCON_CLR_CNTR0_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CNTCON
      --  register.
      CNTR1_CLR      : CNTCON_CLR_CNTR1_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in the CNTCON
      --  register.
      CNTR2_CLR      : CNTCON_CLR_CNTR2_CLR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNTCON_CLR_Register use record
      TC0MCI0_RE_CLR at 0 range 0 .. 0;
      TC0MCI0_FE_CLR at 0 range 1 .. 1;
      TC0MCI1_RE_CLR at 0 range 2 .. 2;
      TC0MCI1_FE_CLR at 0 range 3 .. 3;
      TC0MCI2_RE     at 0 range 4 .. 4;
      TC0MCI2_FE_CLR at 0 range 5 .. 5;
      TC1MCI0_RE_CLR at 0 range 6 .. 6;
      TC1MCI0_FE_CLR at 0 range 7 .. 7;
      TC1MCI1_RE_CLR at 0 range 8 .. 8;
      TC1MCI1_FE_CLR at 0 range 9 .. 9;
      TC1MCI2_RE_CLR at 0 range 10 .. 10;
      TC1MCI2_FE_CLR at 0 range 11 .. 11;
      TC2MCI0_RE_CLR at 0 range 12 .. 12;
      TC2MCI0_FE_CLR at 0 range 13 .. 13;
      TC2MCI1_RE_CLR at 0 range 14 .. 14;
      TC2MCI1_FE_CLR at 0 range 15 .. 15;
      TC2MCI2_RE_CLR at 0 range 16 .. 16;
      TC2MCI2_FE_CLR at 0 range 17 .. 17;
      RESERVED       at 0 range 18 .. 28;
      CNTR0_CLR      at 0 range 29 .. 29;
      CNTR1_CLR      at 0 range 30 .. 30;
      CNTR2_CLR      at 0 range 31 .. 31;
   end record;

   -------------------
   -- INTF_Register --
   -------------------

   --  Limit interrupt flag for channel 0.
   type ENUM_22 is
     (
      --  This interrupt source is not contributing to the MCPWM interrupt
      --  request.
      This_Interrupt_Sourc,
      --  If the corresponding bit in INTEN is 1, the MCPWM module is asserting
      --  its interrupt request to the Interrupt Controller.
      If_The_Corresponding)
     with Size => 1;
   for ENUM_22 use
     (This_Interrupt_Sourc => 0,
      If_The_Corresponding => 1);

   subtype INTF_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_RESERVED_Field_1 is Interfaces.Bit_Types.UInt4;
   subtype INTF_RESERVED_Field_2 is Interfaces.Bit_Types.Short;

   --  Interrupt flags read address
   type INTF_Register is record
      --  Read-only. Limit interrupt flag for channel 0.
      ILIM0_F    : ENUM_22;
      --  Read-only. Match interrupt flag for channel 0.
      IMAT0_F    : ENUM_22;
      --  Read-only. Capture interrupt flag for channel 0.
      ICAP0_F    : ENUM_22;
      --  Read-only. Reserved.
      RESERVED   : INTF_RESERVED_Field;
      --  Read-only. Limit interrupt flag for channel 1.
      ILIM1_F    : ENUM_22;
      --  Read-only. Match interrupt flag for channel 1.
      IMAT1_F    : ENUM_22;
      --  Read-only. Capture interrupt flag for channel 1.
      ICAP1_F    : ENUM_22;
      --  Read-only. Reserved.
      RESERVED_1 : INTF_RESERVED_Field;
      --  Read-only. Limit interrupt flag for channel 2.
      ILIM2_F    : ENUM_22;
      --  Read-only. Match interrupt flag for channel 2.
      IMAT2_F    : ENUM_22;
      --  Read-only. Capture interrupt flag for channel 2.
      ICAP2_F    : ENUM_22;
      --  Read-only. Reserved.
      RESERVED_2 : INTF_RESERVED_Field_1;
      --  Read-only. Fast abort interrupt flag.
      ABORT_F    : ENUM_22;
      --  Read-only. Reserved.
      RESERVED_3 : INTF_RESERVED_Field_2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTF_Register use record
      ILIM0_F    at 0 range 0 .. 0;
      IMAT0_F    at 0 range 1 .. 1;
      ICAP0_F    at 0 range 2 .. 2;
      RESERVED   at 0 range 3 .. 3;
      ILIM1_F    at 0 range 4 .. 4;
      IMAT1_F    at 0 range 5 .. 5;
      ICAP1_F    at 0 range 6 .. 6;
      RESERVED_1 at 0 range 7 .. 7;
      ILIM2_F    at 0 range 8 .. 8;
      IMAT2_F    at 0 range 9 .. 9;
      ICAP2_F    at 0 range 10 .. 10;
      RESERVED_2 at 0 range 11 .. 14;
      ABORT_F    at 0 range 15 .. 15;
      RESERVED_3 at 0 range 16 .. 31;
   end record;

   -----------------------
   -- INTF_SET_Register --
   -----------------------

   subtype INTF_SET_ILIM0_F_SET_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_SET_IMAT0_F_SET_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_SET_ICAP0_F_SET_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_SET_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_SET_ILIM1_F_SET_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_SET_IMAT1_F_SET_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_SET_ICAP1_F_SET_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_SET_ILIM2_F_SET_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_SET_IMAT2_F_SET_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_SET_ICAP2_F_SET_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_SET_RESERVED_Field_1 is Interfaces.Bit_Types.UInt4;
   subtype INTF_SET_ABORT_F_SET_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_SET_RESERVED_Field_2 is Interfaces.Bit_Types.Short;

   --  Interrupt flags set address
   type INTF_SET_Register is record
      --  Write-only. Writing a one sets the corresponding bit in the INTF
      --  register, thus possibly simulating hardware interrupt.
      ILIM0_F_SET : INTF_SET_ILIM0_F_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the INTF
      --  register, thus possibly simulating hardware interrupt.
      IMAT0_F_SET : INTF_SET_IMAT0_F_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the INTF
      --  register, thus possibly simulating hardware interrupt.
      ICAP0_F_SET : INTF_SET_ICAP0_F_SET_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED    : INTF_SET_RESERVED_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the INTF
      --  register, thus possibly simulating hardware interrupt.
      ILIM1_F_SET : INTF_SET_ILIM1_F_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the INTF
      --  register, thus possibly simulating hardware interrupt.
      IMAT1_F_SET : INTF_SET_IMAT1_F_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the INTF
      --  register, thus possibly simulating hardware interrupt.
      ICAP1_F_SET : INTF_SET_ICAP1_F_SET_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED_1  : INTF_SET_RESERVED_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the INTF
      --  register, thus possibly simulating hardware interrupt.
      ILIM2_F_SET : INTF_SET_ILIM2_F_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the INTF
      --  register, thus possibly simulating hardware interrupt.
      IMAT2_F_SET : INTF_SET_IMAT2_F_SET_Field := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the INTF
      --  register, thus possibly simulating hardware interrupt.
      ICAP2_F_SET : INTF_SET_ICAP2_F_SET_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED_2  : INTF_SET_RESERVED_Field_1 := 16#0#;
      --  Write-only. Writing a one sets the corresponding bit in the INTF
      --  register, thus possibly simulating hardware interrupt.
      ABORT_F_SET : INTF_SET_ABORT_F_SET_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED_3  : INTF_SET_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTF_SET_Register use record
      ILIM0_F_SET at 0 range 0 .. 0;
      IMAT0_F_SET at 0 range 1 .. 1;
      ICAP0_F_SET at 0 range 2 .. 2;
      RESERVED    at 0 range 3 .. 3;
      ILIM1_F_SET at 0 range 4 .. 4;
      IMAT1_F_SET at 0 range 5 .. 5;
      ICAP1_F_SET at 0 range 6 .. 6;
      RESERVED_1  at 0 range 7 .. 7;
      ILIM2_F_SET at 0 range 8 .. 8;
      IMAT2_F_SET at 0 range 9 .. 9;
      ICAP2_F_SET at 0 range 10 .. 10;
      RESERVED_2  at 0 range 11 .. 14;
      ABORT_F_SET at 0 range 15 .. 15;
      RESERVED_3  at 0 range 16 .. 31;
   end record;

   -----------------------
   -- INTF_CLR_Register --
   -----------------------

   subtype INTF_CLR_ILIM0_F_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_CLR_IMAT0_F_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_CLR_ICAP0_F_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_CLR_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_CLR_ILIM1_F_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_CLR_IMAT1_F_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_CLR_ICAP1_F_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_CLR_ILIM2_F_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_CLR_IMAT2_F_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_CLR_ICAP2_F_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_CLR_RESERVED_Field_1 is Interfaces.Bit_Types.UInt4;
   subtype INTF_CLR_ABORT_F_CLR_Field is Interfaces.Bit_Types.Bit;
   subtype INTF_CLR_RESERVED_Field_2 is Interfaces.Bit_Types.Short;

   --  Interrupt flags clear address
   type INTF_CLR_Register is record
      --  Write-only. Writing a one clears the corresponding bit in the INTF
      --  register, thus clearing the corresponding interrupt request.
      ILIM0_F_CLR : INTF_CLR_ILIM0_F_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in INTEN, thus
      --  disabling the interrupt.
      IMAT0_F_CLR : INTF_CLR_IMAT0_F_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in INTEN, thus
      --  disabling the interrupt.
      ICAP0_F_CLR : INTF_CLR_ICAP0_F_CLR_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED    : INTF_CLR_RESERVED_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in INTEN, thus
      --  disabling the interrupt.
      ILIM1_F_CLR : INTF_CLR_ILIM1_F_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in INTEN, thus
      --  disabling the interrupt.
      IMAT1_F_CLR : INTF_CLR_IMAT1_F_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in INTEN, thus
      --  disabling the interrupt.
      ICAP1_F_CLR : INTF_CLR_ICAP1_F_CLR_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED_1  : INTF_CLR_RESERVED_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in INTEN, thus
      --  disabling the interrupt.
      ILIM2_F_CLR : INTF_CLR_ILIM2_F_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in INTEN, thus
      --  disabling the interrupt.
      IMAT2_F_CLR : INTF_CLR_IMAT2_F_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in INTEN, thus
      --  disabling the interrupt.
      ICAP2_F_CLR : INTF_CLR_ICAP2_F_CLR_Field := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in INTEN, thus
      --  disabling the interrupt.
      RESERVED_2  : INTF_CLR_RESERVED_Field_1 := 16#0#;
      --  Write-only. Writing a one clears the corresponding bit in INTEN, thus
      --  disabling the interrupt.
      ABORT_F_CLR : INTF_CLR_ABORT_F_CLR_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED_3  : INTF_CLR_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTF_CLR_Register use record
      ILIM0_F_CLR at 0 range 0 .. 0;
      IMAT0_F_CLR at 0 range 1 .. 1;
      ICAP0_F_CLR at 0 range 2 .. 2;
      RESERVED    at 0 range 3 .. 3;
      ILIM1_F_CLR at 0 range 4 .. 4;
      IMAT1_F_CLR at 0 range 5 .. 5;
      ICAP1_F_CLR at 0 range 6 .. 6;
      RESERVED_1  at 0 range 7 .. 7;
      ILIM2_F_CLR at 0 range 8 .. 8;
      IMAT2_F_CLR at 0 range 9 .. 9;
      ICAP2_F_CLR at 0 range 10 .. 10;
      RESERVED_2  at 0 range 11 .. 14;
      ABORT_F_CLR at 0 range 15 .. 15;
      RESERVED_3  at 0 range 16 .. 31;
   end record;

   ----------------------
   -- CAP_CLR_Register --
   ----------------------

   ---------------------
   -- CAP_CLR.CAP_CLR --
   ---------------------

   --  CAP_CLR array element
   subtype CAP_CLR_Element is Interfaces.Bit_Types.Bit;

   --  CAP_CLR array
   type CAP_CLR_Field_Array is array (0 .. 2) of CAP_CLR_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CAP_CLR
   type CAP_CLR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CAP_CLR as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  CAP_CLR as an array
            Arr : CAP_CLR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CAP_CLR_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype CAP_CLR_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  Capture clear address
   type CAP_CLR_Register is record
      --  Write-only. Writing a 1 to this bit clears the CAP0 register.
      CAP_CLR  : CAP_CLR_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Reserved
      RESERVED : CAP_CLR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAP_CLR_Register use record
      CAP_CLR  at 0 range 0 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Motor Control PWM (MOTOCONPWM)
   type MCPWM_Peripheral is record
      --  PWM Control read address
      CON        : CON_Register;
      --  PWM Control set address
      CON_SET    : CON_SET_Register;
      --  PWM Control clear address
      CON_CLR    : CON_CLR_Register;
      --  Capture Control read address
      CAPCON     : CAPCON_Register;
      --  Capture Control set address
      CAPCON_SET : CAPCON_SET_Register;
      --  Event Control clear address
      CAPCON_CLR : CAPCON_CLR_Register;
      --  Timer Counter register
      TC         : TC_Registers;
      --  Limit register
      LIM        : LIM_Registers;
      --  Match register
      MAT        : MAT_Registers;
      --  Dead time register
      DT         : DT_Register;
      --  Communication Pattern register
      CCP        : CCP_Register;
      --  Capture register
      CAP        : CAP_Registers;
      --  Interrupt Enable read address
      INTEN      : INTEN_Register;
      --  Interrupt Enable set address
      INTEN_SET  : INTEN_SET_Register;
      --  Interrupt Enable clear address
      INTEN_CLR  : INTEN_CLR_Register;
      --  Count Control read address
      CNTCON     : CNTCON_Register;
      --  Count Control set address
      CNTCON_SET : CNTCON_SET_Register;
      --  Count Control clear address
      CNTCON_CLR : CNTCON_CLR_Register;
      --  Interrupt flags read address
      INTF       : INTF_Register;
      --  Interrupt flags set address
      INTF_SET   : INTF_SET_Register;
      --  Interrupt flags clear address
      INTF_CLR   : INTF_CLR_Register;
      --  Capture clear address
      CAP_CLR    : CAP_CLR_Register;
   end record
     with Volatile;

   for MCPWM_Peripheral use record
      CON        at 0 range 0 .. 31;
      CON_SET    at 4 range 0 .. 31;
      CON_CLR    at 8 range 0 .. 31;
      CAPCON     at 12 range 0 .. 31;
      CAPCON_SET at 16 range 0 .. 31;
      CAPCON_CLR at 20 range 0 .. 31;
      TC         at 24 range 0 .. 95;
      LIM        at 36 range 0 .. 95;
      MAT        at 48 range 0 .. 95;
      DT         at 60 range 0 .. 31;
      CCP        at 64 range 0 .. 31;
      CAP        at 68 range 0 .. 95;
      INTEN      at 80 range 0 .. 31;
      INTEN_SET  at 84 range 0 .. 31;
      INTEN_CLR  at 88 range 0 .. 31;
      CNTCON     at 92 range 0 .. 31;
      CNTCON_SET at 96 range 0 .. 31;
      CNTCON_CLR at 100 range 0 .. 31;
      INTF       at 104 range 0 .. 31;
      INTF_SET   at 108 range 0 .. 31;
      INTF_CLR   at 112 range 0 .. 31;
      CAP_CLR    at 116 range 0 .. 31;
   end record;

   --  Motor Control PWM (MOTOCONPWM)
   MCPWM_Periph : aliased MCPWM_Peripheral
     with Import, Address => MCPWM_Base;

end Interfaces.LPC43xxC.MCPWM;
