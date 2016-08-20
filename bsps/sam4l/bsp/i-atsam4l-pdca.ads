--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.PDCA is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ------------------
   -- PSR_Register --
   ------------------

   subtype PSR0_PID_Field is Interfaces.Bit_Types.Byte;

   --  Peripheral Select Register
   type PSR_Register is record
      --  Peripheral Identifier
      PID           : PSR0_PID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSR_Register use record
      PID           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ------------------
   -- TCR_Register --
   ------------------

   subtype TCR0_TCV_Field is Interfaces.Bit_Types.Short;

   --  Transfer Counter Register
   type TCR_Register is record
      --  Transfer Counter Value
      TCV            : TCR0_TCV_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCR_Register use record
      TCV            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -------------------
   -- TCRR_Register --
   -------------------

   subtype TCRR0_TCRV_Field is Interfaces.Bit_Types.Short;

   --  Transfer Counter Reload Register
   type TCRR_Register is record
      --  Transfer Counter Reload Value
      TCRV           : TCRR0_TCRV_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCRR_Register use record
      TCRV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- CR_Register --
   -----------------

   subtype CR0_TEN_Field is Interfaces.Bit_Types.Bit;
   subtype CR0_TDIS_Field is Interfaces.Bit_Types.Bit;
   subtype CR0_ECLR_Field is Interfaces.Bit_Types.Bit;

   --  Control Register
   type CR_Register is record
      --  Write-only. Transfer Enable
      TEN           : CR0_TEN_Field := 16#0#;
      --  Write-only. Transfer Disable
      TDIS          : CR0_TDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_7  : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Write-only. Error Clear
      ECLR          : CR0_ECLR_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      TEN           at 0 range 0 .. 0;
      TDIS          at 0 range 1 .. 1;
      Reserved_2_7  at 0 range 2 .. 7;
      ECLR          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- MR_Register --
   -----------------

   --  Transfer size
   type SIZESelect is
     (
      Byte,
      Half_Word,
      Word)
     with Size => 2;
   for SIZESelect use
     (Byte => 0,
      Half_Word => 1,
      Word => 2);

   subtype MR0_ETRIG_Field is Interfaces.Bit_Types.Bit;
   subtype MR0_RING_Field is Interfaces.Bit_Types.Bit;

   --  Mode Register
   type MR_Register is record
      --  Transfer size
      SIZE          : SIZESelect := Interfaces.ATSAM4L.PDCA.Byte;
      --  Event trigger
      ETRIG         : MR0_ETRIG_Field := 16#0#;
      --  Ring Buffer
      RING          : MR0_RING_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MR_Register use record
      SIZE          at 0 range 0 .. 1;
      ETRIG         at 0 range 2 .. 2;
      RING          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- SR_Register --
   -----------------

   subtype SR0_TEN_Field is Interfaces.Bit_Types.Bit;

   --  Status Register
   type SR_Register is record
      --  Read-only. Transfer Enabled
      TEN           : SR0_TEN_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      TEN           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ------------------
   -- IER_Register --
   ------------------

   subtype IER0_RCZ_Field is Interfaces.Bit_Types.Bit;
   subtype IER0_TRC_Field is Interfaces.Bit_Types.Bit;
   subtype IER0_TERR_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Enable Register
   type IER_Register is record
      --  Write-only. Reload Counter Zero
      RCZ           : IER0_RCZ_Field := 16#0#;
      --  Write-only. Transfer Complete
      TRC           : IER0_TRC_Field := 16#0#;
      --  Write-only. Transfer Error
      TERR          : IER0_TERR_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      RCZ           at 0 range 0 .. 0;
      TRC           at 0 range 1 .. 1;
      TERR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   ------------------
   -- IDR_Register --
   ------------------

   subtype IDR0_RCZ_Field is Interfaces.Bit_Types.Bit;
   subtype IDR0_TRC_Field is Interfaces.Bit_Types.Bit;
   subtype IDR0_TERR_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Disable Register
   type IDR_Register is record
      --  Write-only. Reload Counter Zero
      RCZ           : IDR0_RCZ_Field := 16#0#;
      --  Write-only. Transfer Complete
      TRC           : IDR0_TRC_Field := 16#0#;
      --  Write-only. Transfer Error
      TERR          : IDR0_TERR_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDR_Register use record
      RCZ           at 0 range 0 .. 0;
      TRC           at 0 range 1 .. 1;
      TERR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   ------------------
   -- IMR_Register --
   ------------------

   subtype IMR0_RCZ_Field is Interfaces.Bit_Types.Bit;
   subtype IMR0_TRC_Field is Interfaces.Bit_Types.Bit;
   subtype IMR0_TERR_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Mask Register
   type IMR_Register is record
      --  Read-only. Reload Counter Zero
      RCZ           : IMR0_RCZ_Field;
      --  Read-only. Transfer Complete
      TRC           : IMR0_TRC_Field;
      --  Read-only. Transfer Error
      TERR          : IMR0_TERR_Field;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMR_Register use record
      RCZ           at 0 range 0 .. 0;
      TRC           at 0 range 1 .. 1;
      TERR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   ------------------
   -- ISR_Register --
   ------------------

   subtype ISR0_RCZ_Field is Interfaces.Bit_Types.Bit;
   subtype ISR0_TRC_Field is Interfaces.Bit_Types.Bit;
   subtype ISR0_TERR_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Status Register
   type ISR_Register is record
      --  Read-only. Reload Counter Zero
      RCZ           : ISR0_RCZ_Field;
      --  Read-only. Transfer Complete
      TRC           : ISR0_TRC_Field;
      --  Read-only. Transfer Error
      TERR          : ISR0_TERR_Field;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      RCZ           at 0 range 0 .. 0;
      TRC           at 0 range 1 .. 1;
      TERR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   ----------------------------
   -- PDCA_PCONTROL_Register --
   ----------------------------

   subtype PCONTROL_CH0EN_Field is Interfaces.Bit_Types.Bit;
   subtype PCONTROL_CH1EN_Field is Interfaces.Bit_Types.Bit;
   subtype PCONTROL_CH0OF_Field is Interfaces.Bit_Types.Bit;
   subtype PCONTROL_CH1OF_Field is Interfaces.Bit_Types.Bit;
   subtype PCONTROL_CH0RES_Field is Interfaces.Bit_Types.Bit;
   subtype PCONTROL_CH1RES_Field is Interfaces.Bit_Types.Bit;
   subtype PCONTROL_MON0CH_Field is Interfaces.Bit_Types.UInt6;
   subtype PCONTROL_MON1CH_Field is Interfaces.Bit_Types.UInt6;

   --  Performance Control Register
   type PDCA_PCONTROL_Register is record
      --  Channel 0 Enabled
      CH0EN          : PCONTROL_CH0EN_Field := 16#0#;
      --  Channel 1 Enabled.
      CH1EN          : PCONTROL_CH1EN_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Channel 0 Overflow Freeze
      CH0OF          : PCONTROL_CH0OF_Field := 16#0#;
      --  Channel 1 overflow freeze
      CH1OF          : PCONTROL_CH1OF_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Channel 0 counter reset
      CH0RES         : PCONTROL_CH0RES_Field := 16#0#;
      --  Channel 1 counter reset
      CH1RES         : PCONTROL_CH1RES_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  PDCA Channel to monitor with counter 0
      MON0CH         : PCONTROL_MON0CH_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  PDCA Channel to monitor with counter 1
      MON1CH         : PCONTROL_MON1CH_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCA_PCONTROL_Register use record
      CH0EN          at 0 range 0 .. 0;
      CH1EN          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CH0OF          at 0 range 4 .. 4;
      CH1OF          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CH0RES         at 0 range 8 .. 8;
      CH1RES         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      MON0CH         at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      MON1CH         at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --------------------
   -- PRLAT_Register --
   --------------------

   subtype PRLAT0_LAT_Field is Interfaces.Bit_Types.Short;

   --  Channel 0 Read Max Latency
   type PRLAT_Register is record
      --  Read-only. Maximum Transfer Initiation cycles counted since last
      --  reset
      LAT            : PRLAT0_LAT_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRLAT_Register use record
      LAT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --------------------
   -- PWLAT_Register --
   --------------------

   subtype PWLAT0_LAT_Field is Interfaces.Bit_Types.Short;

   --  Channel0 Write Max Latency
   type PWLAT_Register is record
      --  Read-only. Maximum transfer initiation cycles counted since last
      --  reset
      LAT            : PWLAT0_LAT_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWLAT_Register use record
      LAT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   ---------------------------
   -- PDCA_VERSION_Register --
   ---------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type PDCA_VERSION_Register is record
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

   for PDCA_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Peripheral DMA Controller
   type PDCA_Peripheral is record
      --  Memory Address Register
      MAR0     : Interfaces.Bit_Types.Word;
      --  Peripheral Select Register
      PSR0     : PSR_Register;
      --  Transfer Counter Register
      TCR0     : TCR_Register;
      --  Memory Address Reload Register
      MARR0    : Interfaces.Bit_Types.Word;
      --  Transfer Counter Reload Register
      TCRR0    : TCRR_Register;
      --  Control Register
      CR0      : CR_Register;
      --  Mode Register
      MR0      : MR_Register;
      --  Status Register
      SR0      : SR_Register;
      --  Interrupt Enable Register
      IER0     : IER_Register;
      --  Interrupt Disable Register
      IDR0     : IDR_Register;
      --  Interrupt Mask Register
      IMR0     : IMR_Register;
      --  Interrupt Status Register
      ISR0     : ISR_Register;
      --  Memory Address Register
      MAR1     : Interfaces.Bit_Types.Word;
      --  Peripheral Select Register
      PSR1     : PSR_Register;
      --  Transfer Counter Register
      TCR1     : TCR_Register;
      --  Memory Address Reload Register
      MARR1    : Interfaces.Bit_Types.Word;
      --  Transfer Counter Reload Register
      TCRR1    : TCRR_Register;
      --  Control Register
      CR1      : CR_Register;
      --  Mode Register
      MR1      : MR_Register;
      --  Status Register
      SR1      : SR_Register;
      --  Interrupt Enable Register
      IER1     : IER_Register;
      --  Interrupt Disable Register
      IDR1     : IDR_Register;
      --  Interrupt Mask Register
      IMR1     : IMR_Register;
      --  Interrupt Status Register
      ISR1     : ISR_Register;
      --  Memory Address Register
      MAR2     : Interfaces.Bit_Types.Word;
      --  Peripheral Select Register
      PSR2     : PSR_Register;
      --  Transfer Counter Register
      TCR2     : TCR_Register;
      --  Memory Address Reload Register
      MARR2    : Interfaces.Bit_Types.Word;
      --  Transfer Counter Reload Register
      TCRR2    : TCRR_Register;
      --  Control Register
      CR2      : CR_Register;
      --  Mode Register
      MR2      : MR_Register;
      --  Status Register
      SR2      : SR_Register;
      --  Interrupt Enable Register
      IER2     : IER_Register;
      --  Interrupt Disable Register
      IDR2     : IDR_Register;
      --  Interrupt Mask Register
      IMR2     : IMR_Register;
      --  Interrupt Status Register
      ISR2     : ISR_Register;
      --  Memory Address Register
      MAR3     : Interfaces.Bit_Types.Word;
      --  Peripheral Select Register
      PSR3     : PSR_Register;
      --  Transfer Counter Register
      TCR3     : TCR_Register;
      --  Memory Address Reload Register
      MARR3    : Interfaces.Bit_Types.Word;
      --  Transfer Counter Reload Register
      TCRR3    : TCRR_Register;
      --  Control Register
      CR3      : CR_Register;
      --  Mode Register
      MR3      : MR_Register;
      --  Status Register
      SR3      : SR_Register;
      --  Interrupt Enable Register
      IER3     : IER_Register;
      --  Interrupt Disable Register
      IDR3     : IDR_Register;
      --  Interrupt Mask Register
      IMR3     : IMR_Register;
      --  Interrupt Status Register
      ISR3     : ISR_Register;
      --  Memory Address Register
      MAR4     : Interfaces.Bit_Types.Word;
      --  Peripheral Select Register
      PSR4     : PSR_Register;
      --  Transfer Counter Register
      TCR4     : TCR_Register;
      --  Memory Address Reload Register
      MARR4    : Interfaces.Bit_Types.Word;
      --  Transfer Counter Reload Register
      TCRR4    : TCRR_Register;
      --  Control Register
      CR4      : CR_Register;
      --  Mode Register
      MR4      : MR_Register;
      --  Status Register
      SR4      : SR_Register;
      --  Interrupt Enable Register
      IER4     : IER_Register;
      --  Interrupt Disable Register
      IDR4     : IDR_Register;
      --  Interrupt Mask Register
      IMR4     : IMR_Register;
      --  Interrupt Status Register
      ISR4     : ISR_Register;
      --  Memory Address Register
      MAR5     : Interfaces.Bit_Types.Word;
      --  Peripheral Select Register
      PSR5     : PSR_Register;
      --  Transfer Counter Register
      TCR5     : TCR_Register;
      --  Memory Address Reload Register
      MARR5    : Interfaces.Bit_Types.Word;
      --  Transfer Counter Reload Register
      TCRR5    : TCRR_Register;
      --  Control Register
      CR5      : CR_Register;
      --  Mode Register
      MR5      : MR_Register;
      --  Status Register
      SR5      : SR_Register;
      --  Interrupt Enable Register
      IER5     : IER_Register;
      --  Interrupt Disable Register
      IDR5     : IDR_Register;
      --  Interrupt Mask Register
      IMR5     : IMR_Register;
      --  Interrupt Status Register
      ISR5     : ISR_Register;
      --  Memory Address Register
      MAR6     : Interfaces.Bit_Types.Word;
      --  Peripheral Select Register
      PSR6     : PSR_Register;
      --  Transfer Counter Register
      TCR6     : TCR_Register;
      --  Memory Address Reload Register
      MARR6    : Interfaces.Bit_Types.Word;
      --  Transfer Counter Reload Register
      TCRR6    : TCRR_Register;
      --  Control Register
      CR6      : CR_Register;
      --  Mode Register
      MR6      : MR_Register;
      --  Status Register
      SR6      : SR_Register;
      --  Interrupt Enable Register
      IER6     : IER_Register;
      --  Interrupt Disable Register
      IDR6     : IDR_Register;
      --  Interrupt Mask Register
      IMR6     : IMR_Register;
      --  Interrupt Status Register
      ISR6     : ISR_Register;
      --  Memory Address Register
      MAR7     : Interfaces.Bit_Types.Word;
      --  Peripheral Select Register
      PSR7     : PSR_Register;
      --  Transfer Counter Register
      TCR7     : TCR_Register;
      --  Memory Address Reload Register
      MARR7    : Interfaces.Bit_Types.Word;
      --  Transfer Counter Reload Register
      TCRR7    : TCRR_Register;
      --  Control Register
      CR7      : CR_Register;
      --  Mode Register
      MR7      : MR_Register;
      --  Status Register
      SR7      : SR_Register;
      --  Interrupt Enable Register
      IER7     : IER_Register;
      --  Interrupt Disable Register
      IDR7     : IDR_Register;
      --  Interrupt Mask Register
      IMR7     : IMR_Register;
      --  Interrupt Status Register
      ISR7     : ISR_Register;
      --  Memory Address Register
      MAR8     : Interfaces.Bit_Types.Word;
      --  Peripheral Select Register
      PSR8     : PSR_Register;
      --  Transfer Counter Register
      TCR8     : TCR_Register;
      --  Memory Address Reload Register
      MARR8    : Interfaces.Bit_Types.Word;
      --  Transfer Counter Reload Register
      TCRR8    : TCRR_Register;
      --  Control Register
      CR8      : CR_Register;
      --  Mode Register
      MR8      : MR_Register;
      --  Status Register
      SR8      : SR_Register;
      --  Interrupt Enable Register
      IER8     : IER_Register;
      --  Interrupt Disable Register
      IDR8     : IDR_Register;
      --  Interrupt Mask Register
      IMR8     : IMR_Register;
      --  Interrupt Status Register
      ISR8     : ISR_Register;
      --  Memory Address Register
      MAR9     : Interfaces.Bit_Types.Word;
      --  Peripheral Select Register
      PSR9     : PSR_Register;
      --  Transfer Counter Register
      TCR9     : TCR_Register;
      --  Memory Address Reload Register
      MARR9    : Interfaces.Bit_Types.Word;
      --  Transfer Counter Reload Register
      TCRR9    : TCRR_Register;
      --  Control Register
      CR9      : CR_Register;
      --  Mode Register
      MR9      : MR_Register;
      --  Status Register
      SR9      : SR_Register;
      --  Interrupt Enable Register
      IER9     : IER_Register;
      --  Interrupt Disable Register
      IDR9     : IDR_Register;
      --  Interrupt Mask Register
      IMR9     : IMR_Register;
      --  Interrupt Status Register
      ISR9     : ISR_Register;
      --  Memory Address Register
      MAR10    : Interfaces.Bit_Types.Word;
      --  Peripheral Select Register
      PSR10    : PSR_Register;
      --  Transfer Counter Register
      TCR10    : TCR_Register;
      --  Memory Address Reload Register
      MARR10   : Interfaces.Bit_Types.Word;
      --  Transfer Counter Reload Register
      TCRR10   : TCRR_Register;
      --  Control Register
      CR10     : CR_Register;
      --  Mode Register
      MR10     : MR_Register;
      --  Status Register
      SR10     : SR_Register;
      --  Interrupt Enable Register
      IER10    : IER_Register;
      --  Interrupt Disable Register
      IDR10    : IDR_Register;
      --  Interrupt Mask Register
      IMR10    : IMR_Register;
      --  Interrupt Status Register
      ISR10    : ISR_Register;
      --  Memory Address Register
      MAR11    : Interfaces.Bit_Types.Word;
      --  Peripheral Select Register
      PSR11    : PSR_Register;
      --  Transfer Counter Register
      TCR11    : TCR_Register;
      --  Memory Address Reload Register
      MARR11   : Interfaces.Bit_Types.Word;
      --  Transfer Counter Reload Register
      TCRR11   : TCRR_Register;
      --  Control Register
      CR11     : CR_Register;
      --  Mode Register
      MR11     : MR_Register;
      --  Status Register
      SR11     : SR_Register;
      --  Interrupt Enable Register
      IER11    : IER_Register;
      --  Interrupt Disable Register
      IDR11    : IDR_Register;
      --  Interrupt Mask Register
      IMR11    : IMR_Register;
      --  Interrupt Status Register
      ISR11    : ISR_Register;
      --  Memory Address Register
      MAR12    : Interfaces.Bit_Types.Word;
      --  Peripheral Select Register
      PSR12    : PSR_Register;
      --  Transfer Counter Register
      TCR12    : TCR_Register;
      --  Memory Address Reload Register
      MARR12   : Interfaces.Bit_Types.Word;
      --  Transfer Counter Reload Register
      TCRR12   : TCRR_Register;
      --  Control Register
      CR12     : CR_Register;
      --  Mode Register
      MR12     : MR_Register;
      --  Status Register
      SR12     : SR_Register;
      --  Interrupt Enable Register
      IER12    : IER_Register;
      --  Interrupt Disable Register
      IDR12    : IDR_Register;
      --  Interrupt Mask Register
      IMR12    : IMR_Register;
      --  Interrupt Status Register
      ISR12    : ISR_Register;
      --  Memory Address Register
      MAR13    : Interfaces.Bit_Types.Word;
      --  Peripheral Select Register
      PSR13    : PSR_Register;
      --  Transfer Counter Register
      TCR13    : TCR_Register;
      --  Memory Address Reload Register
      MARR13   : Interfaces.Bit_Types.Word;
      --  Transfer Counter Reload Register
      TCRR13   : TCRR_Register;
      --  Control Register
      CR13     : CR_Register;
      --  Mode Register
      MR13     : MR_Register;
      --  Status Register
      SR13     : SR_Register;
      --  Interrupt Enable Register
      IER13    : IER_Register;
      --  Interrupt Disable Register
      IDR13    : IDR_Register;
      --  Interrupt Mask Register
      IMR13    : IMR_Register;
      --  Interrupt Status Register
      ISR13    : ISR_Register;
      --  Memory Address Register
      MAR14    : Interfaces.Bit_Types.Word;
      --  Peripheral Select Register
      PSR14    : PSR_Register;
      --  Transfer Counter Register
      TCR14    : TCR_Register;
      --  Memory Address Reload Register
      MARR14   : Interfaces.Bit_Types.Word;
      --  Transfer Counter Reload Register
      TCRR14   : TCRR_Register;
      --  Control Register
      CR14     : CR_Register;
      --  Mode Register
      MR14     : MR_Register;
      --  Status Register
      SR14     : SR_Register;
      --  Interrupt Enable Register
      IER14    : IER_Register;
      --  Interrupt Disable Register
      IDR14    : IDR_Register;
      --  Interrupt Mask Register
      IMR14    : IMR_Register;
      --  Interrupt Status Register
      ISR14    : ISR_Register;
      --  Memory Address Register
      MAR15    : Interfaces.Bit_Types.Word;
      --  Peripheral Select Register
      PSR15    : PSR_Register;
      --  Transfer Counter Register
      TCR15    : TCR_Register;
      --  Memory Address Reload Register
      MARR15   : Interfaces.Bit_Types.Word;
      --  Transfer Counter Reload Register
      TCRR15   : TCRR_Register;
      --  Control Register
      CR15     : CR_Register;
      --  Mode Register
      MR15     : MR_Register;
      --  Status Register
      SR15     : SR_Register;
      --  Interrupt Enable Register
      IER15    : IER_Register;
      --  Interrupt Disable Register
      IDR15    : IDR_Register;
      --  Interrupt Mask Register
      IMR15    : IMR_Register;
      --  Interrupt Status Register
      ISR15    : ISR_Register;
      --  Performance Control Register
      PCONTROL : PDCA_PCONTROL_Register;
      --  Channel 0 Read Data Cycles
      PRDATA0  : Interfaces.Bit_Types.Word;
      --  Channel 0 Read Stall Cycles
      PRSTALL0 : Interfaces.Bit_Types.Word;
      --  Channel 0 Read Max Latency
      PRLAT0   : PRLAT_Register;
      --  Channel 0 Write Data Cycles
      PWDATA0  : Interfaces.Bit_Types.Word;
      --  Channel 0 Write Stall Cycles
      PWSTALL0 : Interfaces.Bit_Types.Word;
      --  Channel0 Write Max Latency
      PWLAT0   : PWLAT_Register;
      --  Channel 1 Read Data Cycles
      PRDATA1  : Interfaces.Bit_Types.Word;
      --  Channel Read Stall Cycles
      PRSTALL1 : Interfaces.Bit_Types.Word;
      --  Channel 1 Read Max Latency
      PRLAT1   : PRLAT_Register;
      --  Channel 1 Write Data Cycles
      PWDATA1  : Interfaces.Bit_Types.Word;
      --  Channel 1 Write stall Cycles
      PWSTALL1 : Interfaces.Bit_Types.Word;
      --  Channel 1 Read Max Latency
      PWLAT1   : PWLAT_Register;
      --  Version Register
      VERSION  : PDCA_VERSION_Register;
   end record
     with Volatile;

   for PDCA_Peripheral use record
      MAR0     at 0 range 0 .. 31;
      PSR0     at 4 range 0 .. 31;
      TCR0     at 8 range 0 .. 31;
      MARR0    at 12 range 0 .. 31;
      TCRR0    at 16 range 0 .. 31;
      CR0      at 20 range 0 .. 31;
      MR0      at 24 range 0 .. 31;
      SR0      at 28 range 0 .. 31;
      IER0     at 32 range 0 .. 31;
      IDR0     at 36 range 0 .. 31;
      IMR0     at 40 range 0 .. 31;
      ISR0     at 44 range 0 .. 31;
      MAR1     at 64 range 0 .. 31;
      PSR1     at 68 range 0 .. 31;
      TCR1     at 72 range 0 .. 31;
      MARR1    at 76 range 0 .. 31;
      TCRR1    at 80 range 0 .. 31;
      CR1      at 84 range 0 .. 31;
      MR1      at 88 range 0 .. 31;
      SR1      at 92 range 0 .. 31;
      IER1     at 96 range 0 .. 31;
      IDR1     at 100 range 0 .. 31;
      IMR1     at 104 range 0 .. 31;
      ISR1     at 108 range 0 .. 31;
      MAR2     at 128 range 0 .. 31;
      PSR2     at 132 range 0 .. 31;
      TCR2     at 136 range 0 .. 31;
      MARR2    at 140 range 0 .. 31;
      TCRR2    at 144 range 0 .. 31;
      CR2      at 148 range 0 .. 31;
      MR2      at 152 range 0 .. 31;
      SR2      at 156 range 0 .. 31;
      IER2     at 160 range 0 .. 31;
      IDR2     at 164 range 0 .. 31;
      IMR2     at 168 range 0 .. 31;
      ISR2     at 172 range 0 .. 31;
      MAR3     at 192 range 0 .. 31;
      PSR3     at 196 range 0 .. 31;
      TCR3     at 200 range 0 .. 31;
      MARR3    at 204 range 0 .. 31;
      TCRR3    at 208 range 0 .. 31;
      CR3      at 212 range 0 .. 31;
      MR3      at 216 range 0 .. 31;
      SR3      at 220 range 0 .. 31;
      IER3     at 224 range 0 .. 31;
      IDR3     at 228 range 0 .. 31;
      IMR3     at 232 range 0 .. 31;
      ISR3     at 236 range 0 .. 31;
      MAR4     at 256 range 0 .. 31;
      PSR4     at 260 range 0 .. 31;
      TCR4     at 264 range 0 .. 31;
      MARR4    at 268 range 0 .. 31;
      TCRR4    at 272 range 0 .. 31;
      CR4      at 276 range 0 .. 31;
      MR4      at 280 range 0 .. 31;
      SR4      at 284 range 0 .. 31;
      IER4     at 288 range 0 .. 31;
      IDR4     at 292 range 0 .. 31;
      IMR4     at 296 range 0 .. 31;
      ISR4     at 300 range 0 .. 31;
      MAR5     at 320 range 0 .. 31;
      PSR5     at 324 range 0 .. 31;
      TCR5     at 328 range 0 .. 31;
      MARR5    at 332 range 0 .. 31;
      TCRR5    at 336 range 0 .. 31;
      CR5      at 340 range 0 .. 31;
      MR5      at 344 range 0 .. 31;
      SR5      at 348 range 0 .. 31;
      IER5     at 352 range 0 .. 31;
      IDR5     at 356 range 0 .. 31;
      IMR5     at 360 range 0 .. 31;
      ISR5     at 364 range 0 .. 31;
      MAR6     at 384 range 0 .. 31;
      PSR6     at 388 range 0 .. 31;
      TCR6     at 392 range 0 .. 31;
      MARR6    at 396 range 0 .. 31;
      TCRR6    at 400 range 0 .. 31;
      CR6      at 404 range 0 .. 31;
      MR6      at 408 range 0 .. 31;
      SR6      at 412 range 0 .. 31;
      IER6     at 416 range 0 .. 31;
      IDR6     at 420 range 0 .. 31;
      IMR6     at 424 range 0 .. 31;
      ISR6     at 428 range 0 .. 31;
      MAR7     at 448 range 0 .. 31;
      PSR7     at 452 range 0 .. 31;
      TCR7     at 456 range 0 .. 31;
      MARR7    at 460 range 0 .. 31;
      TCRR7    at 464 range 0 .. 31;
      CR7      at 468 range 0 .. 31;
      MR7      at 472 range 0 .. 31;
      SR7      at 476 range 0 .. 31;
      IER7     at 480 range 0 .. 31;
      IDR7     at 484 range 0 .. 31;
      IMR7     at 488 range 0 .. 31;
      ISR7     at 492 range 0 .. 31;
      MAR8     at 512 range 0 .. 31;
      PSR8     at 516 range 0 .. 31;
      TCR8     at 520 range 0 .. 31;
      MARR8    at 524 range 0 .. 31;
      TCRR8    at 528 range 0 .. 31;
      CR8      at 532 range 0 .. 31;
      MR8      at 536 range 0 .. 31;
      SR8      at 540 range 0 .. 31;
      IER8     at 544 range 0 .. 31;
      IDR8     at 548 range 0 .. 31;
      IMR8     at 552 range 0 .. 31;
      ISR8     at 556 range 0 .. 31;
      MAR9     at 576 range 0 .. 31;
      PSR9     at 580 range 0 .. 31;
      TCR9     at 584 range 0 .. 31;
      MARR9    at 588 range 0 .. 31;
      TCRR9    at 592 range 0 .. 31;
      CR9      at 596 range 0 .. 31;
      MR9      at 600 range 0 .. 31;
      SR9      at 604 range 0 .. 31;
      IER9     at 608 range 0 .. 31;
      IDR9     at 612 range 0 .. 31;
      IMR9     at 616 range 0 .. 31;
      ISR9     at 620 range 0 .. 31;
      MAR10    at 640 range 0 .. 31;
      PSR10    at 644 range 0 .. 31;
      TCR10    at 648 range 0 .. 31;
      MARR10   at 652 range 0 .. 31;
      TCRR10   at 656 range 0 .. 31;
      CR10     at 660 range 0 .. 31;
      MR10     at 664 range 0 .. 31;
      SR10     at 668 range 0 .. 31;
      IER10    at 672 range 0 .. 31;
      IDR10    at 676 range 0 .. 31;
      IMR10    at 680 range 0 .. 31;
      ISR10    at 684 range 0 .. 31;
      MAR11    at 704 range 0 .. 31;
      PSR11    at 708 range 0 .. 31;
      TCR11    at 712 range 0 .. 31;
      MARR11   at 716 range 0 .. 31;
      TCRR11   at 720 range 0 .. 31;
      CR11     at 724 range 0 .. 31;
      MR11     at 728 range 0 .. 31;
      SR11     at 732 range 0 .. 31;
      IER11    at 736 range 0 .. 31;
      IDR11    at 740 range 0 .. 31;
      IMR11    at 744 range 0 .. 31;
      ISR11    at 748 range 0 .. 31;
      MAR12    at 768 range 0 .. 31;
      PSR12    at 772 range 0 .. 31;
      TCR12    at 776 range 0 .. 31;
      MARR12   at 780 range 0 .. 31;
      TCRR12   at 784 range 0 .. 31;
      CR12     at 788 range 0 .. 31;
      MR12     at 792 range 0 .. 31;
      SR12     at 796 range 0 .. 31;
      IER12    at 800 range 0 .. 31;
      IDR12    at 804 range 0 .. 31;
      IMR12    at 808 range 0 .. 31;
      ISR12    at 812 range 0 .. 31;
      MAR13    at 832 range 0 .. 31;
      PSR13    at 836 range 0 .. 31;
      TCR13    at 840 range 0 .. 31;
      MARR13   at 844 range 0 .. 31;
      TCRR13   at 848 range 0 .. 31;
      CR13     at 852 range 0 .. 31;
      MR13     at 856 range 0 .. 31;
      SR13     at 860 range 0 .. 31;
      IER13    at 864 range 0 .. 31;
      IDR13    at 868 range 0 .. 31;
      IMR13    at 872 range 0 .. 31;
      ISR13    at 876 range 0 .. 31;
      MAR14    at 896 range 0 .. 31;
      PSR14    at 900 range 0 .. 31;
      TCR14    at 904 range 0 .. 31;
      MARR14   at 908 range 0 .. 31;
      TCRR14   at 912 range 0 .. 31;
      CR14     at 916 range 0 .. 31;
      MR14     at 920 range 0 .. 31;
      SR14     at 924 range 0 .. 31;
      IER14    at 928 range 0 .. 31;
      IDR14    at 932 range 0 .. 31;
      IMR14    at 936 range 0 .. 31;
      ISR14    at 940 range 0 .. 31;
      MAR15    at 960 range 0 .. 31;
      PSR15    at 964 range 0 .. 31;
      TCR15    at 968 range 0 .. 31;
      MARR15   at 972 range 0 .. 31;
      TCRR15   at 976 range 0 .. 31;
      CR15     at 980 range 0 .. 31;
      MR15     at 984 range 0 .. 31;
      SR15     at 988 range 0 .. 31;
      IER15    at 992 range 0 .. 31;
      IDR15    at 996 range 0 .. 31;
      IMR15    at 1000 range 0 .. 31;
      ISR15    at 1004 range 0 .. 31;
      PCONTROL at 2048 range 0 .. 31;
      PRDATA0  at 2052 range 0 .. 31;
      PRSTALL0 at 2056 range 0 .. 31;
      PRLAT0   at 2060 range 0 .. 31;
      PWDATA0  at 2064 range 0 .. 31;
      PWSTALL0 at 2068 range 0 .. 31;
      PWLAT0   at 2072 range 0 .. 31;
      PRDATA1  at 2076 range 0 .. 31;
      PRSTALL1 at 2080 range 0 .. 31;
      PRLAT1   at 2084 range 0 .. 31;
      PWDATA1  at 2088 range 0 .. 31;
      PWSTALL1 at 2092 range 0 .. 31;
      PWLAT1   at 2096 range 0 .. 31;
      VERSION  at 2100 range 0 .. 31;
   end record;

   --  Peripheral DMA Controller
   PDCA_Periph : aliased PDCA_Peripheral
     with Import, Address => PDCA_Base;

end Interfaces.ATSAM4L.PDCA;
