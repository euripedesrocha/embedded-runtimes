--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.TWIM is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ----------------------
   -- TWIM_CR_Register --
   ----------------------

   subtype CR_MEN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_MDIS_Field is Interfaces.Bit_Types.Bit;
   subtype CR_SMEN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_SMDIS_Field is Interfaces.Bit_Types.Bit;
   subtype CR_SWRST_Field is Interfaces.Bit_Types.Bit;
   subtype CR_STOP_Field is Interfaces.Bit_Types.Bit;

   --  Control Register
   type TWIM_CR_Register is record
      --  Write-only. Master Enable
      MEN           : CR_MEN_Field := 16#0#;
      --  Write-only. Master Disable
      MDIS          : CR_MDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_3  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. SMBus Enable
      SMEN          : CR_SMEN_Field := 16#0#;
      --  Write-only. SMBus Disable
      SMDIS         : CR_SMDIS_Field := 16#0#;
      --  unspecified
      Reserved_6_6  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Software Reset
      SWRST         : CR_SWRST_Field := 16#0#;
      --  Write-only. Stop the current transfer
      STOP          : CR_STOP_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_CR_Register use record
      MEN           at 0 range 0 .. 0;
      MDIS          at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      SMEN          at 0 range 4 .. 4;
      SMDIS         at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      SWRST         at 0 range 7 .. 7;
      STOP          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   ------------------------
   -- TWIM_CWGR_Register --
   ------------------------

   subtype CWGR_LOW_Field is Interfaces.Bit_Types.Byte;
   subtype CWGR_HIGH_Field is Interfaces.Bit_Types.Byte;
   subtype CWGR_STASTO_Field is Interfaces.Bit_Types.Byte;
   subtype CWGR_DATA_Field is Interfaces.Bit_Types.UInt4;
   subtype CWGR_EXP_Field is Interfaces.Bit_Types.UInt3;

   --  Clock Waveform Generator Register
   type TWIM_CWGR_Register is record
      --  Clock Low Cycles
      LOW            : CWGR_LOW_Field := 16#0#;
      --  Clock High Cycles
      HIGH           : CWGR_HIGH_Field := 16#0#;
      --  START and STOP Cycles
      STASTO         : CWGR_STASTO_Field := 16#0#;
      --  Data Setup and Hold Cycles
      DATA           : CWGR_DATA_Field := 16#0#;
      --  Clock Prescaler
      EXP            : CWGR_EXP_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_CWGR_Register use record
      LOW            at 0 range 0 .. 7;
      HIGH           at 0 range 8 .. 15;
      STASTO         at 0 range 16 .. 23;
      DATA           at 0 range 24 .. 27;
      EXP            at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   -------------------------
   -- TWIM_SMBTR_Register --
   -------------------------

   subtype SMBTR_TLOWS_Field is Interfaces.Bit_Types.Byte;
   subtype SMBTR_TLOWM_Field is Interfaces.Bit_Types.Byte;
   subtype SMBTR_THMAX_Field is Interfaces.Bit_Types.Byte;
   subtype SMBTR_EXP_Field is Interfaces.Bit_Types.UInt4;

   --  SMBus Timing Register
   type TWIM_SMBTR_Register is record
      --  Slave Clock stretch maximum cycles
      TLOWS          : SMBTR_TLOWS_Field := 16#0#;
      --  Master Clock stretch maximum cycles
      TLOWM          : SMBTR_TLOWM_Field := 16#0#;
      --  Clock High maximum cycles
      THMAX          : SMBTR_THMAX_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  SMBus Timeout Clock prescaler
      EXP            : SMBTR_EXP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_SMBTR_Register use record
      TLOWS          at 0 range 0 .. 7;
      TLOWM          at 0 range 8 .. 15;
      THMAX          at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      EXP            at 0 range 28 .. 31;
   end record;

   ------------------------
   -- TWIM_CMDR_Register --
   ------------------------

   subtype CMDR_READ_Field is Interfaces.Bit_Types.Bit;
   subtype CMDR_SADR_Field is Interfaces.Bit_Types.UInt10;
   subtype CMDR_TENBIT_Field is Interfaces.Bit_Types.Bit;
   subtype CMDR_REPSAME_Field is Interfaces.Bit_Types.Bit;
   subtype CMDR_START_Field is Interfaces.Bit_Types.Bit;
   subtype CMDR_STOP_Field is Interfaces.Bit_Types.Bit;
   subtype CMDR_VALID_Field is Interfaces.Bit_Types.Bit;
   subtype CMDR_NBYTES_Field is Interfaces.Bit_Types.Byte;
   subtype CMDR_PECEN_Field is Interfaces.Bit_Types.Bit;
   subtype CMDR_ACKLAST_Field is Interfaces.Bit_Types.Bit;
   subtype CMDR_HS_Field is Interfaces.Bit_Types.Bit;
   subtype CMDR_HSMCODE_Field is Interfaces.Bit_Types.UInt3;

   --  Command Register
   type TWIM_CMDR_Register is record
      --  Transfer Direction
      READ           : CMDR_READ_Field := 16#0#;
      --  Slave Address
      SADR           : CMDR_SADR_Field := 16#0#;
      --  Ten Bit Addressing Mode
      TENBIT         : CMDR_TENBIT_Field := 16#0#;
      --  Transfer is to same address as previous address
      REPSAME        : CMDR_REPSAME_Field := 16#0#;
      --  Send START condition
      START          : CMDR_START_Field := 16#0#;
      --  Send STOP condition
      STOP           : CMDR_STOP_Field := 16#0#;
      --  CMDR Valid
      VALID          : CMDR_VALID_Field := 16#0#;
      --  Number of data bytes in transfer
      NBYTES         : CMDR_NBYTES_Field := 16#0#;
      --  Packet Error Checking Enable
      PECEN          : CMDR_PECEN_Field := 16#0#;
      --  ACK Last Master RX Byte
      ACKLAST        : CMDR_ACKLAST_Field := 16#0#;
      --  HS-mode
      HS             : CMDR_HS_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#0#;
      --  HS-mode Master Code
      HSMCODE        : CMDR_HSMCODE_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_CMDR_Register use record
      READ           at 0 range 0 .. 0;
      SADR           at 0 range 1 .. 10;
      TENBIT         at 0 range 11 .. 11;
      REPSAME        at 0 range 12 .. 12;
      START          at 0 range 13 .. 13;
      STOP           at 0 range 14 .. 14;
      VALID          at 0 range 15 .. 15;
      NBYTES         at 0 range 16 .. 23;
      PECEN          at 0 range 24 .. 24;
      ACKLAST        at 0 range 25 .. 25;
      HS             at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      HSMCODE        at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   -------------------------
   -- TWIM_NCMDR_Register --
   -------------------------

   subtype NCMDR_READ_Field is Interfaces.Bit_Types.Bit;
   subtype NCMDR_SADR_Field is Interfaces.Bit_Types.UInt10;
   subtype NCMDR_TENBIT_Field is Interfaces.Bit_Types.Bit;
   subtype NCMDR_REPSAME_Field is Interfaces.Bit_Types.Bit;
   subtype NCMDR_START_Field is Interfaces.Bit_Types.Bit;
   subtype NCMDR_STOP_Field is Interfaces.Bit_Types.Bit;
   subtype NCMDR_VALID_Field is Interfaces.Bit_Types.Bit;
   subtype NCMDR_NBYTES_Field is Interfaces.Bit_Types.Byte;
   subtype NCMDR_PECEN_Field is Interfaces.Bit_Types.Bit;
   subtype NCMDR_ACKLAST_Field is Interfaces.Bit_Types.Bit;
   subtype NCMDR_HS_Field is Interfaces.Bit_Types.Bit;
   subtype NCMDR_HSMCODE_Field is Interfaces.Bit_Types.UInt3;

   --  Next Command Register
   type TWIM_NCMDR_Register is record
      --  Transfer Direction
      READ           : NCMDR_READ_Field := 16#0#;
      --  Slave Address
      SADR           : NCMDR_SADR_Field := 16#0#;
      --  Ten Bit Addressing Mode
      TENBIT         : NCMDR_TENBIT_Field := 16#0#;
      --  Transfer is to same address as previous address
      REPSAME        : NCMDR_REPSAME_Field := 16#0#;
      --  Send START condition
      START          : NCMDR_START_Field := 16#0#;
      --  Send STOP condition
      STOP           : NCMDR_STOP_Field := 16#0#;
      --  CMDR Valid
      VALID          : NCMDR_VALID_Field := 16#0#;
      --  Number of data bytes in transfer
      NBYTES         : NCMDR_NBYTES_Field := 16#0#;
      --  Packet Error Checking Enable
      PECEN          : NCMDR_PECEN_Field := 16#0#;
      --  ACK Last Master RX Byte
      ACKLAST        : NCMDR_ACKLAST_Field := 16#0#;
      --  HS-mode
      HS             : NCMDR_HS_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#0#;
      --  HS-mode Master Code
      HSMCODE        : NCMDR_HSMCODE_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_NCMDR_Register use record
      READ           at 0 range 0 .. 0;
      SADR           at 0 range 1 .. 10;
      TENBIT         at 0 range 11 .. 11;
      REPSAME        at 0 range 12 .. 12;
      START          at 0 range 13 .. 13;
      STOP           at 0 range 14 .. 14;
      VALID          at 0 range 15 .. 15;
      NBYTES         at 0 range 16 .. 23;
      PECEN          at 0 range 24 .. 24;
      ACKLAST        at 0 range 25 .. 25;
      HS             at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      HSMCODE        at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   -----------------------
   -- TWIM_RHR_Register --
   -----------------------

   subtype RHR_RXDATA_Field is Interfaces.Bit_Types.Byte;

   --  Receive Holding Register
   type TWIM_RHR_Register is record
      --  Read-only. Received Data
      RXDATA        : RHR_RXDATA_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_RHR_Register use record
      RXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------------
   -- TWIM_THR_Register --
   -----------------------

   subtype THR_TXDATA_Field is Interfaces.Bit_Types.Byte;

   --  Transmit Holding Register
   type TWIM_THR_Register is record
      --  Write-only. Data to Transmit
      TXDATA        : THR_TXDATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_THR_Register use record
      TXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ----------------------
   -- TWIM_SR_Register --
   ----------------------

   subtype SR_RXRDY_Field is Interfaces.Bit_Types.Bit;
   subtype SR_TXRDY_Field is Interfaces.Bit_Types.Bit;
   subtype SR_CRDY_Field is Interfaces.Bit_Types.Bit;
   subtype SR_CCOMP_Field is Interfaces.Bit_Types.Bit;
   subtype SR_IDLE_Field is Interfaces.Bit_Types.Bit;
   subtype SR_BUSFREE_Field is Interfaces.Bit_Types.Bit;
   subtype SR_ANAK_Field is Interfaces.Bit_Types.Bit;
   subtype SR_DNAK_Field is Interfaces.Bit_Types.Bit;
   subtype SR_ARBLST_Field is Interfaces.Bit_Types.Bit;
   subtype SR_SMBALERT_Field is Interfaces.Bit_Types.Bit;
   subtype SR_TOUT_Field is Interfaces.Bit_Types.Bit;
   subtype SR_PECERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_STOP_Field is Interfaces.Bit_Types.Bit;
   subtype SR_MENB_Field is Interfaces.Bit_Types.Bit;
   subtype SR_HSMCACK_Field is Interfaces.Bit_Types.Bit;

   --  Status Register
   type TWIM_SR_Register is record
      --  Read-only. RHR Data Ready
      RXRDY          : SR_RXRDY_Field;
      --  Read-only. THR Data Ready
      TXRDY          : SR_TXRDY_Field;
      --  Read-only. Ready for More Commands
      CRDY           : SR_CRDY_Field;
      --  Read-only. Command Complete
      CCOMP          : SR_CCOMP_Field;
      --  Read-only. Master Interface is Idle
      IDLE           : SR_IDLE_Field;
      --  Read-only. Two-wire Bus is Free
      BUSFREE        : SR_BUSFREE_Field;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2;
      --  Read-only. NAK in Address Phase Received
      ANAK           : SR_ANAK_Field;
      --  Read-only. NAK in Data Phase Received
      DNAK           : SR_DNAK_Field;
      --  Read-only. Arbitration Lost
      ARBLST         : SR_ARBLST_Field;
      --  Read-only. SMBus Alert
      SMBALERT       : SR_SMBALERT_Field;
      --  Read-only. Timeout
      TOUT           : SR_TOUT_Field;
      --  Read-only. PEC Error
      PECERR         : SR_PECERR_Field;
      --  Read-only. Stop Request Accepted
      STOP           : SR_STOP_Field;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit;
      --  Read-only. Master Interface Enable
      MENB           : SR_MENB_Field;
      --  Read-only. ACK in HS-mode Master Code Phase Received
      HSMCACK        : SR_HSMCACK_Field;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_SR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      CRDY           at 0 range 2 .. 2;
      CCOMP          at 0 range 3 .. 3;
      IDLE           at 0 range 4 .. 4;
      BUSFREE        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ANAK           at 0 range 8 .. 8;
      DNAK           at 0 range 9 .. 9;
      ARBLST         at 0 range 10 .. 10;
      SMBALERT       at 0 range 11 .. 11;
      TOUT           at 0 range 12 .. 12;
      PECERR         at 0 range 13 .. 13;
      STOP           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      MENB           at 0 range 16 .. 16;
      HSMCACK        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   -----------------------
   -- TWIM_IER_Register --
   -----------------------

   subtype IER_RXRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IER_TXRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IER_CRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IER_CCOMP_Field is Interfaces.Bit_Types.Bit;
   subtype IER_IDLE_Field is Interfaces.Bit_Types.Bit;
   subtype IER_BUSFREE_Field is Interfaces.Bit_Types.Bit;
   subtype IER_ANAK_Field is Interfaces.Bit_Types.Bit;
   subtype IER_DNAK_Field is Interfaces.Bit_Types.Bit;
   subtype IER_ARBLST_Field is Interfaces.Bit_Types.Bit;
   subtype IER_SMBALERT_Field is Interfaces.Bit_Types.Bit;
   subtype IER_TOUT_Field is Interfaces.Bit_Types.Bit;
   subtype IER_PECERR_Field is Interfaces.Bit_Types.Bit;
   subtype IER_STOP_Field is Interfaces.Bit_Types.Bit;
   subtype IER_HSMCACK_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Enable Register
   type TWIM_IER_Register is record
      --  Write-only. RHR Data Ready
      RXRDY          : IER_RXRDY_Field := 16#0#;
      --  Write-only. THR Data Ready
      TXRDY          : IER_TXRDY_Field := 16#0#;
      --  Write-only. Ready for More Commands
      CRDY           : IER_CRDY_Field := 16#0#;
      --  Write-only. Command Complete
      CCOMP          : IER_CCOMP_Field := 16#0#;
      --  Write-only. Master Interface is Idle
      IDLE           : IER_IDLE_Field := 16#0#;
      --  Write-only. Two-wire Bus is Free
      BUSFREE        : IER_BUSFREE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. NAK in Address Phase Received
      ANAK           : IER_ANAK_Field := 16#0#;
      --  Write-only. NAK in Data Phase Received
      DNAK           : IER_DNAK_Field := 16#0#;
      --  Write-only. Arbitration Lost
      ARBLST         : IER_ARBLST_Field := 16#0#;
      --  Write-only. SMBus Alert
      SMBALERT       : IER_SMBALERT_Field := 16#0#;
      --  Write-only. Timeout
      TOUT           : IER_TOUT_Field := 16#0#;
      --  Write-only. PEC Error
      PECERR         : IER_PECERR_Field := 16#0#;
      --  Write-only. Stop Request Accepted
      STOP           : IER_STOP_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. ACK in HS-mode Master Code Phase Received
      HSMCACK        : IER_HSMCACK_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_IER_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      CRDY           at 0 range 2 .. 2;
      CCOMP          at 0 range 3 .. 3;
      IDLE           at 0 range 4 .. 4;
      BUSFREE        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ANAK           at 0 range 8 .. 8;
      DNAK           at 0 range 9 .. 9;
      ARBLST         at 0 range 10 .. 10;
      SMBALERT       at 0 range 11 .. 11;
      TOUT           at 0 range 12 .. 12;
      PECERR         at 0 range 13 .. 13;
      STOP           at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      HSMCACK        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   -----------------------
   -- TWIM_IDR_Register --
   -----------------------

   subtype IDR_RXRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_TXRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_CRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_CCOMP_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_IDLE_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_BUSFREE_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_ANAK_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_DNAK_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_ARBLST_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_SMBALERT_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_TOUT_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_PECERR_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_STOP_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_HSMCACK_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Disable Register
   type TWIM_IDR_Register is record
      --  Write-only. RHR Data Ready
      RXRDY          : IDR_RXRDY_Field := 16#0#;
      --  Write-only. THR Data Ready
      TXRDY          : IDR_TXRDY_Field := 16#0#;
      --  Write-only. Ready for More Commands
      CRDY           : IDR_CRDY_Field := 16#0#;
      --  Write-only. Command Complete
      CCOMP          : IDR_CCOMP_Field := 16#0#;
      --  Write-only. Master Interface is Idle
      IDLE           : IDR_IDLE_Field := 16#0#;
      --  Write-only. Two-wire Bus is Free
      BUSFREE        : IDR_BUSFREE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. NAK in Address Phase Received
      ANAK           : IDR_ANAK_Field := 16#0#;
      --  Write-only. NAK in Data Phase Received
      DNAK           : IDR_DNAK_Field := 16#0#;
      --  Write-only. Arbitration Lost
      ARBLST         : IDR_ARBLST_Field := 16#0#;
      --  Write-only. SMBus Alert
      SMBALERT       : IDR_SMBALERT_Field := 16#0#;
      --  Write-only. Timeout
      TOUT           : IDR_TOUT_Field := 16#0#;
      --  Write-only. PEC Error
      PECERR         : IDR_PECERR_Field := 16#0#;
      --  Write-only. Stop Request Accepted
      STOP           : IDR_STOP_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. ACK in HS-mode Master Code Phase Received
      HSMCACK        : IDR_HSMCACK_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_IDR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      CRDY           at 0 range 2 .. 2;
      CCOMP          at 0 range 3 .. 3;
      IDLE           at 0 range 4 .. 4;
      BUSFREE        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ANAK           at 0 range 8 .. 8;
      DNAK           at 0 range 9 .. 9;
      ARBLST         at 0 range 10 .. 10;
      SMBALERT       at 0 range 11 .. 11;
      TOUT           at 0 range 12 .. 12;
      PECERR         at 0 range 13 .. 13;
      STOP           at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      HSMCACK        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   -----------------------
   -- TWIM_IMR_Register --
   -----------------------

   subtype IMR_RXRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_TXRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_CRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_CCOMP_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_IDLE_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_BUSFREE_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_ANAK_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_DNAK_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_ARBLST_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_SMBALERT_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_TOUT_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_PECERR_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_STOP_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_HSMCACK_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Mask Register
   type TWIM_IMR_Register is record
      --  Read-only. RHR Data Ready
      RXRDY          : IMR_RXRDY_Field;
      --  Read-only. THR Data Ready
      TXRDY          : IMR_TXRDY_Field;
      --  Read-only. Ready for More Commands
      CRDY           : IMR_CRDY_Field;
      --  Read-only. Command Complete
      CCOMP          : IMR_CCOMP_Field;
      --  Read-only. Master Interface is Idle
      IDLE           : IMR_IDLE_Field;
      --  Read-only. Two-wire Bus is Free
      BUSFREE        : IMR_BUSFREE_Field;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2;
      --  Read-only. NAK in Address Phase Received
      ANAK           : IMR_ANAK_Field;
      --  Read-only. NAK in Data Phase Received
      DNAK           : IMR_DNAK_Field;
      --  Read-only. Arbitration Lost
      ARBLST         : IMR_ARBLST_Field;
      --  Read-only. SMBus Alert
      SMBALERT       : IMR_SMBALERT_Field;
      --  Read-only. Timeout
      TOUT           : IMR_TOUT_Field;
      --  Read-only. PEC Error
      PECERR         : IMR_PECERR_Field;
      --  Read-only. Stop Request Accepted
      STOP           : IMR_STOP_Field;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2;
      --  Read-only. ACK in HS-mode Master Code Phase Received
      HSMCACK        : IMR_HSMCACK_Field;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_IMR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      CRDY           at 0 range 2 .. 2;
      CCOMP          at 0 range 3 .. 3;
      IDLE           at 0 range 4 .. 4;
      BUSFREE        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ANAK           at 0 range 8 .. 8;
      DNAK           at 0 range 9 .. 9;
      ARBLST         at 0 range 10 .. 10;
      SMBALERT       at 0 range 11 .. 11;
      TOUT           at 0 range 12 .. 12;
      PECERR         at 0 range 13 .. 13;
      STOP           at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      HSMCACK        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   -----------------------
   -- TWIM_SCR_Register --
   -----------------------

   subtype SCR_CCOMP_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_ANAK_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_DNAK_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_ARBLST_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_SMBALERT_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_TOUT_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_PECERR_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_STOP_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_HSMCACK_Field is Interfaces.Bit_Types.Bit;

   --  Status Clear Register
   type TWIM_SCR_Register is record
      --  unspecified
      Reserved_0_2   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Command Complete
      CCOMP          : SCR_CCOMP_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. NAK in Address Phase Received
      ANAK           : SCR_ANAK_Field := 16#0#;
      --  Write-only. NAK in Data Phase Received
      DNAK           : SCR_DNAK_Field := 16#0#;
      --  Write-only. Arbitration Lost
      ARBLST         : SCR_ARBLST_Field := 16#0#;
      --  Write-only. SMBus Alert
      SMBALERT       : SCR_SMBALERT_Field := 16#0#;
      --  Write-only. Timeout
      TOUT           : SCR_TOUT_Field := 16#0#;
      --  Write-only. PEC Error
      PECERR         : SCR_PECERR_Field := 16#0#;
      --  Write-only. Stop Request Accepted
      STOP           : SCR_STOP_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. ACK in HS-mode Master Code Phase Received
      HSMCACK        : SCR_HSMCACK_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_SCR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      CCOMP          at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      ANAK           at 0 range 8 .. 8;
      DNAK           at 0 range 9 .. 9;
      ARBLST         at 0 range 10 .. 10;
      SMBALERT       at 0 range 11 .. 11;
      TOUT           at 0 range 12 .. 12;
      PECERR         at 0 range 13 .. 13;
      STOP           at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      HSMCACK        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   ----------------------
   -- TWIM_PR_Register --
   ----------------------

   subtype PR_HS_Field is Interfaces.Bit_Types.Bit;

   --  Parameter Register
   type TWIM_PR_Register is record
      --  Read-only. HS-mode
      HS            : PR_HS_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_PR_Register use record
      HS            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ----------------------
   -- TWIM_VR_Register --
   ----------------------

   subtype VR_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VR_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type TWIM_VR_Register is record
      --  Read-only. Version number
      VERSION        : VR_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant number
      VARIANT        : VR_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_VR_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --------------------------
   -- TWIM_HSCWGR_Register --
   --------------------------

   subtype HSCWGR_LOW_Field is Interfaces.Bit_Types.Byte;
   subtype HSCWGR_HIGH_Field is Interfaces.Bit_Types.Byte;
   subtype HSCWGR_STASTO_Field is Interfaces.Bit_Types.Byte;
   subtype HSCWGR_DATA_Field is Interfaces.Bit_Types.UInt4;
   subtype HSCWGR_EXP_Field is Interfaces.Bit_Types.UInt3;

   --  HS-mode Clock Waveform Generator
   type TWIM_HSCWGR_Register is record
      --  Clock Low Cycles
      LOW            : HSCWGR_LOW_Field := 16#0#;
      --  Clock High Cycles
      HIGH           : HSCWGR_HIGH_Field := 16#0#;
      --  START and STOP Cycles
      STASTO         : HSCWGR_STASTO_Field := 16#0#;
      --  Data Setup and Hold Cycles
      DATA           : HSCWGR_DATA_Field := 16#0#;
      --  Clock Prescaler
      EXP            : HSCWGR_EXP_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_HSCWGR_Register use record
      LOW            at 0 range 0 .. 7;
      HIGH           at 0 range 8 .. 15;
      STASTO         at 0 range 16 .. 23;
      DATA           at 0 range 24 .. 27;
      EXP            at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   -----------------------
   -- TWIM_SRR_Register --
   -----------------------

   subtype SRR_DADRIVEL_Field is Interfaces.Bit_Types.UInt3;
   subtype SRR_DASLEW_Field is Interfaces.Bit_Types.UInt2;
   subtype SRR_CLDRIVEL_Field is Interfaces.Bit_Types.UInt3;
   subtype SRR_CLSLEW_Field is Interfaces.Bit_Types.UInt2;
   subtype SRR_FILTER_Field is Interfaces.Bit_Types.UInt2;

   --  Slew Rate Register
   type TWIM_SRR_Register is record
      --  Data Drive Strength LOW
      DADRIVEL       : SRR_DADRIVEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Data Slew Limit
      DASLEW         : SRR_DASLEW_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Clock Drive Strength LOW
      CLDRIVEL       : SRR_CLDRIVEL_Field := 16#0#;
      --  unspecified
      Reserved_19_23 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Clock Slew Limit
      CLSLEW         : SRR_CLSLEW_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Input Spike Filter Control
      FILTER         : SRR_FILTER_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_SRR_Register use record
      DADRIVEL       at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      DASLEW         at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      CLDRIVEL       at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      CLSLEW         at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      FILTER         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   -------------------------
   -- TWIM_HSSRR_Register --
   -------------------------

   subtype HSSRR_DADRIVEL_Field is Interfaces.Bit_Types.UInt3;
   subtype HSSRR_DASLEW_Field is Interfaces.Bit_Types.UInt2;
   subtype HSSRR_CLDRIVEL_Field is Interfaces.Bit_Types.UInt3;
   subtype HSSRR_CLDRIVEH_Field is Interfaces.Bit_Types.UInt2;
   subtype HSSRR_CLSLEW_Field is Interfaces.Bit_Types.UInt2;
   subtype HSSRR_FILTER_Field is Interfaces.Bit_Types.UInt2;

   --  HS-mode Slew Rate Register
   type TWIM_HSSRR_Register is record
      --  Data Drive Strength LOW
      DADRIVEL       : HSSRR_DADRIVEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Data Slew Limit
      DASLEW         : HSSRR_DASLEW_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Clock Drive Strength LOW
      CLDRIVEL       : HSSRR_CLDRIVEL_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Clock Drive Strength HIGH
      CLDRIVEH       : HSSRR_CLDRIVEH_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Clock Slew Limit
      CLSLEW         : HSSRR_CLSLEW_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Input Spike Filter Control
      FILTER         : HSSRR_FILTER_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIM_HSSRR_Register use record
      DADRIVEL       at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      DASLEW         at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      CLDRIVEL       at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      CLDRIVEH       at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      CLSLEW         at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      FILTER         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Two-wire Master Interface 0
   type TWIM_Peripheral is record
      --  Control Register
      CR     : TWIM_CR_Register;
      --  Clock Waveform Generator Register
      CWGR   : TWIM_CWGR_Register;
      --  SMBus Timing Register
      SMBTR  : TWIM_SMBTR_Register;
      --  Command Register
      CMDR   : TWIM_CMDR_Register;
      --  Next Command Register
      NCMDR  : TWIM_NCMDR_Register;
      --  Receive Holding Register
      RHR    : TWIM_RHR_Register;
      --  Transmit Holding Register
      THR    : TWIM_THR_Register;
      --  Status Register
      SR     : TWIM_SR_Register;
      --  Interrupt Enable Register
      IER    : TWIM_IER_Register;
      --  Interrupt Disable Register
      IDR    : TWIM_IDR_Register;
      --  Interrupt Mask Register
      IMR    : TWIM_IMR_Register;
      --  Status Clear Register
      SCR    : TWIM_SCR_Register;
      --  Parameter Register
      PR     : TWIM_PR_Register;
      --  Version Register
      VR     : TWIM_VR_Register;
      --  HS-mode Clock Waveform Generator
      HSCWGR : TWIM_HSCWGR_Register;
      --  Slew Rate Register
      SRR    : TWIM_SRR_Register;
      --  HS-mode Slew Rate Register
      HSSRR  : TWIM_HSSRR_Register;
   end record
     with Volatile;

   for TWIM_Peripheral use record
      CR     at 0 range 0 .. 31;
      CWGR   at 4 range 0 .. 31;
      SMBTR  at 8 range 0 .. 31;
      CMDR   at 12 range 0 .. 31;
      NCMDR  at 16 range 0 .. 31;
      RHR    at 20 range 0 .. 31;
      THR    at 24 range 0 .. 31;
      SR     at 28 range 0 .. 31;
      IER    at 32 range 0 .. 31;
      IDR    at 36 range 0 .. 31;
      IMR    at 40 range 0 .. 31;
      SCR    at 44 range 0 .. 31;
      PR     at 48 range 0 .. 31;
      VR     at 52 range 0 .. 31;
      HSCWGR at 56 range 0 .. 31;
      SRR    at 60 range 0 .. 31;
      HSSRR  at 64 range 0 .. 31;
   end record;

   --  Two-wire Master Interface 0
   TWIM0_Periph : aliased TWIM_Peripheral
     with Import, Address => TWIM0_Base;

   --  Two-wire Master Interface 1
   TWIM1_Periph : aliased TWIM_Peripheral
     with Import, Address => TWIM1_Base;

   --  Two-wire Master Interface 2
   TWIM2_Periph : aliased TWIM_Peripheral
     with Import, Address => TWIM2_Base;

   --  Two-wire Master Interface 3
   TWIM3_Periph : aliased TWIM_Peripheral
     with Import, Address => TWIM3_Base;

end Interfaces.ATSAM4L.TWIM;
