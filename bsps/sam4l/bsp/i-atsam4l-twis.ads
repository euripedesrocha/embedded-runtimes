--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.TWIS is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ----------------------
   -- TWIS_CR_Register --
   ----------------------

   subtype CR_SEN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_SMEN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_SMATCH_Field is Interfaces.Bit_Types.Bit;
   subtype CR_GCMATCH_Field is Interfaces.Bit_Types.Bit;
   subtype CR_STREN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_SWRST_Field is Interfaces.Bit_Types.Bit;
   subtype CR_SMBALERT_Field is Interfaces.Bit_Types.Bit;
   subtype CR_SMDA_Field is Interfaces.Bit_Types.Bit;
   subtype CR_SMHH_Field is Interfaces.Bit_Types.Bit;
   subtype CR_PECEN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_ACK_Field is Interfaces.Bit_Types.Bit;
   subtype CR_CUP_Field is Interfaces.Bit_Types.Bit;
   subtype CR_SOAM_Field is Interfaces.Bit_Types.Bit;
   subtype CR_SODR_Field is Interfaces.Bit_Types.Bit;
   subtype CR_ADR_Field is Interfaces.Bit_Types.UInt10;
   subtype CR_TENBIT_Field is Interfaces.Bit_Types.Bit;
   subtype CR_BRIDGE_Field is Interfaces.Bit_Types.Bit;

   --  Control Register
   type TWIS_CR_Register is record
      --  Slave Enable
      SEN            : CR_SEN_Field := 16#0#;
      --  SMBus Mode Enable
      SMEN           : CR_SMEN_Field := 16#0#;
      --  Slave Address Match
      SMATCH         : CR_SMATCH_Field := 16#0#;
      --  General Call Address Match
      GCMATCH        : CR_GCMATCH_Field := 16#0#;
      --  Clock Stretch Enable
      STREN          : CR_STREN_Field := 16#0#;
      --  unspecified
      Reserved_5_6   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Software Reset
      SWRST          : CR_SWRST_Field := 16#0#;
      --  SMBus Alert
      SMBALERT       : CR_SMBALERT_Field := 16#0#;
      --  SMBus Default Address
      SMDA           : CR_SMDA_Field := 16#0#;
      --  SMBus Host Header
      SMHH           : CR_SMHH_Field := 16#0#;
      --  Packet Error Checking Enable
      PECEN          : CR_PECEN_Field := 16#0#;
      --  Slave Receiver Data Phase ACK Value
      ACK            : CR_ACK_Field := 16#0#;
      --  NBYTES Count Up
      CUP            : CR_CUP_Field := 16#0#;
      --  Stretch Clock on Address Match
      SOAM           : CR_SOAM_Field := 16#0#;
      --  Stretch Clock on Data Byte Reception
      SODR           : CR_SODR_Field := 16#0#;
      --  Slave Address
      ADR            : CR_ADR_Field := 16#0#;
      --  Ten Bit Address Match
      TENBIT         : CR_TENBIT_Field := 16#0#;
      --  Bridge Control Enable
      BRIDGE         : CR_BRIDGE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_CR_Register use record
      SEN            at 0 range 0 .. 0;
      SMEN           at 0 range 1 .. 1;
      SMATCH         at 0 range 2 .. 2;
      GCMATCH        at 0 range 3 .. 3;
      STREN          at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      SWRST          at 0 range 7 .. 7;
      SMBALERT       at 0 range 8 .. 8;
      SMDA           at 0 range 9 .. 9;
      SMHH           at 0 range 10 .. 10;
      PECEN          at 0 range 11 .. 11;
      ACK            at 0 range 12 .. 12;
      CUP            at 0 range 13 .. 13;
      SOAM           at 0 range 14 .. 14;
      SODR           at 0 range 15 .. 15;
      ADR            at 0 range 16 .. 25;
      TENBIT         at 0 range 26 .. 26;
      BRIDGE         at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --------------------------
   -- TWIS_NBYTES_Register --
   --------------------------

   subtype NBYTES_NBYTES_Field is Interfaces.Bit_Types.Byte;

   --  NBYTES Register
   type TWIS_NBYTES_Register is record
      --  Number of Bytes to Transfer
      NBYTES        : NBYTES_NBYTES_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_NBYTES_Register use record
      NBYTES        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ----------------------
   -- TWIS_TR_Register --
   ----------------------

   subtype TR_TLOWS_Field is Interfaces.Bit_Types.Byte;
   subtype TR_TTOUT_Field is Interfaces.Bit_Types.Byte;
   subtype TR_SUDAT_Field is Interfaces.Bit_Types.Byte;
   subtype TR_EXP_Field is Interfaces.Bit_Types.UInt4;

   --  Timing Register
   type TWIS_TR_Register is record
      --  SMBus Tlow:sext Cycles
      TLOWS          : TR_TLOWS_Field := 16#0#;
      --  SMBus Ttimeout Cycles
      TTOUT          : TR_TTOUT_Field := 16#0#;
      --  Data Setup Cycles
      SUDAT          : TR_SUDAT_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Clock Prescaler
      EXP            : TR_EXP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_TR_Register use record
      TLOWS          at 0 range 0 .. 7;
      TTOUT          at 0 range 8 .. 15;
      SUDAT          at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      EXP            at 0 range 28 .. 31;
   end record;

   -----------------------
   -- TWIS_RHR_Register --
   -----------------------

   subtype RHR_RXDATA_Field is Interfaces.Bit_Types.Byte;

   --  Receive Holding Register
   type TWIS_RHR_Register is record
      --  Read-only. Received Data Byte
      RXDATA        : RHR_RXDATA_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_RHR_Register use record
      RXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------------
   -- TWIS_THR_Register --
   -----------------------

   subtype THR_TXDATA_Field is Interfaces.Bit_Types.Byte;

   --  Transmit Holding Register
   type TWIS_THR_Register is record
      --  Write-only. Data Byte to Transmit
      TXDATA        : THR_TXDATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_THR_Register use record
      TXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ------------------------
   -- TWIS_PECR_Register --
   ------------------------

   subtype PECR_PEC_Field is Interfaces.Bit_Types.Byte;

   --  Packet Error Check Register
   type TWIS_PECR_Register is record
      --  Read-only. Calculated PEC Value
      PEC           : PECR_PEC_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_PECR_Register use record
      PEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ----------------------
   -- TWIS_SR_Register --
   ----------------------

   subtype SR_RXRDY_Field is Interfaces.Bit_Types.Bit;
   subtype SR_TXRDY_Field is Interfaces.Bit_Types.Bit;
   subtype SR_SEN_Field is Interfaces.Bit_Types.Bit;
   subtype SR_TCOMP_Field is Interfaces.Bit_Types.Bit;
   subtype SR_TRA_Field is Interfaces.Bit_Types.Bit;
   subtype SR_URUN_Field is Interfaces.Bit_Types.Bit;
   subtype SR_ORUN_Field is Interfaces.Bit_Types.Bit;
   subtype SR_NAK_Field is Interfaces.Bit_Types.Bit;
   subtype SR_SMBTOUT_Field is Interfaces.Bit_Types.Bit;
   subtype SR_SMBPECERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_BUSERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_SAM_Field is Interfaces.Bit_Types.Bit;
   subtype SR_GCM_Field is Interfaces.Bit_Types.Bit;
   subtype SR_SMBALERTM_Field is Interfaces.Bit_Types.Bit;
   subtype SR_SMBHHM_Field is Interfaces.Bit_Types.Bit;
   subtype SR_SMBDAM_Field is Interfaces.Bit_Types.Bit;
   subtype SR_STO_Field is Interfaces.Bit_Types.Bit;
   subtype SR_REP_Field is Interfaces.Bit_Types.Bit;
   subtype SR_BTF_Field is Interfaces.Bit_Types.Bit;

   --  Status Register
   type TWIS_SR_Register is record
      --  Read-only. RX Buffer Ready
      RXRDY          : SR_RXRDY_Field;
      --  Read-only. TX Buffer Ready
      TXRDY          : SR_TXRDY_Field;
      --  Read-only. Slave Enabled
      SEN            : SR_SEN_Field;
      --  Read-only. Transmission Complete
      TCOMP          : SR_TCOMP_Field;
      --  unspecified
      Reserved_4_4   : Interfaces.Bit_Types.Bit;
      --  Read-only. Transmitter Mode
      TRA            : SR_TRA_Field;
      --  Read-only. Underrun
      URUN           : SR_URUN_Field;
      --  Read-only. Overrun
      ORUN           : SR_ORUN_Field;
      --  Read-only. NAK Received
      NAK            : SR_NAK_Field;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3;
      --  Read-only. SMBus Timeout
      SMBTOUT        : SR_SMBTOUT_Field;
      --  Read-only. SMBus PEC Error
      SMBPECERR      : SR_SMBPECERR_Field;
      --  Read-only. Bus Error
      BUSERR         : SR_BUSERR_Field;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit;
      --  Read-only. Slave Address Match
      SAM            : SR_SAM_Field;
      --  Read-only. General Call Match
      GCM            : SR_GCM_Field;
      --  Read-only. SMBus Alert Response Address Match
      SMBALERTM      : SR_SMBALERTM_Field;
      --  Read-only. SMBus Host Header Address Match
      SMBHHM         : SR_SMBHHM_Field;
      --  Read-only. SMBus Default Address Match
      SMBDAM         : SR_SMBDAM_Field;
      --  Read-only. Stop Received
      STO            : SR_STO_Field;
      --  Read-only. Repeated Start Received
      REP            : SR_REP_Field;
      --  Read-only. Byte Transfer Finished
      BTF            : SR_BTF_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_SR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      SEN            at 0 range 2 .. 2;
      TCOMP          at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      TRA            at 0 range 5 .. 5;
      URUN           at 0 range 6 .. 6;
      ORUN           at 0 range 7 .. 7;
      NAK            at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      SMBTOUT        at 0 range 12 .. 12;
      SMBPECERR      at 0 range 13 .. 13;
      BUSERR         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SAM            at 0 range 16 .. 16;
      GCM            at 0 range 17 .. 17;
      SMBALERTM      at 0 range 18 .. 18;
      SMBHHM         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      STO            at 0 range 21 .. 21;
      REP            at 0 range 22 .. 22;
      BTF            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------------
   -- TWIS_IER_Register --
   -----------------------

   subtype IER_RXRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IER_TXRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IER_TCOMP_Field is Interfaces.Bit_Types.Bit;
   subtype IER_URUN_Field is Interfaces.Bit_Types.Bit;
   subtype IER_ORUN_Field is Interfaces.Bit_Types.Bit;
   subtype IER_NAK_Field is Interfaces.Bit_Types.Bit;
   subtype IER_SMBTOUT_Field is Interfaces.Bit_Types.Bit;
   subtype IER_SMBPECERR_Field is Interfaces.Bit_Types.Bit;
   subtype IER_BUSERR_Field is Interfaces.Bit_Types.Bit;
   subtype IER_SAM_Field is Interfaces.Bit_Types.Bit;
   subtype IER_GCM_Field is Interfaces.Bit_Types.Bit;
   subtype IER_SMBALERTM_Field is Interfaces.Bit_Types.Bit;
   subtype IER_SMBHHM_Field is Interfaces.Bit_Types.Bit;
   subtype IER_SMBDAM_Field is Interfaces.Bit_Types.Bit;
   subtype IER_STO_Field is Interfaces.Bit_Types.Bit;
   subtype IER_REP_Field is Interfaces.Bit_Types.Bit;
   subtype IER_BTF_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Enable Register
   type TWIS_IER_Register is record
      --  Write-only. RX Buffer Ready
      RXRDY          : IER_RXRDY_Field := 16#0#;
      --  Write-only. TX Buffer Ready
      TXRDY          : IER_TXRDY_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Transmission Complete
      TCOMP          : IER_TCOMP_Field := 16#0#;
      --  unspecified
      Reserved_4_5   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Underrun
      URUN           : IER_URUN_Field := 16#0#;
      --  Write-only. Overrun
      ORUN           : IER_ORUN_Field := 16#0#;
      --  Write-only. NAK Received
      NAK            : IER_NAK_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. SMBus Timeout
      SMBTOUT        : IER_SMBTOUT_Field := 16#0#;
      --  Write-only. SMBus PEC Error
      SMBPECERR      : IER_SMBPECERR_Field := 16#0#;
      --  Write-only. Bus Error
      BUSERR         : IER_BUSERR_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Slave Address Match
      SAM            : IER_SAM_Field := 16#0#;
      --  Write-only. General Call Match
      GCM            : IER_GCM_Field := 16#0#;
      --  Write-only. SMBus Alert Response Address Match
      SMBALERTM      : IER_SMBALERTM_Field := 16#0#;
      --  Write-only. SMBus Host Header Address Match
      SMBHHM         : IER_SMBHHM_Field := 16#0#;
      --  Write-only. SMBus Default Address Match
      SMBDAM         : IER_SMBDAM_Field := 16#0#;
      --  Write-only. Stop Received
      STO            : IER_STO_Field := 16#0#;
      --  Write-only. Repeated Start Received
      REP            : IER_REP_Field := 16#0#;
      --  Write-only. Byte Transfer Finished
      BTF            : IER_BTF_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_IER_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      TCOMP          at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      URUN           at 0 range 6 .. 6;
      ORUN           at 0 range 7 .. 7;
      NAK            at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      SMBTOUT        at 0 range 12 .. 12;
      SMBPECERR      at 0 range 13 .. 13;
      BUSERR         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SAM            at 0 range 16 .. 16;
      GCM            at 0 range 17 .. 17;
      SMBALERTM      at 0 range 18 .. 18;
      SMBHHM         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      STO            at 0 range 21 .. 21;
      REP            at 0 range 22 .. 22;
      BTF            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------------
   -- TWIS_IDR_Register --
   -----------------------

   subtype IDR_RXRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_TXRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_TCOMP_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_URUN_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_ORUN_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_NAK_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_SMBTOUT_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_SMBPECERR_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_BUSERR_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_SAM_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_GCM_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_SMBALERTM_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_SMBHHM_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_SMBDAM_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_STO_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_REP_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_BTF_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Disable Register
   type TWIS_IDR_Register is record
      --  Write-only. RX Buffer Ready
      RXRDY          : IDR_RXRDY_Field := 16#0#;
      --  Write-only. TX Buffer Ready
      TXRDY          : IDR_TXRDY_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Transmission Complete
      TCOMP          : IDR_TCOMP_Field := 16#0#;
      --  unspecified
      Reserved_4_5   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Underrun
      URUN           : IDR_URUN_Field := 16#0#;
      --  Write-only. Overrun
      ORUN           : IDR_ORUN_Field := 16#0#;
      --  Write-only. NAK Received
      NAK            : IDR_NAK_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. SMBus Timeout
      SMBTOUT        : IDR_SMBTOUT_Field := 16#0#;
      --  Write-only. SMBus PEC Error
      SMBPECERR      : IDR_SMBPECERR_Field := 16#0#;
      --  Write-only. Bus Error
      BUSERR         : IDR_BUSERR_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Slave Address Match
      SAM            : IDR_SAM_Field := 16#0#;
      --  Write-only. General Call Match
      GCM            : IDR_GCM_Field := 16#0#;
      --  Write-only. SMBus Alert Response Address Match
      SMBALERTM      : IDR_SMBALERTM_Field := 16#0#;
      --  Write-only. SMBus Host Header Address Match
      SMBHHM         : IDR_SMBHHM_Field := 16#0#;
      --  Write-only. SMBus Default Address Match
      SMBDAM         : IDR_SMBDAM_Field := 16#0#;
      --  Write-only. Stop Received
      STO            : IDR_STO_Field := 16#0#;
      --  Write-only. Repeated Start Received
      REP            : IDR_REP_Field := 16#0#;
      --  Write-only. Byte Transfer Finished
      BTF            : IDR_BTF_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_IDR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      TCOMP          at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      URUN           at 0 range 6 .. 6;
      ORUN           at 0 range 7 .. 7;
      NAK            at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      SMBTOUT        at 0 range 12 .. 12;
      SMBPECERR      at 0 range 13 .. 13;
      BUSERR         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SAM            at 0 range 16 .. 16;
      GCM            at 0 range 17 .. 17;
      SMBALERTM      at 0 range 18 .. 18;
      SMBHHM         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      STO            at 0 range 21 .. 21;
      REP            at 0 range 22 .. 22;
      BTF            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------------
   -- TWIS_IMR_Register --
   -----------------------

   subtype IMR_RXRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_TXRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_TCOMP_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_URUN_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_ORUN_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_NAK_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_SMBTOUT_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_SMBPECERR_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_BUSERR_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_SAM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_GCM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_SMBALERTM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_SMBHHM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_SMBDAM_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_STO_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_REP_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_BTF_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Mask Register
   type TWIS_IMR_Register is record
      --  Read-only. RX Buffer Ready
      RXRDY          : IMR_RXRDY_Field;
      --  Read-only. TX Buffer Ready
      TXRDY          : IMR_TXRDY_Field;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit;
      --  Read-only. Transmission Complete
      TCOMP          : IMR_TCOMP_Field;
      --  unspecified
      Reserved_4_5   : Interfaces.Bit_Types.UInt2;
      --  Read-only. Underrun
      URUN           : IMR_URUN_Field;
      --  Read-only. Overrun
      ORUN           : IMR_ORUN_Field;
      --  Read-only. NAK Received
      NAK            : IMR_NAK_Field;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3;
      --  Read-only. SMBus Timeout
      SMBTOUT        : IMR_SMBTOUT_Field;
      --  Read-only. SMBus PEC Error
      SMBPECERR      : IMR_SMBPECERR_Field;
      --  Read-only. Bus Error
      BUSERR         : IMR_BUSERR_Field;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit;
      --  Read-only. Slave Address Match
      SAM            : IMR_SAM_Field;
      --  Read-only. General Call Match
      GCM            : IMR_GCM_Field;
      --  Read-only. SMBus Alert Response Address Match
      SMBALERTM      : IMR_SMBALERTM_Field;
      --  Read-only. SMBus Host Header Address Match
      SMBHHM         : IMR_SMBHHM_Field;
      --  Read-only. SMBus Default Address Match
      SMBDAM         : IMR_SMBDAM_Field;
      --  Read-only. Stop Received
      STO            : IMR_STO_Field;
      --  Read-only. Repeated Start Received
      REP            : IMR_REP_Field;
      --  Read-only. Byte Transfer Finished
      BTF            : IMR_BTF_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_IMR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      TCOMP          at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      URUN           at 0 range 6 .. 6;
      ORUN           at 0 range 7 .. 7;
      NAK            at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      SMBTOUT        at 0 range 12 .. 12;
      SMBPECERR      at 0 range 13 .. 13;
      BUSERR         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SAM            at 0 range 16 .. 16;
      GCM            at 0 range 17 .. 17;
      SMBALERTM      at 0 range 18 .. 18;
      SMBHHM         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      STO            at 0 range 21 .. 21;
      REP            at 0 range 22 .. 22;
      BTF            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------------
   -- TWIS_SCR_Register --
   -----------------------

   subtype SCR_TCOMP_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_URUN_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_ORUN_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_NAK_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_SMBTOUT_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_SMBPECERR_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_BUSERR_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_SAM_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_GCM_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_SMBALERTM_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_SMBHHM_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_SMBDAM_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_STO_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_REP_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_BTF_Field is Interfaces.Bit_Types.Bit;

   --  Status Clear Register
   type TWIS_SCR_Register is record
      --  unspecified
      Reserved_0_2   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Transmission Complete
      TCOMP          : SCR_TCOMP_Field := 16#0#;
      --  unspecified
      Reserved_4_5   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Underrun
      URUN           : SCR_URUN_Field := 16#0#;
      --  Write-only. Overrun
      ORUN           : SCR_ORUN_Field := 16#0#;
      --  Write-only. NAK Received
      NAK            : SCR_NAK_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. SMBus Timeout
      SMBTOUT        : SCR_SMBTOUT_Field := 16#0#;
      --  Write-only. SMBus PEC Error
      SMBPECERR      : SCR_SMBPECERR_Field := 16#0#;
      --  Write-only. Bus Error
      BUSERR         : SCR_BUSERR_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Slave Address Match
      SAM            : SCR_SAM_Field := 16#0#;
      --  Write-only. General Call Match
      GCM            : SCR_GCM_Field := 16#0#;
      --  Write-only. SMBus Alert Response Address Match
      SMBALERTM      : SCR_SMBALERTM_Field := 16#0#;
      --  Write-only. SMBus Host Header Address Match
      SMBHHM         : SCR_SMBHHM_Field := 16#0#;
      --  Write-only. SMBus Default Address Match
      SMBDAM         : SCR_SMBDAM_Field := 16#0#;
      --  Write-only. Stop Received
      STO            : SCR_STO_Field := 16#0#;
      --  Write-only. Repeated Start Received
      REP            : SCR_REP_Field := 16#0#;
      --  Write-only. Byte Transfer Finished
      BTF            : SCR_BTF_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_SCR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      TCOMP          at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      URUN           at 0 range 6 .. 6;
      ORUN           at 0 range 7 .. 7;
      NAK            at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      SMBTOUT        at 0 range 12 .. 12;
      SMBPECERR      at 0 range 13 .. 13;
      BUSERR         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SAM            at 0 range 16 .. 16;
      GCM            at 0 range 17 .. 17;
      SMBALERTM      at 0 range 18 .. 18;
      SMBHHM         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      STO            at 0 range 21 .. 21;
      REP            at 0 range 22 .. 22;
      BTF            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   ----------------------
   -- TWIS_PR_Register --
   ----------------------

   subtype PR_HS_Field is Interfaces.Bit_Types.Bit;

   --  Parameter Register
   type TWIS_PR_Register is record
      --  Read-only. HS-mode
      HS            : PR_HS_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_PR_Register use record
      HS            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ----------------------
   -- TWIS_VR_Register --
   ----------------------

   subtype VR_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VR_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type TWIS_VR_Register is record
      --  Read-only. Version Number
      VERSION        : VR_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant Number
      VARIANT        : VR_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_VR_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ------------------------
   -- TWIS_HSTR_Register --
   ------------------------

   subtype HSTR_HDDAT_Field is Interfaces.Bit_Types.Byte;

   --  HS-mode Timing Register
   type TWIS_HSTR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.Short := 16#0#;
      --  Data Hold Cycles
      HDDAT          : HSTR_HDDAT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_HSTR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      HDDAT          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------------
   -- TWIS_SRR_Register --
   -----------------------

   subtype SRR_DADRIVEL_Field is Interfaces.Bit_Types.UInt3;
   subtype SRR_DASLEW_Field is Interfaces.Bit_Types.UInt2;
   subtype SRR_FILTER_Field is Interfaces.Bit_Types.UInt2;

   --  Slew Rate Register
   type TWIS_SRR_Register is record
      --  Data Drive Strength LOW
      DADRIVEL       : SRR_DADRIVEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Data Slew Limit
      DASLEW         : SRR_DASLEW_Field := 16#0#;
      --  unspecified
      Reserved_10_27 : Interfaces.Bit_Types.UInt18 := 16#0#;
      --  Input Spike Filter Control
      FILTER         : SRR_FILTER_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_SRR_Register use record
      DADRIVEL       at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      DASLEW         at 0 range 8 .. 9;
      Reserved_10_27 at 0 range 10 .. 27;
      FILTER         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   -------------------------
   -- TWIS_HSSRR_Register --
   -------------------------

   subtype HSSRR_DADRIVEL_Field is Interfaces.Bit_Types.UInt3;
   subtype HSSRR_DASLEW_Field is Interfaces.Bit_Types.UInt2;
   subtype HSSRR_FILTER_Field is Interfaces.Bit_Types.UInt2;

   --  HS-mode Slew Rate Register
   type TWIS_HSSRR_Register is record
      --  Data Drive Strength LOW
      DADRIVEL       : HSSRR_DADRIVEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Data Slew Limit
      DASLEW         : HSSRR_DASLEW_Field := 16#0#;
      --  unspecified
      Reserved_10_27 : Interfaces.Bit_Types.UInt18 := 16#0#;
      --  Input Spike Filter Control
      FILTER         : HSSRR_FILTER_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_HSSRR_Register use record
      DADRIVEL       at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      DASLEW         at 0 range 8 .. 9;
      Reserved_10_27 at 0 range 10 .. 27;
      FILTER         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Two-wire Slave Interface 0
   type TWIS_Peripheral is record
      --  Control Register
      CR     : TWIS_CR_Register;
      --  NBYTES Register
      NBYTES : TWIS_NBYTES_Register;
      --  Timing Register
      TR     : TWIS_TR_Register;
      --  Receive Holding Register
      RHR    : TWIS_RHR_Register;
      --  Transmit Holding Register
      THR    : TWIS_THR_Register;
      --  Packet Error Check Register
      PECR   : TWIS_PECR_Register;
      --  Status Register
      SR     : TWIS_SR_Register;
      --  Interrupt Enable Register
      IER    : TWIS_IER_Register;
      --  Interrupt Disable Register
      IDR    : TWIS_IDR_Register;
      --  Interrupt Mask Register
      IMR    : TWIS_IMR_Register;
      --  Status Clear Register
      SCR    : TWIS_SCR_Register;
      --  Parameter Register
      PR     : TWIS_PR_Register;
      --  Version Register
      VR     : TWIS_VR_Register;
      --  HS-mode Timing Register
      HSTR   : TWIS_HSTR_Register;
      --  Slew Rate Register
      SRR    : TWIS_SRR_Register;
      --  HS-mode Slew Rate Register
      HSSRR  : TWIS_HSSRR_Register;
   end record
     with Volatile;

   for TWIS_Peripheral use record
      CR     at 0 range 0 .. 31;
      NBYTES at 4 range 0 .. 31;
      TR     at 8 range 0 .. 31;
      RHR    at 12 range 0 .. 31;
      THR    at 16 range 0 .. 31;
      PECR   at 20 range 0 .. 31;
      SR     at 24 range 0 .. 31;
      IER    at 28 range 0 .. 31;
      IDR    at 32 range 0 .. 31;
      IMR    at 36 range 0 .. 31;
      SCR    at 40 range 0 .. 31;
      PR     at 44 range 0 .. 31;
      VR     at 48 range 0 .. 31;
      HSTR   at 52 range 0 .. 31;
      SRR    at 56 range 0 .. 31;
      HSSRR  at 60 range 0 .. 31;
   end record;

   --  Two-wire Slave Interface 0
   TWIS0_Periph : aliased TWIS_Peripheral
     with Import, Address => TWIS0_Base;

   --  Two-wire Slave Interface 1
   TWIS1_Periph : aliased TWIS_Peripheral
     with Import, Address => TWIS1_Base;

end Interfaces.ATSAM4L.TWIS;
