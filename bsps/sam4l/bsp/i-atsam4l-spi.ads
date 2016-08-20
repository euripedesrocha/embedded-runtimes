--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.SPI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ---------------------
   -- SPI_CR_Register --
   ---------------------

   --  SPI Enable
   type SPIENSelect is
     (
      --  No effect.
      SPIENSelect_0,
      --  Enables the SPI to transfer and receive data.
      SPIENSelect_1)
     with Size => 1;
   for SPIENSelect use
     (SPIENSelect_0 => 0,
      SPIENSelect_1 => 1);

   --  SPI Disable
   type SPIDISSelect is
     (
      --  No effect.
      SPIDISSelect_0,
      --  Disables the SPI.All pins are set in input mode and no data is
      --  received or transmitted.If a transfer is in progress, the transfer is
      --  finished before the SPI is disabled.If both SPIEN and SPIDIS are
      --  equal to one when the control register is written, the SPI is
      --  disabled.
      SPIDISSelect_1)
     with Size => 1;
   for SPIDISSelect use
     (SPIDISSelect_0 => 0,
      SPIDISSelect_1 => 1);

   --  SPI Software Reset
   type SWRSTSelect is
     (
      --  No effect.
      SWRSTSelect_0,
      --  Reset the SPI. A software-triggered hardware reset of the SPI
      --  interface is performed.
      SWRSTSelect_1)
     with Size => 1;
   for SWRSTSelect use
     (SWRSTSelect_0 => 0,
      SWRSTSelect_1 => 1);

   subtype CR_FLUSHFIFO_Field is Interfaces.Bit_Types.Bit;

   --  Last Transfer
   type LASTXFERSelect is
     (
      --  No effect.
      LASTXFERSelect_0,
      --  The current NPCS will be deasserted after the character written in TD
      --  has been transferred. When CSAAT is set, thisallows to close the
      --  communication with the current serial peripheral by raising the
      --  corresponding NPCS line as soon as TDtransfer has completed.
      LASTXFERSelect_1)
     with Size => 1;
   for LASTXFERSelect use
     (LASTXFERSelect_0 => 0,
      LASTXFERSelect_1 => 1);

   --  Control Register
   type SPI_CR_Register is record
      --  Write-only. SPI Enable
      SPIEN          : SPIENSelect := Interfaces.ATSAM4L.SPI.SPIENSelect_0;
      --  Write-only. SPI Disable
      SPIDIS         : SPIDISSelect := Interfaces.ATSAM4L.SPI.SPIDISSelect_0;
      --  unspecified
      Reserved_2_6   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. SPI Software Reset
      SWRST          : SWRSTSelect := Interfaces.ATSAM4L.SPI.SWRSTSelect_0;
      --  Write-only. Flush FIFO command
      FLUSHFIFO      : CR_FLUSHFIFO_Field := 16#0#;
      --  unspecified
      Reserved_9_23  : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  Write-only. Last Transfer
      LASTXFER       : LASTXFERSelect :=
                        Interfaces.ATSAM4L.SPI.LASTXFERSelect_0;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_CR_Register use record
      SPIEN          at 0 range 0 .. 0;
      SPIDIS         at 0 range 1 .. 1;
      Reserved_2_6   at 0 range 2 .. 6;
      SWRST          at 0 range 7 .. 7;
      FLUSHFIFO      at 0 range 8 .. 8;
      Reserved_9_23  at 0 range 9 .. 23;
      LASTXFER       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   ---------------------
   -- SPI_MR_Register --
   ---------------------

   --  Master/Slave Mode
   type MSTRSelect is
     (
      --  SPI is in Slave mode.
      MSTRSelect_0,
      --  SPI is in Master mode.
      MSTRSelect_1)
     with Size => 1;
   for MSTRSelect use
     (MSTRSelect_0 => 0,
      MSTRSelect_1 => 1);

   --  Peripheral Select
   type PSSelect is
     (
      --  Fixed Peripheral Select.
      PSSelect_0,
      --  Variable Peripheral Select.
      PSSelect_1)
     with Size => 1;
   for PSSelect use
     (PSSelect_0 => 0,
      PSSelect_1 => 1);

   --  Chip Select Decode
   type PCSDECSelect is
     (
      --  The chip selects are directly connected to a peripheral device.
      PCSDECSelect_0,
      --  The four chip select lines are connected to a 4- to 16-bit
      --  decoder.When PCSDEC equals one, up to 15 Chip Select signals can be
      --  generated with the four lines using an external 4- to 16-bitdecoder.
      --  The Chip Select Registers define the characteristics of the 16 chip
      --  selects according to the following rules:CSR0 defines peripheral chip
      --  select signals 0 to 3.CSR1 defines peripheral chip select signals 4
      --  to 7.CSR2 defines peripheral chip select signals 8 to 11.CSR3 defines
      --  peripheral chip select signals 12 to 15.
      PCSDECSelect_1)
     with Size => 1;
   for PCSDECSelect use
     (PCSDECSelect_0 => 0,
      PCSDECSelect_1 => 1);

   --  Mode Fault Detection
   type MODFDISSelect is
     (
      --  Mode fault detection is enabled.
      MODFDISSelect_0,
      --  Mode fault detection is disabled.
      MODFDISSelect_1)
     with Size => 1;
   for MODFDISSelect use
     (MODFDISSelect_0 => 0,
      MODFDISSelect_1 => 1);

   subtype MR_WDRBT_Field is Interfaces.Bit_Types.Bit;
   subtype MR_RXFIFOEN_Field is Interfaces.Bit_Types.Bit;

   --  Local Loopback Enable
   type LLBSelect is
     (
      --  Local loopback path disabled.
      LLBSelect_0,
      --  Local loopback path enabled.LLB controls the local loopback on the
      --  data serializer for testing in Master Mode only.
      LLBSelect_1)
     with Size => 1;
   for LLBSelect use
     (LLBSelect_0 => 0,
      LLBSelect_1 => 1);

   subtype MR_PCS_Field is Interfaces.Bit_Types.UInt4;
   subtype MR_DLYBCS_Field is Interfaces.Bit_Types.Byte;

   --  Mode Register
   type SPI_MR_Register is record
      --  Master/Slave Mode
      MSTR           : MSTRSelect := Interfaces.ATSAM4L.SPI.MSTRSelect_0;
      --  Peripheral Select
      PS             : PSSelect := Interfaces.ATSAM4L.SPI.PSSelect_0;
      --  Chip Select Decode
      PCSDEC         : PCSDECSelect := Interfaces.ATSAM4L.SPI.PCSDECSelect_0;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Mode Fault Detection
      MODFDIS        : MODFDISSelect :=
                        Interfaces.ATSAM4L.SPI.MODFDISSelect_0;
      --  wait data read before transfer
      WDRBT          : MR_WDRBT_Field := 16#0#;
      --  FIFO in Reception Enable
      RXFIFOEN       : MR_RXFIFOEN_Field := 16#0#;
      --  Local Loopback Enable
      LLB            : LLBSelect := Interfaces.ATSAM4L.SPI.LLBSelect_0;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Peripheral Chip Select
      PCS            : MR_PCS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Delay Between Chip Selects
      DLYBCS         : MR_DLYBCS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MR_Register use record
      MSTR           at 0 range 0 .. 0;
      PS             at 0 range 1 .. 1;
      PCSDEC         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      MODFDIS        at 0 range 4 .. 4;
      WDRBT          at 0 range 5 .. 5;
      RXFIFOEN       at 0 range 6 .. 6;
      LLB            at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      PCS            at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      DLYBCS         at 0 range 24 .. 31;
   end record;

   ----------------------
   -- SPI_RDR_Register --
   ----------------------

   subtype RDR_RD_Field is Interfaces.Bit_Types.Short;
   subtype RDR_PCS_Field is Interfaces.Bit_Types.UInt4;

   --  Receive Data Register
   type SPI_RDR_Register is record
      --  Read-only. Receive Data
      RD             : RDR_RD_Field;
      --  Read-only. Peripheral Chip Select
      PCS            : RDR_PCS_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_RDR_Register use record
      RD             at 0 range 0 .. 15;
      PCS            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ----------------------
   -- SPI_TDR_Register --
   ----------------------

   subtype TDR_TD_Field is Interfaces.Bit_Types.Short;
   subtype TDR_PCS_Field is Interfaces.Bit_Types.UInt4;

   --  Transmit Data Register
   type SPI_TDR_Register is record
      --  Write-only. Transmit Data
      TD             : TDR_TD_Field := 16#0#;
      --  Write-only. Peripheral Chip Select
      PCS            : TDR_PCS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. Last Transfer
      LASTXFER       : LASTXFERSelect :=
                        Interfaces.ATSAM4L.SPI.LASTXFERSelect_0;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_TDR_Register use record
      TD             at 0 range 0 .. 15;
      PCS            at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      LASTXFER       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   ---------------------
   -- SPI_SR_Register --
   ---------------------

   --  Receive Data Register Full
   type RDRFSelect is
     (
      --  No data has been received since the last read of RDR
      RDRFSelect_0,
      --  Data has been received and the received data has been transferred
      --  from the serializer to RDR since the last readof RDR.
      RDRFSelect_1)
     with Size => 1;
   for RDRFSelect use
     (RDRFSelect_0 => 0,
      RDRFSelect_1 => 1);

   --  Transmit Data Register Empty
   type TDRESelect is
     (
      --  Data has been written to TDR and not yet transferred to the
      --  serializer.
      TDRESelect_0,
      --  The last data written in the Transmit Data Register has been
      --  transferred to the serializer.TDRE equals zero when the SPI is
      --  disabled or at reset. The SPI enable command sets this bit to one.
      TDRESelect_1)
     with Size => 1;
   for TDRESelect use
     (TDRESelect_0 => 0,
      TDRESelect_1 => 1);

   --  Mode Fault Error
   type MODFSelect is
     (
      --  No Mode Fault has been detected since the last read of SR.
      MODFSelect_0,
      --  A Mode Fault occurred since the last read of the SR.
      MODFSelect_1)
     with Size => 1;
   for MODFSelect use
     (MODFSelect_0 => 0,
      MODFSelect_1 => 1);

   --  Overrun Error Status
   type OVRESSelect is
     (
      --  No overrun has been detected since the last read of SR.
      OVRESSelect_0,
      --  An overrun has occurred since the last read of SR.
      OVRESSelect_1)
     with Size => 1;
   for OVRESSelect use
     (OVRESSelect_0 => 0,
      OVRESSelect_1 => 1);

   --  End of RX buffer
   type ENDRXSelect is
     (
      --  The Receive Counter Register has not reached 0 since the last write
      --  in RCR or RNCR.
      ENDRXSelect_0,
      --  The Receive Counter Register has reached 0 since the last write in
      --  RCR or RNCR.
      ENDRXSelect_1)
     with Size => 1;
   for ENDRXSelect use
     (ENDRXSelect_0 => 0,
      ENDRXSelect_1 => 1);

   --  End of TX buffer
   type ENDTXSelect is
     (
      --  The Transmit Counter Register has not reached 0 since the last write
      --  in TCR or TNCR.
      ENDTXSelect_0,
      --  The Transmit Counter Register has reached 0 since the last write in
      --  TCR or TNCR.
      ENDTXSelect_1)
     with Size => 1;
   for ENDTXSelect use
     (ENDTXSelect_0 => 0,
      ENDTXSelect_1 => 1);

   --  RX Buffer Full
   type RXBUFFSelect is
     (
      --  RCR or RNCR has a value other than 0.
      RXBUFFSelect_0,
      --  Both RCR and RNCR has a value of 0.
      RXBUFFSelect_1)
     with Size => 1;
   for RXBUFFSelect use
     (RXBUFFSelect_0 => 0,
      RXBUFFSelect_1 => 1);

   --  TX Buffer Empty
   type TXBUFESelect is
     (
      --  TCR or TNCR has a value other than 0.
      TXBUFESelect_0,
      --  Both TCR and TNCR has a value of 0.
      TXBUFESelect_1)
     with Size => 1;
   for TXBUFESelect use
     (TXBUFESelect_0 => 0,
      TXBUFESelect_1 => 1);

   --  NSS Rising
   type NSSRSelect is
     (
      --  No rising edge detected on NSS pin since last read.
      NSSRSelect_0,
      --  A rising edge occurred on NSS pin since last read.
      NSSRSelect_1)
     with Size => 1;
   for NSSRSelect use
     (NSSRSelect_0 => 0,
      NSSRSelect_1 => 1);

   --  Transmission Registers Empty
   type TXEMPTYSelect is
     (
      --  As soon as data is written in TDR.
      TXEMPTYSelect_0,
      --  TDR and internal shifter are empty. If a transfer delay has been
      --  defined, TXEMPTY is set after the completion ofsuch delay.
      TXEMPTYSelect_1)
     with Size => 1;
   for TXEMPTYSelect use
     (TXEMPTYSelect_0 => 0,
      TXEMPTYSelect_1 => 1);

   subtype SR_UNDES_Field is Interfaces.Bit_Types.Bit;

   --  SPI Enable Status
   type SPIENSSelect is
     (
      --  SPI is disabled.
      SPIENSSelect_0,
      --  SPI is enabled.
      SPIENSSelect_1)
     with Size => 1;
   for SPIENSSelect use
     (SPIENSSelect_0 => 0,
      SPIENSSelect_1 => 1);

   --  Status Register
   type SPI_SR_Register is record
      --  Read-only. Receive Data Register Full
      RDRF           : RDRFSelect;
      --  Read-only. Transmit Data Register Empty
      TDRE           : TDRESelect;
      --  Read-only. Mode Fault Error
      MODF           : MODFSelect;
      --  Read-only. Overrun Error Status
      OVRES          : OVRESSelect;
      --  Read-only. End of RX buffer
      ENDRX          : ENDRXSelect;
      --  Read-only. End of TX buffer
      ENDTX          : ENDTXSelect;
      --  Read-only. RX Buffer Full
      RXBUFF         : RXBUFFSelect;
      --  Read-only. TX Buffer Empty
      TXBUFE         : TXBUFESelect;
      --  Read-only. NSS Rising
      NSSR           : NSSRSelect;
      --  Read-only. Transmission Registers Empty
      TXEMPTY        : TXEMPTYSelect;
      --  Read-only. Underrun Error Status (Slave Mode Only)
      UNDES          : SR_UNDES_Field;
      --  unspecified
      Reserved_11_15 : Interfaces.Bit_Types.UInt5;
      --  Read-only. SPI Enable Status
      SPIENS         : SPIENSSelect;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_SR_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      ENDRX          at 0 range 4 .. 4;
      ENDTX          at 0 range 5 .. 5;
      RXBUFF         at 0 range 6 .. 6;
      TXBUFE         at 0 range 7 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      SPIENS         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   ----------------------
   -- SPI_IER_Register --
   ----------------------

   subtype IER_UNDES_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Enable Register
   type SPI_IER_Register is record
      --  Write-only. Receive Data Register Full Interrupt Enable
      RDRF           : RDRFSelect := Interfaces.ATSAM4L.SPI.RDRFSelect_0;
      --  Write-only. Transmit Data Register Empty Interrupt Enable
      TDRE           : TDRESelect := Interfaces.ATSAM4L.SPI.TDRESelect_0;
      --  Write-only. Mode Fault Error Interrupt Enable
      MODF           : MODFSelect := Interfaces.ATSAM4L.SPI.MODFSelect_0;
      --  Write-only. Overrun Error Interrupt Enable
      OVRES          : OVRESSelect := Interfaces.ATSAM4L.SPI.OVRESSelect_0;
      --  Write-only. End of Receive Buffer Interrupt Enable
      ENDRX          : ENDRXSelect := Interfaces.ATSAM4L.SPI.ENDRXSelect_0;
      --  Write-only. End of Transmit Buffer Interrupt Enable
      ENDTX          : ENDTXSelect := Interfaces.ATSAM4L.SPI.ENDTXSelect_0;
      --  Write-only. Receive Buffer Full Interrupt Enable
      RXBUFF         : RXBUFFSelect := Interfaces.ATSAM4L.SPI.RXBUFFSelect_0;
      --  Write-only. Transmit Buffer Empty Interrupt Enable
      TXBUFE         : TXBUFESelect := Interfaces.ATSAM4L.SPI.TXBUFESelect_0;
      --  Write-only. NSS Rising Interrupt Enable
      NSSR           : NSSRSelect := Interfaces.ATSAM4L.SPI.NSSRSelect_0;
      --  Write-only. Transmission Registers Empty Enable
      TXEMPTY        : TXEMPTYSelect :=
                        Interfaces.ATSAM4L.SPI.TXEMPTYSelect_0;
      --  Write-only. Underrun Error Interrupt Enable
      UNDES          : IER_UNDES_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_IER_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      ENDRX          at 0 range 4 .. 4;
      ENDTX          at 0 range 5 .. 5;
      RXBUFF         at 0 range 6 .. 6;
      TXBUFE         at 0 range 7 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   ----------------------
   -- SPI_IDR_Register --
   ----------------------

   subtype IDR_UNDES_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Disable Register
   type SPI_IDR_Register is record
      --  Write-only. Receive Data Register Full Interrupt Disable
      RDRF           : RDRFSelect := Interfaces.ATSAM4L.SPI.RDRFSelect_0;
      --  Write-only. Transmit Data Register Empty Interrupt Disable
      TDRE           : TDRESelect := Interfaces.ATSAM4L.SPI.TDRESelect_0;
      --  Write-only. Mode Fault Error Interrupt Disable
      MODF           : MODFSelect := Interfaces.ATSAM4L.SPI.MODFSelect_0;
      --  Write-only. Overrun Error Interrupt Disable
      OVRES          : OVRESSelect := Interfaces.ATSAM4L.SPI.OVRESSelect_0;
      --  Write-only. End of Receive Buffer Interrupt Disable
      ENDRX          : ENDRXSelect := Interfaces.ATSAM4L.SPI.ENDRXSelect_0;
      --  Write-only. End of Transmit Buffer Interrupt Disable
      ENDTX          : ENDTXSelect := Interfaces.ATSAM4L.SPI.ENDTXSelect_0;
      --  Write-only. Receive Buffer Full Interrupt Disable
      RXBUFF         : RXBUFFSelect := Interfaces.ATSAM4L.SPI.RXBUFFSelect_0;
      --  Write-only. Transmit Buffer Empty Interrupt Disable
      TXBUFE         : TXBUFESelect := Interfaces.ATSAM4L.SPI.TXBUFESelect_0;
      --  Write-only. NSS Rising Interrupt Disable
      NSSR           : NSSRSelect := Interfaces.ATSAM4L.SPI.NSSRSelect_0;
      --  Write-only. Transmission Registers Empty Disable
      TXEMPTY        : TXEMPTYSelect :=
                        Interfaces.ATSAM4L.SPI.TXEMPTYSelect_0;
      --  Write-only. Underrun Error Interrupt Disable
      UNDES          : IDR_UNDES_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_IDR_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      ENDRX          at 0 range 4 .. 4;
      ENDTX          at 0 range 5 .. 5;
      RXBUFF         at 0 range 6 .. 6;
      TXBUFE         at 0 range 7 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   ----------------------
   -- SPI_IMR_Register --
   ----------------------

   subtype IMR_UNDES_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Mask Register
   type SPI_IMR_Register is record
      --  Read-only. Receive Data Register Full Interrupt Mask
      RDRF           : RDRFSelect;
      --  Read-only. Transmit Data Register Empty Interrupt Mask
      TDRE           : TDRESelect;
      --  Read-only. Mode Fault Error Interrupt Mask
      MODF           : MODFSelect;
      --  Read-only. Overrun Error Interrupt Mask
      OVRES          : OVRESSelect;
      --  Read-only. End of Receive Buffer Interrupt Mask
      ENDRX          : ENDRXSelect;
      --  Read-only. End of Transmit Buffer Interrupt Mask
      ENDTX          : ENDTXSelect;
      --  Read-only. Receive Buffer Full Interrupt Mask
      RXBUFF         : RXBUFFSelect;
      --  Read-only. Transmit Buffer Empty Interrupt Mask
      TXBUFE         : TXBUFESelect;
      --  Read-only. NSS Rising Interrupt Mask
      NSSR           : NSSRSelect;
      --  Read-only. Transmission Registers Empty Mask
      TXEMPTY        : TXEMPTYSelect;
      --  Read-only. Underrun Error Interrupt Mask
      UNDES          : IMR_UNDES_Field;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_IMR_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      ENDRX          at 0 range 4 .. 4;
      ENDTX          at 0 range 5 .. 5;
      RXBUFF         at 0 range 6 .. 6;
      TXBUFE         at 0 range 7 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   ----------------------
   -- SPI_CSR_Register --
   ----------------------

   --  Clock Polarity
   type CPOLSelect is
     (
      --  The inactive state value of SPCK is logic level zero.
      CPOLSelect_0,
      --  The inactive state value of SPCK is logic level one.CPOL is used to
      --  determine the inactive state value of the serial clock (SPCK). It is
      --  used with NCPHA to produce therequired clock/data relationship
      --  between master and slave devices.
      CPOLSelect_1)
     with Size => 1;
   for CPOLSelect use
     (CPOLSelect_0 => 0,
      CPOLSelect_1 => 1);

   --  Clock Phase
   type NCPHASelect is
     (
      --  Data is changed on the leading edge of SPCK and captured on the
      --  following edge of SPCK.
      NCPHASelect_0,
      --  Data is captured on the leading edge of SPCK and changed on the
      --  following edge of SPCK.NCPHA determines which edge of SPCK causes
      --  data to change and which edge causes data to be captured. NCPHA
      --  isused with CPOL to produce the required clock/data relationship
      --  between master and slave devices.
      NCPHASelect_1)
     with Size => 1;
   for NCPHASelect use
     (NCPHASelect_0 => 0,
      NCPHASelect_1 => 1);

   subtype CSR_CSNAAT_Field is Interfaces.Bit_Types.Bit;

   --  Chip Select Active After Transfer
   type CSAATSelect is
     (
      --  The Peripheral Chip Select Line rises as soon as the last transfer is
      --  achieved.
      CSAATSelect_0,
      --  The Peripheral Chip Select does not rise after the last transfer is
      --  achieved. It remains active until a new transfer isrequested on a
      --  different chip select.
      CSAATSelect_1)
     with Size => 1;
   for CSAATSelect use
     (CSAATSelect_0 => 0,
      CSAATSelect_1 => 1);

   --  Bits Per Transfer
   type BITSSelect is
     (
      --  8 bits per transfer
      BITSSelect_8_Bpt,
      --  9 bits per transfer
      BITSSelect_9_Bpt,
      --  10 bits per transfer
      BITSSelect_10_Bpt,
      --  11 bits per transfer
      BITSSelect_11_Bpt,
      --  12 bits per transfer
      BITSSelect_12_Bpt,
      --  13 bits per transfer
      BITSSelect_13_Bpt,
      --  14 bits per transfer
      BITSSelect_14_Bpt,
      --  15 bits per transfer
      BITSSelect_15_Bpt,
      --  16 bits per transfer
      BITSSelect_16_Bpt)
     with Size => 4;
   for BITSSelect use
     (BITSSelect_8_Bpt => 0,
      BITSSelect_9_Bpt => 1,
      BITSSelect_10_Bpt => 2,
      BITSSelect_11_Bpt => 3,
      BITSSelect_12_Bpt => 4,
      BITSSelect_13_Bpt => 5,
      BITSSelect_14_Bpt => 6,
      BITSSelect_15_Bpt => 7,
      BITSSelect_16_Bpt => 8);

   subtype CSR_SCBR_Field is Interfaces.Bit_Types.Byte;
   subtype CSR_DLYBS_Field is Interfaces.Bit_Types.Byte;
   subtype CSR_DLYBCT_Field is Interfaces.Bit_Types.Byte;

   --  Chip Select Register
   type SPI_CSR_Register is record
      --  Clock Polarity
      CPOL   : CPOLSelect := Interfaces.ATSAM4L.SPI.CPOLSelect_0;
      --  Clock Phase
      NCPHA  : NCPHASelect := Interfaces.ATSAM4L.SPI.NCPHASelect_0;
      --  Chip Select Not Active After Transfer
      CSNAAT : CSR_CSNAAT_Field := 16#0#;
      --  Chip Select Active After Transfer
      CSAAT  : CSAATSelect := Interfaces.ATSAM4L.SPI.CSAATSelect_0;
      --  Bits Per Transfer
      BITS   : BITSSelect := Interfaces.ATSAM4L.SPI.BITSSelect_8_Bpt;
      --  Serial Clock Baud Rate
      SCBR   : CSR_SCBR_Field := 16#0#;
      --  Delay Before SPCK
      DLYBS  : CSR_DLYBS_Field := 16#0#;
      --  Delay Between Consecutive Transfers
      DLYBCT : CSR_DLYBCT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_CSR_Register use record
      CPOL   at 0 range 0 .. 0;
      NCPHA  at 0 range 1 .. 1;
      CSNAAT at 0 range 2 .. 2;
      CSAAT  at 0 range 3 .. 3;
      BITS   at 0 range 4 .. 7;
      SCBR   at 0 range 8 .. 15;
      DLYBS  at 0 range 16 .. 23;
      DLYBCT at 0 range 24 .. 31;
   end record;

   --  Chip Select Register
   type SPI_CSR_Registers is array (0 .. 3) of SPI_CSR_Register;

   -----------------------
   -- SPI_WPCR_Register --
   -----------------------

   subtype WPCR_WPEN_Field is Interfaces.Bit_Types.Bit;

   --  Write Protection Key Password
   type WPKEYSelect is
     (
      --  Reset value for the field
      Wpkeyselect_Reset,
      --  SPI Write Protection Key Password
      Value)
     with Size => 24;
   for WPKEYSelect use
     (Wpkeyselect_Reset => 0,
      Value => 5460041);

   --  Write Protection control Register
   type SPI_WPCR_Register is record
      --  Write Protection Enable
      WPEN         : WPCR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write Protection Key Password
      WPKEY        : WPKEYSelect := Wpkeyselect_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_WPCR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   -----------------------
   -- SPI_WPSR_Register --
   -----------------------

   --  Write Protection Violation Status
   type WPVSSelect is
     (
      --  The Write Protection has blocked a Write access to a protected
      --  register (since the last read).
      Write_With_Wp,
      --  Software Reset has been performed while Write Protection was enabled
      --  (since the last read or since the last write access on MR, IER, IDR
      --  or CSRx).
      Swrst_With_Wp,
      --  Write accesses have been detected on MR (while a chip select was
      --  active) or on CSRi (while the Chip Select "i" was active) since the
      --  last read.
      Unexpected_Write)
     with Size => 3;
   for WPVSSelect use
     (Write_With_Wp => 1,
      Swrst_With_Wp => 2,
      Unexpected_Write => 4);

   subtype WPSR_WPVSRC_Field is Interfaces.Bit_Types.Byte;

   --  Write Protection status Register
   type SPI_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : WPVSSelect;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_WPSR_Register use record
      WPVS           at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      WPVSRC         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   ---------------------------
   -- SPI_FEATURES_Register --
   ---------------------------

   subtype FEATURES_NCS_Field is Interfaces.Bit_Types.UInt4;
   subtype FEATURES_PCONF_Field is Interfaces.Bit_Types.Bit;
   subtype FEATURES_PPNCONF_Field is Interfaces.Bit_Types.Bit;
   subtype FEATURES_PHCONF_Field is Interfaces.Bit_Types.Bit;
   subtype FEATURES_PHZNCONF_Field is Interfaces.Bit_Types.Bit;
   subtype FEATURES_LENCONF_Field is Interfaces.Bit_Types.Bit;
   subtype FEATURES_LENNCONF_Field is Interfaces.Bit_Types.UInt7;
   subtype FEATURES_EXTDEC_Field is Interfaces.Bit_Types.Bit;
   subtype FEATURES_CSNAATIMPL_Field is Interfaces.Bit_Types.Bit;
   subtype FEATURES_BRPBHSB_Field is Interfaces.Bit_Types.Bit;
   subtype FEATURES_FIFORIMPL_Field is Interfaces.Bit_Types.Bit;
   subtype FEATURES_SWPIMPL_Field is Interfaces.Bit_Types.Bit;

   --  Features Register
   type SPI_FEATURES_Register is record
      --  Read-only. Number of Chip Selects
      NCS            : FEATURES_NCS_Field;
      --  Read-only. Polarity is Configurable
      PCONF          : FEATURES_PCONF_Field;
      --  Read-only. Polarity is Positive if Polarity is not Configurable
      PPNCONF        : FEATURES_PPNCONF_Field;
      --  Read-only. Phase is Configurable
      PHCONF         : FEATURES_PHCONF_Field;
      --  Read-only. Phase is Zero if Phase is not Configurable
      PHZNCONF       : FEATURES_PHZNCONF_Field;
      --  Read-only. Character Length is Configurable
      LENCONF        : FEATURES_LENCONF_Field;
      --  Read-only. Character Length if not Configurable
      LENNCONF       : FEATURES_LENNCONF_Field;
      --  Read-only. External Decoder is True
      EXTDEC         : FEATURES_EXTDEC_Field;
      --  Read-only. CSNAAT Features are Implemented
      CSNAATIMPL     : FEATURES_CSNAATIMPL_Field;
      --  Read-only. Bridge Type is PB to HSB
      BRPBHSB        : FEATURES_BRPBHSB_Field;
      --  Read-only. FIFO in Reception is Implemented
      FIFORIMPL      : FEATURES_FIFORIMPL_Field;
      --  Read-only. Spurious Write Protection is Implemented
      SWPIMPL        : FEATURES_SWPIMPL_Field;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_FEATURES_Register use record
      NCS            at 0 range 0 .. 3;
      PCONF          at 0 range 4 .. 4;
      PPNCONF        at 0 range 5 .. 5;
      PHCONF         at 0 range 6 .. 6;
      PHZNCONF       at 0 range 7 .. 7;
      LENCONF        at 0 range 8 .. 8;
      LENNCONF       at 0 range 9 .. 15;
      EXTDEC         at 0 range 16 .. 16;
      CSNAATIMPL     at 0 range 17 .. 17;
      BRPBHSB        at 0 range 18 .. 18;
      FIFORIMPL      at 0 range 19 .. 19;
      SWPIMPL        at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --------------------------
   -- SPI_VERSION_Register --
   --------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_MFN_Field is Interfaces.Bit_Types.UInt3;

   --  Version Register
   type SPI_VERSION_Register is record
      --  Read-only. Version
      VERSION        : VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. mfn
      MFN            : VERSION_MFN_Field;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MFN            at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial Peripheral Interface
   type SPI_Peripheral is record
      --  Control Register
      CR       : SPI_CR_Register;
      --  Mode Register
      MR       : SPI_MR_Register;
      --  Receive Data Register
      RDR      : SPI_RDR_Register;
      --  Transmit Data Register
      TDR      : SPI_TDR_Register;
      --  Status Register
      SR       : SPI_SR_Register;
      --  Interrupt Enable Register
      IER      : SPI_IER_Register;
      --  Interrupt Disable Register
      IDR      : SPI_IDR_Register;
      --  Interrupt Mask Register
      IMR      : SPI_IMR_Register;
      --  Chip Select Register
      CSR      : SPI_CSR_Registers;
      --  Write Protection control Register
      WPCR     : SPI_WPCR_Register;
      --  Write Protection status Register
      WPSR     : SPI_WPSR_Register;
      --  Features Register
      FEATURES : SPI_FEATURES_Register;
      --  Version Register
      VERSION  : SPI_VERSION_Register;
   end record
     with Volatile;

   for SPI_Peripheral use record
      CR       at 0 range 0 .. 31;
      MR       at 4 range 0 .. 31;
      RDR      at 8 range 0 .. 31;
      TDR      at 12 range 0 .. 31;
      SR       at 16 range 0 .. 31;
      IER      at 20 range 0 .. 31;
      IDR      at 24 range 0 .. 31;
      IMR      at 28 range 0 .. 31;
      CSR      at 48 range 0 .. 127;
      WPCR     at 228 range 0 .. 31;
      WPSR     at 232 range 0 .. 31;
      FEATURES at 248 range 0 .. 31;
      VERSION  at 252 range 0 .. 31;
   end record;

   --  Serial Peripheral Interface
   SPI_Periph : aliased SPI_Peripheral
     with Import, Address => SPI_Base;

end Interfaces.ATSAM4L.SPI;
