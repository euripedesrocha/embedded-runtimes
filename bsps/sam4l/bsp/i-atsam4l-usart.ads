--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.USART is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --------------------------------
   -- USART_CR_LIN_MODE_Register --
   --------------------------------

   --  Reset Receiver
   type RSTRXSelect is
     (
      --  No effect
      RSTRXSelect_0,
      --  Resets the receiver
      RSTRXSelect_1)
     with Size => 1;
   for RSTRXSelect use
     (RSTRXSelect_0 => 0,
      RSTRXSelect_1 => 1);

   --  Reset Transmitter
   type RSTTXSelect is
     (
      --  No effect
      RSTTXSelect_0,
      --  Resets the transmitter
      RSTTXSelect_1)
     with Size => 1;
   for RSTTXSelect use
     (RSTTXSelect_0 => 0,
      RSTTXSelect_1 => 1);

   --  Receiver Enable
   type RXENSelect is
     (
      --  No effect
      RXENSelect_0,
      --  Enables the receiver, if RXDIS is 0
      RXENSelect_1)
     with Size => 1;
   for RXENSelect use
     (RXENSelect_0 => 0,
      RXENSelect_1 => 1);

   --  Receiver Disable
   type RXDISSelect is
     (
      --  No effect
      RXDISSelect_0,
      --  Disables the receiver
      RXDISSelect_1)
     with Size => 1;
   for RXDISSelect use
     (RXDISSelect_0 => 0,
      RXDISSelect_1 => 1);

   --  Transmitter Enable
   type TXENSelect is
     (
      --  No effect
      TXENSelect_0,
      --  Enables the transmitter if TXDIS is 0
      TXENSelect_1)
     with Size => 1;
   for TXENSelect use
     (TXENSelect_0 => 0,
      TXENSelect_1 => 1);

   --  Transmitter Disable
   type TXDISSelect is
     (
      --  No effect
      TXDISSelect_0,
      --  Disables the transmitter
      TXDISSelect_1)
     with Size => 1;
   for TXDISSelect use
     (TXDISSelect_0 => 0,
      TXDISSelect_1 => 1);

   --  Reset Status Bits
   type RSTSTASelect is
     (
      --  No effect
      RSTSTASelect_0,
      --  Resets the status bits PARE, FRAME, OVRE and RXBRK in the CSR
      RSTSTASelect_1)
     with Size => 1;
   for RSTSTASelect use
     (RSTSTASelect_0 => 0,
      RSTSTASelect_1 => 1);

   --  Start Break
   type STTBRKSelect is
     (
      --  No effect
      STTBRKSelect_0,
      --  Starts transmission of a break after the characters present in THR
      --  and the Transmit Shift Register have been transmitted. No effect if a
      --  break is already being transmitted
      STTBRKSelect_1)
     with Size => 1;
   for STTBRKSelect use
     (STTBRKSelect_0 => 0,
      STTBRKSelect_1 => 1);

   --  Stop Break
   type STPBRKSelect is
     (
      --  No effect
      STPBRKSelect_0,
      --  Stops transmission of the break after a minimum of one character
      --  length and transmits a high level during 12-bit periods.No effect if
      --  no break is being transmitted
      STPBRKSelect_1)
     with Size => 1;
   for STPBRKSelect use
     (STPBRKSelect_0 => 0,
      STPBRKSelect_1 => 1);

   --  Start Time-out
   type STTTOSelect is
     (
      --  No effect
      STTTOSelect_0,
      --  Starts waiting for a character before clocking the time-out counter
      STTTOSelect_1)
     with Size => 1;
   for STTTOSelect use
     (STTTOSelect_0 => 0,
      STTTOSelect_1 => 1);

   --  Send Address
   type SENDASelect is
     (
      --  No effect
      SENDASelect_0,
      --  In Multi-drop Mode only, the next character written to the THR is
      --  sent with the address bit set
      SENDASelect_1)
     with Size => 1;
   for SENDASelect use
     (SENDASelect_0 => 0,
      SENDASelect_1 => 1);

   --  Reset Iterations
   type RSTITSelect is
     (
      --  No effect
      RSTITSelect_0,
      --  Resets ITERATION in CSR. No effect if the ISO7816 is not enabled
      RSTITSelect_1)
     with Size => 1;
   for RSTITSelect use
     (RSTITSelect_0 => 0,
      RSTITSelect_1 => 1);

   --  Reset Non Acknowledge
   type RSTNACKSelect is
     (
      --  No effect
      RSTNACKSelect_0,
      --  Resets NACK in CSR
      RSTNACKSelect_1)
     with Size => 1;
   for RSTNACKSelect use
     (RSTNACKSelect_0 => 0,
      RSTNACKSelect_1 => 1);

   --  Rearm Time-out
   type RETTOSelect is
     (
      --  No effect
      RETTOSelect_0,
      --  Restart Time-out
      RETTOSelect_1)
     with Size => 1;
   for RETTOSelect use
     (RETTOSelect_0 => 0,
      RETTOSelect_1 => 1);

   --  Data Terminal Ready Enable
   type DTRENSelect is
     (
      --  No effect
      DTRENSelect_0,
      --  Drives the pin DTR at 0
      DTRENSelect_1)
     with Size => 1;
   for DTRENSelect use
     (DTRENSelect_0 => 0,
      DTRENSelect_1 => 1);

   --  Data Terminal Ready Disable
   type DTRDISSelect is
     (
      --  No effect
      DTRDISSelect_0,
      --  Drives the pin DTR to 1
      DTRDISSelect_1)
     with Size => 1;
   for DTRDISSelect use
     (DTRDISSelect_0 => 0,
      DTRDISSelect_1 => 1);

   --  Request to Send Enable
   type RTSENSelect is
     (
      --  No effect
      RTSENSelect_0,
      --  Drives the pin RTS to 0
      RTSENSelect_1)
     with Size => 1;
   for RTSENSelect use
     (RTSENSelect_0 => 0,
      RTSENSelect_1 => 1);

   --  Request to Send Disable
   type RTSDISSelect is
     (
      --  No effect
      RTSDISSelect_0,
      --  Drives the pin RTS to 1
      RTSDISSelect_1)
     with Size => 1;
   for RTSDISSelect use
     (RTSDISSelect_0 => 0,
      RTSDISSelect_1 => 1);

   subtype CR_LIN_MODE_LINABT_Field is Interfaces.Bit_Types.Bit;
   subtype CR_LIN_MODE_LINWKUP_Field is Interfaces.Bit_Types.Bit;

   --  Control Register
   type USART_CR_LIN_MODE_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Reset Receiver
      RSTRX          : RSTRXSelect := Interfaces.ATSAM4L.USART.RSTRXSelect_0;
      --  Write-only. Reset Transmitter
      RSTTX          : RSTTXSelect := Interfaces.ATSAM4L.USART.RSTTXSelect_0;
      --  Write-only. Receiver Enable
      RXEN           : RXENSelect := Interfaces.ATSAM4L.USART.RXENSelect_0;
      --  Write-only. Receiver Disable
      RXDIS          : RXDISSelect := Interfaces.ATSAM4L.USART.RXDISSelect_0;
      --  Write-only. Transmitter Enable
      TXEN           : TXENSelect := Interfaces.ATSAM4L.USART.TXENSelect_0;
      --  Write-only. Transmitter Disable
      TXDIS          : TXDISSelect := Interfaces.ATSAM4L.USART.TXDISSelect_0;
      --  Write-only. Reset Status Bits
      RSTSTA         : RSTSTASelect :=
                        Interfaces.ATSAM4L.USART.RSTSTASelect_0;
      --  Write-only. Start Break
      STTBRK         : STTBRKSelect :=
                        Interfaces.ATSAM4L.USART.STTBRKSelect_0;
      --  Write-only. Stop Break
      STPBRK         : STPBRKSelect :=
                        Interfaces.ATSAM4L.USART.STPBRKSelect_0;
      --  Write-only. Start Time-out
      STTTO          : STTTOSelect := Interfaces.ATSAM4L.USART.STTTOSelect_0;
      --  Write-only. Send Address
      SENDA          : SENDASelect := Interfaces.ATSAM4L.USART.SENDASelect_0;
      --  Write-only. Reset Iterations
      RSTIT          : RSTITSelect := Interfaces.ATSAM4L.USART.RSTITSelect_0;
      --  Write-only. Reset Non Acknowledge
      RSTNACK        : RSTNACKSelect :=
                        Interfaces.ATSAM4L.USART.RSTNACKSelect_0;
      --  Write-only. Rearm Time-out
      RETTO          : RETTOSelect := Interfaces.ATSAM4L.USART.RETTOSelect_0;
      --  Write-only. Data Terminal Ready Enable
      DTREN          : DTRENSelect := Interfaces.ATSAM4L.USART.DTRENSelect_0;
      --  Write-only. Data Terminal Ready Disable
      DTRDIS         : DTRDISSelect :=
                        Interfaces.ATSAM4L.USART.DTRDISSelect_0;
      --  Write-only. Request to Send Enable
      RTSEN          : RTSENSelect := Interfaces.ATSAM4L.USART.RTSENSelect_0;
      --  Write-only. Request to Send Disable
      RTSDIS         : RTSDISSelect :=
                        Interfaces.ATSAM4L.USART.RTSDISSelect_0;
      --  Write-only. Abort the current LIN transmission
      LINABT         : CR_LIN_MODE_LINABT_Field := 16#0#;
      --  Write-only. Sends a wakeup signal on the LIN bus
      LINWKUP        : CR_LIN_MODE_LINWKUP_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_CR_LIN_MODE_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RSTRX          at 0 range 2 .. 2;
      RSTTX          at 0 range 3 .. 3;
      RXEN           at 0 range 4 .. 4;
      RXDIS          at 0 range 5 .. 5;
      TXEN           at 0 range 6 .. 6;
      TXDIS          at 0 range 7 .. 7;
      RSTSTA         at 0 range 8 .. 8;
      STTBRK         at 0 range 9 .. 9;
      STPBRK         at 0 range 10 .. 10;
      STTTO          at 0 range 11 .. 11;
      SENDA          at 0 range 12 .. 12;
      RSTIT          at 0 range 13 .. 13;
      RSTNACK        at 0 range 14 .. 14;
      RETTO          at 0 range 15 .. 15;
      DTREN          at 0 range 16 .. 16;
      DTRDIS         at 0 range 17 .. 17;
      RTSEN          at 0 range 18 .. 18;
      RTSDIS         at 0 range 19 .. 19;
      LINABT         at 0 range 20 .. 20;
      LINWKUP        at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   ---------------------------------------
   -- USART_CR_SPI_MASTER_MODE_Register --
   ---------------------------------------

   --  Force SPI Chip Select
   type FCSSelect is
     (
      --  No effect
      FCSSelect_0,
      --  Forces the Slave Select Line NSS (RTS pin) to 0, even if USART is no
      --  transmitting, in order to address SPI slave devices supporting the
      --  CSAAT Mode (Chip Select Active After Transfer)
      FCSSelect_1)
     with Size => 1;
   for FCSSelect use
     (FCSSelect_0 => 0,
      FCSSelect_1 => 1);

   --  Release SPI Chip Select
   type RCSSelect is
     (
      --  No effect
      RCSSelect_0,
      --  Releases the Slave Select Line NSS (RTS pin)
      RCSSelect_1)
     with Size => 1;
   for RCSSelect use
     (RCSSelect_0 => 0,
      RCSSelect_1 => 1);

   --  Control Register
   type USART_CR_SPI_MASTER_MODE_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Reset Receiver
      RSTRX          : RSTRXSelect := Interfaces.ATSAM4L.USART.RSTRXSelect_0;
      --  Write-only. Reset Transmitter
      RSTTX          : RSTTXSelect := Interfaces.ATSAM4L.USART.RSTTXSelect_0;
      --  Write-only. Receiver Enable
      RXEN           : RXENSelect := Interfaces.ATSAM4L.USART.RXENSelect_0;
      --  Write-only. Receiver Disable
      RXDIS          : RXDISSelect := Interfaces.ATSAM4L.USART.RXDISSelect_0;
      --  Write-only. Transmitter Enable
      TXEN           : TXENSelect := Interfaces.ATSAM4L.USART.TXENSelect_0;
      --  Write-only. Transmitter Disable
      TXDIS          : TXDISSelect := Interfaces.ATSAM4L.USART.TXDISSelect_0;
      --  Write-only. Reset Status Bits
      RSTSTA         : RSTSTASelect :=
                        Interfaces.ATSAM4L.USART.RSTSTASelect_0;
      --  Write-only. Start Break
      STTBRK         : STTBRKSelect :=
                        Interfaces.ATSAM4L.USART.STTBRKSelect_0;
      --  Write-only. Stop Break
      STPBRK         : STPBRKSelect :=
                        Interfaces.ATSAM4L.USART.STPBRKSelect_0;
      --  Write-only. Start Time-out
      STTTO          : STTTOSelect := Interfaces.ATSAM4L.USART.STTTOSelect_0;
      --  Write-only. Send Address
      SENDA          : SENDASelect := Interfaces.ATSAM4L.USART.SENDASelect_0;
      --  Write-only. Reset Iterations
      RSTIT          : RSTITSelect := Interfaces.ATSAM4L.USART.RSTITSelect_0;
      --  Write-only. Reset Non Acknowledge
      RSTNACK        : RSTNACKSelect :=
                        Interfaces.ATSAM4L.USART.RSTNACKSelect_0;
      --  Write-only. Rearm Time-out
      RETTO          : RETTOSelect := Interfaces.ATSAM4L.USART.RETTOSelect_0;
      --  Write-only. Data Terminal Ready Enable
      DTREN          : DTRENSelect := Interfaces.ATSAM4L.USART.DTRENSelect_0;
      --  Write-only. Data Terminal Ready Disable
      DTRDIS         : DTRDISSelect :=
                        Interfaces.ATSAM4L.USART.DTRDISSelect_0;
      --  Write-only. Force SPI Chip Select
      FCS            : FCSSelect := Interfaces.ATSAM4L.USART.FCSSelect_0;
      --  Write-only. Release SPI Chip Select
      RCS            : RCSSelect := Interfaces.ATSAM4L.USART.RCSSelect_0;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_CR_SPI_MASTER_MODE_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RSTRX          at 0 range 2 .. 2;
      RSTTX          at 0 range 3 .. 3;
      RXEN           at 0 range 4 .. 4;
      RXDIS          at 0 range 5 .. 5;
      TXEN           at 0 range 6 .. 6;
      TXDIS          at 0 range 7 .. 7;
      RSTSTA         at 0 range 8 .. 8;
      STTBRK         at 0 range 9 .. 9;
      STPBRK         at 0 range 10 .. 10;
      STTTO          at 0 range 11 .. 11;
      SENDA          at 0 range 12 .. 12;
      RSTIT          at 0 range 13 .. 13;
      RSTNACK        at 0 range 14 .. 14;
      RETTO          at 0 range 15 .. 15;
      DTREN          at 0 range 16 .. 16;
      DTRDIS         at 0 range 17 .. 17;
      FCS            at 0 range 18 .. 18;
      RCS            at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ----------------------------------
   -- USART_CR_USART_MODE_Register --
   ----------------------------------

   --  Control Register
   type USART_CR_USART_MODE_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Reset Receiver
      RSTRX          : RSTRXSelect := Interfaces.ATSAM4L.USART.RSTRXSelect_0;
      --  Write-only. Reset Transmitter
      RSTTX          : RSTTXSelect := Interfaces.ATSAM4L.USART.RSTTXSelect_0;
      --  Write-only. Receiver Enable
      RXEN           : RXENSelect := Interfaces.ATSAM4L.USART.RXENSelect_0;
      --  Write-only. Receiver Disable
      RXDIS          : RXDISSelect := Interfaces.ATSAM4L.USART.RXDISSelect_0;
      --  Write-only. Transmitter Enable
      TXEN           : TXENSelect := Interfaces.ATSAM4L.USART.TXENSelect_0;
      --  Write-only. Transmitter Disable
      TXDIS          : TXDISSelect := Interfaces.ATSAM4L.USART.TXDISSelect_0;
      --  Write-only. Reset Status Bits
      RSTSTA         : RSTSTASelect :=
                        Interfaces.ATSAM4L.USART.RSTSTASelect_0;
      --  Write-only. Start Break
      STTBRK         : STTBRKSelect :=
                        Interfaces.ATSAM4L.USART.STTBRKSelect_0;
      --  Write-only. Stop Break
      STPBRK         : STPBRKSelect :=
                        Interfaces.ATSAM4L.USART.STPBRKSelect_0;
      --  Write-only. Start Time-out
      STTTO          : STTTOSelect := Interfaces.ATSAM4L.USART.STTTOSelect_0;
      --  Write-only. Send Address
      SENDA          : SENDASelect := Interfaces.ATSAM4L.USART.SENDASelect_0;
      --  Write-only. Reset Iterations
      RSTIT          : RSTITSelect := Interfaces.ATSAM4L.USART.RSTITSelect_0;
      --  Write-only. Reset Non Acknowledge
      RSTNACK        : RSTNACKSelect :=
                        Interfaces.ATSAM4L.USART.RSTNACKSelect_0;
      --  Write-only. Rearm Time-out
      RETTO          : RETTOSelect := Interfaces.ATSAM4L.USART.RETTOSelect_0;
      --  Write-only. Data Terminal Ready Enable
      DTREN          : DTRENSelect := Interfaces.ATSAM4L.USART.DTRENSelect_0;
      --  Write-only. Data Terminal Ready Disable
      DTRDIS         : DTRDISSelect :=
                        Interfaces.ATSAM4L.USART.DTRDISSelect_0;
      --  Write-only. Request to Send Enable
      RTSEN          : RTSENSelect := Interfaces.ATSAM4L.USART.RTSENSelect_0;
      --  Write-only. Request to Send Disable
      RTSDIS         : RTSDISSelect :=
                        Interfaces.ATSAM4L.USART.RTSDISSelect_0;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_CR_USART_MODE_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RSTRX          at 0 range 2 .. 2;
      RSTTX          at 0 range 3 .. 3;
      RXEN           at 0 range 4 .. 4;
      RXDIS          at 0 range 5 .. 5;
      TXEN           at 0 range 6 .. 6;
      TXDIS          at 0 range 7 .. 7;
      RSTSTA         at 0 range 8 .. 8;
      STTBRK         at 0 range 9 .. 9;
      STPBRK         at 0 range 10 .. 10;
      STTTO          at 0 range 11 .. 11;
      SENDA          at 0 range 12 .. 12;
      RSTIT          at 0 range 13 .. 13;
      RSTNACK        at 0 range 14 .. 14;
      RETTO          at 0 range 15 .. 15;
      DTREN          at 0 range 16 .. 16;
      DTRDIS         at 0 range 17 .. 17;
      RTSEN          at 0 range 18 .. 18;
      RTSDIS         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --------------------------------
   -- USART_MR_SPI_MODE_Register --
   --------------------------------

   --  Usart Mode
   type MODESelect is
     (
      --  Normal
      Normal,
      --  RS485
      Rs485,
      --  Hardware Handshaking
      Hardware,
      --  Modem
      Modem,
      --  IS07816 Protocol: T = 0
      Iso7816_T0,
      --  IS07816 Protocol: T = 1
      Iso7816_T1,
      --  IrDA
      Irda,
      --  LIN Master
      Lin_Master,
      --  LIN Slave
      Lin_Slave,
      --  SPI Master
      Spi_Master,
      --  SPI Slave
      Spi_Slave)
     with Size => 4;
   for MODESelect use
     (Normal => 0,
      Rs485 => 1,
      Hardware => 2,
      Modem => 3,
      Iso7816_T0 => 4,
      Iso7816_T1 => 6,
      Irda => 8,
      Lin_Master => 10,
      Lin_Slave => 11,
      Spi_Master => 14,
      Spi_Slave => 15);

   --  Clock Selection
   type USCLKSSelect is
     (
      --  MCK
      Mck,
      --  MCK / DIV
      Mck_Div,
      --  SCK
      Sck)
     with Size => 2;
   for USCLKSSelect use
     (Mck => 0,
      Mck_Div => 1,
      Sck => 3);

   --  Character Length.
   type CHRLSelect is
     (
      --  5 bits
      CHRLSelect_5,
      --  6 bits
      CHRLSelect_6,
      --  7 bits
      CHRLSelect_7,
      --  8 bits
      CHRLSelect_8)
     with Size => 2;
   for CHRLSelect use
     (CHRLSelect_5 => 0,
      CHRLSelect_6 => 1,
      CHRLSelect_7 => 2,
      CHRLSelect_8 => 3);

   --  SPI CLock Phase
   type CPHASelect is
     (
      --  Data is changed on the leading edge of SPCK and captured on the
      --  following edge of SPCK
      CPHASelect_0,
      --  Data is captured on the leading edge of SPCK and changed on the
      --  following edge of SPCK
      CPHASelect_1)
     with Size => 1;
   for CPHASelect use
     (CPHASelect_0 => 0,
      CPHASelect_1 => 1);

   --  Parity Type
   type PARSelect is
     (
      --  Even parity
      Even,
      --  Odd parity
      Odd,
      --  Parity forced to 0 (Space)
      Space,
      --  Parity forced to 1 (Mark)
      Mark,
      --  No Parity
      None,
      --  No Parity
      PARSelect_5,
      --  Multi-drop mode
      Multi,
      --  Multi-drop mode
      PARSelect_7)
     with Size => 3;
   for PARSelect use
     (Even => 0,
      Odd => 1,
      Space => 2,
      Mark => 3,
      None => 4,
      PARSelect_5 => 5,
      Multi => 6,
      PARSelect_7 => 7);

   --  Number of Stop Bits
   type NBSTOPSelect is
     (
      --  1 stop bit
      NBSTOPSelect_1,
      --  1.5 stop bits (Only valid if SYNC=0)
      NBSTOPSelect_1_5,
      --  2 stop bits
      NBSTOPSelect_2)
     with Size => 2;
   for NBSTOPSelect use
     (NBSTOPSelect_1 => 0,
      NBSTOPSelect_1_5 => 1,
      NBSTOPSelect_2 => 2);

   --  Channel Mode
   type CHMODESelect is
     (
      --  Normal Mode
      Normal,
      --  Automatic Echo. Receiver input is connected to the TXD pin
      Echo,
      --  Local Loopback. Transmitter output is connected to the Receiver Input
      Local_Loop,
      --  Remote Loopback. RXD pin is internally connected to the TXD pin
      Remote_Loop)
     with Size => 2;
   for CHMODESelect use
     (Normal => 0,
      Echo => 1,
      Local_Loop => 2,
      Remote_Loop => 3);

   --  SPI Clock Polarity
   type CPOLSelect is
     (
      --  The inactive state value of SPCK is logic level zero
      Zero,
      --  The inactive state value of SPCK is logic level one
      One)
     with Size => 1;
   for CPOLSelect use
     (Zero => 0,
      One => 1);

   --  9-bit Character Length
   type MODE9Select is
     (
      --  CHRL defines character length
      MODE9Select_0,
      --  9-bit character length
      MODE9Select_1)
     with Size => 1;
   for MODE9Select use
     (MODE9Select_0 => 0,
      MODE9Select_1 => 1);

   --  Clock Output Select
   type CLKOSelect is
     (
      --  The USART does not drive the SCK pin
      CLKOSelect_0,
      --  The USART drives the SCK pin if USCLKS does not select the external
      --  clock SCK
      CLKOSelect_1)
     with Size => 1;
   for CLKOSelect use
     (CLKOSelect_0 => 0,
      CLKOSelect_1 => 1);

   --  Oversampling Mode
   type OVERSelect is
     (
      --  16x Oversampling
      X16,
      --  8x Oversampling
      X8)
     with Size => 1;
   for OVERSelect use
     (X16 => 0,
      X8 => 1);

   --  Inhibit Non Acknowledge
   type INACKSelect is
     (
      --  The NACK is generated
      INACKSelect_0,
      --  The NACK is not generated
      INACKSelect_1)
     with Size => 1;
   for INACKSelect use
     (INACKSelect_0 => 0,
      INACKSelect_1 => 1);

   --  Disable Successive NACK
   type DSNACKSelect is
     (
      --  NACK is sent on the ISO line as soon as a parity error occurs in the
      --  received character (unless INACK is set)
      DSNACKSelect_0,
      --  Successive parity errors are counted up to the value specified in the
      --  MAX_ITERATION field. These parity errors generatea NACK on the ISO
      --  line. As soon as this value is reached, no additional NACK is sent on
      --  the ISO line. The flag ITERATION is asserted
      DSNACKSelect_1)
     with Size => 1;
   for DSNACKSelect use
     (DSNACKSelect_0 => 0,
      DSNACKSelect_1 => 1);

   subtype MR_SPI_MODE_INVDATA_Field is Interfaces.Bit_Types.Bit;
   subtype MR_SPI_MODE_MAX_ITERATION_Field is Interfaces.Bit_Types.UInt3;

   --  Infrared Receive Line Filter
   type FILTERSelect is
     (
      --  The USART does not filter the receive line
      FILTERSelect_0,
      --  The USART filters the receive line using a three-sample filter
      --  (1/16-bit clock) (2 over 3 majority)
      FILTERSelect_1)
     with Size => 1;
   for FILTERSelect use
     (FILTERSelect_0 => 0,
      FILTERSelect_1 => 1);

   --  Mode Register
   type USART_MR_SPI_MODE_Register is record
      --  Usart Mode
      MODE           : MODESelect := Interfaces.ATSAM4L.USART.Normal;
      --  Clock Selection
      USCLKS         : USCLKSSelect := Interfaces.ATSAM4L.USART.Mck;
      --  Character Length.
      CHRL           : CHRLSelect := Interfaces.ATSAM4L.USART.CHRLSelect_5;
      --  SPI CLock Phase
      CPHA           : CPHASelect := Interfaces.ATSAM4L.USART.CPHASelect_0;
      --  Parity Type
      PAR            : PARSelect := Interfaces.ATSAM4L.USART.Even;
      --  Number of Stop Bits
      NBSTOP         : NBSTOPSelect :=
                        Interfaces.ATSAM4L.USART.NBSTOPSelect_1;
      --  Channel Mode
      CHMODE         : CHMODESelect := Interfaces.ATSAM4L.USART.Normal;
      --  SPI Clock Polarity
      CPOL           : CPOLSelect := Interfaces.ATSAM4L.USART.Zero;
      --  9-bit Character Length
      MODE9          : MODE9Select := Interfaces.ATSAM4L.USART.MODE9Select_0;
      --  Clock Output Select
      CLKO           : CLKOSelect := Interfaces.ATSAM4L.USART.CLKOSelect_0;
      --  Oversampling Mode
      OVER           : OVERSelect := Interfaces.ATSAM4L.USART.X16;
      --  Inhibit Non Acknowledge
      INACK          : INACKSelect := Interfaces.ATSAM4L.USART.INACKSelect_0;
      --  Disable Successive NACK
      DSNACK         : DSNACKSelect :=
                        Interfaces.ATSAM4L.USART.DSNACKSelect_0;
      --  unspecified
      Reserved_22_22 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Inverted data
      INVDATA        : MR_SPI_MODE_INVDATA_Field := 16#0#;
      --  Max interation
      MAX_ITERATION  : MR_SPI_MODE_MAX_ITERATION_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Infrared Receive Line Filter
      FILTER         : FILTERSelect :=
                        Interfaces.ATSAM4L.USART.FILTERSelect_0;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_MR_SPI_MODE_Register use record
      MODE           at 0 range 0 .. 3;
      USCLKS         at 0 range 4 .. 5;
      CHRL           at 0 range 6 .. 7;
      CPHA           at 0 range 8 .. 8;
      PAR            at 0 range 9 .. 11;
      NBSTOP         at 0 range 12 .. 13;
      CHMODE         at 0 range 14 .. 15;
      CPOL           at 0 range 16 .. 16;
      MODE9          at 0 range 17 .. 17;
      CLKO           at 0 range 18 .. 18;
      OVER           at 0 range 19 .. 19;
      INACK          at 0 range 20 .. 20;
      DSNACK         at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      INVDATA        at 0 range 23 .. 23;
      MAX_ITERATION  at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      FILTER         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   ----------------------------------
   -- USART_MR_USART_MODE_Register --
   ----------------------------------

   --  Synchronous Mode Select
   type SYNCSelect is
     (
      --  USART operates in Synchronous Mode
      SYNCSelect_0,
      --  USART operates in Asynchronous Mode
      SYNCSelect_1)
     with Size => 1;
   for SYNCSelect use
     (SYNCSelect_0 => 0,
      SYNCSelect_1 => 1);

   --  Bit Order
   type MSBFSelect is
     (
      --  Least Significant Bit first
      Lsbf,
      --  Most Significant Bit first
      Msbf)
     with Size => 1;
   for MSBFSelect use
     (Lsbf => 0,
      Msbf => 1);

   --  Variable synchronization of command/data sync Start Frame Delimiter
   type VAR_SYNCSelect is
     (
      --  User defined configuration of command or data sync field depending on
      --  SYNC value
      VAR_SYNCSelect_0,
      --  The sync field is updated when a character is written into THR
      --  register
      VAR_SYNCSelect_1)
     with Size => 1;
   for VAR_SYNCSelect use
     (VAR_SYNCSelect_0 => 0,
      VAR_SYNCSelect_1 => 1);

   subtype MR_USART_MODE_INVDATA_Field is Interfaces.Bit_Types.Bit;
   subtype MR_USART_MODE_MAX_ITERATION_Field is Interfaces.Bit_Types.UInt3;

   --  Manchester Encoder/Decoder Enable
   type MANSelect is
     (
      --  Manchester Encoder/Decoder is disabled
      MANSelect_0,
      --  Manchester Encoder/Decoder is enabled
      MANSelect_1)
     with Size => 1;
   for MANSelect use
     (MANSelect_0 => 0,
      MANSelect_1 => 1);

   --  Manchester Synchronization Mode
   type MODSYNCSelect is
     (
      --  The Manchester Start bit is a 0 to 1 transition
      MODSYNCSelect_0,
      --  The Manchester Start bit is a 1 to 0 transition
      MODSYNCSelect_1)
     with Size => 1;
   for MODSYNCSelect use
     (MODSYNCSelect_0 => 0,
      MODSYNCSelect_1 => 1);

   --  Start Frame Delimiter selector
   type ONEBITSelect is
     (
      --  Start Frame delimiter is COMMAND or DATA SYNC
      ONEBITSelect_0,
      --  Start Frame delimiter is One Bit
      ONEBITSelect_1)
     with Size => 1;
   for ONEBITSelect use
     (ONEBITSelect_0 => 0,
      ONEBITSelect_1 => 1);

   --  Mode Register
   type USART_MR_USART_MODE_Register is record
      --  Usart Mode
      MODE           : MODESelect := Interfaces.ATSAM4L.USART.Normal;
      --  Clock Selection
      USCLKS         : USCLKSSelect := Interfaces.ATSAM4L.USART.Mck;
      --  Character Length.
      CHRL           : CHRLSelect := Interfaces.ATSAM4L.USART.CHRLSelect_5;
      --  Synchronous Mode Select
      SYNC           : SYNCSelect := Interfaces.ATSAM4L.USART.SYNCSelect_0;
      --  Parity Type
      PAR            : PARSelect := Interfaces.ATSAM4L.USART.Even;
      --  Number of Stop Bits
      NBSTOP         : NBSTOPSelect :=
                        Interfaces.ATSAM4L.USART.NBSTOPSelect_1;
      --  Channel Mode
      CHMODE         : CHMODESelect := Interfaces.ATSAM4L.USART.Normal;
      --  Bit Order
      MSBF           : MSBFSelect := Interfaces.ATSAM4L.USART.Lsbf;
      --  9-bit Character Length
      MODE9          : MODE9Select := Interfaces.ATSAM4L.USART.MODE9Select_0;
      --  Clock Output Select
      CLKO           : CLKOSelect := Interfaces.ATSAM4L.USART.CLKOSelect_0;
      --  Oversampling Mode
      OVER           : OVERSelect := Interfaces.ATSAM4L.USART.X16;
      --  Inhibit Non Acknowledge
      INACK          : INACKSelect := Interfaces.ATSAM4L.USART.INACKSelect_0;
      --  Disable Successive NACK
      DSNACK         : DSNACKSelect :=
                        Interfaces.ATSAM4L.USART.DSNACKSelect_0;
      --  Variable synchronization of command/data sync Start Frame Delimiter
      VAR_SYNC       : VAR_SYNCSelect :=
                        Interfaces.ATSAM4L.USART.VAR_SYNCSelect_0;
      --  Inverted data
      INVDATA        : MR_USART_MODE_INVDATA_Field := 16#0#;
      --  Max interation
      MAX_ITERATION  : MR_USART_MODE_MAX_ITERATION_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Infrared Receive Line Filter
      FILTER         : FILTERSelect :=
                        Interfaces.ATSAM4L.USART.FILTERSelect_0;
      --  Manchester Encoder/Decoder Enable
      MAN            : MANSelect := Interfaces.ATSAM4L.USART.MANSelect_0;
      --  Manchester Synchronization Mode
      MODSYNC        : MODSYNCSelect :=
                        Interfaces.ATSAM4L.USART.MODSYNCSelect_0;
      --  Start Frame Delimiter selector
      ONEBIT         : ONEBITSelect :=
                        Interfaces.ATSAM4L.USART.ONEBITSelect_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_MR_USART_MODE_Register use record
      MODE           at 0 range 0 .. 3;
      USCLKS         at 0 range 4 .. 5;
      CHRL           at 0 range 6 .. 7;
      SYNC           at 0 range 8 .. 8;
      PAR            at 0 range 9 .. 11;
      NBSTOP         at 0 range 12 .. 13;
      CHMODE         at 0 range 14 .. 15;
      MSBF           at 0 range 16 .. 16;
      MODE9          at 0 range 17 .. 17;
      CLKO           at 0 range 18 .. 18;
      OVER           at 0 range 19 .. 19;
      INACK          at 0 range 20 .. 20;
      DSNACK         at 0 range 21 .. 21;
      VAR_SYNC       at 0 range 22 .. 22;
      INVDATA        at 0 range 23 .. 23;
      MAX_ITERATION  at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      FILTER         at 0 range 28 .. 28;
      MAN            at 0 range 29 .. 29;
      MODSYNC        at 0 range 30 .. 30;
      ONEBIT         at 0 range 31 .. 31;
   end record;

   ---------------------------------
   -- USART_IER_LIN_MODE_Register --
   ---------------------------------

   --  Receiver Ready Interrupt Enable
   type RXRDYSelect is
     (
      --  No Effect
      RXRDYSelect_0,
      --  Enables the interrupt
      RXRDYSelect_1)
     with Size => 1;
   for RXRDYSelect use
     (RXRDYSelect_0 => 0,
      RXRDYSelect_1 => 1);

   --  Transmitter Ready Interrupt Enable
   type TXRDYSelect is
     (
      --  No Effect
      TXRDYSelect_0,
      --  Enables the interrupt
      TXRDYSelect_1)
     with Size => 1;
   for TXRDYSelect use
     (TXRDYSelect_0 => 0,
      TXRDYSelect_1 => 1);

   --  Receiver Break Interrupt Enable
   type RXBRKSelect is
     (
      --  No Effect
      RXBRKSelect_0,
      --  Enables the interrupt
      RXBRKSelect_1)
     with Size => 1;
   for RXBRKSelect use
     (RXBRKSelect_0 => 0,
      RXBRKSelect_1 => 1);

   --  Overrun Error Interrupt Enable
   type OVRESelect is
     (
      --  No Effect
      OVRESelect_0,
      --  Enables the interrupt
      OVRESelect_1)
     with Size => 1;
   for OVRESelect use
     (OVRESelect_0 => 0,
      OVRESelect_1 => 1);

   --  Framing Error Interrupt Enable
   type FRAMESelect is
     (
      --  No Effect
      FRAMESelect_0,
      --  Enables the interrupt
      FRAMESelect_1)
     with Size => 1;
   for FRAMESelect use
     (FRAMESelect_0 => 0,
      FRAMESelect_1 => 1);

   --  Parity Error Interrupt Enable
   type PARESelect is
     (
      --  No Effect
      PARESelect_0,
      --  Enables the interrupt
      PARESelect_1)
     with Size => 1;
   for PARESelect use
     (PARESelect_0 => 0,
      PARESelect_1 => 1);

   --  Time-out Interrupt Enable
   type TIMEOUTSelect is
     (
      --  No Effect
      TIMEOUTSelect_0,
      --  Enables the interrupt
      TIMEOUTSelect_1)
     with Size => 1;
   for TIMEOUTSelect use
     (TIMEOUTSelect_0 => 0,
      TIMEOUTSelect_1 => 1);

   --  Transmitter Empty Interrupt Enable
   type TXEMPTYSelect is
     (
      --  No Effect
      TXEMPTYSelect_0,
      --  Enables the interrupt
      TXEMPTYSelect_1)
     with Size => 1;
   for TXEMPTYSelect use
     (TXEMPTYSelect_0 => 0,
      TXEMPTYSelect_1 => 1);

   --  Iteration Interrupt Enable
   type ITERSelect is
     (
      --  No Effect
      ITERSelect_0,
      --  Enables the interrupt
      ITERSelect_1)
     with Size => 1;
   for ITERSelect use
     (ITERSelect_0 => 0,
      ITERSelect_1 => 1);

   --  Buffer Empty Interrupt Enable
   type TXBUFESelect is
     (
      --  No Effect
      TXBUFESelect_0,
      --  Enables the interrupt
      TXBUFESelect_1)
     with Size => 1;
   for TXBUFESelect use
     (TXBUFESelect_0 => 0,
      TXBUFESelect_1 => 1);

   --  Buffer Full Interrupt Enable
   type RXBUFFSelect is
     (
      --  No Effect
      RXBUFFSelect_0,
      --  Enables the interrupt
      RXBUFFSelect_1)
     with Size => 1;
   for RXBUFFSelect use
     (RXBUFFSelect_0 => 0,
      RXBUFFSelect_1 => 1);

   --  Non Acknowledge or LIN Break Sent or LIN Break Received Interrupt Enable
   type NACKSelect is
     (
      --  No Effect
      NACKSelect_0,
      --  Enables the interrupt
      NACKSelect_1)
     with Size => 1;
   for NACKSelect use
     (NACKSelect_0 => 0,
      NACKSelect_1 => 1);

   subtype IER_LIN_MODE_LINID_Field is Interfaces.Bit_Types.Bit;
   subtype IER_LIN_MODE_LINTC_Field is Interfaces.Bit_Types.Bit;

   --  Ring Indicator Input Change Enable
   type RIICSelect is
     (
      --  No Effect
      RIICSelect_0,
      --  Enables the interrupt
      RIICSelect_1)
     with Size => 1;
   for RIICSelect use
     (RIICSelect_0 => 0,
      RIICSelect_1 => 1);

   --  Data Set Ready Input Change Enable
   type DSRICSelect is
     (
      --  No Effect
      DSRICSelect_0,
      --  Enables the interrupt
      DSRICSelect_1)
     with Size => 1;
   for DSRICSelect use
     (DSRICSelect_0 => 0,
      DSRICSelect_1 => 1);

   --  Data Carrier Detect Input Change Interrupt Enable
   type DCDICSelect is
     (
      --  No Effect
      DCDICSelect_0,
      --  Enables the interrupt
      DCDICSelect_1)
     with Size => 1;
   for DCDICSelect use
     (DCDICSelect_0 => 0,
      DCDICSelect_1 => 1);

   --  Clear to Send Input Change Interrupt Enable
   type CTSICSelect is
     (
      --  No Effect
      CTSICSelect_0,
      --  Enables the interrupt
      CTSICSelect_1)
     with Size => 1;
   for CTSICSelect use
     (CTSICSelect_0 => 0,
      CTSICSelect_1 => 1);

   subtype IER_LIN_MODE_LINBE_Field is Interfaces.Bit_Types.Bit;
   subtype IER_LIN_MODE_LINISFE_Field is Interfaces.Bit_Types.Bit;
   subtype IER_LIN_MODE_LINIPE_Field is Interfaces.Bit_Types.Bit;
   subtype IER_LIN_MODE_LINCE_Field is Interfaces.Bit_Types.Bit;
   subtype IER_LIN_MODE_LINSNRE_Field is Interfaces.Bit_Types.Bit;

   --  LIN Synch Tolerance Error Interrupt Enable
   type LINSTESelect is
     (
      --  No Effect
      LINSTESelect_0,
      --  Enables the interrupt
      LINSTESelect_1)
     with Size => 1;
   for LINSTESelect use
     (LINSTESelect_0 => 0,
      LINSTESelect_1 => 1);

   --  LIN Header Timeout Error Interrupt Enable
   type LINHTESelect is
     (
      --  No Effect
      LINHTESelect_0,
      --  Enables the interrupt
      LINHTESelect_1)
     with Size => 1;
   for LINHTESelect use
     (LINHTESelect_0 => 0,
      LINHTESelect_1 => 1);

   --  Interrupt Enable Register
   type USART_IER_LIN_MODE_Register is record
      --  Write-only. Receiver Ready Interrupt Enable
      RXRDY          : RXRDYSelect := Interfaces.ATSAM4L.USART.RXRDYSelect_0;
      --  Write-only. Transmitter Ready Interrupt Enable
      TXRDY          : TXRDYSelect := Interfaces.ATSAM4L.USART.TXRDYSelect_0;
      --  Write-only. Receiver Break Interrupt Enable
      RXBRK          : RXBRKSelect := Interfaces.ATSAM4L.USART.RXBRKSelect_0;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : OVRESelect := Interfaces.ATSAM4L.USART.OVRESelect_0;
      --  Write-only. Framing Error Interrupt Enable
      FRAME          : FRAMESelect := Interfaces.ATSAM4L.USART.FRAMESelect_0;
      --  Write-only. Parity Error Interrupt Enable
      PARE           : PARESelect := Interfaces.ATSAM4L.USART.PARESelect_0;
      --  Write-only. Time-out Interrupt Enable
      TIMEOUT        : TIMEOUTSelect :=
                        Interfaces.ATSAM4L.USART.TIMEOUTSelect_0;
      --  Write-only. Transmitter Empty Interrupt Enable
      TXEMPTY        : TXEMPTYSelect :=
                        Interfaces.ATSAM4L.USART.TXEMPTYSelect_0;
      --  Write-only. Iteration Interrupt Enable
      ITER           : ITERSelect := Interfaces.ATSAM4L.USART.ITERSelect_0;
      --  Write-only. Buffer Empty Interrupt Enable
      TXBUFE         : TXBUFESelect :=
                        Interfaces.ATSAM4L.USART.TXBUFESelect_0;
      --  Write-only. Buffer Full Interrupt Enable
      RXBUFF         : RXBUFFSelect :=
                        Interfaces.ATSAM4L.USART.RXBUFFSelect_0;
      --  Write-only. Non Acknowledge or LIN Break Sent or LIN Break Received
      --  Interrupt Enable
      NACK           : NACKSelect := Interfaces.ATSAM4L.USART.NACKSelect_0;
      --  Write-only. LIN Identifier Sent or LIN Identifier Received Interrupt
      --  Enable
      LINID          : IER_LIN_MODE_LINID_Field := 16#0#;
      --  Write-only. LIN Transfer Conpleted Interrupt Enable
      LINTC          : IER_LIN_MODE_LINTC_Field := 16#0#;
      --  Write-only. Ring Indicator Input Change Enable
      RIIC           : RIICSelect := Interfaces.ATSAM4L.USART.RIICSelect_0;
      --  Write-only. Data Set Ready Input Change Enable
      DSRIC          : DSRICSelect := Interfaces.ATSAM4L.USART.DSRICSelect_0;
      --  Write-only. Data Carrier Detect Input Change Interrupt Enable
      DCDIC          : DCDICSelect := Interfaces.ATSAM4L.USART.DCDICSelect_0;
      --  Write-only. Clear to Send Input Change Interrupt Enable
      CTSIC          : CTSICSelect := Interfaces.ATSAM4L.USART.CTSICSelect_0;
      --  unspecified
      Reserved_20_24 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. LIN Bus Error Interrupt Enable
      LINBE          : IER_LIN_MODE_LINBE_Field := 16#0#;
      --  Write-only. LIN Inconsistent Synch Field Error Interrupt Enable
      LINISFE        : IER_LIN_MODE_LINISFE_Field := 16#0#;
      --  Write-only. LIN Identifier Parity Interrupt Enable
      LINIPE         : IER_LIN_MODE_LINIPE_Field := 16#0#;
      --  Write-only. LIN Checksum Error Interrupt Enable
      LINCE          : IER_LIN_MODE_LINCE_Field := 16#0#;
      --  Write-only. LIN Slave Not Responding Error Interrupt Enable
      LINSNRE        : IER_LIN_MODE_LINSNRE_Field := 16#0#;
      --  Write-only. LIN Synch Tolerance Error Interrupt Enable
      LINSTE         : LINSTESelect :=
                        Interfaces.ATSAM4L.USART.LINSTESelect_0;
      --  Write-only. LIN Header Timeout Error Interrupt Enable
      LINHTE         : LINHTESelect :=
                        Interfaces.ATSAM4L.USART.LINHTESelect_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IER_LIN_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_24 at 0 range 20 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      LINSTE         at 0 range 30 .. 30;
      LINHTE         at 0 range 31 .. 31;
   end record;

   ---------------------------------------
   -- USART_IER_SPI_SLAVE_MODE_Register --
   ---------------------------------------

   --  SPI Underrun Error Interrupt Enable
   type UNRESelect is
     (
      --  No Effect
      UNRESelect_0,
      --  Enables the interrupt
      UNRESelect_1)
     with Size => 1;
   for UNRESelect use
     (UNRESelect_0 => 0,
      UNRESelect_1 => 1);

   --  Interrupt Enable Register
   type USART_IER_SPI_SLAVE_MODE_Register is record
      --  Write-only. Receiver Ready Interrupt Enable
      RXRDY          : RXRDYSelect := Interfaces.ATSAM4L.USART.RXRDYSelect_0;
      --  Write-only. Transmitter Ready Interrupt Enable
      TXRDY          : TXRDYSelect := Interfaces.ATSAM4L.USART.TXRDYSelect_0;
      --  Write-only. Receiver Break Interrupt Enable
      RXBRK          : RXBRKSelect := Interfaces.ATSAM4L.USART.RXBRKSelect_0;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : OVRESelect := Interfaces.ATSAM4L.USART.OVRESelect_0;
      --  Write-only. Framing Error Interrupt Enable
      FRAME          : FRAMESelect := Interfaces.ATSAM4L.USART.FRAMESelect_0;
      --  Write-only. Parity Error Interrupt Enable
      PARE           : PARESelect := Interfaces.ATSAM4L.USART.PARESelect_0;
      --  Write-only. Time-out Interrupt Enable
      TIMEOUT        : TIMEOUTSelect :=
                        Interfaces.ATSAM4L.USART.TIMEOUTSelect_0;
      --  Write-only. Transmitter Empty Interrupt Enable
      TXEMPTY        : TXEMPTYSelect :=
                        Interfaces.ATSAM4L.USART.TXEMPTYSelect_0;
      --  Write-only. SPI Underrun Error Interrupt Enable
      UNRE           : UNRESelect := Interfaces.ATSAM4L.USART.UNRESelect_0;
      --  Write-only. Buffer Empty Interrupt Enable
      TXBUFE         : TXBUFESelect :=
                        Interfaces.ATSAM4L.USART.TXBUFESelect_0;
      --  Write-only. Buffer Full Interrupt Enable
      RXBUFF         : RXBUFFSelect :=
                        Interfaces.ATSAM4L.USART.RXBUFFSelect_0;
      --  Write-only. Non Acknowledge Interrupt Enable
      NACK           : NACKSelect := Interfaces.ATSAM4L.USART.NACKSelect_0;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Ring Indicator Input Change Enable
      RIIC           : RIICSelect := Interfaces.ATSAM4L.USART.RIICSelect_0;
      --  Write-only. Data Set Ready Input Change Enable
      DSRIC          : DSRICSelect := Interfaces.ATSAM4L.USART.DSRICSelect_0;
      --  Write-only. Data Carrier Detect Input Change Interrupt Enable
      DCDIC          : DCDICSelect := Interfaces.ATSAM4L.USART.DCDICSelect_0;
      --  Write-only. Clear to Send Input Change Interrupt Enable
      CTSIC          : CTSICSelect := Interfaces.ATSAM4L.USART.CTSICSelect_0;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IER_SPI_SLAVE_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------------
   -- USART_IER_USART_MODE_Register --
   -----------------------------------

   subtype IER_USART_MODE_MANE_Field is Interfaces.Bit_Types.Bit;

   --  Manchester Error Interrupt Enable
   type MANEASelect is
     (
      --  No effect
      MANEASelect_0,
      --  Enables the interrupt
      MANEASelect_1)
     with Size => 1;
   for MANEASelect use
     (MANEASelect_0 => 0,
      MANEASelect_1 => 1);

   --  Interrupt Enable Register
   type USART_IER_USART_MODE_Register is record
      --  Write-only. Receiver Ready Interrupt Enable
      RXRDY          : RXRDYSelect := Interfaces.ATSAM4L.USART.RXRDYSelect_0;
      --  Write-only. Transmitter Ready Interrupt Enable
      TXRDY          : TXRDYSelect := Interfaces.ATSAM4L.USART.TXRDYSelect_0;
      --  Write-only. Receiver Break Interrupt Enable
      RXBRK          : RXBRKSelect := Interfaces.ATSAM4L.USART.RXBRKSelect_0;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : OVRESelect := Interfaces.ATSAM4L.USART.OVRESelect_0;
      --  Write-only. Framing Error Interrupt Enable
      FRAME          : FRAMESelect := Interfaces.ATSAM4L.USART.FRAMESelect_0;
      --  Write-only. Parity Error Interrupt Enable
      PARE           : PARESelect := Interfaces.ATSAM4L.USART.PARESelect_0;
      --  Write-only. Time-out Interrupt Enable
      TIMEOUT        : TIMEOUTSelect :=
                        Interfaces.ATSAM4L.USART.TIMEOUTSelect_0;
      --  Write-only. Transmitter Empty Interrupt Enable
      TXEMPTY        : TXEMPTYSelect :=
                        Interfaces.ATSAM4L.USART.TXEMPTYSelect_0;
      --  Write-only. Iteration Interrupt Enable
      ITER           : ITERSelect := Interfaces.ATSAM4L.USART.ITERSelect_0;
      --  Write-only. Buffer Empty Interrupt Enable
      TXBUFE         : TXBUFESelect :=
                        Interfaces.ATSAM4L.USART.TXBUFESelect_0;
      --  Write-only. Buffer Full Interrupt Enable
      RXBUFF         : RXBUFFSelect :=
                        Interfaces.ATSAM4L.USART.RXBUFFSelect_0;
      --  Write-only. Non Acknowledge Interrupt Enable
      NACK           : NACKSelect := Interfaces.ATSAM4L.USART.NACKSelect_0;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Ring Indicator Input Change Enable
      RIIC           : RIICSelect := Interfaces.ATSAM4L.USART.RIICSelect_0;
      --  Write-only. Data Set Ready Input Change Enable
      DSRIC          : DSRICSelect := Interfaces.ATSAM4L.USART.DSRICSelect_0;
      --  Write-only. Data Carrier Detect Input Change Interrupt Enable
      DCDIC          : DCDICSelect := Interfaces.ATSAM4L.USART.DCDICSelect_0;
      --  Write-only. Clear to Send Input Change Interrupt Enable
      CTSIC          : CTSICSelect := Interfaces.ATSAM4L.USART.CTSICSelect_0;
      --  Write-only. Manchester Error Interrupt Enable
      MANE           : IER_USART_MODE_MANE_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Manchester Error Interrupt Enable
      MANEA          : MANEASelect := Interfaces.ATSAM4L.USART.MANEASelect_0;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IER_USART_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      MANE           at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      MANEA          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   ---------------------------------
   -- USART_IDR_LIN_MODE_Register --
   ---------------------------------

   subtype IDR_LIN_MODE_LINID_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_LIN_MODE_LINTC_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_LIN_MODE_LINBE_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_LIN_MODE_LINISFE_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_LIN_MODE_LINIPE_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_LIN_MODE_LINCE_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_LIN_MODE_LINSNRE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Disable Register
   type USART_IDR_LIN_MODE_Register is record
      --  Write-only. Receiver Ready Interrupt Disable
      RXRDY          : RXRDYSelect := Interfaces.ATSAM4L.USART.RXRDYSelect_0;
      --  Write-only. Transmitter Ready Interrupt Disable
      TXRDY          : TXRDYSelect := Interfaces.ATSAM4L.USART.TXRDYSelect_0;
      --  Write-only. Receiver Break Interrupt Disable
      RXBRK          : RXBRKSelect := Interfaces.ATSAM4L.USART.RXBRKSelect_0;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Overrun Error Interrupt Disable
      OVRE           : OVRESelect := Interfaces.ATSAM4L.USART.OVRESelect_0;
      --  Write-only. Framing Error Interrupt Disable
      FRAME          : FRAMESelect := Interfaces.ATSAM4L.USART.FRAMESelect_0;
      --  Write-only. Parity Error Interrupt Disable
      PARE           : PARESelect := Interfaces.ATSAM4L.USART.PARESelect_0;
      --  Write-only. Time-out Interrupt Disable
      TIMEOUT        : TIMEOUTSelect :=
                        Interfaces.ATSAM4L.USART.TIMEOUTSelect_0;
      --  Write-only. Transmitter Empty Interrupt Disable
      TXEMPTY        : TXEMPTYSelect :=
                        Interfaces.ATSAM4L.USART.TXEMPTYSelect_0;
      --  Write-only. Iteration Interrupt Disable
      ITER           : ITERSelect := Interfaces.ATSAM4L.USART.ITERSelect_0;
      --  Write-only. Buffer Empty Interrupt Disable
      TXBUFE         : TXBUFESelect :=
                        Interfaces.ATSAM4L.USART.TXBUFESelect_0;
      --  Write-only. Buffer Full Interrupt Disable
      RXBUFF         : RXBUFFSelect :=
                        Interfaces.ATSAM4L.USART.RXBUFFSelect_0;
      --  Write-only. Non Acknowledge or LIN Break Sent or LIN Break Received
      --  Interrupt Disable
      NACK           : NACKSelect := Interfaces.ATSAM4L.USART.NACKSelect_0;
      --  Write-only. LIN Identifier Sent or LIN Identifier Received Interrupt
      --  Disable
      LINID          : IDR_LIN_MODE_LINID_Field := 16#0#;
      --  Write-only. LIN Transfer Conpleted Interrupt Disable
      LINTC          : IDR_LIN_MODE_LINTC_Field := 16#0#;
      --  Write-only. Ring Indicator Input Change Disable
      RIIC           : RIICSelect := Interfaces.ATSAM4L.USART.RIICSelect_0;
      --  Write-only. Data Set Ready Input Change Disable
      DSRIC          : DSRICSelect := Interfaces.ATSAM4L.USART.DSRICSelect_0;
      --  Write-only. Data Carrier Detect Input Change Interrupt Disable
      DCDIC          : DCDICSelect := Interfaces.ATSAM4L.USART.DCDICSelect_0;
      --  Write-only. Clear to Send Input Change Interrupt Disable
      CTSIC          : CTSICSelect := Interfaces.ATSAM4L.USART.CTSICSelect_0;
      --  unspecified
      Reserved_20_24 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. LIN Bus Error Interrupt Disable
      LINBE          : IDR_LIN_MODE_LINBE_Field := 16#0#;
      --  Write-only. LIN Inconsistent Synch Field Error Interrupt Disable
      LINISFE        : IDR_LIN_MODE_LINISFE_Field := 16#0#;
      --  Write-only. LIN Identifier Parity Interrupt Disable
      LINIPE         : IDR_LIN_MODE_LINIPE_Field := 16#0#;
      --  Write-only. LIN Checksum Error Interrupt Disable
      LINCE          : IDR_LIN_MODE_LINCE_Field := 16#0#;
      --  Write-only. LIN Slave Not Responding Error Interrupt Disable
      LINSNRE        : IDR_LIN_MODE_LINSNRE_Field := 16#0#;
      --  Write-only. LIN Synch Tolerance Error Interrupt Disable
      LINSTE         : LINSTESelect :=
                        Interfaces.ATSAM4L.USART.LINSTESelect_0;
      --  Write-only. LIN Header Timeout Error Interrupt Disable
      LINHTE         : LINHTESelect :=
                        Interfaces.ATSAM4L.USART.LINHTESelect_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IDR_LIN_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_24 at 0 range 20 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      LINSTE         at 0 range 30 .. 30;
      LINHTE         at 0 range 31 .. 31;
   end record;

   ---------------------------------------
   -- USART_IDR_SPI_SLAVE_MODE_Register --
   ---------------------------------------

   --  Interrupt Disable Register
   type USART_IDR_SPI_SLAVE_MODE_Register is record
      --  Write-only. Receiver Ready Interrupt Disable
      RXRDY          : RXRDYSelect := Interfaces.ATSAM4L.USART.RXRDYSelect_0;
      --  Write-only. Transmitter Ready Interrupt Disable
      TXRDY          : TXRDYSelect := Interfaces.ATSAM4L.USART.TXRDYSelect_0;
      --  Write-only. Receiver Break Interrupt Disable
      RXBRK          : RXBRKSelect := Interfaces.ATSAM4L.USART.RXBRKSelect_0;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Overrun Error Interrupt Disable
      OVRE           : OVRESelect := Interfaces.ATSAM4L.USART.OVRESelect_0;
      --  Write-only. Framing Error Interrupt Disable
      FRAME          : FRAMESelect := Interfaces.ATSAM4L.USART.FRAMESelect_0;
      --  Write-only. Parity Error Interrupt Disable
      PARE           : PARESelect := Interfaces.ATSAM4L.USART.PARESelect_0;
      --  Write-only. Time-out Interrupt Disable
      TIMEOUT        : TIMEOUTSelect :=
                        Interfaces.ATSAM4L.USART.TIMEOUTSelect_0;
      --  Write-only. Transmitter Empty Interrupt Disable
      TXEMPTY        : TXEMPTYSelect :=
                        Interfaces.ATSAM4L.USART.TXEMPTYSelect_0;
      --  Write-only. SPI Underrun Error Interrupt Disable
      UNRE           : UNRESelect := Interfaces.ATSAM4L.USART.UNRESelect_0;
      --  Write-only. Buffer Empty Interrupt Disable
      TXBUFE         : TXBUFESelect :=
                        Interfaces.ATSAM4L.USART.TXBUFESelect_0;
      --  Write-only. Buffer Full Interrupt Disable
      RXBUFF         : RXBUFFSelect :=
                        Interfaces.ATSAM4L.USART.RXBUFFSelect_0;
      --  Write-only. Non Acknowledge Interrupt Disable
      NACK           : NACKSelect := Interfaces.ATSAM4L.USART.NACKSelect_0;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Ring Indicator Input Change Disable
      RIIC           : RIICSelect := Interfaces.ATSAM4L.USART.RIICSelect_0;
      --  Write-only. Data Set Ready Input Change Disable
      DSRIC          : DSRICSelect := Interfaces.ATSAM4L.USART.DSRICSelect_0;
      --  Write-only. Data Carrier Detect Input Change Interrupt Disable
      DCDIC          : DCDICSelect := Interfaces.ATSAM4L.USART.DCDICSelect_0;
      --  Write-only. Clear to Send Input Change Interrupt Disable
      CTSIC          : CTSICSelect := Interfaces.ATSAM4L.USART.CTSICSelect_0;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IDR_SPI_SLAVE_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------------
   -- USART_IDR_USART_MODE_Register --
   -----------------------------------

   subtype IDR_USART_MODE_MANE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Disable Register
   type USART_IDR_USART_MODE_Register is record
      --  Write-only. Receiver Ready Interrupt Disable
      RXRDY          : RXRDYSelect := Interfaces.ATSAM4L.USART.RXRDYSelect_0;
      --  Write-only. Transmitter Ready Interrupt Disable
      TXRDY          : TXRDYSelect := Interfaces.ATSAM4L.USART.TXRDYSelect_0;
      --  Write-only. Receiver Break Interrupt Disable
      RXBRK          : RXBRKSelect := Interfaces.ATSAM4L.USART.RXBRKSelect_0;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Overrun Error Interrupt Disable
      OVRE           : OVRESelect := Interfaces.ATSAM4L.USART.OVRESelect_0;
      --  Write-only. Framing Error Interrupt Disable
      FRAME          : FRAMESelect := Interfaces.ATSAM4L.USART.FRAMESelect_0;
      --  Write-only. Parity Error Interrupt Disable
      PARE           : PARESelect := Interfaces.ATSAM4L.USART.PARESelect_0;
      --  Write-only. Time-out Interrupt Disable
      TIMEOUT        : TIMEOUTSelect :=
                        Interfaces.ATSAM4L.USART.TIMEOUTSelect_0;
      --  Write-only. Transmitter Empty Interrupt Disable
      TXEMPTY        : TXEMPTYSelect :=
                        Interfaces.ATSAM4L.USART.TXEMPTYSelect_0;
      --  Write-only. Iteration Interrupt Disable
      ITER           : ITERSelect := Interfaces.ATSAM4L.USART.ITERSelect_0;
      --  Write-only. Buffer Empty Interrupt Disable
      TXBUFE         : TXBUFESelect :=
                        Interfaces.ATSAM4L.USART.TXBUFESelect_0;
      --  Write-only. Buffer Full Interrupt Disable
      RXBUFF         : RXBUFFSelect :=
                        Interfaces.ATSAM4L.USART.RXBUFFSelect_0;
      --  Write-only. Non Acknowledge Interrupt Disable
      NACK           : NACKSelect := Interfaces.ATSAM4L.USART.NACKSelect_0;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Ring Indicator Input Change Disable
      RIIC           : RIICSelect := Interfaces.ATSAM4L.USART.RIICSelect_0;
      --  Write-only. Data Set Ready Input Change Disable
      DSRIC          : DSRICSelect := Interfaces.ATSAM4L.USART.DSRICSelect_0;
      --  Write-only. Data Carrier Detect Input Change Interrupt Disable
      DCDIC          : DCDICSelect := Interfaces.ATSAM4L.USART.DCDICSelect_0;
      --  Write-only. Clear to Send Input Change Interrupt Disable
      CTSIC          : CTSICSelect := Interfaces.ATSAM4L.USART.CTSICSelect_0;
      --  Write-only. Manchester Error Interrupt Disable
      MANE           : IDR_USART_MODE_MANE_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Manchester Error Interrupt Disable
      MANEA          : MANEASelect := Interfaces.ATSAM4L.USART.MANEASelect_0;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IDR_USART_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      MANE           at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      MANEA          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   ---------------------------------
   -- USART_IMR_LIN_MODE_Register --
   ---------------------------------

   subtype IMR_LIN_MODE_LINID_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_LIN_MODE_LINTC_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_LIN_MODE_LINBE_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_LIN_MODE_LINISFE_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_LIN_MODE_LINIPE_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_LIN_MODE_LINCE_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_LIN_MODE_LINSNRE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Mask Register
   type USART_IMR_LIN_MODE_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : RXRDYSelect;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : TXRDYSelect;
      --  Read-only. Receiver Break Interrupt Mask
      RXBRK          : RXBRKSelect;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : OVRESelect;
      --  Read-only. Framing Error Interrupt Mask
      FRAME          : FRAMESelect;
      --  Read-only. Parity Error Interrupt Mask
      PARE           : PARESelect;
      --  Read-only. Time-out Interrupt Mask
      TIMEOUT        : TIMEOUTSelect;
      --  Read-only. TXEMPTY Interrupt Mask
      TXEMPTY        : TXEMPTYSelect;
      --  Read-only. Iteration Interrupt Mask
      ITER           : ITERSelect;
      --  Read-only. Buffer Empty Interrupt Mask
      TXBUFE         : TXBUFESelect;
      --  Read-only. Buffer Full Interrupt Mask
      RXBUFF         : RXBUFFSelect;
      --  Read-only. Non Acknowledge or LIN Break Sent or LIN Break Received
      --  Interrupt Mask
      NACK           : NACKSelect;
      --  Read-only. LIN Identifier Sent or LIN Received Interrupt Mask
      LINID          : IMR_LIN_MODE_LINID_Field;
      --  Read-only. LIN Transfer Conpleted Interrupt Mask
      LINTC          : IMR_LIN_MODE_LINTC_Field;
      --  Read-only. Ring Indicator Input Change Mask
      RIIC           : RIICSelect;
      --  Read-only. Data Set Ready Input Change Mask
      DSRIC          : DSRICSelect;
      --  Read-only. Data Carrier Detect Input Change Interrupt Mask
      DCDIC          : DCDICSelect;
      --  Read-only. Clear to Send Input Change Interrupt Mask
      CTSIC          : CTSICSelect;
      --  unspecified
      Reserved_20_24 : Interfaces.Bit_Types.UInt5;
      --  Read-only. LIN Bus Error Interrupt Mask
      LINBE          : IMR_LIN_MODE_LINBE_Field;
      --  Read-only. LIN Inconsistent Synch Field Error Interrupt Mask
      LINISFE        : IMR_LIN_MODE_LINISFE_Field;
      --  Read-only. LIN Identifier Parity Interrupt Mask
      LINIPE         : IMR_LIN_MODE_LINIPE_Field;
      --  Read-only. LIN Checksum Error Interrupt Mask
      LINCE          : IMR_LIN_MODE_LINCE_Field;
      --  Read-only. LIN Slave Not Responding Error Interrupt Mask
      LINSNRE        : IMR_LIN_MODE_LINSNRE_Field;
      --  Read-only. LIN Synch Tolerance Error Interrupt Mask
      LINSTE         : LINSTESelect;
      --  Read-only. LIN Header Timeout Error Interrupt Mask
      LINHTE         : LINHTESelect;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IMR_LIN_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_24 at 0 range 20 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      LINSTE         at 0 range 30 .. 30;
      LINHTE         at 0 range 31 .. 31;
   end record;

   ---------------------------------------
   -- USART_IMR_SPI_SLAVE_MODE_Register --
   ---------------------------------------

   --  Interrupt Mask Register
   type USART_IMR_SPI_SLAVE_MODE_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : RXRDYSelect;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : TXRDYSelect;
      --  Read-only. Receiver Break Interrupt Mask
      RXBRK          : RXBRKSelect;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : OVRESelect;
      --  Read-only. Framing Error Interrupt Mask
      FRAME          : FRAMESelect;
      --  Read-only. Parity Error Interrupt Mask
      PARE           : PARESelect;
      --  Read-only. Time-out Interrupt Mask
      TIMEOUT        : TIMEOUTSelect;
      --  Read-only. TXEMPTY Interrupt Mask
      TXEMPTY        : TXEMPTYSelect;
      --  Read-only. SPI Underrun Error Interrupt Mask
      UNRE           : UNRESelect;
      --  Read-only. Buffer Empty Interrupt Mask
      TXBUFE         : TXBUFESelect;
      --  Read-only. Buffer Full Interrupt Mask
      RXBUFF         : RXBUFFSelect;
      --  Read-only. Non Acknowledge Interrupt Mask
      NACK           : NACKSelect;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2;
      --  Read-only. Ring Indicator Input Change Mask
      RIIC           : RIICSelect;
      --  Read-only. Data Set Ready Input Change Mask
      DSRIC          : DSRICSelect;
      --  Read-only. Data Carrier Detect Input Change Interrupt Mask
      DCDIC          : DCDICSelect;
      --  Read-only. Clear to Send Input Change Interrupt Mask
      CTSIC          : CTSICSelect;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IMR_SPI_SLAVE_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------------
   -- USART_IMR_USART_MODE_Register --
   -----------------------------------

   subtype IMR_USART_MODE_MANE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Mask Register
   type USART_IMR_USART_MODE_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : RXRDYSelect;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : TXRDYSelect;
      --  Read-only. Receiver Break Interrupt Mask
      RXBRK          : RXBRKSelect;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : OVRESelect;
      --  Read-only. Framing Error Interrupt Mask
      FRAME          : FRAMESelect;
      --  Read-only. Parity Error Interrupt Mask
      PARE           : PARESelect;
      --  Read-only. Time-out Interrupt Mask
      TIMEOUT        : TIMEOUTSelect;
      --  Read-only. TXEMPTY Interrupt Mask
      TXEMPTY        : TXEMPTYSelect;
      --  Read-only. Iteration Interrupt Mask
      ITER           : ITERSelect;
      --  Read-only. Buffer Empty Interrupt Mask
      TXBUFE         : TXBUFESelect;
      --  Read-only. Buffer Full Interrupt Mask
      RXBUFF         : RXBUFFSelect;
      --  Read-only. Non Acknowledge Interrupt Mask
      NACK           : NACKSelect;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2;
      --  Read-only. Ring Indicator Input Change Mask
      RIIC           : RIICSelect;
      --  Read-only. Data Set Ready Input Change Mask
      DSRIC          : DSRICSelect;
      --  Read-only. Data Carrier Detect Input Change Interrupt Mask
      DCDIC          : DCDICSelect;
      --  Read-only. Clear to Send Input Change Interrupt Mask
      CTSIC          : CTSICSelect;
      --  Read-only. Manchester Error Interrupt Mask
      MANE           : IMR_USART_MODE_MANE_Field;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3;
      --  Read-only. Manchester Error Interrupt Mask
      MANEA          : MANEASelect;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IMR_USART_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      MANE           at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      MANEA          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   ---------------------------------
   -- USART_CSR_LIN_MODE_Register --
   ---------------------------------

   subtype CSR_LIN_MODE_LINID_Field is Interfaces.Bit_Types.Bit;
   subtype CSR_LIN_MODE_LINTC_Field is Interfaces.Bit_Types.Bit;

   --  Image of RI Input
   type RISelect is
     (
      --  RI is at 0
      RISelect_0,
      --  RI is at 1
      RISelect_1)
     with Size => 1;
   for RISelect use
     (RISelect_0 => 0,
      RISelect_1 => 1);

   --  Image of DSR Input
   type DSRSelect is
     (
      --  DSR is at 0
      DSRSelect_0,
      --  DSR is at 1
      DSRSelect_1)
     with Size => 1;
   for DSRSelect use
     (DSRSelect_0 => 0,
      DSRSelect_1 => 1);

   --  Image of DCD Input
   type DCDSelect is
     (
      --  DCD is at 0
      DCDSelect_0,
      --  DCD is at 1
      DCDSelect_1)
     with Size => 1;
   for DCDSelect use
     (DCDSelect_0 => 0,
      DCDSelect_1 => 1);

   --  LIN Bus Line Status
   type LINBLSSelect is
     (
      --  CTS is at 0
      LINBLSSelect_0,
      --  CTS is at 1
      LINBLSSelect_1)
     with Size => 1;
   for LINBLSSelect use
     (LINBLSSelect_0 => 0,
      LINBLSSelect_1 => 1);

   subtype CSR_LIN_MODE_LINBE_Field is Interfaces.Bit_Types.Bit;
   subtype CSR_LIN_MODE_LINISFE_Field is Interfaces.Bit_Types.Bit;
   subtype CSR_LIN_MODE_LINIPE_Field is Interfaces.Bit_Types.Bit;
   subtype CSR_LIN_MODE_LINCE_Field is Interfaces.Bit_Types.Bit;
   subtype CSR_LIN_MODE_LINSNRE_Field is Interfaces.Bit_Types.Bit;

   --  Channel Status Register
   type USART_CSR_LIN_MODE_Register is record
      --  Read-only. Receiver Ready
      RXRDY          : RXRDYSelect;
      --  Read-only. Transmitter Ready
      TXRDY          : TXRDYSelect;
      --  Read-only. Break Received/End of Break
      RXBRK          : RXBRKSelect;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2;
      --  Read-only. Overrun Error
      OVRE           : OVRESelect;
      --  Read-only. Framing Error
      FRAME          : FRAMESelect;
      --  Read-only. Parity Error
      PARE           : PARESelect;
      --  Read-only. Receiver Time-out
      TIMEOUT        : TIMEOUTSelect;
      --  Read-only. Transmitter Empty
      TXEMPTY        : TXEMPTYSelect;
      --  Read-only. Max number of Repetitions Reached
      ITER           : ITERSelect;
      --  Read-only. Transmission Buffer Empty
      TXBUFE         : TXBUFESelect;
      --  Read-only. Reception Buffer Full
      RXBUFF         : RXBUFFSelect;
      --  Read-only. Non Acknowledge or LIN Break Sent or LIN Break Received
      NACK           : NACKSelect;
      --  Read-only. LIN Identifier Sent or LIN Identifier Received
      LINID          : CSR_LIN_MODE_LINID_Field;
      --  Read-only. LIN Transfer Conpleted
      LINTC          : CSR_LIN_MODE_LINTC_Field;
      --  Read-only. Ring Indicator Input Change Flag
      RIIC           : RIICSelect;
      --  Read-only. Data Set Ready Input Change Flag
      DSRIC          : DSRICSelect;
      --  Read-only. Data Carrier Detect Input Change Flag
      DCDIC          : DCDICSelect;
      --  Read-only. Clear to Send Input Change Flag
      CTSIC          : CTSICSelect;
      --  Read-only. Image of RI Input
      RI             : RISelect;
      --  Read-only. Image of DSR Input
      DSR            : DSRSelect;
      --  Read-only. Image of DCD Input
      DCD            : DCDSelect;
      --  Read-only. LIN Bus Line Status
      LINBLS         : LINBLSSelect;
      --  unspecified
      Reserved_24_24 : Interfaces.Bit_Types.Bit;
      --  Read-only. LIN Bit Error
      LINBE          : CSR_LIN_MODE_LINBE_Field;
      --  Read-only. LIN Inconsistent Synch Field Error
      LINISFE        : CSR_LIN_MODE_LINISFE_Field;
      --  Read-only. LIN Identifier Parity Error
      LINIPE         : CSR_LIN_MODE_LINIPE_Field;
      --  Read-only. LIN Checksum Error
      LINCE          : CSR_LIN_MODE_LINCE_Field;
      --  Read-only. LIN Slave Not Responding Error
      LINSNRE        : CSR_LIN_MODE_LINSNRE_Field;
      --  Read-only. LIN Synch Tolerance Error
      LINSTE         : LINSTESelect;
      --  Read-only. LIN Header Timeout Error
      LINHTE         : LINHTESelect;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_CSR_LIN_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      RI             at 0 range 20 .. 20;
      DSR            at 0 range 21 .. 21;
      DCD            at 0 range 22 .. 22;
      LINBLS         at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      LINSTE         at 0 range 30 .. 30;
      LINHTE         at 0 range 31 .. 31;
   end record;

   ---------------------------------------
   -- USART_CSR_SPI_SLAVE_MODE_Register --
   ---------------------------------------

   --  Image of CTS Input
   type CTSSelect is
     (
      --  CTS is at 0
      CTSSelect_0,
      --  CTS is at 1
      CTSSelect_1)
     with Size => 1;
   for CTSSelect use
     (CTSSelect_0 => 0,
      CTSSelect_1 => 1);

   --  Channel Status Register
   type USART_CSR_SPI_SLAVE_MODE_Register is record
      --  Read-only. Receiver Ready
      RXRDY          : RXRDYSelect;
      --  Read-only. Transmitter Ready
      TXRDY          : TXRDYSelect;
      --  Read-only. Break Received/End of Break
      RXBRK          : RXBRKSelect;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2;
      --  Read-only. Overrun Error
      OVRE           : OVRESelect;
      --  Read-only. Framing Error
      FRAME          : FRAMESelect;
      --  Read-only. Parity Error
      PARE           : PARESelect;
      --  Read-only. Receiver Time-out
      TIMEOUT        : TIMEOUTSelect;
      --  Read-only. Transmitter Empty
      TXEMPTY        : TXEMPTYSelect;
      --  Read-only. SPI Underrun Error
      UNRE           : UNRESelect;
      --  Read-only. Transmission Buffer Empty
      TXBUFE         : TXBUFESelect;
      --  Read-only. Reception Buffer Full
      RXBUFF         : RXBUFFSelect;
      --  Read-only. Non Acknowledge
      NACK           : NACKSelect;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2;
      --  Read-only. Ring Indicator Input Change Flag
      RIIC           : RIICSelect;
      --  Read-only. Data Set Ready Input Change Flag
      DSRIC          : DSRICSelect;
      --  Read-only. Data Carrier Detect Input Change Flag
      DCDIC          : DCDICSelect;
      --  Read-only. Clear to Send Input Change Flag
      CTSIC          : CTSICSelect;
      --  Read-only. Image of RI Input
      RI             : RISelect;
      --  Read-only. Image of DSR Input
      DSR            : DSRSelect;
      --  Read-only. Image of DCD Input
      DCD            : DCDSelect;
      --  Read-only. Image of CTS Input
      CTS            : CTSSelect;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_CSR_SPI_SLAVE_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      RI             at 0 range 20 .. 20;
      DSR            at 0 range 21 .. 21;
      DCD            at 0 range 22 .. 22;
      CTS            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------------------------
   -- USART_CSR_USART_MODE_Register --
   -----------------------------------

   --  Manchester Error
   type MANERRSelect is
     (
      --  No Manchester error has been detected since the last RSTSTA
      MANERRSelect_0,
      --  At least one Manchester error has been detected since the last RSTSTA
      MANERRSelect_1)
     with Size => 1;
   for MANERRSelect use
     (MANERRSelect_0 => 0,
      MANERRSelect_1 => 1);

   --  Channel Status Register
   type USART_CSR_USART_MODE_Register is record
      --  Read-only. Receiver Ready
      RXRDY          : RXRDYSelect;
      --  Read-only. Transmitter Ready
      TXRDY          : TXRDYSelect;
      --  Read-only. Break Received/End of Break
      RXBRK          : RXBRKSelect;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2;
      --  Read-only. Overrun Error
      OVRE           : OVRESelect;
      --  Read-only. Framing Error
      FRAME          : FRAMESelect;
      --  Read-only. Parity Error
      PARE           : PARESelect;
      --  Read-only. Receiver Time-out
      TIMEOUT        : TIMEOUTSelect;
      --  Read-only. Transmitter Empty
      TXEMPTY        : TXEMPTYSelect;
      --  Read-only. Max number of Repetitions Reached
      ITER           : ITERSelect;
      --  Read-only. Transmission Buffer Empty
      TXBUFE         : TXBUFESelect;
      --  Read-only. Reception Buffer Full
      RXBUFF         : RXBUFFSelect;
      --  Read-only. Non Acknowledge
      NACK           : NACKSelect;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2;
      --  Read-only. Ring Indicator Input Change Flag
      RIIC           : RIICSelect;
      --  Read-only. Data Set Ready Input Change Flag
      DSRIC          : DSRICSelect;
      --  Read-only. Data Carrier Detect Input Change Flag
      DCDIC          : DCDICSelect;
      --  Read-only. Clear to Send Input Change Flag
      CTSIC          : CTSICSelect;
      --  Read-only. Image of RI Input
      RI             : RISelect;
      --  Read-only. Image of DSR Input
      DSR            : DSRSelect;
      --  Read-only. Image of DCD Input
      DCD            : DCDSelect;
      --  Read-only. Image of CTS Input
      CTS            : CTSSelect;
      --  Read-only. Manchester Error
      MANERR         : MANERRSelect;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_CSR_USART_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RIIC           at 0 range 16 .. 16;
      DSRIC          at 0 range 17 .. 17;
      DCDIC          at 0 range 18 .. 18;
      CTSIC          at 0 range 19 .. 19;
      RI             at 0 range 20 .. 20;
      DSR            at 0 range 21 .. 21;
      DCD            at 0 range 22 .. 22;
      CTS            at 0 range 23 .. 23;
      MANERR         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   ------------------------
   -- USART_RHR_Register --
   ------------------------

   subtype RHR_RXCHR_Field is Interfaces.Bit_Types.UInt9;

   --  Received Sync
   type RXSYNHSelect is
     (
      --  Last character received is a Data
      RXSYNHSelect_0,
      --  Last character received is a Command
      RXSYNHSelect_1)
     with Size => 1;
   for RXSYNHSelect use
     (RXSYNHSelect_0 => 0,
      RXSYNHSelect_1 => 1);

   --  Receiver Holding Register
   type USART_RHR_Register is record
      --  Read-only. Received Character
      RXCHR          : RHR_RXCHR_Field;
      --  unspecified
      Reserved_9_14  : Interfaces.Bit_Types.UInt6;
      --  Read-only. Received Sync
      RXSYNH         : RXSYNHSelect;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_RHR_Register use record
      RXCHR          at 0 range 0 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      RXSYNH         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   ------------------------
   -- USART_THR_Register --
   ------------------------

   subtype THR_TXCHR_Field is Interfaces.Bit_Types.UInt9;

   --  Sync Field to be transmitted
   type TXSYNHSelect is
     (
      --  The next character sent is encoded as a data. Start Frame Delimiter
      --  is DATA SYNC
      TXSYNHSelect_0,
      --  The next character sent is encoded as a command. Start Frame
      --  Delimiter is COMMAND SYNC
      TXSYNHSelect_1)
     with Size => 1;
   for TXSYNHSelect use
     (TXSYNHSelect_0 => 0,
      TXSYNHSelect_1 => 1);

   --  Transmitter Holding Register
   type USART_THR_Register is record
      --  Write-only. Character to be Transmitted
      TXCHR          : THR_TXCHR_Field := 16#0#;
      --  unspecified
      Reserved_9_14  : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Write-only. Sync Field to be transmitted
      TXSYNH         : TXSYNHSelect :=
                        Interfaces.ATSAM4L.USART.TXSYNHSelect_0;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_THR_Register use record
      TXCHR          at 0 range 0 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      TXSYNH         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -------------------------
   -- USART_BRGR_Register --
   -------------------------

   --  Clock Divisor
   type CDSelect is
     (
      --  Disables the clock
      Disable,
      --  Clock Divisor Bypass
      Bypass,
      --  Baud Rate (Asynchronous Mode) = Selected Clock/(16 x CD) or (8 x CD);
      --  Baud Rate (Synchronous Mode) = Selected Clock/CD;
      CDSelect_2)
     with Size => 16;
   for CDSelect use
     (Disable => 0,
      Bypass => 1,
      CDSelect_2 => 2);

   --  Fractional Part
   type FPSelect is
     (
      --  Fractional divider is disabled
      FPSelect_0)
     with Size => 3;
   for FPSelect use
     (FPSelect_0 => 0);

   --  Baud Rate Generator Register
   type USART_BRGR_Register is record
      --  Clock Divisor
      CD             : CDSelect := Interfaces.ATSAM4L.USART.Disable;
      --  Fractional Part
      FP             : FPSelect := Interfaces.ATSAM4L.USART.FPSelect_0;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_BRGR_Register use record
      CD             at 0 range 0 .. 15;
      FP             at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -------------------------
   -- USART_RTOR_Register --
   -------------------------

   --  Time-out Value
   type TOSelect is
     (
      --  Disables the RX Time-out function
      Disable)
     with Size => 17;
   for TOSelect use
     (Disable => 0);

   --  Receiver Time-out Register
   type USART_RTOR_Register is record
      --  Time-out Value
      TO             : TOSelect := Interfaces.ATSAM4L.USART.Disable;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_RTOR_Register use record
      TO             at 0 range 0 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   -------------------------
   -- USART_TTGR_Register --
   -------------------------

   --  Timeguard Value
   type TGSelect is
     (
      --  Disables the TX Timeguard function.
      Disable)
     with Size => 8;
   for TGSelect use
     (Disable => 0);

   --  Transmitter Timeguard Register
   type USART_TTGR_Register is record
      --  Timeguard Value
      TG            : TGSelect := Interfaces.ATSAM4L.USART.Disable;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_TTGR_Register use record
      TG            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -------------------------
   -- USART_FIDI_Register --
   -------------------------

   --  FI Over DI Ratio Value
   type FI_DI_RATIOSelect is
     (
      --  Baud Rate = 0
      Disable,
      --  Reset value for the field
      Fi_Di_Ratioselect_Reset)
     with Size => 11;
   for FI_DI_RATIOSelect use
     (Disable => 0,
      Fi_Di_Ratioselect_Reset => 372);

   --  FI DI Ratio Register
   type USART_FIDI_Register is record
      --  FI Over DI Ratio Value
      FI_DI_RATIO    : FI_DI_RATIOSelect := Fi_Di_Ratioselect_Reset;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_FIDI_Register use record
      FI_DI_RATIO    at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   ------------------------
   -- USART_NER_Register --
   ------------------------

   subtype NER_NB_ERRORS_Field is Interfaces.Bit_Types.Byte;

   --  Number of Errors Register
   type USART_NER_Register is record
      --  Read-only. Error number during ISO7816 transfers
      NB_ERRORS     : NER_NB_ERRORS_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_NER_Register use record
      NB_ERRORS     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ------------------------
   -- USART_IFR_Register --
   ------------------------

   subtype IFR_IRDA_FILTER_Field is Interfaces.Bit_Types.Byte;

   --  IrDA Filter Register
   type USART_IFR_Register is record
      --  Irda filter
      IRDA_FILTER   : IFR_IRDA_FILTER_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_IFR_Register use record
      IRDA_FILTER   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ------------------------
   -- USART_MAN_Register --
   ------------------------

   --  Transmitter Preamble Length
   type TX_PLSelect is
     (
      --  The Transmitter Preamble pattern generation is disabled
      TX_PLSelect_0,
      --  Reset value for the field
      Tx_Plselect_Reset)
     with Size => 4;
   for TX_PLSelect use
     (TX_PLSelect_0 => 0,
      Tx_Plselect_Reset => 4);

   --  Transmitter Preamble Pattern
   type TX_PPSelect is
     (
      --  ALL_ONE
      TX_PPSelect_0,
      --  ALL_ZERO
      TX_PPSelect_1,
      --  ZERO_ONE
      TX_PPSelect_2,
      --  ONE_ZERO
      TX_PPSelect_3)
     with Size => 2;
   for TX_PPSelect use
     (TX_PPSelect_0 => 0,
      TX_PPSelect_1 => 1,
      TX_PPSelect_2 => 2,
      TX_PPSelect_3 => 3);

   --  Transmitter Manchester Polarity
   type TX_MPOLSelect is
     (
      --  Logic Zero is coded as a zero-to-one transition, Logic One is coded
      --  as a one-to-zero transition
      TX_MPOLSelect_0,
      --  Logic Zero is coded as a one-to-zero transition, Logic One is coded
      --  as a zero-to-one transition
      TX_MPOLSelect_1)
     with Size => 1;
   for TX_MPOLSelect use
     (TX_MPOLSelect_0 => 0,
      TX_MPOLSelect_1 => 1);

   --  Receiver Preamble Length
   type RX_PLSelect is
     (
      --  The receiver preamble pattern detection is disabled
      RX_PLSelect_0,
      --  Reset value for the field
      Rx_Plselect_Reset)
     with Size => 4;
   for RX_PLSelect use
     (RX_PLSelect_0 => 0,
      Rx_Plselect_Reset => 1);

   --  Receiver Preamble Pattern detected
   type RX_PPSelect is
     (
      --  ALL_ONE
      RX_PPSelect_0,
      --  ALL_ZERO
      RX_PPSelect_1,
      --  ZERO_ONE
      RX_PPSelect_2,
      --  ONE_ZERO
      RX_PPSelect_3)
     with Size => 2;
   for RX_PPSelect use
     (RX_PPSelect_0 => 0,
      RX_PPSelect_1 => 1,
      RX_PPSelect_2 => 2,
      RX_PPSelect_3 => 3);

   --  Receiver Manchester Polarity
   type RX_MPOLSelect is
     (
      --  Logic Zero is coded as a zero-to-one transition, Logic One is coded
      --  as a one-to-zero transition
      RX_MPOLSelect_0,
      --  Logic Zero is coded as a one-to-zero transition, Logic One is coded
      --  as a zero-to-one transition
      RX_MPOLSelect_1)
     with Size => 1;
   for RX_MPOLSelect use
     (RX_MPOLSelect_0 => 0,
      RX_MPOLSelect_1 => 1);

   --  Drift compensation
   type DRIFTSelect is
     (
      --  The USART can not recover from an important clock drift
      DRIFTSelect_0,
      --  The USART can recover from clock drift. The 16X clock mode must be
      --  enabled
      DRIFTSelect_1)
     with Size => 1;
   for DRIFTSelect use
     (DRIFTSelect_0 => 0,
      DRIFTSelect_1 => 1);

   --  Manchester Configuration Register
   type USART_MAN_Register is record
      --  Transmitter Preamble Length
      TX_PL          : TX_PLSelect := Tx_Plselect_Reset;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Transmitter Preamble Pattern
      TX_PP          : TX_PPSelect := Interfaces.ATSAM4L.USART.TX_PPSelect_0;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Transmitter Manchester Polarity
      TX_MPOL        : TX_MPOLSelect :=
                        Interfaces.ATSAM4L.USART.TX_MPOLSelect_1;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Receiver Preamble Length
      RX_PL          : RX_PLSelect := Rx_Plselect_Reset;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Receiver Preamble Pattern detected
      RX_PP          : RX_PPSelect := Interfaces.ATSAM4L.USART.RX_PPSelect_0;
      --  unspecified
      Reserved_26_27 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Receiver Manchester Polarity
      RX_MPOL        : RX_MPOLSelect :=
                        Interfaces.ATSAM4L.USART.RX_MPOLSelect_1;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#1#;
      --  Drift compensation
      DRIFT          : DRIFTSelect := Interfaces.ATSAM4L.USART.DRIFTSelect_0;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_MAN_Register use record
      TX_PL          at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TX_PP          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      TX_MPOL        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      RX_PL          at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      RX_PP          at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      RX_MPOL        at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      DRIFT          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --------------------------
   -- USART_LINMR_Register --
   --------------------------

   --  LIN Node Action
   type NACTSelect is
     (
      --  The LIN Controller transmits the response
      Publish,
      --  The LIN Controller receives the response
      Subscribe,
      --  The LIN Controller doesn't transmit and doesn't receive the response
      Ignore)
     with Size => 2;
   for NACTSelect use
     (Publish => 0,
      Subscribe => 1,
      Ignore => 2);

   subtype LINMR_PARDIS_Field is Interfaces.Bit_Types.Bit;
   subtype LINMR_CHKDIS_Field is Interfaces.Bit_Types.Bit;
   subtype LINMR_CHKTYP_Field is Interfaces.Bit_Types.Bit;
   subtype LINMR_DLM_Field is Interfaces.Bit_Types.Bit;
   subtype LINMR_FSDIS_Field is Interfaces.Bit_Types.Bit;
   subtype LINMR_WKUPTYP_Field is Interfaces.Bit_Types.Bit;
   subtype LINMR_DLC_Field is Interfaces.Bit_Types.Byte;
   subtype LINMR_PDCM_Field is Interfaces.Bit_Types.Bit;
   subtype LINMR_SYNCDIS_Field is Interfaces.Bit_Types.Bit;

   --  LIN Mode Register
   type USART_LINMR_Register is record
      --  LIN Node Action
      NACT           : NACTSelect := Interfaces.ATSAM4L.USART.Publish;
      --  Parity Disable
      PARDIS         : LINMR_PARDIS_Field := 16#0#;
      --  Checksum Disable
      CHKDIS         : LINMR_CHKDIS_Field := 16#0#;
      --  Checksum Type
      CHKTYP         : LINMR_CHKTYP_Field := 16#0#;
      --  Data Length Mode
      DLM            : LINMR_DLM_Field := 16#0#;
      --  Frame Slot Mode Disable
      FSDIS          : LINMR_FSDIS_Field := 16#0#;
      --  Wakeup Signal Type
      WKUPTYP        : LINMR_WKUPTYP_Field := 16#0#;
      --  Data Length Control
      DLC            : LINMR_DLC_Field := 16#0#;
      --  PDC Mode
      PDCM           : LINMR_PDCM_Field := 16#0#;
      --  Synchronization Disable
      SYNCDIS        : LINMR_SYNCDIS_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_LINMR_Register use record
      NACT           at 0 range 0 .. 1;
      PARDIS         at 0 range 2 .. 2;
      CHKDIS         at 0 range 3 .. 3;
      CHKTYP         at 0 range 4 .. 4;
      DLM            at 0 range 5 .. 5;
      FSDIS          at 0 range 6 .. 6;
      WKUPTYP        at 0 range 7 .. 7;
      DLC            at 0 range 8 .. 15;
      PDCM           at 0 range 16 .. 16;
      SYNCDIS        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --------------------------
   -- USART_LINIR_Register --
   --------------------------

   subtype LINIR_IDCHR_Field is Interfaces.Bit_Types.Byte;

   --  LIN Identifier Register
   type USART_LINIR_Register is record
      --  Identifier Character
      IDCHR         : LINIR_IDCHR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_LINIR_Register use record
      IDCHR         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ---------------------------
   -- USART_LINBRR_Register --
   ---------------------------

   subtype LINBRR_LINCD_Field is Interfaces.Bit_Types.Short;
   subtype LINBRR_LINFP_Field is Interfaces.Bit_Types.UInt3;

   --  LIN Baud Rate Register
   type USART_LINBRR_Register is record
      --  Read-only. Clock Divider after Synchronization
      LINCD          : LINBRR_LINCD_Field;
      --  Read-only. Fractional Part after Synchronization
      LINFP          : LINBRR_LINFP_Field;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_LINBRR_Register use record
      LINCD          at 0 range 0 .. 15;
      LINFP          at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -------------------------
   -- USART_WPMR_Register --
   -------------------------

   --  Write Protect Enable
   type WPENSelect is
     (
      --  Disables the Write Protect if WPKEY corresponds to 0x858365 ("USA" in
      --  ACII)
      WPENSelect_0,
      --  Enables the Write Protect if WPKEY corresponds to 0x858365 ("USA" in
      --  ACII)
      WPENSelect_1)
     with Size => 1;
   for WPENSelect use
     (WPENSelect_0 => 0,
      WPENSelect_1 => 1);

   subtype WPMR_WPKEY_Field is Interfaces.Bit_Types.UInt24;

   --  Write Protect Mode Register
   type USART_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : WPENSelect := Interfaces.ATSAM4L.USART.WPENSelect_0;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write Protect Key
      WPKEY        : WPMR_WPKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   -------------------------
   -- USART_WPSR_Register --
   -------------------------

   --  Write Protect Violation Status
   type WPVSelect is
     (
      --  No Write Protect Violation has occurred since the last read of the
      --  WPSR register
      WPVSelect_0,
      --  A Write Protect Violation has occurred since the last read of the
      --  WPSR register. If this violation is an unauthorized attempt to write
      --  a protected register, the associated violation is reported into field
      --  WPVSRC
      WPVSelect_1)
     with Size => 1;
   for WPVSelect use
     (WPVSelect_0 => 0,
      WPVSelect_1 => 1);

   subtype WPSR_WPVSRC_Field is Interfaces.Bit_Types.Short;

   --  Write Protect Status Register
   type USART_WPSR_Register is record
      --  Read-only. Write Protect Violation Status
      WPV            : WPVSelect;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7;
      --  Read-only. Write Protect Violation Source
      WPVSRC         : WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_WPSR_Register use record
      WPV            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   ----------------------------
   -- USART_VERSION_Register --
   ----------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_MFN_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type USART_VERSION_Register is record
      --  Read-only. Version
      VERSION        : VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. MFN
      MFN            : VERSION_MFN_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MFN            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type USART0_Disc is
     (
      Lin_Mode,
      Spi_Master_Mode,
      Usart_Mode,
      Spi_Mode,
      Spi_Slave_Mode);

   --  Universal Synchronous Asynchronous Receiver Transmitter 0
   type USART_Peripheral
     (Discriminent : USART0_Disc := Lin_Mode)
   is record
      --  Receiver Holding Register
      RHR                : USART_RHR_Register;
      --  Transmitter Holding Register
      THR                : USART_THR_Register;
      --  Baud Rate Generator Register
      BRGR               : USART_BRGR_Register;
      --  Receiver Time-out Register
      RTOR               : USART_RTOR_Register;
      --  Transmitter Timeguard Register
      TTGR               : USART_TTGR_Register;
      --  FI DI Ratio Register
      FIDI               : USART_FIDI_Register;
      --  Number of Errors Register
      NER                : USART_NER_Register;
      --  IrDA Filter Register
      IFR                : USART_IFR_Register;
      --  Manchester Configuration Register
      MAN                : USART_MAN_Register;
      --  LIN Mode Register
      LINMR              : USART_LINMR_Register;
      --  LIN Identifier Register
      LINIR              : USART_LINIR_Register;
      --  LIN Baud Rate Register
      LINBRR             : USART_LINBRR_Register;
      --  Write Protect Mode Register
      WPMR               : USART_WPMR_Register;
      --  Write Protect Status Register
      WPSR               : USART_WPSR_Register;
      --  Version Register
      VERSION            : USART_VERSION_Register;
      case Discriminent is
         when Lin_Mode =>
            --  Control Register
            CR_LIN_MODE : USART_CR_LIN_MODE_Register;
            --  Interrupt Enable Register
            IER_LIN_MODE : USART_IER_LIN_MODE_Register;
            --  Interrupt Disable Register
            IDR_LIN_MODE : USART_IDR_LIN_MODE_Register;
            --  Interrupt Mask Register
            IMR_LIN_MODE : USART_IMR_LIN_MODE_Register;
            --  Channel Status Register
            CSR_LIN_MODE : USART_CSR_LIN_MODE_Register;
         when Spi_Master_Mode =>
            --  Control Register
            CR_SPI_MASTER_MODE : USART_CR_SPI_MASTER_MODE_Register;
         when Usart_Mode =>
            --  Control Register
            CR_USART_MODE : USART_CR_USART_MODE_Register;
            --  Mode Register
            MR_USART_MODE : USART_MR_USART_MODE_Register;
            --  Interrupt Enable Register
            IER_USART_MODE : USART_IER_USART_MODE_Register;
            --  Interrupt Disable Register
            IDR_USART_MODE : USART_IDR_USART_MODE_Register;
            --  Interrupt Mask Register
            IMR_USART_MODE : USART_IMR_USART_MODE_Register;
            --  Channel Status Register
            CSR_USART_MODE : USART_CSR_USART_MODE_Register;
         when Spi_Mode =>
            --  Mode Register
            MR_SPI_MODE : USART_MR_SPI_MODE_Register;
         when Spi_Slave_Mode =>
            --  Interrupt Enable Register
            IER_SPI_SLAVE_MODE : USART_IER_SPI_SLAVE_MODE_Register;
            --  Interrupt Disable Register
            IDR_SPI_SLAVE_MODE : USART_IDR_SPI_SLAVE_MODE_Register;
            --  Interrupt Mask Register
            IMR_SPI_SLAVE_MODE : USART_IMR_SPI_SLAVE_MODE_Register;
            --  Channel Status Register
            CSR_SPI_SLAVE_MODE : USART_CSR_SPI_SLAVE_MODE_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for USART_Peripheral use record
      RHR                at 24 range 0 .. 31;
      THR                at 28 range 0 .. 31;
      BRGR               at 32 range 0 .. 31;
      RTOR               at 36 range 0 .. 31;
      TTGR               at 40 range 0 .. 31;
      FIDI               at 64 range 0 .. 31;
      NER                at 68 range 0 .. 31;
      IFR                at 76 range 0 .. 31;
      MAN                at 80 range 0 .. 31;
      LINMR              at 84 range 0 .. 31;
      LINIR              at 88 range 0 .. 31;
      LINBRR             at 92 range 0 .. 31;
      WPMR               at 228 range 0 .. 31;
      WPSR               at 232 range 0 .. 31;
      VERSION            at 252 range 0 .. 31;
      CR_LIN_MODE        at 0 range 0 .. 31;
      IER_LIN_MODE       at 8 range 0 .. 31;
      IDR_LIN_MODE       at 12 range 0 .. 31;
      IMR_LIN_MODE       at 16 range 0 .. 31;
      CSR_LIN_MODE       at 20 range 0 .. 31;
      CR_SPI_MASTER_MODE at 0 range 0 .. 31;
      CR_USART_MODE      at 0 range 0 .. 31;
      MR_USART_MODE      at 4 range 0 .. 31;
      IER_USART_MODE     at 8 range 0 .. 31;
      IDR_USART_MODE     at 12 range 0 .. 31;
      IMR_USART_MODE     at 16 range 0 .. 31;
      CSR_USART_MODE     at 20 range 0 .. 31;
      MR_SPI_MODE        at 4 range 0 .. 31;
      IER_SPI_SLAVE_MODE at 8 range 0 .. 31;
      IDR_SPI_SLAVE_MODE at 12 range 0 .. 31;
      IMR_SPI_SLAVE_MODE at 16 range 0 .. 31;
      CSR_SPI_SLAVE_MODE at 20 range 0 .. 31;
   end record;

   --  Universal Synchronous Asynchronous Receiver Transmitter 0
   USART0_Periph : aliased USART_Peripheral
     with Import, Address => USART0_Base;

   --  Universal Synchronous Asynchronous Receiver Transmitter 1
   USART1_Periph : aliased USART_Peripheral
     with Import, Address => USART1_Base;

   --  Universal Synchronous Asynchronous Receiver Transmitter 2
   USART2_Periph : aliased USART_Peripheral
     with Import, Address => USART2_Base;

   --  Universal Synchronous Asynchronous Receiver Transmitter 3
   USART3_Periph : aliased USART_Peripheral
     with Import, Address => USART3_Base;

end Interfaces.ATSAM4L.USART;
