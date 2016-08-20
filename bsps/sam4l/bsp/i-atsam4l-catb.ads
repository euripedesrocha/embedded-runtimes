--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.CATB is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ----------------------
   -- CATB_CR_Register --
   ----------------------

   subtype CR_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_RUN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_IIDLE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_ETRIG_Field is Interfaces.Bit_Types.Bit;
   subtype CR_INTRES_Field is Interfaces.Bit_Types.Bit;
   subtype CR_CKSEL_Field is Interfaces.Bit_Types.Bit;
   subtype CR_DIFF_Field is Interfaces.Bit_Types.Bit;
   subtype CR_DMAEN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_ESAMPLES_Field is Interfaces.Bit_Types.UInt7;
   subtype CR_CHARGET_Field is Interfaces.Bit_Types.UInt4;
   subtype CR_SWRST_Field is Interfaces.Bit_Types.Bit;

   --  Control Register
   type CATB_CR_Register is record
      --  Module Enable
      EN             : CR_EN_Field := 16#0#;
      --  Start Operation
      RUN            : CR_RUN_Field := 16#0#;
      --  Initialize Idle Value
      IIDLE          : CR_IIDLE_Field := 16#0#;
      --  Event Triggered Operation
      ETRIG          : CR_ETRIG_Field := 16#0#;
      --  Internal Resistors
      INTRES         : CR_INTRES_Field := 16#0#;
      --  Clock Select
      CKSEL          : CR_CKSEL_Field := 16#0#;
      --  Differential Mode
      DIFF           : CR_DIFF_Field := 16#0#;
      --  DMA Enable
      DMAEN          : CR_DMAEN_Field := 16#0#;
      --  Number of Event Samples
      ESAMPLES       : CR_ESAMPLES_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Charge Time
      CHARGET        : CR_CHARGET_Field := 16#0#;
      --  unspecified
      Reserved_20_30 : Interfaces.Bit_Types.UInt11 := 16#0#;
      --  Software Reset
      SWRST          : CR_SWRST_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_CR_Register use record
      EN             at 0 range 0 .. 0;
      RUN            at 0 range 1 .. 1;
      IIDLE          at 0 range 2 .. 2;
      ETRIG          at 0 range 3 .. 3;
      INTRES         at 0 range 4 .. 4;
      CKSEL          at 0 range 5 .. 5;
      DIFF           at 0 range 6 .. 6;
      DMAEN          at 0 range 7 .. 7;
      ESAMPLES       at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CHARGET        at 0 range 16 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      SWRST          at 0 range 31 .. 31;
   end record;

   -------------------------
   -- CATB_CNTCR_Register --
   -------------------------

   subtype CNTCR_TOP_Field is Interfaces.Bit_Types.UInt24;
   subtype CNTCR_SPREAD_Field is Interfaces.Bit_Types.UInt4;
   subtype CNTCR_REPEAT_Field is Interfaces.Bit_Types.UInt3;

   --  Counter Control Register
   type CATB_CNTCR_Register is record
      --  Counter Top Value
      TOP            : CNTCR_TOP_Field := 16#0#;
      --  Spread Spectrum
      SPREAD         : CNTCR_SPREAD_Field := 16#0#;
      --  Repeat Measurements
      REPEAT         : CNTCR_REPEAT_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_CNTCR_Register use record
      TOP            at 0 range 0 .. 23;
      SPREAD         at 0 range 24 .. 27;
      REPEAT         at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   ------------------------
   -- CATB_IDLE_Register --
   ------------------------

   subtype IDLE_FIDLE_Field is Interfaces.Bit_Types.UInt12;
   subtype IDLE_RIDLE_Field is Interfaces.Bit_Types.Short;

   --  Sensor Idle Level
   type CATB_IDLE_Register is record
      --  Fractional Sensor Idle
      FIDLE          : IDLE_FIDLE_Field := 16#0#;
      --  Integer Sensor Idle
      RIDLE          : IDLE_RIDLE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_IDLE_Register use record
      FIDLE          at 0 range 0 .. 11;
      RIDLE          at 0 range 12 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -------------------------
   -- CATB_LEVEL_Register --
   -------------------------

   subtype LEVEL_FLEVEL_Field is Interfaces.Bit_Types.UInt12;
   subtype LEVEL_RLEVEL_Field is Interfaces.Bit_Types.Byte;

   --  Sensor Relative Level
   type CATB_LEVEL_Register is record
      --  Read-only. Fractional Sensor Level
      FLEVEL         : LEVEL_FLEVEL_Field;
      --  Read-only. Integer Sensor Level
      RLEVEL         : LEVEL_RLEVEL_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_LEVEL_Register use record
      FLEVEL         at 0 range 0 .. 11;
      RLEVEL         at 0 range 12 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------
   -- CATB_RAW_Register --
   -----------------------

   subtype RAW_RAWA_Field is Interfaces.Bit_Types.Byte;
   subtype RAW_RAWB_Field is Interfaces.Bit_Types.Byte;

   --  Sensor Raw Value
   type CATB_RAW_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.Bit_Types.Short;
      --  Read-only. Current Sensor Raw Value
      RAWA          : RAW_RAWA_Field;
      --  Read-only. Last Sensor Raw Value
      RAWB          : RAW_RAWB_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_RAW_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      RAWA          at 0 range 16 .. 23;
      RAWB          at 0 range 24 .. 31;
   end record;

   --------------------------
   -- CATB_TIMING_Register --
   --------------------------

   subtype TIMING_TLEVEL_Field is Interfaces.Bit_Types.UInt12;
   subtype TIMING_TIDLE_Field is Interfaces.Bit_Types.UInt12;

   --  Filter Timing Register
   type CATB_TIMING_Register is record
      --  Relative Level Smoothing
      TLEVEL         : TIMING_TLEVEL_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Idle Smoothening
      TIDLE          : TIMING_TIDLE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_TIMING_Register use record
      TLEVEL         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TIDLE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --------------------------
   -- CATB_THRESH_Register --
   --------------------------

   subtype THRESH_FTHRESH_Field is Interfaces.Bit_Types.UInt12;
   subtype THRESH_RTHRESH_Field is Interfaces.Bit_Types.Byte;
   subtype THRESH_DIR_Field is Interfaces.Bit_Types.Bit;
   subtype THRESH_LENGTH_Field is Interfaces.Bit_Types.UInt5;

   --  Threshold Register
   type CATB_THRESH_Register is record
      --  Fractional part of Threshold Value
      FTHRESH        : THRESH_FTHRESH_Field := 16#0#;
      --  Rational part of Threshold Value
      RTHRESH        : THRESH_RTHRESH_Field := 16#0#;
      --  unspecified
      Reserved_20_22 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Threshold Direction
      DIR            : THRESH_DIR_Field := 16#0#;
      --  Threshold Length
      LENGTH         : THRESH_LENGTH_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_THRESH_Register use record
      FTHRESH        at 0 range 0 .. 11;
      RTHRESH        at 0 range 12 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      DIR            at 0 range 23 .. 23;
      LENGTH         at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --------------------------
   -- CATB_PINSEL_Register --
   --------------------------

   subtype PINSEL_PINSEL_Field is Interfaces.Bit_Types.Byte;

   --  Pin Selection Register
   type CATB_PINSEL_Register is record
      --  Pin Select
      PINSEL        : PINSEL_PINSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_PINSEL_Register use record
      PINSEL        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------------
   -- CATB_ISR_Register --
   -----------------------

   subtype ISR_SAMPLE_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_INTCH_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_OUTTCH_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Status Register
   type CATB_ISR_Register is record
      --  Read-only. Sample Ready Interrupt Status
      SAMPLE        : ISR_SAMPLE_Field;
      --  Read-only. In-touch Interrupt Status
      INTCH         : ISR_INTCH_Field;
      --  Read-only. Out-of-Touch Interrupt Status
      OUTTCH        : ISR_OUTTCH_Field;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_ISR_Register use record
      SAMPLE        at 0 range 0 .. 0;
      INTCH         at 0 range 1 .. 1;
      OUTTCH        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------------
   -- CATB_IER_Register --
   -----------------------

   subtype IER_SAMPLE_Field is Interfaces.Bit_Types.Bit;
   subtype IER_INTCH_Field is Interfaces.Bit_Types.Bit;
   subtype IER_OUTTCH_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Enable Register
   type CATB_IER_Register is record
      --  Write-only. Sample Ready Interrupt Enable
      SAMPLE        : IER_SAMPLE_Field := 16#0#;
      --  Write-only. In-touch Interrupt Enable
      INTCH         : IER_INTCH_Field := 16#0#;
      --  Write-only. Out-of-Touch Interrupt Enable
      OUTTCH        : IER_OUTTCH_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_IER_Register use record
      SAMPLE        at 0 range 0 .. 0;
      INTCH         at 0 range 1 .. 1;
      OUTTCH        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------------
   -- CATB_IDR_Register --
   -----------------------

   subtype IDR_SAMPLE_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_INTCH_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_OUTTCH_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Disable Register
   type CATB_IDR_Register is record
      --  Write-only. Sample Ready Interrupt Disable
      SAMPLE        : IDR_SAMPLE_Field := 16#0#;
      --  Write-only. In-touch Interrupt Disable
      INTCH         : IDR_INTCH_Field := 16#0#;
      --  Write-only. Out-of-Touch Interrupt Disable
      OUTTCH        : IDR_OUTTCH_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_IDR_Register use record
      SAMPLE        at 0 range 0 .. 0;
      INTCH         at 0 range 1 .. 1;
      OUTTCH        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------------
   -- CATB_IMR_Register --
   -----------------------

   subtype IMR_SAMPLE_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_INTCH_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_OUTTCH_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Mask Register
   type CATB_IMR_Register is record
      --  Read-only. Sample Ready Interrupt Mask
      SAMPLE        : IMR_SAMPLE_Field;
      --  Read-only. In-touch Interrupt Mask
      INTCH         : IMR_INTCH_Field;
      --  Read-only. Out-of-Touch Interrupt Mask
      OUTTCH        : IMR_OUTTCH_Field;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_IMR_Register use record
      SAMPLE        at 0 range 0 .. 0;
      INTCH         at 0 range 1 .. 1;
      OUTTCH        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------------
   -- CATB_SCR_Register --
   -----------------------

   subtype SCR_SAMPLE_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_INTCH_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_OUTTCH_Field is Interfaces.Bit_Types.Bit;

   --  Status Clear Register
   type CATB_SCR_Register is record
      --  Write-only. Sample Ready
      SAMPLE        : SCR_SAMPLE_Field := 16#0#;
      --  Write-only. In-touch
      INTCH         : SCR_INTCH_Field := 16#0#;
      --  Write-only. Out-of-Touch
      OUTTCH        : SCR_OUTTCH_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_SCR_Register use record
      SAMPLE        at 0 range 0 .. 0;
      INTCH         at 0 range 1 .. 1;
      OUTTCH        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------------------
   -- CATB_PARAMETER_Register --
   -----------------------------

   subtype PARAMETER_NPINS_Field is Interfaces.Bit_Types.Byte;
   subtype PARAMETER_NSTATUS_Field is Interfaces.Bit_Types.Byte;
   subtype PARAMETER_FRACTIONAL_Field is Interfaces.Bit_Types.UInt4;

   --  Parameter Register
   type CATB_PARAMETER_Register is record
      --  Read-only. Number of Pins
      NPINS          : PARAMETER_NPINS_Field;
      --  Read-only. Number of Status bits
      NSTATUS        : PARAMETER_NSTATUS_Field;
      --  Read-only. Number of Fractional bits
      FRACTIONAL     : PARAMETER_FRACTIONAL_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_PARAMETER_Register use record
      NPINS          at 0 range 0 .. 7;
      NSTATUS        at 0 range 8 .. 15;
      FRACTIONAL     at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ---------------------------
   -- CATB_VERSION_Register --
   ---------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type CATB_VERSION_Register is record
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

   for CATB_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Capacitive Touch Module B
   type CATB_Peripheral is record
      --  Control Register
      CR          : CATB_CR_Register;
      --  Counter Control Register
      CNTCR       : CATB_CNTCR_Register;
      --  Sensor Idle Level
      IDLE        : CATB_IDLE_Register;
      --  Sensor Relative Level
      LEVEL       : CATB_LEVEL_Register;
      --  Sensor Raw Value
      RAW         : CATB_RAW_Register;
      --  Filter Timing Register
      TIMING      : CATB_TIMING_Register;
      --  Threshold Register
      THRESH      : CATB_THRESH_Register;
      --  Pin Selection Register
      PINSEL      : CATB_PINSEL_Register;
      --  Direct Memory Access Register
      DMA         : Interfaces.Bit_Types.Word;
      --  Interrupt Status Register
      ISR         : CATB_ISR_Register;
      --  Interrupt Enable Register
      IER         : CATB_IER_Register;
      --  Interrupt Disable Register
      IDR         : CATB_IDR_Register;
      --  Interrupt Mask Register
      IMR         : CATB_IMR_Register;
      --  Status Clear Register
      SCR         : CATB_SCR_Register;
      --  In-Touch Status Register
      INTCH     : Interfaces.Bit_Types.Word;
      --  In-Touch Status Clear Register
      INTCHCLR  : Interfaces.Bit_Types.Word;
      --  Out-of-Touch Status Register
      OUTTCH    : Interfaces.Bit_Types.Word;
      --  Out-of-Touch Status Clear Register
      OUTTCHCLR : Interfaces.Bit_Types.Word;
      --  Parameter Register
      PARAMETER   : CATB_PARAMETER_Register;
      --  Version Register
      VERSION     : CATB_VERSION_Register;
   end record
     with Volatile;

   for CATB_Peripheral use record
      CR          at 0 range 0 .. 31;
      CNTCR       at 4 range 0 .. 31;
      IDLE        at 8 range 0 .. 31;
      LEVEL       at 12 range 0 .. 31;
      RAW         at 16 range 0 .. 31;
      TIMING      at 20 range 0 .. 31;
      THRESH      at 24 range 0 .. 31;
      PINSEL      at 28 range 0 .. 31;
      DMA         at 32 range 0 .. 31;
      ISR         at 36 range 0 .. 31;
      IER         at 40 range 0 .. 31;
      IDR         at 44 range 0 .. 31;
      IMR         at 48 range 0 .. 31;
      SCR         at 52 range 0 .. 31;
      INTCH     at 64 range 0 .. 31;
      INTCHCLR  at 80 range 0 .. 31;
      OUTTCH    at 96 range 0 .. 31;
      OUTTCHCLR at 112 range 0 .. 31;
      PARAMETER   at 248 range 0 .. 31;
      VERSION     at 252 range 0 .. 31;
   end record;

   --  Capacitive Touch Module B
   CATB_Periph : aliased CATB_Peripheral
     with Import, Address => CATB_Base;

end Interfaces.ATSAM4L.CATB;
