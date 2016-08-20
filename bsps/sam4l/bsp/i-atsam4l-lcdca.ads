--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.LCDCA is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -----------------------
   -- LCDCA_CR_Register --
   -----------------------

   subtype CR_DIS_Field is Interfaces.Bit_Types.Bit;
   subtype CR_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_FC0DIS_Field is Interfaces.Bit_Types.Bit;
   subtype CR_FC0EN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_FC1DIS_Field is Interfaces.Bit_Types.Bit;
   subtype CR_FC1EN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_FC2DIS_Field is Interfaces.Bit_Types.Bit;
   subtype CR_FC2EN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_CDM_Field is Interfaces.Bit_Types.Bit;
   subtype CR_WDIS_Field is Interfaces.Bit_Types.Bit;
   subtype CR_WEN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_BSTART_Field is Interfaces.Bit_Types.Bit;
   subtype CR_BSTOP_Field is Interfaces.Bit_Types.Bit;
   subtype CR_CSTART_Field is Interfaces.Bit_Types.Bit;
   subtype CR_CSTOP_Field is Interfaces.Bit_Types.Bit;

   --  Control Register
   type LCDCA_CR_Register is record
      --  Write-only. Disable
      DIS            : CR_DIS_Field := 16#0#;
      --  Write-only. Enable
      EN             : CR_EN_Field := 16#0#;
      --  Write-only. Frame Counter 0 Disable
      FC0DIS         : CR_FC0DIS_Field := 16#0#;
      --  Write-only. Frame Counter 0 Enable
      FC0EN          : CR_FC0EN_Field := 16#0#;
      --  Write-only. Frame Counter 1 Disable
      FC1DIS         : CR_FC1DIS_Field := 16#0#;
      --  Write-only. Frame Counter 1 Enable
      FC1EN          : CR_FC1EN_Field := 16#0#;
      --  Write-only. Frame Counter 2 Disable
      FC2DIS         : CR_FC2DIS_Field := 16#0#;
      --  Write-only. Frame Counter 2 Enable
      FC2EN          : CR_FC2EN_Field := 16#0#;
      --  Write-only. Clear Display Memory
      CDM            : CR_CDM_Field := 16#0#;
      --  Write-only. Wake up Disable
      WDIS           : CR_WDIS_Field := 16#0#;
      --  Write-only. Wake up Enable
      WEN            : CR_WEN_Field := 16#0#;
      --  Write-only. Blinking Start
      BSTART         : CR_BSTART_Field := 16#0#;
      --  Write-only. Blinking Stop
      BSTOP          : CR_BSTOP_Field := 16#0#;
      --  Write-only. Circular Shift Start
      CSTART         : CR_CSTART_Field := 16#0#;
      --  Write-only. Circular Shift Stop
      CSTOP          : CR_CSTOP_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_CR_Register use record
      DIS            at 0 range 0 .. 0;
      EN             at 0 range 1 .. 1;
      FC0DIS         at 0 range 2 .. 2;
      FC0EN          at 0 range 3 .. 3;
      FC1DIS         at 0 range 4 .. 4;
      FC1EN          at 0 range 5 .. 5;
      FC2DIS         at 0 range 6 .. 6;
      FC2EN          at 0 range 7 .. 7;
      CDM            at 0 range 8 .. 8;
      WDIS           at 0 range 9 .. 9;
      WEN            at 0 range 10 .. 10;
      BSTART         at 0 range 11 .. 11;
      BSTOP          at 0 range 12 .. 12;
      CSTART         at 0 range 13 .. 13;
      CSTOP          at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   ------------------------
   -- LCDCA_CFG_Register --
   ------------------------

   subtype CFG_XBIAS_Field is Interfaces.Bit_Types.Bit;
   subtype CFG_WMOD_Field is Interfaces.Bit_Types.Bit;
   subtype CFG_BLANK_Field is Interfaces.Bit_Types.Bit;
   subtype CFG_LOCK_Field is Interfaces.Bit_Types.Bit;
   subtype CFG_DUTY_Field is Interfaces.Bit_Types.UInt2;
   subtype CFG_FCST_Field is Interfaces.Bit_Types.UInt6;
   subtype CFG_NSU_Field is Interfaces.Bit_Types.UInt6;

   --  Configuration Register
   type LCDCA_CFG_Register is record
      --  External Bias Generation
      XBIAS          : CFG_XBIAS_Field := 16#0#;
      --  Waveform Mode
      WMOD           : CFG_WMOD_Field := 16#0#;
      --  Blank LCD
      BLANK          : CFG_BLANK_Field := 16#0#;
      --  Lock
      LOCK           : CFG_LOCK_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Duty Select
      DUTY           : CFG_DUTY_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Fine Contrast
      FCST           : CFG_FCST_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Number of Segment Terminals in Use
      NSU            : CFG_NSU_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_CFG_Register use record
      XBIAS          at 0 range 0 .. 0;
      WMOD           at 0 range 1 .. 1;
      BLANK          at 0 range 2 .. 2;
      LOCK           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      DUTY           at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      FCST           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      NSU            at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   ------------------------
   -- LCDCA_TIM_Register --
   ------------------------

   subtype TIM_PRESC_Field is Interfaces.Bit_Types.Bit;
   subtype TIM_CLKDIV_Field is Interfaces.Bit_Types.UInt3;
   subtype TIM_FC0_Field is Interfaces.Bit_Types.UInt5;
   subtype TIM_FC0PB_Field is Interfaces.Bit_Types.Bit;
   subtype TIM_FC1_Field is Interfaces.Bit_Types.UInt5;
   subtype TIM_FC2_Field is Interfaces.Bit_Types.UInt5;

   --  Timing Register
   type LCDCA_TIM_Register is record
      --  LCD Prescaler Select
      PRESC          : TIM_PRESC_Field := 16#0#;
      --  LCD Clock Division
      CLKDIV         : TIM_CLKDIV_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Frame Counter 0
      FC0            : TIM_FC0_Field := 16#0#;
      --  Frame Counter 0 Prescaler Bypass
      FC0PB          : TIM_FC0PB_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Frame Counter 1
      FC1            : TIM_FC1_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Frame Counter 2
      FC2            : TIM_FC2_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_TIM_Register use record
      PRESC          at 0 range 0 .. 0;
      CLKDIV         at 0 range 1 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      FC0            at 0 range 8 .. 12;
      FC0PB          at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FC1            at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      FC2            at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   -----------------------
   -- LCDCA_SR_Register --
   -----------------------

   subtype SR_FC0R_Field is Interfaces.Bit_Types.Bit;
   subtype SR_FC0S_Field is Interfaces.Bit_Types.Bit;
   subtype SR_FC1S_Field is Interfaces.Bit_Types.Bit;
   subtype SR_FC2S_Field is Interfaces.Bit_Types.Bit;
   subtype SR_EN_Field is Interfaces.Bit_Types.Bit;
   subtype SR_WEN_Field is Interfaces.Bit_Types.Bit;
   subtype SR_BLKS_Field is Interfaces.Bit_Types.Bit;
   subtype SR_CSRS_Field is Interfaces.Bit_Types.Bit;
   subtype SR_CPS_Field is Interfaces.Bit_Types.Bit;

   --  Status Register
   type LCDCA_SR_Register is record
      --  Read-only. Frame Counter 0 Rollover
      FC0R          : SR_FC0R_Field;
      --  Read-only. Frame Counter 0 Status
      FC0S          : SR_FC0S_Field;
      --  Read-only. Frame Counter 1 Status
      FC1S          : SR_FC1S_Field;
      --  Read-only. Frame Counter 2 Status
      FC2S          : SR_FC2S_Field;
      --  Read-only. LCDCA Status
      EN            : SR_EN_Field;
      --  Read-only. Wake up Status
      WEN           : SR_WEN_Field;
      --  Read-only. Blink Status
      BLKS          : SR_BLKS_Field;
      --  Read-only. Circular Shift Register Status
      CSRS          : SR_CSRS_Field;
      --  Read-only. Charge Pump Status
      CPS           : SR_CPS_Field;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_SR_Register use record
      FC0R          at 0 range 0 .. 0;
      FC0S          at 0 range 1 .. 1;
      FC1S          at 0 range 2 .. 2;
      FC2S          at 0 range 3 .. 3;
      EN            at 0 range 4 .. 4;
      WEN           at 0 range 5 .. 5;
      BLKS          at 0 range 6 .. 6;
      CSRS          at 0 range 7 .. 7;
      CPS           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   ------------------------
   -- LCDCA_SCR_Register --
   ------------------------

   subtype SCR_FC0R_Field is Interfaces.Bit_Types.Bit;

   --  Status Clear Register
   type LCDCA_SCR_Register is record
      --  Write-only. Frame Counter 0 Rollover
      FC0R          : SCR_FC0R_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_SCR_Register use record
      FC0R          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ------------------
   -- DRH_Register --
   ------------------

   subtype DRH0_DATA_Field is Interfaces.Bit_Types.Byte;

   --  Data Register High 0
   type DRH_Register is record
      --  Segments Value
      DATA          : DRH0_DATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DRH_Register use record
      DATA          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -------------------------
   -- LCDCA_IADR_Register --
   -------------------------

   subtype IADR_DATA_Field is Interfaces.Bit_Types.Byte;
   subtype IADR_DMASK_Field is Interfaces.Bit_Types.Byte;
   subtype IADR_OFF_Field is Interfaces.Bit_Types.UInt5;

   --  Indirect Access Data Register
   type LCDCA_IADR_Register is record
      --  Write-only. Segments Value
      DATA           : IADR_DATA_Field := 16#0#;
      --  Write-only. Data Mask
      DMASK          : IADR_DMASK_Field := 16#0#;
      --  Write-only. Byte Offset
      OFF            : IADR_OFF_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_IADR_Register use record
      DATA           at 0 range 0 .. 7;
      DMASK          at 0 range 8 .. 15;
      OFF            at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   -------------------------
   -- LCDCA_BCFG_Register --
   -------------------------

   subtype BCFG_MODE_Field is Interfaces.Bit_Types.Bit;
   subtype BCFG_FCS_Field is Interfaces.Bit_Types.UInt2;

   --------------
   -- BCFG.BSS --
   --------------

   --  BCFG_BSS array element
   subtype BCFG_BSS_Element is Interfaces.Bit_Types.UInt4;

   --  BCFG_BSS array
   type BCFG_BSS_Field_Array is array (0 .. 1) of BCFG_BSS_Element
     with Component_Size => 4, Size => 8;

   --  Type definition for BCFG_BSS
   type BCFG_BSS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BSS as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  BSS as an array
            Arr : BCFG_BSS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for BCFG_BSS_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Blink Configuration Register
   type LCDCA_BCFG_Register is record
      --  Blinking Mode
      MODE           : BCFG_MODE_Field := 16#0#;
      --  Frame Counter Selection
      FCS            : BCFG_FCS_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Blink Segment Selection 0
      BSS            : BCFG_BSS_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_BCFG_Register use record
      MODE           at 0 range 0 .. 0;
      FCS            at 0 range 1 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      BSS            at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   ---------------------------
   -- LCDCA_CSRCFG_Register --
   ---------------------------

   subtype CSRCFG_DIR_Field is Interfaces.Bit_Types.Bit;
   subtype CSRCFG_FCS_Field is Interfaces.Bit_Types.UInt2;
   subtype CSRCFG_SIZE_Field is Interfaces.Bit_Types.UInt3;
   subtype CSRCFG_DATA_Field is Interfaces.Bit_Types.Byte;

   --  Circular Shift Register Configuration
   type LCDCA_CSRCFG_Register is record
      --  Direction
      DIR            : CSRCFG_DIR_Field := 16#0#;
      --  Frame Counter Selection
      FCS            : CSRCFG_FCS_Field := 16#0#;
      --  Size
      SIZE           : CSRCFG_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Circular Shift Register Value
      DATA           : CSRCFG_DATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_CSRCFG_Register use record
      DIR            at 0 range 0 .. 0;
      FCS            at 0 range 1 .. 2;
      SIZE           at 0 range 3 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DATA           at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --------------------------
   -- LCDCA_CMCFG_Register --
   --------------------------

   subtype CMCFG_DREV_Field is Interfaces.Bit_Types.Bit;
   subtype CMCFG_TDG_Field is Interfaces.Bit_Types.UInt2;
   subtype CMCFG_STSEG_Field is Interfaces.Bit_Types.UInt6;

   --  Character Mapping Configuration Register
   type LCDCA_CMCFG_Register is record
      --  Digit Reverse Mode
      DREV           : CMCFG_DREV_Field := 16#0#;
      --  Type of Digit
      TDG            : CMCFG_TDG_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Start Segment
      STSEG          : CMCFG_STSEG_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_CMCFG_Register use record
      DREV           at 0 range 0 .. 0;
      TDG            at 0 range 1 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      STSEG          at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   -------------------------
   -- LCDCA_CMDR_Register --
   -------------------------

   subtype CMDR_ASCII_Field is Interfaces.Bit_Types.UInt7;

   --  Character Mapping Data Register
   type LCDCA_CMDR_Register is record
      --  Write-only. ASCII Code
      ASCII         : CMDR_ASCII_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_CMDR_Register use record
      ASCII         at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   ---------------------------
   -- LCDCA_ACMCFG_Register --
   ---------------------------

   subtype ACMCFG_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ACMCFG_FCS_Field is Interfaces.Bit_Types.UInt2;
   subtype ACMCFG_MODE_Field is Interfaces.Bit_Types.Bit;
   subtype ACMCFG_DREV_Field is Interfaces.Bit_Types.Bit;
   subtype ACMCFG_TDG_Field is Interfaces.Bit_Types.UInt2;
   subtype ACMCFG_STSEG_Field is Interfaces.Bit_Types.UInt6;
   subtype ACMCFG_STEPS_Field is Interfaces.Bit_Types.Byte;
   subtype ACMCFG_DIGN_Field is Interfaces.Bit_Types.UInt4;

   --  Automated Character Mapping Configuration Register
   type LCDCA_ACMCFG_Register is record
      --  Enable
      EN             : ACMCFG_EN_Field := 16#0#;
      --  Frame Counter Selection
      FCS            : ACMCFG_FCS_Field := 16#0#;
      --  Mode (sequential or scrolling)
      MODE           : ACMCFG_MODE_Field := 16#0#;
      --  Digit Reverse
      DREV           : ACMCFG_DREV_Field := 16#0#;
      --  Type of Digit
      TDG            : ACMCFG_TDG_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Start Segment
      STSEG          : ACMCFG_STSEG_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Scrolling Steps
      STEPS          : ACMCFG_STEPS_Field := 16#0#;
      --  Digit Number
      DIGN           : ACMCFG_DIGN_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_ACMCFG_Register use record
      EN             at 0 range 0 .. 0;
      FCS            at 0 range 1 .. 2;
      MODE           at 0 range 3 .. 3;
      DREV           at 0 range 4 .. 4;
      TDG            at 0 range 5 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      STSEG          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      STEPS          at 0 range 16 .. 23;
      DIGN           at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --------------------------
   -- LCDCA_ACMDR_Register --
   --------------------------

   subtype ACMDR_ASCII_Field is Interfaces.Bit_Types.UInt7;

   --  Automated Character Mapping Data Register
   type LCDCA_ACMDR_Register is record
      --  Write-only. ASCII Code
      ASCII         : ACMDR_ASCII_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_ACMDR_Register use record
      ASCII         at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   ---------------------------
   -- LCDCA_ABMCFG_Register --
   ---------------------------

   subtype ABMCFG_EN_Field is Interfaces.Bit_Types.Bit;
   subtype ABMCFG_FCS_Field is Interfaces.Bit_Types.UInt2;
   subtype ABMCFG_SIZE_Field is Interfaces.Bit_Types.UInt5;

   --  Automated Bit Mapping Configuration Register
   type LCDCA_ABMCFG_Register is record
      --  Enable
      EN             : ABMCFG_EN_Field := 16#0#;
      --  Frame Counter Selection
      FCS            : ABMCFG_FCS_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Size
      SIZE           : ABMCFG_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_ABMCFG_Register use record
      EN             at 0 range 0 .. 0;
      FCS            at 0 range 1 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SIZE           at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --------------------------
   -- LCDCA_ABMDR_Register --
   --------------------------

   subtype ABMDR_DATA_Field is Interfaces.Bit_Types.Byte;
   subtype ABMDR_DMASK_Field is Interfaces.Bit_Types.Byte;
   subtype ABMDR_OFF_Field is Interfaces.Bit_Types.UInt5;

   --  Automated Bit Mapping Data Register
   type LCDCA_ABMDR_Register is record
      --  Write-only. Segments Value
      DATA           : ABMDR_DATA_Field := 16#0#;
      --  Write-only. Data Mask
      DMASK          : ABMDR_DMASK_Field := 16#0#;
      --  Write-only. Byte Offset
      OFF            : ABMDR_OFF_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_ABMDR_Register use record
      DATA           at 0 range 0 .. 7;
      DMASK          at 0 range 8 .. 15;
      OFF            at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   ------------------------
   -- LCDCA_IER_Register --
   ------------------------

   subtype IER_FC0R_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Enable Register
   type LCDCA_IER_Register is record
      --  Write-only. Frame Counter 0 Rollover
      FC0R          : IER_FC0R_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_IER_Register use record
      FC0R          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ------------------------
   -- LCDCA_IDR_Register --
   ------------------------

   subtype IDR_FC0R_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Disable Register
   type LCDCA_IDR_Register is record
      --  Write-only. Frame Counter 0 Rollover
      FC0R          : IDR_FC0R_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_IDR_Register use record
      FC0R          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ------------------------
   -- LCDCA_IMR_Register --
   ------------------------

   subtype IMR_FC0R_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Mask Register
   type LCDCA_IMR_Register is record
      --  Read-only. Frame Counter 0 Rollover
      FC0R          : IMR_FC0R_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_IMR_Register use record
      FC0R          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ----------------------------
   -- LCDCA_VERSION_Register --
   ----------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type LCDCA_VERSION_Register is record
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

   for LCDCA_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LCD Controller
   type LCDCA_Peripheral is record
      --  Control Register
      CR      : LCDCA_CR_Register;
      --  Configuration Register
      CFG     : LCDCA_CFG_Register;
      --  Timing Register
      TIM     : LCDCA_TIM_Register;
      --  Status Register
      SR      : LCDCA_SR_Register;
      --  Status Clear Register
      SCR     : LCDCA_SCR_Register;
      --  Data Register Low 0
      DRL0    : Interfaces.Bit_Types.Word;
      --  Data Register High 0
      DRH0    : DRH_Register;
      --  Data Register Low 1
      DRL1    : Interfaces.Bit_Types.Word;
      --  Data Register High 1
      DRH1    : DRH_Register;
      --  Data Register Low 2
      DRL2    : Interfaces.Bit_Types.Word;
      --  Data Register High 2
      DRH2    : DRH_Register;
      --  Data Register Low 3
      DRL3    : Interfaces.Bit_Types.Word;
      --  Data Register High 3
      DRH3    : DRH_Register;
      --  Indirect Access Data Register
      IADR    : LCDCA_IADR_Register;
      --  Blink Configuration Register
      BCFG    : LCDCA_BCFG_Register;
      --  Circular Shift Register Configuration
      CSRCFG  : LCDCA_CSRCFG_Register;
      --  Character Mapping Configuration Register
      CMCFG   : LCDCA_CMCFG_Register;
      --  Character Mapping Data Register
      CMDR    : LCDCA_CMDR_Register;
      --  Automated Character Mapping Configuration Register
      ACMCFG  : LCDCA_ACMCFG_Register;
      --  Automated Character Mapping Data Register
      ACMDR   : LCDCA_ACMDR_Register;
      --  Automated Bit Mapping Configuration Register
      ABMCFG  : LCDCA_ABMCFG_Register;
      --  Automated Bit Mapping Data Register
      ABMDR   : LCDCA_ABMDR_Register;
      --  Interrupt Enable Register
      IER     : LCDCA_IER_Register;
      --  Interrupt Disable Register
      IDR     : LCDCA_IDR_Register;
      --  Interrupt Mask Register
      IMR     : LCDCA_IMR_Register;
      --  Version Register
      VERSION : LCDCA_VERSION_Register;
   end record
     with Volatile;

   for LCDCA_Peripheral use record
      CR      at 0 range 0 .. 31;
      CFG     at 4 range 0 .. 31;
      TIM     at 8 range 0 .. 31;
      SR      at 12 range 0 .. 31;
      SCR     at 16 range 0 .. 31;
      DRL0    at 20 range 0 .. 31;
      DRH0    at 24 range 0 .. 31;
      DRL1    at 28 range 0 .. 31;
      DRH1    at 32 range 0 .. 31;
      DRL2    at 36 range 0 .. 31;
      DRH2    at 40 range 0 .. 31;
      DRL3    at 44 range 0 .. 31;
      DRH3    at 48 range 0 .. 31;
      IADR    at 52 range 0 .. 31;
      BCFG    at 56 range 0 .. 31;
      CSRCFG  at 60 range 0 .. 31;
      CMCFG   at 64 range 0 .. 31;
      CMDR    at 68 range 0 .. 31;
      ACMCFG  at 72 range 0 .. 31;
      ACMDR   at 76 range 0 .. 31;
      ABMCFG  at 80 range 0 .. 31;
      ABMDR   at 84 range 0 .. 31;
      IER     at 88 range 0 .. 31;
      IDR     at 92 range 0 .. 31;
      IMR     at 96 range 0 .. 31;
      VERSION at 100 range 0 .. 31;
   end record;

   --  LCD Controller
   LCDCA_Periph : aliased LCDCA_Peripheral
     with Import, Address => LCDCA_Base;

end Interfaces.ATSAM4L.LCDCA;
