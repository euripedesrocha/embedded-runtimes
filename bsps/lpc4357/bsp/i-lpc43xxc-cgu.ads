--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43xxC.CGU is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -----------------------
   -- FREQ_MON_Register --
   -----------------------

   subtype FREQ_MON_RCNT_Field is Interfaces.Bit_Types.UInt9;
   subtype FREQ_MON_FCNT_Field is Interfaces.Bit_Types.UInt14;

   --  Measure frequency
   type ENUM is
     (
      --  RCNT and FCNT disabled
      Rcnt_And_Fcnt_Disabl,
      --  Frequency counters started
      Frequency_Counters_S)
     with Size => 1;
   for ENUM use
     (Rcnt_And_Fcnt_Disabl => 0,
      Frequency_Counters_S => 1);

   --  Clock-source selection for the clock to be measured. All other values
   --  are reserved.
   type ENUM_1 is
     (
      --  32 kHz oscillator (default)
      ENUM_32_Khz_Oscillator_D,
      --  IRC
      Irc,
      --  ENET_RX_CLK
      Enet_Rx_Clk,
      --  ENET_TX_CLK
      Enet_Tx_Clk,
      --  GP_CLKIN
      Gp_Clkin,
      --  Reserved
      Reserved,
      --  Crystal oscillator
      Crystal_Oscillator,
      --  PLL0USB
      Pll0Usb,
      --  PLL0AUDIO
      Pll0Audio,
      --  PLL1
      Pll1,
      --  Reserved
      Reserved_1,
      --  Reserved
      Reserved_2,
      --  IDIVA
      Idiva,
      --  IDIVB
      Idivb,
      --  IDIVC
      Idivc,
      --  IDIVD
      Idivd,
      --  IDIVE
      Idive)
     with Size => 5;
   for ENUM_1 use
     (ENUM_32_Khz_Oscillator_D => 0,
      Irc => 1,
      Enet_Rx_Clk => 2,
      Enet_Tx_Clk => 3,
      Gp_Clkin => 4,
      Reserved => 5,
      Crystal_Oscillator => 6,
      Pll0Usb => 7,
      Pll0Audio => 8,
      Pll1 => 9,
      Reserved_1 => 10,
      Reserved_2 => 11,
      Idiva => 12,
      Idivb => 13,
      Idivc => 14,
      Idivd => 15,
      Idive => 16);

   subtype FREQ_MON_RESERVED_Field is Interfaces.Bit_Types.UInt3;

   --  Frequency monitor register
   type FREQ_MON_Register is record
      --  9-bit reference clock-counter value
      RCNT     : FREQ_MON_RCNT_Field := 16#0#;
      --  14-bit selected clock-counter value
      FCNT     : FREQ_MON_FCNT_Field := 16#0#;
      --  Measure frequency
      MEAS     : ENUM := Interfaces.LPC43xxC.CGU.Rcnt_And_Fcnt_Disabl;
      --  Clock-source selection for the clock to be measured. All other values
      --  are reserved.
      CLK_SEL  : ENUM_1 := Interfaces.LPC43xxC.CGU.ENUM_32_Khz_Oscillator_D;
      --  Reserved
      RESERVED : FREQ_MON_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQ_MON_Register use record
      RCNT     at 0 range 0 .. 8;
      FCNT     at 0 range 9 .. 22;
      MEAS     at 0 range 23 .. 23;
      CLK_SEL  at 0 range 24 .. 28;
      RESERVED at 0 range 29 .. 31;
   end record;

   ----------------------------
   -- XTAL_OSC_CTRL_Register --
   ----------------------------

   --  Oscillator-pad enable. Do not change the BYPASS and ENABLE bits in one
   --  write-action: this will result in unstable device operation!
   type ENUM_2 is
     (
      --  Enable
      Enable,
      --  Power-down (default)
      Power_Down)
     with Size => 1;
   for ENUM_2 use
     (Enable => 0,
      Power_Down => 1);

   --  Configure crystal operation or external-clock input pin XTAL1. Do not
   --  change the BYPASS and ENABLE bits in one write-action: this will result
   --  in unstable device operation!
   type ENUM_3 is
     (
      --  Crystal. Operation with crystal connected (default).
      Crystal,
      --  Bypass mode. Use this mode when an external clock source is used
      --  instead of a crystal.
      Bypass_Mode)
     with Size => 1;
   for ENUM_3 use
     (Crystal => 0,
      Bypass_Mode => 1);

   --  Select frequency range
   type ENUM_4 is
     (
      --  Low. Oscillator low-frequency mode (crystal or external clock source
      --  1 to 20 MHz). Between 15 MHz and 20 MHz, the state of the HF bit is
      --  don't care.
      Low,
      --  High. Oscillator high-frequency mode; crystal or external clock
      --  source 15 to 25 MHz. Between 15 MHz and 20 MHz, the state of the HF
      --  bit is don't care.
      High)
     with Size => 1;
   for ENUM_4 use
     (Low => 0,
      High => 1);

   subtype XTAL_OSC_CTRL_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  Crystal oscillator control register
   type XTAL_OSC_CTRL_Register is record
      --  Oscillator-pad enable. Do not change the BYPASS and ENABLE bits in
      --  one write-action: this will result in unstable device operation!
      ENABLE   : ENUM_2 := Interfaces.LPC43xxC.CGU.Power_Down;
      --  Configure crystal operation or external-clock input pin XTAL1. Do not
      --  change the BYPASS and ENABLE bits in one write-action: this will
      --  result in unstable device operation!
      BYPASS   : ENUM_3 := Interfaces.LPC43xxC.CGU.Crystal;
      --  Select frequency range
      HF       : ENUM_4 := Interfaces.LPC43xxC.CGU.High;
      --  Reserved
      RESERVED : XTAL_OSC_CTRL_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTAL_OSC_CTRL_Register use record
      ENABLE   at 0 range 0 .. 0;
      BYPASS   at 0 range 1 .. 1;
      HF       at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------------
   -- PLL0USB_STAT_Register --
   ---------------------------

   subtype PLL0USB_STAT_LOCK_Field is Interfaces.Bit_Types.Bit;
   subtype PLL0USB_STAT_FR_Field is Interfaces.Bit_Types.Bit;
   subtype PLL0USB_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt30;

   --  PLL0USB status register
   type PLL0USB_STAT_Register is record
      --  Read-only. PLL0 lock indicator
      LOCK     : PLL0USB_STAT_LOCK_Field;
      --  Read-only. PLL0 free running indicator
      FR       : PLL0USB_STAT_FR_Field;
      --  Read-only. Reserved
      RESERVED : PLL0USB_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLL0USB_STAT_Register use record
      LOCK     at 0 range 0 .. 0;
      FR       at 0 range 1 .. 1;
      RESERVED at 0 range 2 .. 31;
   end record;

   ---------------------------
   -- PLL0USB_CTRL_Register --
   ---------------------------

   --  PLL0 power down
   type ENUM_5 is
     (
      --  PLL0 enabled
      Pll0_Enabled,
      --  PLL0 powered down
      Pll0_Powered_Down)
     with Size => 1;
   for ENUM_5 use
     (Pll0_Enabled => 0,
      Pll0_Powered_Down => 1);

   --  Input clock bypass control
   type ENUM_6 is
     (
      --  CCO clock sent to post-dividers. Use this in normal operation.
      Cco_Clock_Sent_To_Po,
      --  PLL0 input clock sent to post-dividers (default).
      Pll0_Input_Clock_Sen)
     with Size => 1;
   for ENUM_6 use
     (Cco_Clock_Sent_To_Po => 0,
      Pll0_Input_Clock_Sen => 1);

   subtype PLL0USB_CTRL_DIRECTI_Field is Interfaces.Bit_Types.Bit;
   subtype PLL0USB_CTRL_DIRECTO_Field is Interfaces.Bit_Types.Bit;
   subtype PLL0USB_CTRL_CLKEN_Field is Interfaces.Bit_Types.Bit;
   subtype PLL0USB_CTRL_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype PLL0USB_CTRL_FRM_Field is Interfaces.Bit_Types.Bit;

   ---------------------------
   -- PLL0USB_CTRL.RESERVED --
   ---------------------------

   --  PLL0USB_CTRL_RESERVED array element
   subtype PLL0USB_CTRL_RESERVED_Element is Interfaces.Bit_Types.Bit;

   --  PLL0USB_CTRL_RESERVED array
   type PLL0USB_CTRL_RESERVED_Field_Array is array (1 .. 4)
     of PLL0USB_CTRL_RESERVED_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PLL0USB_CTRL_RESERVED
   type PLL0USB_CTRL_RESERVED_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  RESERVED as an array
            Arr : PLL0USB_CTRL_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PLL0USB_CTRL_RESERVED_Field_1 use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Block clock automatically during frequency change
   type ENUM_7 is
     (
      --  Disabled. Autoblocking disabled
      Disabled,
      --  Enabled. Autoblocking enabled
      Enabled)
     with Size => 1;
   for ENUM_7 use
     (Disabled => 0,
      Enabled => 1);

   subtype PLL0USB_CTRL_RESERVED_Field_2 is Interfaces.Bit_Types.UInt12;

   --  Clock source selection. All other values are reserved.
   type ENUM_8 is
     (
      --  32 kHz oscillator
      ENUM_32_Khz_Oscillator,
      --  IRC (default)
      Irc,
      --  ENET_RX_CLK
      Enet_Rx_Clk,
      --  ENET_TX_CLK
      Enet_Tx_Clk,
      --  GP_CLKIN
      Gp_Clkin,
      --  Crystal oscillator
      Crystal_Oscillator,
      --  PLL1
      Pll1,
      --  IDIVA
      Idiva,
      --  IDIVB
      Idivb,
      --  IDIVC
      Idivc,
      --  IDIVD
      Idivd,
      --  IDIVE
      Idive)
     with Size => 5;
   for ENUM_8 use
     (ENUM_32_Khz_Oscillator => 0,
      Irc => 1,
      Enet_Rx_Clk => 2,
      Enet_Tx_Clk => 3,
      Gp_Clkin => 4,
      Crystal_Oscillator => 6,
      Pll1 => 9,
      Idiva => 12,
      Idivb => 13,
      Idivc => 14,
      Idivd => 15,
      Idive => 16);

   subtype PLL0USB_CTRL_RESERVED_Field_3 is Interfaces.Bit_Types.UInt3;

   --  PLL0USB control register
   type PLL0USB_CTRL_Register is record
      --  PLL0 power down
      PD         : ENUM_5 := Interfaces.LPC43xxC.CGU.Pll0_Powered_Down;
      --  Input clock bypass control
      BYPASS     : ENUM_6 := Interfaces.LPC43xxC.CGU.Pll0_Input_Clock_Sen;
      --  PLL0 direct input
      DIRECTI    : PLL0USB_CTRL_DIRECTI_Field := 16#0#;
      --  PLL0 direct output
      DIRECTO    : PLL0USB_CTRL_DIRECTO_Field := 16#0#;
      --  PLL0 clock enable
      CLKEN      : PLL0USB_CTRL_CLKEN_Field := 16#0#;
      --  Reserved
      RESERVED   : PLL0USB_CTRL_RESERVED_Field := 16#0#;
      --  Free running mode
      FRM        : PLL0USB_CTRL_FRM_Field := 16#0#;
      --  Reserved
      RESERVED_1 : PLL0USB_CTRL_RESERVED_Field_1 :=
                    (As_Array => False, Val => 16#0#);
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_2 : PLL0USB_CTRL_RESERVED_Field_2 := 16#0#;
      --  Clock source selection. All other values are reserved.
      CLK_SEL    : ENUM_8 := Interfaces.LPC43xxC.CGU.Irc;
      --  Reserved
      RESERVED_3 : PLL0USB_CTRL_RESERVED_Field_3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLL0USB_CTRL_Register use record
      PD         at 0 range 0 .. 0;
      BYPASS     at 0 range 1 .. 1;
      DIRECTI    at 0 range 2 .. 2;
      DIRECTO    at 0 range 3 .. 3;
      CLKEN      at 0 range 4 .. 4;
      RESERVED   at 0 range 5 .. 5;
      FRM        at 0 range 6 .. 6;
      RESERVED_1 at 0 range 7 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_2 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_3 at 0 range 29 .. 31;
   end record;

   ---------------------------
   -- PLL0USB_MDIV_Register --
   ---------------------------

   subtype PLL0USB_MDIV_MDEC_Field is Interfaces.Bit_Types.UInt17;
   subtype PLL0USB_MDIV_SELP_Field is Interfaces.Bit_Types.UInt5;
   subtype PLL0USB_MDIV_SELI_Field is Interfaces.Bit_Types.UInt6;
   subtype PLL0USB_MDIV_SELR_Field is Interfaces.Bit_Types.UInt4;

   --  PLL0USB M-divider register
   type PLL0USB_MDIV_Register is record
      --  Decoded M-divider coefficient value. Select values for the M-divider
      --  between 1 and 131071.
      MDEC : PLL0USB_MDIV_MDEC_Field := 16#5B6A#;
      --  Bandwidth select P value
      SELP : PLL0USB_MDIV_SELP_Field := 16#1C#;
      --  Bandwidth select I value
      SELI : PLL0USB_MDIV_SELI_Field := 16#17#;
      --  Bandwidth select R value; SELR = 0.
      SELR : PLL0USB_MDIV_SELR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLL0USB_MDIV_Register use record
      MDEC at 0 range 0 .. 16;
      SELP at 0 range 17 .. 21;
      SELI at 0 range 22 .. 27;
      SELR at 0 range 28 .. 31;
   end record;

   -----------------------------
   -- PLL0USB_NP_DIV_Register --
   -----------------------------

   subtype PLL0USB_NP_DIV_PDEC_Field is Interfaces.Bit_Types.UInt7;
   subtype PLL0USB_NP_DIV_RESERVED_Field is Interfaces.Bit_Types.UInt5;
   subtype PLL0USB_NP_DIV_NDEC_Field is Interfaces.Bit_Types.UInt10;
   subtype PLL0USB_NP_DIV_RESERVED_Field_1 is Interfaces.Bit_Types.UInt10;

   --  PLL0USB N/P-divider register
   type PLL0USB_NP_DIV_Register is record
      --  Decoded P-divider coefficient value
      PDEC       : PLL0USB_NP_DIV_PDEC_Field := 16#2#;
      --  Reserved
      RESERVED   : PLL0USB_NP_DIV_RESERVED_Field := 16#0#;
      --  Decoded N-divider coefficient value
      NDEC       : PLL0USB_NP_DIV_NDEC_Field := 16#B1#;
      --  Reserved
      RESERVED_1 : PLL0USB_NP_DIV_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLL0USB_NP_DIV_Register use record
      PDEC       at 0 range 0 .. 6;
      RESERVED   at 0 range 7 .. 11;
      NDEC       at 0 range 12 .. 21;
      RESERVED_1 at 0 range 22 .. 31;
   end record;

   -----------------------------
   -- PLL0AUDIO_STAT_Register --
   -----------------------------

   subtype PLL0AUDIO_STAT_LOCK_Field is Interfaces.Bit_Types.Bit;
   subtype PLL0AUDIO_STAT_FR_Field is Interfaces.Bit_Types.Bit;
   subtype PLL0AUDIO_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt30;

   --  PLL0AUDIO status register
   type PLL0AUDIO_STAT_Register is record
      --  Read-only. PLL0 lock indicator
      LOCK     : PLL0AUDIO_STAT_LOCK_Field;
      --  Read-only. PLL0 free running indicator
      FR       : PLL0AUDIO_STAT_FR_Field;
      --  Read-only. Reserved
      RESERVED : PLL0AUDIO_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLL0AUDIO_STAT_Register use record
      LOCK     at 0 range 0 .. 0;
      FR       at 0 range 1 .. 1;
      RESERVED at 0 range 2 .. 31;
   end record;

   -----------------------------
   -- PLL0AUDIO_CTRL_Register --
   -----------------------------

   subtype PLL0AUDIO_CTRL_DIRECTI_Field is Interfaces.Bit_Types.Bit;
   subtype PLL0AUDIO_CTRL_DIRECTO_Field is Interfaces.Bit_Types.Bit;
   subtype PLL0AUDIO_CTRL_CLKEN_Field is Interfaces.Bit_Types.Bit;
   subtype PLL0AUDIO_CTRL_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype PLL0AUDIO_CTRL_FRM_Field is Interfaces.Bit_Types.Bit;

   -----------------------------
   -- PLL0AUDIO_CTRL.RESERVED --
   -----------------------------

   --  PLL0AUDIO_CTRL_RESERVED array element
   subtype PLL0AUDIO_CTRL_RESERVED_Element is Interfaces.Bit_Types.Bit;

   --  PLL0AUDIO_CTRL_RESERVED array
   type PLL0AUDIO_CTRL_RESERVED_Field_Array is array (1 .. 4)
     of PLL0AUDIO_CTRL_RESERVED_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PLL0AUDIO_CTRL_RESERVED
   type PLL0AUDIO_CTRL_RESERVED_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  RESERVED as an array
            Arr : PLL0AUDIO_CTRL_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PLL0AUDIO_CTRL_RESERVED_Field_1 use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype PLL0AUDIO_CTRL_PLLFRACT_REQ_Field is Interfaces.Bit_Types.Bit;

   --  Select fractional divider.
   type ENUM_9 is
     (
      --  FRAC Enabled. Enable fractional divider.
      Frac_Enabled,
      --  MDEC enabled. Fractional divider not used.
      Mdec_Enabled)
     with Size => 1;
   for ENUM_9 use
     (Frac_Enabled => 0,
      Mdec_Enabled => 1);

   --  Sigma-Delta modulator power-down
   type ENUM_10 is
     (
      --  Enabled. Sigma-Delta modulator enabled
      Enabled,
      --  Disabled. Sigma-Delta modulator powered down
      Disabled)
     with Size => 1;
   for ENUM_10 use
     (Enabled => 0,
      Disabled => 1);

   subtype PLL0AUDIO_CTRL_RESERVED_Field_2 is Interfaces.Bit_Types.UInt9;

   --  Clock source selection. All other values are reserved.
   type ENUM_11 is
     (
      --  32 kHz oscillator
      ENUM_32_Khz_Oscillator,
      --  IRC (default)
      Irc_Default,
      --  ENET_RX_CLK
      Enet_Rx_Clk,
      --  ENET_TX_CLK
      Enet_Tx_Clk,
      --  GP_CLKIN
      Gp_Clkin,
      --  Crystal oscillator
      Crystal_Oscillator,
      --  PLL1
      Pll1,
      --  IDIVA
      Idiva,
      --  IDIVB
      Idivb,
      --  IDIVC
      Idivc,
      --  IDIVD
      Idivd,
      --  IDIVE
      Idive)
     with Size => 5;
   for ENUM_11 use
     (ENUM_32_Khz_Oscillator => 0,
      Irc_Default => 1,
      Enet_Rx_Clk => 2,
      Enet_Tx_Clk => 3,
      Gp_Clkin => 4,
      Crystal_Oscillator => 6,
      Pll1 => 9,
      Idiva => 12,
      Idivb => 13,
      Idivc => 14,
      Idivd => 15,
      Idive => 16);

   subtype PLL0AUDIO_CTRL_RESERVED_Field_3 is Interfaces.Bit_Types.UInt3;

   --  PLL0AUDIO control register
   type PLL0AUDIO_CTRL_Register is record
      --  PLL0 power down
      PD           : ENUM_5 := Interfaces.LPC43xxC.CGU.Pll0_Powered_Down;
      --  Input clock bypass control
      BYPASS       : ENUM_6 := Interfaces.LPC43xxC.CGU.Pll0_Input_Clock_Sen;
      --  PLL0 direct input
      DIRECTI      : PLL0AUDIO_CTRL_DIRECTI_Field := 16#0#;
      --  PLL0 direct output
      DIRECTO      : PLL0AUDIO_CTRL_DIRECTO_Field := 16#0#;
      --  PLL0 clock enable
      CLKEN        : PLL0AUDIO_CTRL_CLKEN_Field := 16#0#;
      --  Reserved
      RESERVED     : PLL0AUDIO_CTRL_RESERVED_Field := 16#0#;
      --  Free running mode
      FRM          : PLL0AUDIO_CTRL_FRM_Field := 16#0#;
      --  Reserved
      RESERVED_1   : PLL0AUDIO_CTRL_RESERVED_Field_1 :=
                      (As_Array => False, Val => 16#0#);
      --  Block clock automatically during frequency change
      AUTOBLOCK    : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Fractional PLL word write request. Set this bit to 1 if the
      --  fractional divider is enabled in the SEL_EXT bit.
      PLLFRACT_REQ : PLL0AUDIO_CTRL_PLLFRACT_REQ_Field := 16#0#;
      --  Select fractional divider.
      SEL_EXT      : ENUM_9 := Interfaces.LPC43xxC.CGU.Frac_Enabled;
      --  Sigma-Delta modulator power-down
      MOD_PD       : ENUM_10 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_2   : PLL0AUDIO_CTRL_RESERVED_Field_2 := 16#0#;
      --  Clock source selection. All other values are reserved.
      CLK_SEL      : ENUM_11 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_3   : PLL0AUDIO_CTRL_RESERVED_Field_3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLL0AUDIO_CTRL_Register use record
      PD           at 0 range 0 .. 0;
      BYPASS       at 0 range 1 .. 1;
      DIRECTI      at 0 range 2 .. 2;
      DIRECTO      at 0 range 3 .. 3;
      CLKEN        at 0 range 4 .. 4;
      RESERVED     at 0 range 5 .. 5;
      FRM          at 0 range 6 .. 6;
      RESERVED_1   at 0 range 7 .. 10;
      AUTOBLOCK    at 0 range 11 .. 11;
      PLLFRACT_REQ at 0 range 12 .. 12;
      SEL_EXT      at 0 range 13 .. 13;
      MOD_PD       at 0 range 14 .. 14;
      RESERVED_2   at 0 range 15 .. 23;
      CLK_SEL      at 0 range 24 .. 28;
      RESERVED_3   at 0 range 29 .. 31;
   end record;

   -----------------------------
   -- PLL0AUDIO_MDIV_Register --
   -----------------------------

   subtype PLL0AUDIO_MDIV_MDEC_Field is Interfaces.Bit_Types.UInt17;
   subtype PLL0AUDIO_MDIV_RESERVED_Field is Interfaces.Bit_Types.UInt15;

   --  PLL0AUDIO M-divider register
   type PLL0AUDIO_MDIV_Register is record
      --  Decoded M-divider coefficient value. Select values for the M-divider
      --  between 1 and 131071.
      MDEC     : PLL0AUDIO_MDIV_MDEC_Field := 16#5B6A#;
      --  Reserved
      RESERVED : PLL0AUDIO_MDIV_RESERVED_Field := 16#2FC#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLL0AUDIO_MDIV_Register use record
      MDEC     at 0 range 0 .. 16;
      RESERVED at 0 range 17 .. 31;
   end record;

   -------------------------------
   -- PLL0AUDIO_NP_DIV_Register --
   -------------------------------

   subtype PLL0AUDIO_NP_DIV_PDEC_Field is Interfaces.Bit_Types.UInt7;
   subtype PLL0AUDIO_NP_DIV_RESERVED_Field is Interfaces.Bit_Types.UInt5;
   subtype PLL0AUDIO_NP_DIV_NDEC_Field is Interfaces.Bit_Types.UInt10;
   subtype PLL0AUDIO_NP_DIV_RESERVED_Field_1 is Interfaces.Bit_Types.UInt10;

   --  PLL0AUDIO N/P-divider register
   type PLL0AUDIO_NP_DIV_Register is record
      --  Decoded P-divider coefficient value
      PDEC       : PLL0AUDIO_NP_DIV_PDEC_Field := 16#2#;
      --  Reserved
      RESERVED   : PLL0AUDIO_NP_DIV_RESERVED_Field := 16#0#;
      --  Decoded N-divider coefficient value
      NDEC       : PLL0AUDIO_NP_DIV_NDEC_Field := 16#B1#;
      --  Reserved
      RESERVED_1 : PLL0AUDIO_NP_DIV_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLL0AUDIO_NP_DIV_Register use record
      PDEC       at 0 range 0 .. 6;
      RESERVED   at 0 range 7 .. 11;
      NDEC       at 0 range 12 .. 21;
      RESERVED_1 at 0 range 22 .. 31;
   end record;

   -----------------------------
   -- PLL0AUDIO_FRAC_Register --
   -----------------------------

   subtype PLL0AUDIO_FRAC_PLLFRACT_CTRL_Field is Interfaces.Bit_Types.UInt22;
   subtype PLL0AUDIO_FRAC_RESERVED_Field is Interfaces.Bit_Types.UInt10;

   --  PLL0AUDIO fractional divider register
   type PLL0AUDIO_FRAC_Register is record
      --  PLL fractional divider control word
      PLLFRACT_CTRL : PLL0AUDIO_FRAC_PLLFRACT_CTRL_Field := 16#200000#;
      --  Reserved
      RESERVED      : PLL0AUDIO_FRAC_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLL0AUDIO_FRAC_Register use record
      PLLFRACT_CTRL at 0 range 0 .. 21;
      RESERVED      at 0 range 22 .. 31;
   end record;

   ------------------------
   -- PLL1_STAT_Register --
   ------------------------

   subtype PLL1_STAT_LOCK_Field is Interfaces.Bit_Types.Bit;
   subtype PLL1_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt31;

   --  PLL1 status register
   type PLL1_STAT_Register is record
      --  Read-only. PLL1 lock indicator
      LOCK     : PLL1_STAT_LOCK_Field;
      --  Read-only. Reserved
      RESERVED : PLL1_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLL1_STAT_Register use record
      LOCK     at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 31;
   end record;

   ------------------------
   -- PLL1_CTRL_Register --
   ------------------------

   --  PLL1 power down
   type ENUM_12 is
     (
      --  PLL1 enabled
      Pll1_Enabled,
      --  PLL1 powered down
      Pll1_Powered_Down)
     with Size => 1;
   for ENUM_12 use
     (Pll1_Enabled => 0,
      Pll1_Powered_Down => 1);

   --  Input clock bypass control
   type ENUM_13 is
     (
      --  Normal. CCO clock sent to post-dividers. Use for normal operation.
      Normal,
      --  Input clock. PLL1 input clock sent to post-dividers (default).
      Input_Clock)
     with Size => 1;
   for ENUM_13 use
     (Normal => 0,
      Input_Clock => 1);

   subtype PLL1_CTRL_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype PLL1_CTRL_RESERVED_Field_1 is Interfaces.Bit_Types.UInt3;

   --  PLL feedback select.
   type ENUM_14 is
     (
      --  CCO out. CCO output is used as feedback divider input clock.
      Cco_Out,
      --  PLL out. PLL output clock (clkout) is used as feedback divider input
      --  clock. Use for normal operation.
      Pll_Out)
     with Size => 1;
   for ENUM_14 use
     (Cco_Out => 0,
      Pll_Out => 1);

   --  Post-divider division ratio P. The value applied is 2xP.
   type ENUM_15 is
     (
      --  1
      ENUM_1_1,
      --  2 (default)
      Peq2,
      --  4
      Peq4,
      --  8
      ENUM_8_1)
     with Size => 2;
   for ENUM_15 use
     (ENUM_1_1 => 0,
      Peq2 => 1,
      Peq4 => 2,
      ENUM_8_1 => 3);

   --  Pre-divider division ratio N
   type ENUM_16 is
     (
      --  1
      ENUM_1_1,
      --  2
      Neq2,
      --  3 (default)
      Neq3,
      --  4
      ENUM_4_1)
     with Size => 2;
   for ENUM_16 use
     (ENUM_1_1 => 0,
      Neq2 => 1,
      Neq3 => 2,
      ENUM_4_1 => 3);

   subtype PLL1_CTRL_RESERVED_Field_2 is Interfaces.Bit_Types.UInt2;
   subtype PLL1_CTRL_MSEL_Field is Interfaces.Bit_Types.Byte;

   --  Clock-source selection.
   type ENUM_17 is
     (
      --  32 kHz oscillator
      ENUM_32_Khz_Oscillator,
      --  IRC (default)
      Irc_Default,
      --  ENET_RX_CLK
      Enet_Rx_Clk,
      --  ENET_TX_CLK
      Enet_Tx_Clk,
      --  GP_CLKIN
      Gp_Clkin,
      --  Reserved
      Reserved,
      --  Crystal oscillator
      Crystal_Oscillator,
      --  PLL0USB
      Pll0Usb,
      --  PLL0AUDIO
      Pll0Audio,
      --  Reserved
      Reserved_1,
      --  Reserved
      Reserved_2,
      --  IDIVA
      Idiva,
      --  IDIVB
      Idivb,
      --  IDIVC
      Idivc,
      --  IDIVD
      Idivd,
      --  IDIVE
      Idive)
     with Size => 5;
   for ENUM_17 use
     (ENUM_32_Khz_Oscillator => 0,
      Irc_Default => 1,
      Enet_Rx_Clk => 2,
      Enet_Tx_Clk => 3,
      Gp_Clkin => 4,
      Reserved => 5,
      Crystal_Oscillator => 6,
      Pll0Usb => 7,
      Pll0Audio => 8,
      Reserved_1 => 9,
      Reserved_2 => 10,
      Idiva => 12,
      Idivb => 13,
      Idivc => 14,
      Idivd => 15,
      Idive => 16);

   --  PLL1 control register
   type PLL1_CTRL_Register is record
      --  PLL1 power down
      PD         : ENUM_12 := Interfaces.LPC43xxC.CGU.Pll1_Powered_Down;
      --  Input clock bypass control
      BYPASS     : ENUM_13 := Interfaces.LPC43xxC.CGU.Input_Clock;
      --  Reserved. Do not write one to this bit.
      RESERVED   : PLL1_CTRL_RESERVED_Field := 16#0#;
      --  Reserved. Do not write one to these bits.
      RESERVED_1 : PLL1_CTRL_RESERVED_Field_1 := 16#0#;
      --  PLL feedback select.
      FBSEL      : ENUM_14 := Interfaces.LPC43xxC.CGU.Cco_Out;
      --  PLL direct CCO output
      DIRECT     : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Post-divider division ratio P. The value applied is 2xP.
      PSEL       : ENUM_15 := Interfaces.LPC43xxC.CGU.ENUM_1_1;
      --  Reserved
      RESERVED_2 : PLL1_CTRL_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Pre-divider division ratio N
      NSEL       : ENUM_16 := Interfaces.LPC43xxC.CGU.ENUM_1_1;
      --  Reserved
      RESERVED_3 : PLL1_CTRL_RESERVED_Field_2 := 16#0#;
      --  Feedback-divider division ratio (M) 00000000 = 1 00000001 = 2 ...
      --  11111111 = 256
      MSEL       : PLL1_CTRL_MSEL_Field := 16#0#;
      --  Clock-source selection.
      CLK_SEL    : ENUM_17 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_4 : PLL1_CTRL_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLL1_CTRL_Register use record
      PD         at 0 range 0 .. 0;
      BYPASS     at 0 range 1 .. 1;
      RESERVED   at 0 range 2 .. 2;
      RESERVED_1 at 0 range 3 .. 5;
      FBSEL      at 0 range 6 .. 6;
      DIRECT     at 0 range 7 .. 7;
      PSEL       at 0 range 8 .. 9;
      RESERVED_2 at 0 range 10 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      NSEL       at 0 range 12 .. 13;
      RESERVED_3 at 0 range 14 .. 15;
      MSEL       at 0 range 16 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_4 at 0 range 29 .. 31;
   end record;

   -------------------------
   -- IDIVA_CTRL_Register --
   -------------------------

   --  Integer divider A power down
   type ENUM_18 is
     (
      --  Enabled. IDIVA enabled (default)
      Enabled,
      --  Power-down
      Power_Down)
     with Size => 1;
   for ENUM_18 use
     (Enabled => 0,
      Power_Down => 1);

   subtype IDIVA_CTRL_RESERVED_Field is Interfaces.Bit_Types.Bit;

   --  Integer divider A divider values (1/(IDIV + 1))
   type ENUM_19 is
     (
      --  1 (default)
      Div1,
      --  2
      Div2,
      --  3
      Div3,
      --  4
      Div4)
     with Size => 2;
   for ENUM_19 use
     (Div1 => 0,
      Div2 => 1,
      Div3 => 2,
      Div4 => 3);

   subtype IDIVA_CTRL_RESERVED_Field_1 is Interfaces.Bit_Types.UInt7;
   subtype IDIVA_CTRL_RESERVED_Field_2 is Interfaces.Bit_Types.UInt12;

   --  Clock source selection. All other values are reserved.
   type ENUM_20 is
     (
      --  32 kHz oscillator
      ENUM_32_Khz_Oscillator,
      --  IRC (default)
      Irc,
      --  ENET_RX_CLK
      Enet_Rx_Clk,
      --  ENET_TX_CLK
      Enet_Tx_Clk,
      --  GP_CLKIN
      Gp_Clkin,
      --  Crystal oscillator
      Crystal_Oscillator,
      --  PLL0USB
      Pll0Usb,
      --  PLL0AUDIO
      Pll0Audio,
      --  PLL1
      Pll1)
     with Size => 5;
   for ENUM_20 use
     (ENUM_32_Khz_Oscillator => 0,
      Irc => 1,
      Enet_Rx_Clk => 2,
      Enet_Tx_Clk => 3,
      Gp_Clkin => 4,
      Crystal_Oscillator => 6,
      Pll0Usb => 7,
      Pll0Audio => 8,
      Pll1 => 9);

   subtype IDIVA_CTRL_RESERVED_Field_3 is Interfaces.Bit_Types.UInt3;

   --  Integer divider A control register
   type IDIVA_CTRL_Register is record
      --  Integer divider A power down
      PD         : ENUM_18 := Interfaces.LPC43xxC.CGU.Enabled;
      --  Reserved
      RESERVED   : IDIVA_CTRL_RESERVED_Field := 16#0#;
      --  Integer divider A divider values (1/(IDIV + 1))
      IDIV       : ENUM_19 := Interfaces.LPC43xxC.CGU.Div1;
      --  Reserved
      RESERVED_1 : IDIVA_CTRL_RESERVED_Field_1 := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_2 : IDIVA_CTRL_RESERVED_Field_2 := 16#0#;
      --  Clock source selection. All other values are reserved.
      CLK_SEL    : ENUM_20 := Interfaces.LPC43xxC.CGU.Irc;
      --  Reserved
      RESERVED_3 : IDIVA_CTRL_RESERVED_Field_3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDIVA_CTRL_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 1;
      IDIV       at 0 range 2 .. 3;
      RESERVED_1 at 0 range 4 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_2 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_3 at 0 range 29 .. 31;
   end record;

   -------------------------
   -- IDIVB_CTRL_Register --
   -------------------------

   subtype IDIVB_CTRL_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype IDIVB_CTRL_IDIV_Field is Interfaces.Bit_Types.UInt4;
   subtype IDIVB_CTRL_RESERVED_Field_1 is Interfaces.Bit_Types.UInt5;
   subtype IDIVB_CTRL_RESERVED_Field_2 is Interfaces.Bit_Types.UInt12;

   --  Clock-source selection. All other values are reserved.
   type ENUM_21 is
     (
      --  32 kHz oscillator
      ENUM_32_Khz_Oscillator,
      --  IRC (default)
      Irc_Default,
      --  ENET_RX_CLK
      Enet_Rx_Clk,
      --  ENET_TX_CLK
      Enet_Tx_Clk,
      --  GP_CLKIN
      Gp_Clkin,
      --  Crystal oscillator
      Crystal_Oscillator,
      --  PLL0AUDIO
      Pll0Audio,
      --  PLL1
      Pll1,
      --  IDIVA
      Idiva)
     with Size => 5;
   for ENUM_21 use
     (ENUM_32_Khz_Oscillator => 0,
      Irc_Default => 1,
      Enet_Rx_Clk => 2,
      Enet_Tx_Clk => 3,
      Gp_Clkin => 4,
      Crystal_Oscillator => 6,
      Pll0Audio => 8,
      Pll1 => 9,
      Idiva => 12);

   subtype IDIVB_CTRL_RESERVED_Field_3 is Interfaces.Bit_Types.UInt3;

   --  Integer divider B control register
   type IDIVB_CTRL_Register is record
      --  Integer divider power down
      PD         : ENUM_18 := Interfaces.LPC43xxC.CGU.Enabled;
      --  Reserved
      RESERVED   : IDIVB_CTRL_RESERVED_Field := 16#0#;
      --  Integer divider B, C, D divider values (1/(IDIV + 1)) 0000 = 1
      --  (default) 0001 = 2 ... 1111 = 16
      IDIV       : IDIVB_CTRL_IDIV_Field := 16#0#;
      --  Reserved
      RESERVED_1 : IDIVB_CTRL_RESERVED_Field_1 := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_2 : IDIVB_CTRL_RESERVED_Field_2 := 16#0#;
      --  Clock-source selection. All other values are reserved.
      CLK_SEL    : ENUM_21 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_3 : IDIVB_CTRL_RESERVED_Field_3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDIVB_CTRL_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 1;
      IDIV       at 0 range 2 .. 5;
      RESERVED_1 at 0 range 6 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_2 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_3 at 0 range 29 .. 31;
   end record;

   -------------------------
   -- IDIVC_CTRL_Register --
   -------------------------

   subtype IDIVC_CTRL_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype IDIVC_CTRL_IDIV_Field is Interfaces.Bit_Types.UInt4;
   subtype IDIVC_CTRL_RESERVED_Field_1 is Interfaces.Bit_Types.UInt5;
   subtype IDIVC_CTRL_RESERVED_Field_2 is Interfaces.Bit_Types.UInt12;
   subtype IDIVC_CTRL_RESERVED_Field_3 is Interfaces.Bit_Types.UInt3;

   --  Integer divider C control register
   type IDIVC_CTRL_Register is record
      --  Integer divider power down
      PD         : ENUM_18 := Interfaces.LPC43xxC.CGU.Enabled;
      --  Reserved
      RESERVED   : IDIVC_CTRL_RESERVED_Field := 16#0#;
      --  Integer divider B, C, D divider values (1/(IDIV + 1)) 0000 = 1
      --  (default) 0001 = 2 ... 1111 = 16
      IDIV       : IDIVC_CTRL_IDIV_Field := 16#0#;
      --  Reserved
      RESERVED_1 : IDIVC_CTRL_RESERVED_Field_1 := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_2 : IDIVC_CTRL_RESERVED_Field_2 := 16#0#;
      --  Clock-source selection. All other values are reserved.
      CLK_SEL    : ENUM_21 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_3 : IDIVC_CTRL_RESERVED_Field_3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDIVC_CTRL_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 1;
      IDIV       at 0 range 2 .. 5;
      RESERVED_1 at 0 range 6 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_2 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_3 at 0 range 29 .. 31;
   end record;

   -------------------------
   -- IDIVD_CTRL_Register --
   -------------------------

   subtype IDIVD_CTRL_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype IDIVD_CTRL_IDIV_Field is Interfaces.Bit_Types.UInt4;
   subtype IDIVD_CTRL_RESERVED_Field_1 is Interfaces.Bit_Types.UInt5;
   subtype IDIVD_CTRL_RESERVED_Field_2 is Interfaces.Bit_Types.UInt12;
   subtype IDIVD_CTRL_RESERVED_Field_3 is Interfaces.Bit_Types.UInt3;

   --  Integer divider D control register
   type IDIVD_CTRL_Register is record
      --  Integer divider power down
      PD         : ENUM_18 := Interfaces.LPC43xxC.CGU.Enabled;
      --  Reserved
      RESERVED   : IDIVD_CTRL_RESERVED_Field := 16#0#;
      --  Integer divider B, C, D divider values (1/(IDIV + 1)) 0000 = 1
      --  (default) 0001 = 2 ... 1111 = 16
      IDIV       : IDIVD_CTRL_IDIV_Field := 16#0#;
      --  Reserved
      RESERVED_1 : IDIVD_CTRL_RESERVED_Field_1 := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_2 : IDIVD_CTRL_RESERVED_Field_2 := 16#0#;
      --  Clock-source selection. All other values are reserved.
      CLK_SEL    : ENUM_21 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_3 : IDIVD_CTRL_RESERVED_Field_3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDIVD_CTRL_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 1;
      IDIV       at 0 range 2 .. 5;
      RESERVED_1 at 0 range 6 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_2 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_3 at 0 range 29 .. 31;
   end record;

   -------------------------
   -- IDIVE_CTRL_Register --
   -------------------------

   subtype IDIVE_CTRL_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype IDIVE_CTRL_IDIV_Field is Interfaces.Bit_Types.Byte;
   subtype IDIVE_CTRL_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;
   subtype IDIVE_CTRL_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Integer divider E control register
   type IDIVE_CTRL_Register is record
      --  Integer divider power down
      PD         : ENUM_18 := Interfaces.LPC43xxC.CGU.Enabled;
      --  Reserved
      RESERVED   : IDIVE_CTRL_RESERVED_Field := 16#0#;
      --  Integer divider E divider values (1/(IDIV + 1)) 00000000 = 1
      --  (default) 00000001 = 2 ... 111111111 = 256
      IDIV       : IDIVE_CTRL_IDIV_Field := 16#0#;
      --  Reserved
      RESERVED_1 : IDIVE_CTRL_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_2 : IDIVE_CTRL_RESERVED_Field_1 := 16#0#;
      --  Clock-source selection. All other values are reserved.
      CLK_SEL    : ENUM_21 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_3 : IDIVE_CTRL_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDIVE_CTRL_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 1;
      IDIV       at 0 range 2 .. 9;
      RESERVED_1 at 0 range 10 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_2 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_3 at 0 range 29 .. 31;
   end record;

   ----------------------------
   -- BASE_SAFE_CLK_Register --
   ----------------------------

   subtype BASE_SAFE_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_SAFE_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;

   --  Clock source selection. All other values are reserved.
   type ENUM_22 is
     (
      --  IRC (default)
      Irc_Default)
     with Size => 5;
   for ENUM_22 use
     (Irc_Default => 1);

   subtype BASE_SAFE_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage 0 control register for base clock BASE_SAFE_CLK
   type BASE_SAFE_CLK_Register is record
      --  Read-only. Output stage power down
      PD         : ENUM_18;
      --  Read-only. Reserved
      RESERVED   : BASE_SAFE_CLK_RESERVED_Field;
      --  Read-only. Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7;
      --  Read-only. Reserved
      RESERVED_1 : BASE_SAFE_CLK_RESERVED_Field_1;
      --  Read-only. Clock source selection. All other values are reserved.
      CLK_SEL    : ENUM_22;
      --  Read-only. Reserved
      RESERVED_2 : BASE_SAFE_CLK_RESERVED_Field_2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_SAFE_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   ----------------------------
   -- BASE_USB0_CLK_Register --
   ----------------------------

   subtype BASE_USB0_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_USB0_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;

   --  Clock-source selection.
   type ENUM_23 is
     (
      --  PLL0USB (default)
      Pll0Usb)
     with Size => 5;
   for ENUM_23 use
     (Pll0Usb => 7);

   subtype BASE_USB0_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage 1 control register for base clock BASE_USB0_CLK
   type BASE_USB0_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_18 := Interfaces.LPC43xxC.CGU.Enabled;
      --  Reserved
      RESERVED   : BASE_USB0_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_1 : BASE_USB0_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock-source selection.
      CLK_SEL    : ENUM_23 := Interfaces.LPC43xxC.CGU.Pll0Usb;
      --  Reserved
      RESERVED_2 : BASE_USB0_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_USB0_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   ------------------------------
   -- BASE_PERIPH_CLK_Register --
   ------------------------------

   subtype BASE_PERIPH_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_PERIPH_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;

   --  Clock source selection. All other values are reserved.
   type ENUM_24 is
     (
      --  32 kHz oscillator
      ENUM_32_Khz_Oscillator,
      --  IRC (default)
      Irc_Default,
      --  ENET_RX_CLK
      Enet_Rx_Clk,
      --  ENET_TX_CLK
      Enet_Tx_Clk,
      --  GP_CLKIN
      Gp_Clkin,
      --  Crystal oscillator
      Crystal_Oscillator,
      --  Reset value for the field
      Enum_Reset,
      --  PLL0AUDIO
      Pll0Audio,
      --  PLL1
      Pll1,
      --  IDIVA
      Idiva,
      --  IDIVB
      Idivb,
      --  IDIVC
      Idivc,
      --  IDIVD
      Idivd,
      --  IDIVE
      Idive)
     with Size => 5;
   for ENUM_24 use
     (ENUM_32_Khz_Oscillator => 0,
      Irc_Default => 1,
      Enet_Rx_Clk => 2,
      Enet_Tx_Clk => 3,
      Gp_Clkin => 4,
      Crystal_Oscillator => 6,
      Enum_Reset => 7,
      Pll0Audio => 8,
      Pll1 => 9,
      Idiva => 12,
      Idivb => 13,
      Idivc => 14,
      Idivd => 15,
      Idive => 16);

   subtype BASE_PERIPH_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage 2 control register for base clock BASE_PERIPH_CLK
   type BASE_PERIPH_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_18 := Interfaces.LPC43xxC.CGU.Enabled;
      --  Reserved
      RESERVED   : BASE_PERIPH_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_1 : BASE_PERIPH_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock source selection. All other values are reserved.
      CLK_SEL    : ENUM_24 := Enum_Reset;
      --  Reserved
      RESERVED_2 : BASE_PERIPH_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_PERIPH_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   ----------------------------
   -- BASE_USB1_CLK_Register --
   ----------------------------

   subtype BASE_USB1_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_USB1_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;

   --  Clock source selection. All other values are reserved.
   type ENUM_25 is
     (
      --  32 kHz oscillator
      ENUM_32_Khz_Oscillator,
      --  IRC (default)
      Irc,
      --  ENET_RX_CLK
      Enet_Rx_Clk,
      --  ENET_TX_CLK
      Enet_Tx_Clk,
      --  GP_CLKIN
      Gp_Clkin,
      --  Crystal oscillator
      Crystal_Oscillator,
      --  PLL0USB
      Pll0Usb,
      --  PLL0AUDIO
      Pll0Audio,
      --  PLL1
      Pll1,
      --  IDIVA
      Idiva,
      --  IDIVB
      Idivb,
      --  IDIVC
      Idivc,
      --  IDIVD
      Idivd,
      --  IDIVE
      Idive)
     with Size => 5;
   for ENUM_25 use
     (ENUM_32_Khz_Oscillator => 0,
      Irc => 1,
      Enet_Rx_Clk => 2,
      Enet_Tx_Clk => 3,
      Gp_Clkin => 4,
      Crystal_Oscillator => 6,
      Pll0Usb => 7,
      Pll0Audio => 8,
      Pll1 => 9,
      Idiva => 12,
      Idivb => 13,
      Idivc => 14,
      Idivd => 15,
      Idive => 16);

   subtype BASE_USB1_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage 3 control register for base clock BASE_USB1_CLK
   type BASE_USB1_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_18 := Interfaces.LPC43xxC.CGU.Enabled;
      --  Reserved
      RESERVED   : BASE_USB1_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_1 : BASE_USB1_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock source selection. All other values are reserved.
      CLK_SEL    : ENUM_25 := Interfaces.LPC43xxC.CGU.Irc;
      --  Reserved
      RESERVED_2 : BASE_USB1_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_USB1_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   --------------------------
   -- BASE_M4_CLK_Register --
   --------------------------

   --  Output stage power down
   type ENUM_26 is
     (
      --  Output stage enabled (default)
      Output_Stage_Enabled,
      --  power-down
      Power_Down)
     with Size => 1;
   for ENUM_26 use
     (Output_Stage_Enabled => 0,
      Power_Down => 1);

   subtype BASE_M4_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_M4_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;

   --  Clock source selection. All other values are reserved.
   type ENUM_27 is
     (
      --  32 kHz oscillator
      ENUM_32_Khz_Oscillator,
      --  IRC (default)
      Irc_Default,
      --  ENET_RX_CLK
      Enet_Rx_Clk,
      --  ENET_TX_CLK
      Enet_Tx_Clk,
      --  GP_CLKIN
      Gp_Clkin,
      --  Crystal oscillator
      Crystal_Oscillator,
      --  PLL0 (for audio)
      Pll0_For_Audio,
      --  PLL1
      Pll1,
      --  IDIVA
      Idiva,
      --  IDIVB
      Idivb,
      --  IDIVC
      Idivc,
      --  IDIVD
      Idivd,
      --  IDIVE
      Idive)
     with Size => 5;
   for ENUM_27 use
     (ENUM_32_Khz_Oscillator => 0,
      Irc_Default => 1,
      Enet_Rx_Clk => 2,
      Enet_Tx_Clk => 3,
      Gp_Clkin => 4,
      Crystal_Oscillator => 6,
      Pll0_For_Audio => 8,
      Pll1 => 9,
      Idiva => 12,
      Idivb => 13,
      Idivc => 14,
      Idivd => 15,
      Idive => 16);

   subtype BASE_M4_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage BASE_M4_CLK control register
   type BASE_M4_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_26 := Interfaces.LPC43xxC.CGU.Output_Stage_Enabled;
      --  Reserved
      RESERVED   : BASE_M4_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_1 : BASE_M4_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock source selection. All other values are reserved.
      CLK_SEL    : ENUM_27 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_2 : BASE_M4_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_M4_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   -----------------------------
   -- BASE_SPIFI_CLK_Register --
   -----------------------------

   subtype BASE_SPIFI_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_SPIFI_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;
   subtype BASE_SPIFI_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage BASE_SPIFI_CLK control register
   type BASE_SPIFI_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_26 := Interfaces.LPC43xxC.CGU.Output_Stage_Enabled;
      --  Reserved
      RESERVED   : BASE_SPIFI_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_1 : BASE_SPIFI_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock source selection. All other values are reserved.
      CLK_SEL    : ENUM_27 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_2 : BASE_SPIFI_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_SPIFI_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   ---------------------------
   -- BASE_SPI_CLK_Register --
   ---------------------------

   subtype BASE_SPI_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_SPI_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;
   subtype BASE_SPI_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage BASE_SPI_CLK control register
   type BASE_SPI_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_26 := Interfaces.LPC43xxC.CGU.Output_Stage_Enabled;
      --  Reserved
      RESERVED   : BASE_SPI_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_1 : BASE_SPI_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock source selection. All other values are reserved.
      CLK_SEL    : ENUM_27 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_2 : BASE_SPI_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_SPI_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   ------------------------------
   -- BASE_PHY_RX_CLK_Register --
   ------------------------------

   subtype BASE_PHY_RX_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_PHY_RX_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;
   subtype BASE_PHY_RX_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage BASE_PHY_RX_CLK control register
   type BASE_PHY_RX_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_26 := Interfaces.LPC43xxC.CGU.Output_Stage_Enabled;
      --  Reserved
      RESERVED   : BASE_PHY_RX_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_1 : BASE_PHY_RX_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock source selection. All other values are reserved.
      CLK_SEL    : ENUM_27 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_2 : BASE_PHY_RX_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_PHY_RX_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   ------------------------------
   -- BASE_PHY_TX_CLK_Register --
   ------------------------------

   subtype BASE_PHY_TX_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_PHY_TX_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;
   subtype BASE_PHY_TX_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage BASE_PHY_TX_CLK control register
   type BASE_PHY_TX_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_26 := Interfaces.LPC43xxC.CGU.Output_Stage_Enabled;
      --  Reserved
      RESERVED   : BASE_PHY_TX_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_1 : BASE_PHY_TX_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock source selection. All other values are reserved.
      CLK_SEL    : ENUM_27 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_2 : BASE_PHY_TX_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_PHY_TX_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   ----------------------------
   -- BASE_APB1_CLK_Register --
   ----------------------------

   subtype BASE_APB1_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_APB1_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;
   subtype BASE_APB1_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage BASE_APB1_CLK control register
   type BASE_APB1_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_26 := Interfaces.LPC43xxC.CGU.Output_Stage_Enabled;
      --  Reserved
      RESERVED   : BASE_APB1_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_1 : BASE_APB1_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock source selection. All other values are reserved.
      CLK_SEL    : ENUM_27 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_2 : BASE_APB1_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_APB1_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   ----------------------------
   -- BASE_APB3_CLK_Register --
   ----------------------------

   subtype BASE_APB3_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_APB3_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;
   subtype BASE_APB3_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage BASE_APB3_CLK control register
   type BASE_APB3_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_26 := Interfaces.LPC43xxC.CGU.Output_Stage_Enabled;
      --  Reserved
      RESERVED   : BASE_APB3_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_1 : BASE_APB3_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock source selection. All other values are reserved.
      CLK_SEL    : ENUM_27 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_2 : BASE_APB3_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_APB3_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   ---------------------------
   -- BASE_LCD_CLK_Register --
   ---------------------------

   subtype BASE_LCD_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_LCD_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;
   subtype BASE_LCD_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage BASE_LCD_CLK control register
   type BASE_LCD_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_26 := Interfaces.LPC43xxC.CGU.Output_Stage_Enabled;
      --  Reserved
      RESERVED   : BASE_LCD_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_1 : BASE_LCD_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock source selection. All other values are reserved.
      CLK_SEL    : ENUM_27 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_2 : BASE_LCD_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_LCD_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   ----------------------------
   -- BASE_SDIO_CLK_Register --
   ----------------------------

   subtype BASE_SDIO_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_SDIO_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;
   subtype BASE_SDIO_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage BASE_SDIO_CLK control register
   type BASE_SDIO_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_26 := Interfaces.LPC43xxC.CGU.Output_Stage_Enabled;
      --  Reserved
      RESERVED   : BASE_SDIO_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_1 : BASE_SDIO_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock source selection. All other values are reserved.
      CLK_SEL    : ENUM_27 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_2 : BASE_SDIO_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_SDIO_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   ----------------------------
   -- BASE_SSP0_CLK_Register --
   ----------------------------

   subtype BASE_SSP0_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_SSP0_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;
   subtype BASE_SSP0_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage BASE_SSP0_CLK control register
   type BASE_SSP0_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_26 := Interfaces.LPC43xxC.CGU.Output_Stage_Enabled;
      --  Reserved
      RESERVED   : BASE_SSP0_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_1 : BASE_SSP0_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock source selection. All other values are reserved.
      CLK_SEL    : ENUM_27 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_2 : BASE_SSP0_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_SSP0_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   ----------------------------
   -- BASE_SSP1_CLK_Register --
   ----------------------------

   subtype BASE_SSP1_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_SSP1_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;
   subtype BASE_SSP1_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage BASE_SSP1_CLK control register
   type BASE_SSP1_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_26 := Interfaces.LPC43xxC.CGU.Output_Stage_Enabled;
      --  Reserved
      RESERVED   : BASE_SSP1_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_1 : BASE_SSP1_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock source selection. All other values are reserved.
      CLK_SEL    : ENUM_27 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_2 : BASE_SSP1_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_SSP1_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   -----------------------------
   -- BASE_UART0_CLK_Register --
   -----------------------------

   subtype BASE_UART0_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_UART0_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;
   subtype BASE_UART0_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage BASE_UART0_CLK control register
   type BASE_UART0_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_26 := Interfaces.LPC43xxC.CGU.Output_Stage_Enabled;
      --  Reserved
      RESERVED   : BASE_UART0_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_1 : BASE_UART0_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock source selection. All other values are reserved.
      CLK_SEL    : ENUM_27 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_2 : BASE_UART0_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_UART0_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   -----------------------------
   -- BASE_UART1_CLK_Register --
   -----------------------------

   subtype BASE_UART1_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_UART1_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;
   subtype BASE_UART1_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage BASE_UART1_CLK control register
   type BASE_UART1_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_26 := Interfaces.LPC43xxC.CGU.Output_Stage_Enabled;
      --  Reserved
      RESERVED   : BASE_UART1_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_1 : BASE_UART1_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock source selection. All other values are reserved.
      CLK_SEL    : ENUM_27 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_2 : BASE_UART1_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_UART1_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   -----------------------------
   -- BASE_UART2_CLK_Register --
   -----------------------------

   subtype BASE_UART2_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_UART2_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;
   subtype BASE_UART2_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage BASE_UART2_CLK control register
   type BASE_UART2_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_26 := Interfaces.LPC43xxC.CGU.Output_Stage_Enabled;
      --  Reserved
      RESERVED   : BASE_UART2_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_1 : BASE_UART2_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock source selection. All other values are reserved.
      CLK_SEL    : ENUM_27 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_2 : BASE_UART2_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_UART2_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   -----------------------------
   -- BASE_UART3_CLK_Register --
   -----------------------------

   subtype BASE_UART3_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_UART3_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;
   subtype BASE_UART3_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage BASE_UART3_CLK control register
   type BASE_UART3_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_26 := Interfaces.LPC43xxC.CGU.Output_Stage_Enabled;
      --  Reserved
      RESERVED   : BASE_UART3_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_7 := Interfaces.LPC43xxC.CGU.Disabled;
      --  Reserved
      RESERVED_1 : BASE_UART3_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock source selection. All other values are reserved.
      CLK_SEL    : ENUM_27 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_2 : BASE_UART3_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_UART3_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   ---------------------------
   -- BASE_OUT_CLK_Register --
   ---------------------------

   subtype BASE_OUT_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;

   --  Block clock automatically during frequency change
   type ENUM_28 is
     (
      --  Autoblocking disabled
      Autoblocking_Disable,
      --  Autoblocking enabled
      Autoblocking_Enabled)
     with Size => 1;
   for ENUM_28 use
     (Autoblocking_Disable => 0,
      Autoblocking_Enabled => 1);

   subtype BASE_OUT_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;

   --  Clock-source selection.
   type ENUM_29 is
     (
      --  32 kHz oscillator
      ENUM_32_Khz_Oscillator,
      --  IRC (default)
      Irc_Default,
      --  ENET_RX_CLK
      Enet_Rx_Clk,
      --  ENET_TX_CLK
      Enet_Tx_Clk,
      --  GP_CLKIN
      Gp_Clkin,
      --  Reserved
      Reserved,
      --  Crystal oscillator
      Crystal_Oscillator,
      --  PLL0 (for USB)
      Pll0_For_Usb,
      --  PLL0 (for audio)
      Pll0_For_Audio,
      --  PLL1
      Pll1,
      --  IDIVA
      Idiva,
      --  IDIVB
      Idivb,
      --  IDIVC
      Idivc,
      --  IDIVD
      Idivd,
      --  IDIVE
      Idive)
     with Size => 5;
   for ENUM_29 use
     (ENUM_32_Khz_Oscillator => 0,
      Irc_Default => 1,
      Enet_Rx_Clk => 2,
      Enet_Tx_Clk => 3,
      Gp_Clkin => 4,
      Reserved => 5,
      Crystal_Oscillator => 6,
      Pll0_For_Usb => 7,
      Pll0_For_Audio => 8,
      Pll1 => 9,
      Idiva => 12,
      Idivb => 13,
      Idivc => 14,
      Idivd => 15,
      Idive => 16);

   subtype BASE_OUT_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage 20 control register for base clock BASE_OUT_CLK
   type BASE_OUT_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_26 := Interfaces.LPC43xxC.CGU.Output_Stage_Enabled;
      --  Reserved
      RESERVED   : BASE_OUT_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_28 := Interfaces.LPC43xxC.CGU.Autoblocking_Disable;
      --  Reserved
      RESERVED_1 : BASE_OUT_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock-source selection.
      CLK_SEL    : ENUM_29 := Interfaces.LPC43xxC.CGU.Irc_Default;
      --  Reserved
      RESERVED_2 : BASE_OUT_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_OUT_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   -----------------------------
   -- BASE_AUDIO_CLK_Register --
   -----------------------------

   subtype BASE_AUDIO_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_AUDIO_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;

   --  Clock-source selection.
   type ENUM_30 is
     (
      --  32 kHz oscillator
      ENUM_32_Khz_Oscillator,
      --  IRC (default)
      Irc_Default,
      --  ENET_RX_CLK
      Enet_Rx_Clk,
      --  ENET_TX_CLK
      Enet_Tx_Clk,
      --  GP_CLKIN
      Gp_Clkin,
      --  Reserved
      Reserved,
      --  Crystal oscillator
      Crystal_Oscillator,
      --  Reserved
      Reserved_1,
      --  PLL0 (for audio)
      Pll0_For_Audio,
      --  PLL1
      Pll1,
      --  IDIVA
      Idiva,
      --  IDIVB
      Idivb,
      --  IDIVC
      Idivc,
      --  IDIVD
      Idivd,
      --  IDIVE
      Idive)
     with Size => 5;
   for ENUM_30 use
     (ENUM_32_Khz_Oscillator => 0,
      Irc_Default => 1,
      Enet_Rx_Clk => 2,
      Enet_Tx_Clk => 3,
      Gp_Clkin => 4,
      Reserved => 5,
      Crystal_Oscillator => 6,
      Reserved_1 => 7,
      Pll0_For_Audio => 8,
      Pll1 => 9,
      Idiva => 12,
      Idivb => 13,
      Idivc => 14,
      Idivd => 15,
      Idive => 16);

   subtype BASE_AUDIO_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage 25 control register for base clock BASE_AUDIO_CLK
   type BASE_AUDIO_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_26 := Interfaces.LPC43xxC.CGU.Output_Stage_Enabled;
      --  Reserved
      RESERVED   : BASE_AUDIO_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_28 := Interfaces.LPC43xxC.CGU.Autoblocking_Disable;
      --  Reserved
      RESERVED_1 : BASE_AUDIO_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock-source selection.
      CLK_SEL    : ENUM_30 := Interfaces.LPC43xxC.CGU.ENUM_32_Khz_Oscillator;
      --  Reserved
      RESERVED_2 : BASE_AUDIO_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_AUDIO_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   --------------------------------
   -- BASE_CGU_OUT0_CLK_Register --
   --------------------------------

   subtype BASE_CGU_OUT0_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_CGU_OUT0_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;
   subtype BASE_CGU_OUT0_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage 25 control register for base clock BASE_CGU_OUT0_CLK
   type BASE_CGU_OUT0_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_26 := Interfaces.LPC43xxC.CGU.Output_Stage_Enabled;
      --  Reserved
      RESERVED   : BASE_CGU_OUT0_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_28 := Interfaces.LPC43xxC.CGU.Autoblocking_Disable;
      --  Reserved
      RESERVED_1 : BASE_CGU_OUT0_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock-source selection.
      CLK_SEL    : ENUM_30 := Interfaces.LPC43xxC.CGU.ENUM_32_Khz_Oscillator;
      --  Reserved
      RESERVED_2 : BASE_CGU_OUT0_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_CGU_OUT0_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   --------------------------------
   -- BASE_CGU_OUT1_CLK_Register --
   --------------------------------

   subtype BASE_CGU_OUT1_CLK_RESERVED_Field is Interfaces.Bit_Types.UInt10;
   subtype BASE_CGU_OUT1_CLK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt12;
   subtype BASE_CGU_OUT1_CLK_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;

   --  Output stage 25 control register for base clock BASE_CGU_OUT1_CLK
   type BASE_CGU_OUT1_CLK_Register is record
      --  Output stage power down
      PD         : ENUM_26 := Interfaces.LPC43xxC.CGU.Output_Stage_Enabled;
      --  Reserved
      RESERVED   : BASE_CGU_OUT1_CLK_RESERVED_Field := 16#0#;
      --  Block clock automatically during frequency change
      AUTOBLOCK  : ENUM_28 := Interfaces.LPC43xxC.CGU.Autoblocking_Disable;
      --  Reserved
      RESERVED_1 : BASE_CGU_OUT1_CLK_RESERVED_Field_1 := 16#0#;
      --  Clock-source selection.
      CLK_SEL    : ENUM_30 := Interfaces.LPC43xxC.CGU.ENUM_32_Khz_Oscillator;
      --  Reserved
      RESERVED_2 : BASE_CGU_OUT1_CLK_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_CGU_OUT1_CLK_Register use record
      PD         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 10;
      AUTOBLOCK  at 0 range 11 .. 11;
      RESERVED_1 at 0 range 12 .. 23;
      CLK_SEL    at 0 range 24 .. 28;
      RESERVED_2 at 0 range 29 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Clock Generation Unit (CGU)
   type CGU_Peripheral is record
      --  Frequency monitor register
      FREQ_MON          : FREQ_MON_Register;
      --  Crystal oscillator control register
      XTAL_OSC_CTRL     : XTAL_OSC_CTRL_Register;
      --  PLL0USB status register
      PLL0USB_STAT      : PLL0USB_STAT_Register;
      --  PLL0USB control register
      PLL0USB_CTRL      : PLL0USB_CTRL_Register;
      --  PLL0USB M-divider register
      PLL0USB_MDIV      : PLL0USB_MDIV_Register;
      --  PLL0USB N/P-divider register
      PLL0USB_NP_DIV    : PLL0USB_NP_DIV_Register;
      --  PLL0AUDIO status register
      PLL0AUDIO_STAT    : PLL0AUDIO_STAT_Register;
      --  PLL0AUDIO control register
      PLL0AUDIO_CTRL    : PLL0AUDIO_CTRL_Register;
      --  PLL0AUDIO M-divider register
      PLL0AUDIO_MDIV    : PLL0AUDIO_MDIV_Register;
      --  PLL0AUDIO N/P-divider register
      PLL0AUDIO_NP_DIV  : PLL0AUDIO_NP_DIV_Register;
      --  PLL0AUDIO fractional divider register
      PLL0AUDIO_FRAC    : PLL0AUDIO_FRAC_Register;
      --  PLL1 status register
      PLL1_STAT         : PLL1_STAT_Register;
      --  PLL1 control register
      PLL1_CTRL         : PLL1_CTRL_Register;
      --  Integer divider A control register
      IDIVA_CTRL        : IDIVA_CTRL_Register;
      --  Integer divider B control register
      IDIVB_CTRL        : IDIVB_CTRL_Register;
      --  Integer divider C control register
      IDIVC_CTRL        : IDIVC_CTRL_Register;
      --  Integer divider D control register
      IDIVD_CTRL        : IDIVD_CTRL_Register;
      --  Integer divider E control register
      IDIVE_CTRL        : IDIVE_CTRL_Register;
      --  Output stage 0 control register for base clock BASE_SAFE_CLK
      BASE_SAFE_CLK     : BASE_SAFE_CLK_Register;
      --  Output stage 1 control register for base clock BASE_USB0_CLK
      BASE_USB0_CLK     : BASE_USB0_CLK_Register;
      --  Output stage 2 control register for base clock BASE_PERIPH_CLK
      BASE_PERIPH_CLK   : BASE_PERIPH_CLK_Register;
      --  Output stage 3 control register for base clock BASE_USB1_CLK
      BASE_USB1_CLK     : BASE_USB1_CLK_Register;
      --  Output stage BASE_M4_CLK control register
      BASE_M4_CLK       : BASE_M4_CLK_Register;
      --  Output stage BASE_SPIFI_CLK control register
      BASE_SPIFI_CLK    : BASE_SPIFI_CLK_Register;
      --  Output stage BASE_SPI_CLK control register
      BASE_SPI_CLK      : BASE_SPI_CLK_Register;
      --  Output stage BASE_PHY_RX_CLK control register
      BASE_PHY_RX_CLK   : BASE_PHY_RX_CLK_Register;
      --  Output stage BASE_PHY_TX_CLK control register
      BASE_PHY_TX_CLK   : BASE_PHY_TX_CLK_Register;
      --  Output stage BASE_APB1_CLK control register
      BASE_APB1_CLK     : BASE_APB1_CLK_Register;
      --  Output stage BASE_APB3_CLK control register
      BASE_APB3_CLK     : BASE_APB3_CLK_Register;
      --  Output stage BASE_LCD_CLK control register
      BASE_LCD_CLK      : BASE_LCD_CLK_Register;
      --  Output stage BASE_SDIO_CLK control register
      BASE_SDIO_CLK     : BASE_SDIO_CLK_Register;
      --  Output stage BASE_SSP0_CLK control register
      BASE_SSP0_CLK     : BASE_SSP0_CLK_Register;
      --  Output stage BASE_SSP1_CLK control register
      BASE_SSP1_CLK     : BASE_SSP1_CLK_Register;
      --  Output stage BASE_UART0_CLK control register
      BASE_UART0_CLK    : BASE_UART0_CLK_Register;
      --  Output stage BASE_UART1_CLK control register
      BASE_UART1_CLK    : BASE_UART1_CLK_Register;
      --  Output stage BASE_UART2_CLK control register
      BASE_UART2_CLK    : BASE_UART2_CLK_Register;
      --  Output stage BASE_UART3_CLK control register
      BASE_UART3_CLK    : BASE_UART3_CLK_Register;
      --  Output stage 20 control register for base clock BASE_OUT_CLK
      BASE_OUT_CLK      : BASE_OUT_CLK_Register;
      --  Output stage 25 control register for base clock BASE_AUDIO_CLK
      BASE_AUDIO_CLK    : BASE_AUDIO_CLK_Register;
      --  Output stage 25 control register for base clock BASE_CGU_OUT0_CLK
      BASE_CGU_OUT0_CLK : BASE_CGU_OUT0_CLK_Register;
      --  Output stage 25 control register for base clock BASE_CGU_OUT1_CLK
      BASE_CGU_OUT1_CLK : BASE_CGU_OUT1_CLK_Register;
   end record
     with Volatile;

   for CGU_Peripheral use record
      FREQ_MON          at 20 range 0 .. 31;
      XTAL_OSC_CTRL     at 24 range 0 .. 31;
      PLL0USB_STAT      at 28 range 0 .. 31;
      PLL0USB_CTRL      at 32 range 0 .. 31;
      PLL0USB_MDIV      at 36 range 0 .. 31;
      PLL0USB_NP_DIV    at 40 range 0 .. 31;
      PLL0AUDIO_STAT    at 44 range 0 .. 31;
      PLL0AUDIO_CTRL    at 48 range 0 .. 31;
      PLL0AUDIO_MDIV    at 52 range 0 .. 31;
      PLL0AUDIO_NP_DIV  at 56 range 0 .. 31;
      PLL0AUDIO_FRAC    at 60 range 0 .. 31;
      PLL1_STAT         at 64 range 0 .. 31;
      PLL1_CTRL         at 68 range 0 .. 31;
      IDIVA_CTRL        at 72 range 0 .. 31;
      IDIVB_CTRL        at 76 range 0 .. 31;
      IDIVC_CTRL        at 80 range 0 .. 31;
      IDIVD_CTRL        at 84 range 0 .. 31;
      IDIVE_CTRL        at 88 range 0 .. 31;
      BASE_SAFE_CLK     at 92 range 0 .. 31;
      BASE_USB0_CLK     at 96 range 0 .. 31;
      BASE_PERIPH_CLK   at 100 range 0 .. 31;
      BASE_USB1_CLK     at 104 range 0 .. 31;
      BASE_M4_CLK       at 108 range 0 .. 31;
      BASE_SPIFI_CLK    at 112 range 0 .. 31;
      BASE_SPI_CLK      at 116 range 0 .. 31;
      BASE_PHY_RX_CLK   at 120 range 0 .. 31;
      BASE_PHY_TX_CLK   at 124 range 0 .. 31;
      BASE_APB1_CLK     at 128 range 0 .. 31;
      BASE_APB3_CLK     at 132 range 0 .. 31;
      BASE_LCD_CLK      at 136 range 0 .. 31;
      BASE_SDIO_CLK     at 144 range 0 .. 31;
      BASE_SSP0_CLK     at 148 range 0 .. 31;
      BASE_SSP1_CLK     at 152 range 0 .. 31;
      BASE_UART0_CLK    at 156 range 0 .. 31;
      BASE_UART1_CLK    at 160 range 0 .. 31;
      BASE_UART2_CLK    at 164 range 0 .. 31;
      BASE_UART3_CLK    at 168 range 0 .. 31;
      BASE_OUT_CLK      at 172 range 0 .. 31;
      BASE_AUDIO_CLK    at 192 range 0 .. 31;
      BASE_CGU_OUT0_CLK at 196 range 0 .. 31;
      BASE_CGU_OUT1_CLK at 200 range 0 .. 31;
   end record;

   --  Clock Generation Unit (CGU)
   CGU_Periph : aliased CGU_Peripheral
     with Import, Address => CGU_Base;

end Interfaces.LPC43xxC.CGU;
