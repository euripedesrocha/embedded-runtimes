--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.BPM is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ----------------------
   -- BPM_IER_Register --
   ----------------------

   subtype IER_PSOK_Field is Interfaces.Bit_Types.Bit;
   subtype IER_AE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Enable Register
   type BPM_IER_Register is record
      --  Write-only. Power Scaling OK Interrupt Enable
      PSOK          : IER_PSOK_Field := 16#0#;
      --  unspecified
      Reserved_1_30 : Interfaces.Bit_Types.UInt30 := 16#0#;
      --  Write-only. Access Error Interrupt Enable
      AE            : IER_AE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_IER_Register use record
      PSOK          at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   ----------------------
   -- BPM_IDR_Register --
   ----------------------

   subtype IDR_PSOK_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_AE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Disable Register
   type BPM_IDR_Register is record
      --  Write-only. Power Scaling OK Interrupt Disable
      PSOK          : IDR_PSOK_Field := 16#0#;
      --  unspecified
      Reserved_1_30 : Interfaces.Bit_Types.UInt30 := 16#0#;
      --  Write-only. Access Error Interrupt Disable
      AE            : IDR_AE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_IDR_Register use record
      PSOK          at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   ----------------------
   -- BPM_IMR_Register --
   ----------------------

   subtype IMR_PSOK_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_AE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Mask Register
   type BPM_IMR_Register is record
      --  Read-only. Power Scaling OK Interrupt Mask
      PSOK          : IMR_PSOK_Field;
      --  unspecified
      Reserved_1_30 : Interfaces.Bit_Types.UInt30;
      --  Read-only. Access Error Interrupt Mask
      AE            : IMR_AE_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_IMR_Register use record
      PSOK          at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   ----------------------
   -- BPM_ISR_Register --
   ----------------------

   subtype ISR_PSOK_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_AE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Status Register
   type BPM_ISR_Register is record
      --  Read-only. Power Scaling OK Interrupt Status
      PSOK          : ISR_PSOK_Field;
      --  unspecified
      Reserved_1_30 : Interfaces.Bit_Types.UInt30;
      --  Read-only. Access Error Interrupt Status
      AE            : ISR_AE_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_ISR_Register use record
      PSOK          at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   ----------------------
   -- BPM_ICR_Register --
   ----------------------

   subtype ICR_PSOK_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_AE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Clear Register
   type BPM_ICR_Register is record
      --  Write-only. Power Scaling OK Interrupt Status Clear
      PSOK          : ICR_PSOK_Field := 16#0#;
      --  unspecified
      Reserved_1_30 : Interfaces.Bit_Types.UInt30 := 16#0#;
      --  Write-only. Access Error Interrupt Status Clear
      AE            : ICR_AE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_ICR_Register use record
      PSOK          at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   ---------------------
   -- BPM_SR_Register --
   ---------------------

   subtype SR_PSOK_Field is Interfaces.Bit_Types.Bit;
   subtype SR_AE_Field is Interfaces.Bit_Types.Bit;

   --  Status Register
   type BPM_SR_Register is record
      --  Read-only. Power Scaling OK Status
      PSOK          : SR_PSOK_Field;
      --  unspecified
      Reserved_1_30 : Interfaces.Bit_Types.UInt30;
      --  Read-only. Access Error
      AE            : SR_AE_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_SR_Register use record
      PSOK          at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   -------------------------
   -- BPM_UNLOCK_Register --
   -------------------------

   subtype UNLOCK_ADDR_Field is Interfaces.Bit_Types.UInt10;
   subtype UNLOCK_KEY_Field is Interfaces.Bit_Types.Byte;

   --  Unlock Register
   type BPM_UNLOCK_Register is record
      --  Write-only. Unlock Address
      ADDR           : UNLOCK_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_10_23 : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  Write-only. Unlock Key
      KEY            : UNLOCK_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_UNLOCK_Register use record
      ADDR           at 0 range 0 .. 9;
      Reserved_10_23 at 0 range 10 .. 23;
      KEY            at 0 range 24 .. 31;
   end record;

   ------------------------
   -- BPM_PMCON_Register --
   ------------------------

   subtype PMCON_PS_Field is Interfaces.Bit_Types.UInt2;
   subtype PMCON_PSCREQ_Field is Interfaces.Bit_Types.Bit;
   subtype PMCON_PSCM_Field is Interfaces.Bit_Types.Bit;
   subtype PMCON_BKUP_Field is Interfaces.Bit_Types.Bit;
   subtype PMCON_RET_Field is Interfaces.Bit_Types.Bit;
   subtype PMCON_SLEEP_Field is Interfaces.Bit_Types.UInt2;
   subtype PMCON_CK32S_Field is Interfaces.Bit_Types.Bit;
   subtype PMCON_FASTWKUP_Field is Interfaces.Bit_Types.Bit;

   --  Power Mode Control Register
   type BPM_PMCON_Register is record
      --  Power Scaling Configuration Value
      PS             : PMCON_PS_Field := 16#0#;
      --  Power Scaling Change Request
      PSCREQ         : PMCON_PSCREQ_Field := 16#0#;
      --  Power Scaling Change Mode
      PSCM           : PMCON_PSCM_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  BACKUP Mode
      BKUP           : PMCON_BKUP_Field := 16#0#;
      --  RETENTION Mode
      RET            : PMCON_RET_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SLEEP mode Configuration
      SLEEP          : PMCON_SLEEP_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  32Khz-1Khz Clock Source Selection
      CK32S          : PMCON_CK32S_Field := 16#0#;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Fast Wakeup
      FASTWKUP       : PMCON_FASTWKUP_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_PMCON_Register use record
      PS             at 0 range 0 .. 1;
      PSCREQ         at 0 range 2 .. 2;
      PSCM           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      BKUP           at 0 range 8 .. 8;
      RET            at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      SLEEP          at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CK32S          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      FASTWKUP       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   ---------------------------
   -- BPM_BKUPPMUX_Register --
   ---------------------------

   subtype BKUPPMUX_BKUPPMUX_Field is Interfaces.Bit_Types.UInt9;

   --  Backup Pin Muxing Register
   type BPM_BKUPPMUX_Register is record
      --  Backup Pin Muxing
      BKUPPMUX      : BKUPPMUX_BKUPPMUX_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_BKUPPMUX_Register use record
      BKUPPMUX      at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   ------------------------
   -- BPM_IORET_Register --
   ------------------------

   subtype IORET_RET_Field is Interfaces.Bit_Types.Bit;

   --  Input Output Retention Register
   type BPM_IORET_Register is record
      --  Retention on I/O lines after waking up from the BACKUP mode
      RET           : IORET_RET_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_IORET_Register use record
      RET           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ----------------------
   -- BPM_BPR_Register --
   ----------------------

   subtype BPR_RUNPSPB_Field is Interfaces.Bit_Types.Bit;
   subtype BPR_PSMPSPB_Field is Interfaces.Bit_Types.Bit;
   subtype BPR_SEQSTN_Field is Interfaces.Bit_Types.Bit;
   subtype BPR_PSBTD_Field is Interfaces.Bit_Types.Bit;
   subtype BPR_PSHFD_Field is Interfaces.Bit_Types.Bit;
   subtype BPR_DLYRSTD_Field is Interfaces.Bit_Types.Bit;
   subtype BPR_BIASSEN_Field is Interfaces.Bit_Types.Bit;
   subtype BPR_LATSEN_Field is Interfaces.Bit_Types.Bit;
   subtype BPR_BOD18CONT_Field is Interfaces.Bit_Types.Bit;
   subtype BPR_POBS_Field is Interfaces.Bit_Types.Bit;
   subtype BPR_FFFW_Field is Interfaces.Bit_Types.Bit;
   subtype BPR_FBRDYEN_Field is Interfaces.Bit_Types.Bit;
   subtype BPR_FVREFSEN_Field is Interfaces.Bit_Types.Bit;

   --  Bypass Register
   type BPM_BPR_Register is record
      --  Run Mode Power Scaling Preset Bypass
      RUNPSPB        : BPR_RUNPSPB_Field := 16#0#;
      --  Power Save Mode Power Scaling Preset Bypass
      PSMPSPB        : BPR_PSMPSPB_Field := 16#0#;
      --  Sequencial Startup from ULP (Active Low)
      SEQSTN         : BPR_SEQSTN_Field := 16#0#;
      --  Power Scaling Bias Timing Disable
      PSBTD          : BPR_PSBTD_Field := 16#0#;
      --  Power Scaling Halt Flash Until VREGOK Disable
      PSHFD          : BPR_PSHFD_Field := 16#0#;
      --  Delaying Reset Disable
      DLYRSTD        : BPR_DLYRSTD_Field := 16#0#;
      --  Bias Switch Enable
      BIASSEN        : BPR_BIASSEN_Field := 16#0#;
      --  Latdel Switch Enable
      LATSEN         : BPR_LATSEN_Field := 16#0#;
      --  BOD18 in continuous mode not disabled in WAIT/RET/BACKUP modes
      BOD18CONT      : BPR_BOD18CONT_Field := 16#0#;
      --  Pico Uart Observability
      POBS           : BPR_POBS_Field := 16#0#;
      --  Force Flash Fast Wakeup
      FFFW           : BPR_FFFW_Field := 16#0#;
      --  Flash Bias Ready Enable
      FBRDYEN        : BPR_FBRDYEN_Field := 16#0#;
      --  Flash Vref Switch Enable
      FVREFSEN       : BPR_FVREFSEN_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_BPR_Register use record
      RUNPSPB        at 0 range 0 .. 0;
      PSMPSPB        at 0 range 1 .. 1;
      SEQSTN         at 0 range 2 .. 2;
      PSBTD          at 0 range 3 .. 3;
      PSHFD          at 0 range 4 .. 4;
      DLYRSTD        at 0 range 5 .. 5;
      BIASSEN        at 0 range 6 .. 6;
      LATSEN         at 0 range 7 .. 7;
      BOD18CONT      at 0 range 8 .. 8;
      POBS           at 0 range 9 .. 9;
      FFFW           at 0 range 10 .. 10;
      FBRDYEN        at 0 range 11 .. 11;
      FVREFSEN       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --------------------------
   -- BPM_FWRUNPS_Register --
   --------------------------

   subtype FWRUNPS_REGLEVEL_Field is Interfaces.Bit_Types.UInt4;

   --  Regulator Type
   type REGTYPESelect is
     (
      Normal,
      Lp,
      Xulp)
     with Size => 2;
   for REGTYPESelect use
     (Normal => 0,
      Lp => 1,
      Xulp => 2);

   --  Reference Type
   type REFTYPESelect is
     (
      Both,
      Bg,
      Lpbg,
      Internal)
     with Size => 2;
   for REFTYPESelect use
     (Both => 0,
      Bg => 1,
      Lpbg => 2,
      Internal => 3);

   subtype FWRUNPS_FLASHLATDEL_Field is Interfaces.Bit_Types.UInt5;
   subtype FWRUNPS_FLASHBIAS_Field is Interfaces.Bit_Types.UInt4;
   subtype FWRUNPS_FPPW_Field is Interfaces.Bit_Types.Bit;
   subtype FWRUNPS_RC115_Field is Interfaces.Bit_Types.UInt7;
   subtype FWRUNPS_RCFAST_Field is Interfaces.Bit_Types.UInt7;

   --  Factory Word Run PS Register
   type BPM_FWRUNPS_Register is record
      --  Read-only. Regulator Voltage Level
      REGLEVEL    : FWRUNPS_REGLEVEL_Field;
      --  Read-only. Regulator Type
      REGTYPE     : REGTYPESelect;
      --  Read-only. Reference Type
      REFTYPE     : REFTYPESelect;
      --  Read-only. Flash Latch Delay Value
      FLASHLATDEL : FWRUNPS_FLASHLATDEL_Field;
      --  Read-only. Flash Bias Value
      FLASHBIAS   : FWRUNPS_FLASHBIAS_Field;
      --  Read-only. Flash Pico Power Mode
      FPPW        : FWRUNPS_FPPW_Field;
      --  Read-only. RC 115KHZ Calibration Value
      RC115       : FWRUNPS_RC115_Field;
      --  Read-only. RCFAST Calibration Value
      RCFAST      : FWRUNPS_RCFAST_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_FWRUNPS_Register use record
      REGLEVEL    at 0 range 0 .. 3;
      REGTYPE     at 0 range 4 .. 5;
      REFTYPE     at 0 range 6 .. 7;
      FLASHLATDEL at 0 range 8 .. 12;
      FLASHBIAS   at 0 range 13 .. 16;
      FPPW        at 0 range 17 .. 17;
      RC115       at 0 range 18 .. 24;
      RCFAST      at 0 range 25 .. 31;
   end record;

   ----------------------------
   -- BPM_FWPSAVEPS_Register --
   ----------------------------

   subtype FWPSAVEPS_WREGLEVEL_Field is Interfaces.Bit_Types.UInt4;
   subtype FWPSAVEPS_WBIAS_Field is Interfaces.Bit_Types.UInt4;
   subtype FWPSAVEPS_WLATDEL_Field is Interfaces.Bit_Types.UInt5;
   subtype FWPSAVEPS_RREGLEVEL_Field is Interfaces.Bit_Types.UInt4;
   subtype FWPSAVEPS_RBIAS_Field is Interfaces.Bit_Types.UInt4;
   subtype FWPSAVEPS_RLATDEL_Field is Interfaces.Bit_Types.UInt5;
   subtype FWPSAVEPS_BREGLEVEL_Field is Interfaces.Bit_Types.UInt4;
   subtype FWPSAVEPS_POR18DIS_Field is Interfaces.Bit_Types.Bit;
   subtype FWPSAVEPS_FWSAS_Field is Interfaces.Bit_Types.Bit;

   --  Factory Word Power Save PS Register
   type BPM_FWPSAVEPS_Register is record
      --  Read-only. Wait mode Regulator Level
      WREGLEVEL : FWPSAVEPS_WREGLEVEL_Field;
      --  Read-only. Bias in wait mode
      WBIAS     : FWPSAVEPS_WBIAS_Field;
      --  Read-only. Flash Latdel in wait mode
      WLATDEL   : FWPSAVEPS_WLATDEL_Field;
      --  Read-only. Retention mode Regulator Level
      RREGLEVEL : FWPSAVEPS_RREGLEVEL_Field;
      --  Read-only. Bias in Retention mode
      RBIAS     : FWPSAVEPS_RBIAS_Field;
      --  Read-only. Flash Latdel in Retention mode
      RLATDEL   : FWPSAVEPS_RLATDEL_Field;
      --  Read-only. Backup mode Regulator Level
      BREGLEVEL : FWPSAVEPS_BREGLEVEL_Field;
      --  Read-only. POR 18 Disable
      POR18DIS  : FWPSAVEPS_POR18DIS_Field;
      --  Read-only. Flash Wait State Automatic Switching
      FWSAS     : FWPSAVEPS_FWSAS_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_FWPSAVEPS_Register use record
      WREGLEVEL at 0 range 0 .. 3;
      WBIAS     at 0 range 4 .. 7;
      WLATDEL   at 0 range 8 .. 12;
      RREGLEVEL at 0 range 13 .. 16;
      RBIAS     at 0 range 17 .. 20;
      RLATDEL   at 0 range 21 .. 25;
      BREGLEVEL at 0 range 26 .. 29;
      POR18DIS  at 0 range 30 .. 30;
      FWSAS     at 0 range 31 .. 31;
   end record;

   --------------------------
   -- BPM_VERSION_Register --
   --------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type BPM_VERSION_Register is record
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

   for BPM_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Backup Power Manager
   type BPM_Peripheral is record
      --  Interrupt Enable Register
      IER        : BPM_IER_Register;
      --  Interrupt Disable Register
      IDR        : BPM_IDR_Register;
      --  Interrupt Mask Register
      IMR        : BPM_IMR_Register;
      --  Interrupt Status Register
      ISR        : BPM_ISR_Register;
      --  Interrupt Clear Register
      ICR        : BPM_ICR_Register;
      --  Status Register
      SR         : BPM_SR_Register;
      --  Unlock Register
      UNLOCK     : BPM_UNLOCK_Register;
      --  Power Mode Control Register
      PMCON      : BPM_PMCON_Register;
      --  Backup Wake up Cause Register
      BKUPWCAUSE : Interfaces.Bit_Types.Word;
      --  Backup Wake up Enable Register
      BKUPWEN    : Interfaces.Bit_Types.Word;
      --  Backup Pin Muxing Register
      BKUPPMUX   : BPM_BKUPPMUX_Register;
      --  Input Output Retention Register
      IORET      : BPM_IORET_Register;
      --  Bypass Register
      BPR        : BPM_BPR_Register;
      --  Factory Word Run PS Register
      FWRUNPS    : BPM_FWRUNPS_Register;
      --  Factory Word Power Save PS Register
      FWPSAVEPS  : BPM_FWPSAVEPS_Register;
      --  Version Register
      VERSION    : BPM_VERSION_Register;
   end record
     with Volatile;

   for BPM_Peripheral use record
      IER        at 0 range 0 .. 31;
      IDR        at 4 range 0 .. 31;
      IMR        at 8 range 0 .. 31;
      ISR        at 12 range 0 .. 31;
      ICR        at 16 range 0 .. 31;
      SR         at 20 range 0 .. 31;
      UNLOCK     at 24 range 0 .. 31;
      PMCON      at 28 range 0 .. 31;
      BKUPWCAUSE at 40 range 0 .. 31;
      BKUPWEN    at 44 range 0 .. 31;
      BKUPPMUX   at 48 range 0 .. 31;
      IORET      at 52 range 0 .. 31;
      BPR        at 64 range 0 .. 31;
      FWRUNPS    at 68 range 0 .. 31;
      FWPSAVEPS  at 72 range 0 .. 31;
      VERSION    at 252 range 0 .. 31;
   end record;

   --  Backup Power Manager
   BPM_Periph : aliased BPM_Peripheral
     with Import, Address => BPM_Base;

end Interfaces.ATSAM4L.BPM;
