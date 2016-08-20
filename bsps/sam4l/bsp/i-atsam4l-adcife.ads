--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.ADCIFE is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ------------------------
   -- ADCIFE_CR_Register --
   ------------------------

   subtype CR_SWRST_Field is Interfaces.Bit_Types.Bit;
   subtype CR_TSTOP_Field is Interfaces.Bit_Types.Bit;
   subtype CR_TSTART_Field is Interfaces.Bit_Types.Bit;
   subtype CR_STRIG_Field is Interfaces.Bit_Types.Bit;
   subtype CR_REFBUFEN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_REFBUFDIS_Field is Interfaces.Bit_Types.Bit;
   subtype CR_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_DIS_Field is Interfaces.Bit_Types.Bit;
   subtype CR_BGREQEN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_BGREQDIS_Field is Interfaces.Bit_Types.Bit;

   --  Control Register
   type ADCIFE_CR_Register is record
      --  Write-only. Software reset
      SWRST          : CR_SWRST_Field := 16#0#;
      --  Write-only. Internal timer stop bit
      TSTOP          : CR_TSTOP_Field := 16#0#;
      --  Write-only. Internal timer start bit
      TSTART         : CR_TSTART_Field := 16#0#;
      --  Write-only. Sequencer trigger
      STRIG          : CR_STRIG_Field := 16#0#;
      --  Write-only. Reference buffer enable
      REFBUFEN       : CR_REFBUFEN_Field := 16#0#;
      --  Write-only. Reference buffer disable
      REFBUFDIS      : CR_REFBUFDIS_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. ADCIFD enable
      EN             : CR_EN_Field := 16#0#;
      --  Write-only. ADCIFD disable
      DIS            : CR_DIS_Field := 16#0#;
      --  Write-only. Bandgap buffer request enable
      BGREQEN        : CR_BGREQEN_Field := 16#0#;
      --  Write-only. Bandgap buffer request disable
      BGREQDIS       : CR_BGREQDIS_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_CR_Register use record
      SWRST          at 0 range 0 .. 0;
      TSTOP          at 0 range 1 .. 1;
      TSTART         at 0 range 2 .. 2;
      STRIG          at 0 range 3 .. 3;
      REFBUFEN       at 0 range 4 .. 4;
      REFBUFDIS      at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EN             at 0 range 8 .. 8;
      DIS            at 0 range 9 .. 9;
      BGREQEN        at 0 range 10 .. 10;
      BGREQDIS       at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -------------------------
   -- ADCIFE_CFG_Register --
   -------------------------

   subtype CFG_REFSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype CFG_SPEED_Field is Interfaces.Bit_Types.UInt2;
   subtype CFG_CLKSEL_Field is Interfaces.Bit_Types.Bit;
   subtype CFG_PRESCAL_Field is Interfaces.Bit_Types.UInt3;

   --  Configuration Register
   type ADCIFE_CFG_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#0#;
      --  ADC Reference Selection
      REFSEL         : CFG_REFSEL_Field := 16#0#;
      --  ADC current reduction
      SPEED          : CFG_SPEED_Field := 16#0#;
      --  Clock Selection for sequencer/ADC cell
      CLKSEL         : CFG_CLKSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Prescaler Rate Selection
      PRESCAL        : CFG_PRESCAL_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_CFG_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      REFSEL         at 0 range 1 .. 3;
      SPEED          at 0 range 4 .. 5;
      CLKSEL         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PRESCAL        at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   ------------------------
   -- ADCIFE_SR_Register --
   ------------------------

   subtype SR_SEOC_Field is Interfaces.Bit_Types.Bit;
   subtype SR_LOVR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_WM_Field is Interfaces.Bit_Types.Bit;
   subtype SR_SMTRG_Field is Interfaces.Bit_Types.Bit;
   subtype SR_SUTD_Field is Interfaces.Bit_Types.Bit;
   subtype SR_TTO_Field is Interfaces.Bit_Types.Bit;
   subtype SR_EN_Field is Interfaces.Bit_Types.Bit;
   subtype SR_TBUSY_Field is Interfaces.Bit_Types.Bit;
   subtype SR_SBUSY_Field is Interfaces.Bit_Types.Bit;
   subtype SR_CBUSY_Field is Interfaces.Bit_Types.Bit;
   subtype SR_REFBUF_Field is Interfaces.Bit_Types.Bit;

   --  Status Register
   type ADCIFE_SR_Register is record
      --  Read-only. Sequencer end of conversion
      SEOC           : SR_SEOC_Field;
      --  Read-only. Sequencer last converted value overrun
      LOVR           : SR_LOVR_Field;
      --  Read-only. Window monitor
      WM             : SR_WM_Field;
      --  Read-only. Sequencer missed trigger event
      SMTRG          : SR_SMTRG_Field;
      --  Read-only. Start-up time done
      SUTD           : SR_SUTD_Field;
      --  Read-only. Timer time-out
      TTO            : SR_TTO_Field;
      --  unspecified
      Reserved_6_23  : Interfaces.Bit_Types.UInt18;
      --  Read-only. Enable Status
      EN             : SR_EN_Field;
      --  Read-only. Timer busy
      TBUSY          : SR_TBUSY_Field;
      --  Read-only. Sequencer busy
      SBUSY          : SR_SBUSY_Field;
      --  Read-only. Conversion busy
      CBUSY          : SR_CBUSY_Field;
      --  Read-only. Reference buffer status
      REFBUF         : SR_REFBUF_Field;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_SR_Register use record
      SEOC           at 0 range 0 .. 0;
      LOVR           at 0 range 1 .. 1;
      WM             at 0 range 2 .. 2;
      SMTRG          at 0 range 3 .. 3;
      SUTD           at 0 range 4 .. 4;
      TTO            at 0 range 5 .. 5;
      Reserved_6_23  at 0 range 6 .. 23;
      EN             at 0 range 24 .. 24;
      TBUSY          at 0 range 25 .. 25;
      SBUSY          at 0 range 26 .. 26;
      CBUSY          at 0 range 27 .. 27;
      REFBUF         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   -------------------------
   -- ADCIFE_SCR_Register --
   -------------------------

   subtype SCR_SEOC_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_LOVR_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_WM_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_SMTRG_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_SUTD_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_TTO_Field is Interfaces.Bit_Types.Bit;

   --  Status Clear Register
   type ADCIFE_SCR_Register is record
      --  Write-only. Sequencer end of conversion
      SEOC          : SCR_SEOC_Field := 16#0#;
      --  Write-only. Sequencer last converted value overrun
      LOVR          : SCR_LOVR_Field := 16#0#;
      --  Write-only. Window monitor
      WM            : SCR_WM_Field := 16#0#;
      --  Write-only. Sequencer missed trigger event
      SMTRG         : SCR_SMTRG_Field := 16#0#;
      --  Write-only. Start-up time done
      SUTD          : SCR_SUTD_Field := 16#0#;
      --  Write-only. Timer time-out
      TTO           : SCR_TTO_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_SCR_Register use record
      SEOC          at 0 range 0 .. 0;
      LOVR          at 0 range 1 .. 1;
      WM            at 0 range 2 .. 2;
      SMTRG         at 0 range 3 .. 3;
      SUTD          at 0 range 4 .. 4;
      TTO           at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   ----------------------------
   -- ADCIFE_SEQCFG_Register --
   ----------------------------

   subtype SEQCFG_HWLA_Field is Interfaces.Bit_Types.Bit;
   subtype SEQCFG_BIPOLAR_Field is Interfaces.Bit_Types.Bit;
   subtype SEQCFG_GAIN_Field is Interfaces.Bit_Types.UInt3;
   subtype SEQCFG_GCOMP_Field is Interfaces.Bit_Types.Bit;
   subtype SEQCFG_TRGSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype SEQCFG_RES_Field is Interfaces.Bit_Types.Bit;
   subtype SEQCFG_INTERNAL_Field is Interfaces.Bit_Types.UInt2;
   subtype SEQCFG_MUXPOS_Field is Interfaces.Bit_Types.UInt4;
   subtype SEQCFG_MUXNEG_Field is Interfaces.Bit_Types.UInt3;
   subtype SEQCFG_ZOOMRANGE_Field is Interfaces.Bit_Types.UInt3;

   --  Sequencer Configuration Register
   type ADCIFE_SEQCFG_Register is record
      --  Half word left adjust
      HWLA           : SEQCFG_HWLA_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Bipolar Mode
      BIPOLAR        : SEQCFG_BIPOLAR_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Gain factor
      GAIN           : SEQCFG_GAIN_Field := 16#0#;
      --  Gain Compensation
      GCOMP          : SEQCFG_GCOMP_Field := 16#0#;
      --  Trigger selection
      TRGSEL         : SEQCFG_TRGSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Resolution
      RES            : SEQCFG_RES_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Internal Voltage Source Selection
      INTERNAL       : SEQCFG_INTERNAL_Field := 16#0#;
      --  MUX selection on Positive ADC input channel
      MUXPOS         : SEQCFG_MUXPOS_Field := 16#0#;
      --  MUX selection on Negative ADC input channel
      MUXNEG         : SEQCFG_MUXNEG_Field := 16#0#;
      --  unspecified
      Reserved_23_27 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Zoom shift/unipolar reference source selection
      ZOOMRANGE      : SEQCFG_ZOOMRANGE_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_SEQCFG_Register use record
      HWLA           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      BIPOLAR        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      GAIN           at 0 range 4 .. 6;
      GCOMP          at 0 range 7 .. 7;
      TRGSEL         at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      RES            at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      INTERNAL       at 0 range 14 .. 15;
      MUXPOS         at 0 range 16 .. 19;
      MUXNEG         at 0 range 20 .. 22;
      Reserved_23_27 at 0 range 23 .. 27;
      ZOOMRANGE      at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   -----------------------------------------
   -- ADCIFE_CDMA_FIRST_DMA_WORD_Register --
   -----------------------------------------

   subtype CDMA_FIRST_DMA_WORD_HWLA_Field is Interfaces.Bit_Types.Bit;
   subtype CDMA_FIRST_DMA_WORD_BIPOLAR_Field is Interfaces.Bit_Types.Bit;
   subtype CDMA_FIRST_DMA_WORD_STRIG_Field is Interfaces.Bit_Types.Bit;
   subtype CDMA_FIRST_DMA_WORD_GAIN_Field is Interfaces.Bit_Types.UInt3;
   subtype CDMA_FIRST_DMA_WORD_GCOMP_Field is Interfaces.Bit_Types.Bit;
   subtype CDMA_FIRST_DMA_WORD_ENSTUP_Field is Interfaces.Bit_Types.Bit;
   subtype CDMA_FIRST_DMA_WORD_RES_Field is Interfaces.Bit_Types.Bit;
   subtype CDMA_FIRST_DMA_WORD_TSS_Field is Interfaces.Bit_Types.Bit;
   subtype CDMA_FIRST_DMA_WORD_INTERNAL_Field is Interfaces.Bit_Types.UInt2;
   subtype CDMA_FIRST_DMA_WORD_MUXPOS_Field is Interfaces.Bit_Types.UInt4;
   subtype CDMA_FIRST_DMA_WORD_MUXNEG_Field is Interfaces.Bit_Types.UInt3;
   subtype CDMA_FIRST_DMA_WORD_ZOOMRANGE_Field is Interfaces.Bit_Types.UInt3;
   subtype CDMA_FIRST_DMA_WORD_DW_Field is Interfaces.Bit_Types.Bit;

   --  Configuration Direct Memory Access Register
   type ADCIFE_CDMA_FIRST_DMA_WORD_Register is record
      --  Write-only. Half word left adjust
      HWLA           : CDMA_FIRST_DMA_WORD_HWLA_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Bipolar Mode
      BIPOLAR        : CDMA_FIRST_DMA_WORD_BIPOLAR_Field := 16#0#;
      --  Write-only. Sequencer Trigger Event
      STRIG          : CDMA_FIRST_DMA_WORD_STRIG_Field := 16#0#;
      --  Write-only. Gain factor
      GAIN           : CDMA_FIRST_DMA_WORD_GAIN_Field := 16#0#;
      --  Write-only. Gain Compensation
      GCOMP          : CDMA_FIRST_DMA_WORD_GCOMP_Field := 16#0#;
      --  Write-only. Enable Start-Up Time
      ENSTUP         : CDMA_FIRST_DMA_WORD_ENSTUP_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Resolution
      RES            : CDMA_FIRST_DMA_WORD_RES_Field := 16#0#;
      --  Write-only. Internal timer start or stop bit
      TSS            : CDMA_FIRST_DMA_WORD_TSS_Field := 16#0#;
      --  Write-only. Internal Voltage Source Selection
      INTERNAL       : CDMA_FIRST_DMA_WORD_INTERNAL_Field := 16#0#;
      --  Write-only. MUX selection on Positive ADC input channel
      MUXPOS         : CDMA_FIRST_DMA_WORD_MUXPOS_Field := 16#0#;
      --  Write-only. MUX selection on Negative ADC input channel
      MUXNEG         : CDMA_FIRST_DMA_WORD_MUXNEG_Field := 16#0#;
      --  unspecified
      Reserved_23_27 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. Zoom shift/unipolar reference source selection
      ZOOMRANGE      : CDMA_FIRST_DMA_WORD_ZOOMRANGE_Field := 16#0#;
      --  Write-only. Double Word transmitting
      DW             : CDMA_FIRST_DMA_WORD_DW_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_CDMA_FIRST_DMA_WORD_Register use record
      HWLA           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      BIPOLAR        at 0 range 2 .. 2;
      STRIG          at 0 range 3 .. 3;
      GAIN           at 0 range 4 .. 6;
      GCOMP          at 0 range 7 .. 7;
      ENSTUP         at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      RES            at 0 range 12 .. 12;
      TSS            at 0 range 13 .. 13;
      INTERNAL       at 0 range 14 .. 15;
      MUXPOS         at 0 range 16 .. 19;
      MUXNEG         at 0 range 20 .. 22;
      Reserved_23_27 at 0 range 23 .. 27;
      ZOOMRANGE      at 0 range 28 .. 30;
      DW             at 0 range 31 .. 31;
   end record;

   ------------------------------------------
   -- ADCIFE_CDMA_SECOND_DMA_WORD_Register --
   ------------------------------------------

   subtype CDMA_SECOND_DMA_WORD_LT_Field is Interfaces.Bit_Types.UInt12;
   subtype CDMA_SECOND_DMA_WORD_WM_Field is Interfaces.Bit_Types.UInt3;
   subtype CDMA_SECOND_DMA_WORD_HT_Field is Interfaces.Bit_Types.UInt12;
   subtype CDMA_SECOND_DMA_WORD_DW_Field is Interfaces.Bit_Types.Bit;

   --  Configuration Direct Memory Access Register
   type ADCIFE_CDMA_SECOND_DMA_WORD_Register is record
      --  Write-only. Low Threshold
      LT             : CDMA_SECOND_DMA_WORD_LT_Field := 16#0#;
      --  Write-only. Window Monitor Mode
      WM             : CDMA_SECOND_DMA_WORD_WM_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. High Threshold
      HT             : CDMA_SECOND_DMA_WORD_HT_Field := 16#0#;
      --  unspecified
      Reserved_28_30 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Double Word transmitting
      DW             : CDMA_SECOND_DMA_WORD_DW_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_CDMA_SECOND_DMA_WORD_Register use record
      LT             at 0 range 0 .. 11;
      WM             at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HT             at 0 range 16 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      DW             at 0 range 31 .. 31;
   end record;

   -------------------------
   -- ADCIFE_TIM_Register --
   -------------------------

   subtype TIM_STARTUP_Field is Interfaces.Bit_Types.UInt5;
   subtype TIM_ENSTUP_Field is Interfaces.Bit_Types.Bit;

   --  Timing Configuration Register
   type ADCIFE_TIM_Register is record
      --  Startup time
      STARTUP       : TIM_STARTUP_Field := 16#0#;
      --  unspecified
      Reserved_5_7  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Enable Startup
      ENSTUP        : TIM_ENSTUP_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_TIM_Register use record
      STARTUP       at 0 range 0 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      ENSTUP        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   ----------------------------
   -- ADCIFE_ITIMER_Register --
   ----------------------------

   subtype ITIMER_ITMC_Field is Interfaces.Bit_Types.Short;

   --  Internal Timer Register
   type ADCIFE_ITIMER_Register is record
      --  Internal timer max counter
      ITMC           : ITIMER_ITMC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_ITIMER_Register use record
      ITMC           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --------------------------
   -- ADCIFE_WCFG_Register --
   --------------------------

   subtype WCFG_WM_Field is Interfaces.Bit_Types.UInt3;

   --  Window Monitor Configuration Register
   type ADCIFE_WCFG_Register is record
      --  unspecified
      Reserved_0_11  : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Window Monitor Mode
      WM             : WCFG_WM_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_WCFG_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      WM             at 0 range 12 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   -------------------------
   -- ADCIFE_WTH_Register --
   -------------------------

   subtype WTH_LT_Field is Interfaces.Bit_Types.UInt12;
   subtype WTH_HT_Field is Interfaces.Bit_Types.UInt12;

   --  Window Monitor Threshold Configuration Register
   type ADCIFE_WTH_Register is record
      --  Low threshold
      LT             : WTH_LT_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  High Threshold
      HT             : WTH_HT_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_WTH_Register use record
      LT             at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HT             at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -------------------------
   -- ADCIFE_LCV_Register --
   -------------------------

   subtype LCV_LCV_Field is Interfaces.Bit_Types.Short;
   subtype LCV_LCPC_Field is Interfaces.Bit_Types.UInt4;
   subtype LCV_LCNC_Field is Interfaces.Bit_Types.UInt3;

   --  Sequencer Last Converted Value Register
   type ADCIFE_LCV_Register is record
      --  Read-only. Last converted value
      LCV            : LCV_LCV_Field;
      --  Read-only. Last converted positive channel
      LCPC           : LCV_LCPC_Field;
      --  Read-only. Last converted negative channel
      LCNC           : LCV_LCNC_Field;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_LCV_Register use record
      LCV            at 0 range 0 .. 15;
      LCPC           at 0 range 16 .. 19;
      LCNC           at 0 range 20 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   -------------------------
   -- ADCIFE_IER_Register --
   -------------------------

   subtype IER_SEOC_Field is Interfaces.Bit_Types.Bit;
   subtype IER_LOVR_Field is Interfaces.Bit_Types.Bit;
   subtype IER_WM_Field is Interfaces.Bit_Types.Bit;
   subtype IER_SMTRG_Field is Interfaces.Bit_Types.Bit;
   subtype IER_TTO_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Enable Register
   type ADCIFE_IER_Register is record
      --  Write-only. Sequencer end of conversion Interrupt Enable
      SEOC          : IER_SEOC_Field := 16#0#;
      --  Write-only. Sequencer last converted value overrun Interrupt Enable
      LOVR          : IER_LOVR_Field := 16#0#;
      --  Write-only. Window monitor Interrupt Enable
      WM            : IER_WM_Field := 16#0#;
      --  Write-only. Sequencer missed trigger event Interrupt Enable
      SMTRG         : IER_SMTRG_Field := 16#0#;
      --  unspecified
      Reserved_4_4  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Timer time-out Interrupt Enable
      TTO           : IER_TTO_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_IER_Register use record
      SEOC          at 0 range 0 .. 0;
      LOVR          at 0 range 1 .. 1;
      WM            at 0 range 2 .. 2;
      SMTRG         at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      TTO           at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -------------------------
   -- ADCIFE_IDR_Register --
   -------------------------

   subtype IDR_SEOC_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_LOVR_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_WM_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_SMTRG_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_TTO_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Disable Register
   type ADCIFE_IDR_Register is record
      --  Write-only. Sequencer end of conversion Interrupt Disable
      SEOC          : IDR_SEOC_Field := 16#0#;
      --  Write-only. Sequencer last converted value overrun Interrupt Disable
      LOVR          : IDR_LOVR_Field := 16#0#;
      --  Write-only. Window monitor Interrupt Disable
      WM            : IDR_WM_Field := 16#0#;
      --  Write-only. Sequencer missed trigger event Interrupt Disable
      SMTRG         : IDR_SMTRG_Field := 16#0#;
      --  unspecified
      Reserved_4_4  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Timer time-out Interrupt Disable
      TTO           : IDR_TTO_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_IDR_Register use record
      SEOC          at 0 range 0 .. 0;
      LOVR          at 0 range 1 .. 1;
      WM            at 0 range 2 .. 2;
      SMTRG         at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      TTO           at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -------------------------
   -- ADCIFE_IMR_Register --
   -------------------------

   subtype IMR_SEOC_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_LOVR_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_WM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_SMTRG_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_TTO_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Mask Register
   type ADCIFE_IMR_Register is record
      --  Read-only. Sequencer end of conversion Interrupt Mask
      SEOC          : IMR_SEOC_Field;
      --  Read-only. Sequencer last converted value overrun Interrupt Mask
      LOVR          : IMR_LOVR_Field;
      --  Read-only. Window monitor Interrupt Mask
      WM            : IMR_WM_Field;
      --  Read-only. Sequencer missed trigger event Interrupt Mask
      SMTRG         : IMR_SMTRG_Field;
      --  unspecified
      Reserved_4_4  : Interfaces.Bit_Types.Bit;
      --  Read-only. Timer time-out Interrupt Mask
      TTO           : IMR_TTO_Field;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_IMR_Register use record
      SEOC          at 0 range 0 .. 0;
      LOVR          at 0 range 1 .. 1;
      WM            at 0 range 2 .. 2;
      SMTRG         at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      TTO           at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   ---------------------------
   -- ADCIFE_CALIB_Register --
   ---------------------------

   subtype CALIB_CALIB_Field is Interfaces.Bit_Types.Byte;
   subtype CALIB_BIASSEL_Field is Interfaces.Bit_Types.Bit;
   subtype CALIB_BIASCAL_Field is Interfaces.Bit_Types.UInt4;
   subtype CALIB_FCD_Field is Interfaces.Bit_Types.Bit;

   --  Calibration Register
   type ADCIFE_CALIB_Register is record
      --  Calibration Value
      CALIB          : CALIB_CALIB_Field := 16#0#;
      --  Select bias mode
      BIASSEL        : CALIB_BIASSEL_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Bias Calibration
      BIASCAL        : CALIB_BIASCAL_Field := 16#0#;
      --  Flash Calibration Done
      FCD            : CALIB_FCD_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_CALIB_Register use record
      CALIB          at 0 range 0 .. 7;
      BIASSEL        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      BIASCAL        at 0 range 12 .. 15;
      FCD            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   -----------------------------
   -- ADCIFE_VERSION_Register --
   -----------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type ADCIFE_VERSION_Register is record
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

   for ADCIFE_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -------------------------------
   -- ADCIFE_PARAMETER_Register --
   -------------------------------

   subtype PARAMETER_N_Field is Interfaces.Bit_Types.Byte;

   --  Parameter Register
   type ADCIFE_PARAMETER_Register is record
      --  Read-only. Number of channels
      N             : PARAMETER_N_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCIFE_PARAMETER_Register use record
      N             at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type ADCIFE_Disc is
     (
      First_Dma_Word,
      Second_Dma_Word);

   --  ADC controller interface
   type ADCIFE_Peripheral
     (Discriminent : ADCIFE_Disc := First_Dma_Word)
   is record
      --  Control Register
      CR                   : ADCIFE_CR_Register;
      --  Configuration Register
      CFG                  : ADCIFE_CFG_Register;
      --  Status Register
      SR                   : ADCIFE_SR_Register;
      --  Status Clear Register
      SCR                  : ADCIFE_SCR_Register;
      --  Resistive Touch Screen Register
      RTS                  : Interfaces.Bit_Types.Word;
      --  Sequencer Configuration Register
      SEQCFG               : ADCIFE_SEQCFG_Register;
      --  Timing Configuration Register
      TIM                  : ADCIFE_TIM_Register;
      --  Internal Timer Register
      ITIMER               : ADCIFE_ITIMER_Register;
      --  Window Monitor Configuration Register
      WCFG                 : ADCIFE_WCFG_Register;
      --  Window Monitor Threshold Configuration Register
      WTH                  : ADCIFE_WTH_Register;
      --  Sequencer Last Converted Value Register
      LCV                  : ADCIFE_LCV_Register;
      --  Interrupt Enable Register
      IER                  : ADCIFE_IER_Register;
      --  Interrupt Disable Register
      IDR                  : ADCIFE_IDR_Register;
      --  Interrupt Mask Register
      IMR                  : ADCIFE_IMR_Register;
      --  Calibration Register
      CALIB                : ADCIFE_CALIB_Register;
      --  Version Register
      VERSION              : ADCIFE_VERSION_Register;
      --  Parameter Register
      PARAMETER            : ADCIFE_PARAMETER_Register;
      case Discriminent is
         when First_Dma_Word =>
            --  Configuration Direct Memory Access Register
            CDMA_FIRST_DMA_WORD : ADCIFE_CDMA_FIRST_DMA_WORD_Register;
         when Second_Dma_Word =>
            --  Configuration Direct Memory Access Register
            CDMA_SECOND_DMA_WORD : ADCIFE_CDMA_SECOND_DMA_WORD_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for ADCIFE_Peripheral use record
      CR                   at 0 range 0 .. 31;
      CFG                  at 4 range 0 .. 31;
      SR                   at 8 range 0 .. 31;
      SCR                  at 12 range 0 .. 31;
      RTS                  at 16 range 0 .. 31;
      SEQCFG               at 20 range 0 .. 31;
      TIM                  at 28 range 0 .. 31;
      ITIMER               at 32 range 0 .. 31;
      WCFG                 at 36 range 0 .. 31;
      WTH                  at 40 range 0 .. 31;
      LCV                  at 44 range 0 .. 31;
      IER                  at 48 range 0 .. 31;
      IDR                  at 52 range 0 .. 31;
      IMR                  at 56 range 0 .. 31;
      CALIB                at 60 range 0 .. 31;
      VERSION              at 64 range 0 .. 31;
      PARAMETER            at 68 range 0 .. 31;
      CDMA_FIRST_DMA_WORD  at 24 range 0 .. 31;
      CDMA_SECOND_DMA_WORD at 24 range 0 .. 31;
   end record;

   --  ADC controller interface
   ADCIFE_Periph : aliased ADCIFE_Peripheral
     with Import, Address => ADCIFE_Base;

end Interfaces.ATSAM4L.ADCIFE;
