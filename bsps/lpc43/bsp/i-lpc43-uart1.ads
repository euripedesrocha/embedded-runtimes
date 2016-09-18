--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43.UART1 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ------------------
   -- RBR_Register --
   ------------------

   subtype RBR_RBR_Field is Interfaces.Bit_Types.Byte;
   subtype RBR_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Receiver Buffer Register. Contains the next received character to be
   --  read. (DLAB=0)
   type RBR_Register is record
      --  Read-only. *** This field is modified following a read operation ***.
      --  Receiver Buffer. Contains the oldest received byte in the UART1 RX
      --  FIFO.
      RBR      : RBR_RBR_Field;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Reserved, the value read from a reserved bit is not defined.
      RESERVED : RBR_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RBR_Register use record
      RBR      at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------
   -- THR_Register --
   ------------------

   subtype THR_THR_Field is Interfaces.Bit_Types.Byte;
   subtype THR_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Transmit Holding Register. The next character to be transmitted is
   --  written here. (DLAB=0)
   type THR_Register is record
      --  Write-only. Transmit Holding Register. Writing to the UART1 Transmit
      --  Holding Register causes the data to be stored in the UART1 transmit
      --  FIFO. The byte will be sent when it reaches the bottom of the FIFO
      --  and the transmitter is available.
      THR      : THR_THR_Field := 16#0#;
      --  Write-only. Reserved, user software should not write ones to reserved
      --  bits.
      RESERVED : THR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for THR_Register use record
      THR      at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------
   -- DLL_Register --
   ------------------

   subtype DLL_DLLSB_Field is Interfaces.Bit_Types.Byte;
   subtype DLL_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Divisor Latch LSB. Least significant byte of the baud rate divisor
   --  value. The full divisor is used to generate a baud rate from the
   --  fractional rate divider. (DLAB=1)
   type DLL_Register is record
      --  Divisor Latch LSB. The UART1 Divisor Latch LSB Register, along with
      --  the DLM register, determines the baud rate of the UART1.
      DLLSB    : DLL_DLLSB_Field := 16#1#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : DLL_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLL_Register use record
      DLLSB    at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------
   -- DLM_Register --
   ------------------

   subtype DLM_DLMSB_Field is Interfaces.Bit_Types.Byte;
   subtype DLM_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Divisor Latch MSB. Most significant byte of the baud rate divisor value.
   --  The full divisor is used to generate a baud rate from the fractional
   --  rate divider.(DLAB=1)
   type DLM_Register is record
      --  Divisor Latch MSB. The UART1 Divisor Latch MSB Register, along with
      --  the DLL register, determines the baud rate of the UART1.
      DLMSB    : DLM_DLMSB_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : DLM_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLM_Register use record
      DLMSB    at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------
   -- IER_Register --
   ------------------

   --  RBR Interrupt Enable. Enables the Receive Data Available interrupt for
   --  UART1. It also controls the Character Receive Time-out interrupt.
   type ENUM is
     (
      --  Disable. Disable the RDA interrupts.
      Disable,
      --  Enable. Enable the RDA interrupts.
      Enable)
     with Size => 1;
   for ENUM use
     (Disable => 0,
      Enable => 1);

   subtype IER_RESERVED_Field is Interfaces.Bit_Types.UInt3;
   subtype IER_RESERVED_Field_1 is Interfaces.Bit_Types.UInt22;

   --  Interrupt Enable Register. Contains individual interrupt enable bits for
   --  the 7 potential UART1 interrupts. (DLAB=0)
   type IER_Register is record
      --  RBR Interrupt Enable. Enables the Receive Data Available interrupt
      --  for UART1. It also controls the Character Receive Time-out interrupt.
      RBRIE      : ENUM := Interfaces.LPC43.UART1.Disable;
      --  THRE Interrupt Enable. Enables the THRE interrupt for UART1. The
      --  status of this interrupt can be read from LSR[5].
      THREIE     : ENUM := Interfaces.LPC43.UART1.Disable;
      --  RX Line Interrupt Enable. Enables the UART1 RX line status
      --  interrupts. The status of this interrupt can be read from LSR[4:1].
      RXIE       : ENUM := Interfaces.LPC43.UART1.Disable;
      --  Modem Status Interrupt Enable. Enables the modem interrupt. The
      --  status of this interrupt can be read from MSR[3:0].
      MSIE       : ENUM := Interfaces.LPC43.UART1.Disable;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED   : IER_RESERVED_Field := 16#0#;
      --  CTS Interrupt Enable. If auto-cts mode is enabled this bit
      --  enables/disables the modem status interrupt generation on a CTS1
      --  signal transition. If auto-cts mode is disabled a CTS1 transition
      --  will generate an interrupt if Modem Status Interrupt Enable (IER[3])
      --  is set. In normal operation a CTS1 signal transition will generate a
      --  Modem Status Interrupt unless the interrupt has been disabled by
      --  clearing the IER[3] bit in the IER register. In auto-cts mode a
      --  transition on the CTS1 bit will trigger an interrupt only if both the
      --  IER[3] and IER[7] bits are set.
      CTSIE      : ENUM := Interfaces.LPC43.UART1.Disable;
      --  Enables the end of auto-baud interrupt.
      ABEOIE     : ENUM := Interfaces.LPC43.UART1.Disable;
      --  Enables the auto-baud time-out interrupt.
      ABTOIE     : ENUM := Interfaces.LPC43.UART1.Disable;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1 : IER_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      RBRIE      at 0 range 0 .. 0;
      THREIE     at 0 range 1 .. 1;
      RXIE       at 0 range 2 .. 2;
      MSIE       at 0 range 3 .. 3;
      RESERVED   at 0 range 4 .. 6;
      CTSIE      at 0 range 7 .. 7;
      ABEOIE     at 0 range 8 .. 8;
      ABTOIE     at 0 range 9 .. 9;
      RESERVED_1 at 0 range 10 .. 31;
   end record;

   ------------------
   -- IIR_Register --
   ------------------

   --  Interrupt status. Note that IIR[0] is active low. The pending interrupt
   --  can be determined by evaluating IIR[3:1].
   type ENUM_1 is
     (
      --  Interrupt pending. At least one interrupt is pending.
      Interrupt_Pending,
      --  Not pending. No interrupt is pending.
      Not_Pending)
     with Size => 1;
   for ENUM_1 use
     (Interrupt_Pending => 0,
      Not_Pending => 1);

   --  Interrupt identification. IER[3:1] identifies an interrupt corresponding
   --  to the UART1 Rx or TX FIFO. All other combinations of IER[3:1] not
   --  listed below are reserved (100,101,111).
   type ENUM_2 is
     (
      --  Reserved. Priority 4 (lowest) - Reserved.
      Reserved,
      --  THRE. Priority 3 - THRE Interrupt.
      Thre,
      --  RDA. Priority 2 - Receive Data Available (RDA).
      Rda,
      --  RLS. Priority 1 (highest). (Highest) Receive Line Status (RLS).
      Rls,
      --  CTI. Priority 2 - Character Time-out Indicator (CTI).
      Cti)
     with Size => 3;
   for ENUM_2 use
     (Reserved => 0,
      Thre => 1,
      Rda => 2,
      Rls => 3,
      Cti => 6);

   subtype IIR_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype IIR_FIFOENABLE_Field is Interfaces.Bit_Types.UInt2;
   subtype IIR_ABEOINT_Field is Interfaces.Bit_Types.Bit;
   subtype IIR_ABTOINT_Field is Interfaces.Bit_Types.Bit;
   subtype IIR_RESERVED_Field_1 is Interfaces.Bit_Types.UInt22;

   --  Interrupt ID Register. Identifies which interrupt(s) are pending.
   type IIR_Register is record
      --  Read-only. Interrupt status. Note that IIR[0] is active low. The
      --  pending interrupt can be determined by evaluating IIR[3:1].
      INTSTATUS  : ENUM_1;
      --  Read-only. Interrupt identification. IER[3:1] identifies an interrupt
      --  corresponding to the UART1 Rx or TX FIFO. All other combinations of
      --  IER[3:1] not listed below are reserved (100,101,111).
      INTID      : ENUM_2;
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED   : IIR_RESERVED_Field;
      --  Read-only. Copies of FCR[0].
      FIFOENABLE : IIR_FIFOENABLE_Field;
      --  Read-only. End of auto-baud interrupt. True if auto-baud has finished
      --  successfully and interrupt is enabled.
      ABEOINT    : IIR_ABEOINT_Field;
      --  Read-only. Auto-baud time-out interrupt. True if auto-baud has timed
      --  out and interrupt is enabled.
      ABTOINT    : IIR_ABTOINT_Field;
      --  Read-only. Reserved, the value read from a reserved bit is not
      --  defined.
      RESERVED_1 : IIR_RESERVED_Field_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IIR_Register use record
      INTSTATUS  at 0 range 0 .. 0;
      INTID      at 0 range 1 .. 3;
      RESERVED   at 0 range 4 .. 5;
      FIFOENABLE at 0 range 6 .. 7;
      ABEOINT    at 0 range 8 .. 8;
      ABTOINT    at 0 range 9 .. 9;
      RESERVED_1 at 0 range 10 .. 31;
   end record;

   ------------------
   -- FCR_Register --
   ------------------

   --  FIFO enable.
   type ENUM_3 is
     (
      --  Disabled. Must not be used in the application.
      Disabled,
      --  Enabled. Active high enable for both UART1 Rx and TX FIFOs and
      --  FCR[7:1] access. This bit must be set for proper UART1 operation. Any
      --  transition on this bit will automatically clear the UART1 FIFOs.
      Enabled)
     with Size => 1;
   for ENUM_3 use
     (Disabled => 0,
      Enabled => 1);

   --  RX FIFO Reset.
   type ENUM_4 is
     (
      --  No effect. No impact on either of UART1 FIFOs.
      No_Effect,
      --  Clear. Writing a logic 1 to FCR[1] will clear all bytes in UART1 Rx
      --  FIFO, reset the pointer logic. This bit is self-clearing.
      Clear)
     with Size => 1;
   for ENUM_4 use
     (No_Effect => 0,
      Clear => 1);

   subtype FCR_DMAMODE_Field is Interfaces.Bit_Types.Bit;
   subtype FCR_RESERVED_Field is Interfaces.Bit_Types.UInt2;

   --  RX Trigger Level. These two bits determine how many receiver UART1 FIFO
   --  characters must be written before an interrupt is activated.
   type ENUM_5 is
     (
      --  Level 0. Trigger level 0 (1 character or 0x01).
      Level_0,
      --  Level 1. Trigger level 1 (4 characters or 0x04).
      Level_1,
      --  Level 2. Trigger level 2 (8 characters or 0x08).
      Level_2,
      --  Level 3. Trigger level 3 (14 characters or 0x0E).
      Level_3)
     with Size => 2;
   for ENUM_5 use
     (Level_0 => 0,
      Level_1 => 1,
      Level_2 => 2,
      Level_3 => 3);

   subtype FCR_RESERVED_Field_1 is Interfaces.Bit_Types.UInt24;

   --  FIFO Control Register. Controls UART1 FIFO usage and modes.
   type FCR_Register is record
      --  Write-only. FIFO enable.
      FIFOEN     : ENUM_3 := Interfaces.LPC43.UART1.Disabled;
      --  Write-only. RX FIFO Reset.
      RXFIFORES  : ENUM_4 := Interfaces.LPC43.UART1.No_Effect;
      --  Write-only. TX FIFO Reset.
      TXFIFORES  : ENUM_4 := Interfaces.LPC43.UART1.No_Effect;
      --  Write-only. DMA Mode Select. When the FIFO enable bit (bit 0 of this
      --  register) is set, this bit selects the DMA mode. See Section
      --  39.6.6.1.
      DMAMODE    : FCR_DMAMODE_Field := 16#0#;
      --  Write-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED   : FCR_RESERVED_Field := 16#0#;
      --  Write-only. RX Trigger Level. These two bits determine how many
      --  receiver UART1 FIFO characters must be written before an interrupt is
      --  activated.
      RXTRIGLVL  : ENUM_5 := Interfaces.LPC43.UART1.Level_0;
      --  Write-only. Reserved, user software should not write ones to reserved
      --  bits.
      RESERVED_1 : FCR_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FCR_Register use record
      FIFOEN     at 0 range 0 .. 0;
      RXFIFORES  at 0 range 1 .. 1;
      TXFIFORES  at 0 range 2 .. 2;
      DMAMODE    at 0 range 3 .. 3;
      RESERVED   at 0 range 4 .. 5;
      RXTRIGLVL  at 0 range 6 .. 7;
      RESERVED_1 at 0 range 8 .. 31;
   end record;

   ------------------
   -- LCR_Register --
   ------------------

   --  Word Length Select.
   type ENUM_6 is
     (
      --  5-bit character length.
      ENUM_5_Bit_Character_Leng,
      --  6-bit character length.
      ENUM_6_Bit_Character_Leng,
      --  7-bit character length.
      ENUM_7_Bit_Character_Leng,
      --  8-bit character length.
      ENUM_8_Bit_Character_Leng)
     with Size => 2;
   for ENUM_6 use
     (ENUM_5_Bit_Character_Leng => 0,
      ENUM_6_Bit_Character_Leng => 1,
      ENUM_7_Bit_Character_Leng => 2,
      ENUM_8_Bit_Character_Leng => 3);

   --  Stop Bit Select.
   type ENUM_7 is
     (
      --  1 stop bit.
      ENUM_1_Stop_Bit,
      --  2 stop bits. (1.5 if LCR[1:0]=00).
      ENUM_2_Stop_Bits)
     with Size => 1;
   for ENUM_7 use
     (ENUM_1_Stop_Bit => 0,
      ENUM_2_Stop_Bits => 1);

   --  Parity Enable.
   type ENUM_8 is
     (
      --  Disable parity generation and checking.
      Disable_Parity_Gener,
      --  Enable parity generation and checking.
      Enable_Parity_Genera)
     with Size => 1;
   for ENUM_8 use
     (Disable_Parity_Gener => 0,
      Enable_Parity_Genera => 1);

   --  Parity Select.
   type ENUM_9 is
     (
      --  Odd parity. Number of 1s in the transmitted character and the
      --  attached parity bit will be odd.
      Odd_Parity,
      --  Even Parity. Number of 1s in the transmitted character and the
      --  attached parity bit will be even.
      Even_Parity,
      --  Force HIGH. Forced 1 stick parity.
      Force_High,
      --  Force LOW. Forced 0 stick parity.
      Force_Low)
     with Size => 2;
   for ENUM_9 use
     (Odd_Parity => 0,
      Even_Parity => 1,
      Force_High => 2,
      Force_Low => 3);

   subtype LCR_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Line Control Register. Contains controls for frame formatting and break
   --  generation.
   type LCR_Register is record
      --  Word Length Select.
      WLS      : ENUM_6 := Interfaces.LPC43.UART1.ENUM_5_Bit_Character_Leng;
      --  Stop Bit Select.
      SBS      : ENUM_7 := Interfaces.LPC43.UART1.ENUM_1_Stop_Bit;
      --  Parity Enable.
      PE       : ENUM_8 := Interfaces.LPC43.UART1.Disable_Parity_Gener;
      --  Parity Select.
      PS       : ENUM_9 := Interfaces.LPC43.UART1.Odd_Parity;
      --  Break Control.
      BC       : ENUM_3 := Interfaces.LPC43.UART1.Disabled;
      --  Divisor Latch Access Bit (DLAB)
      DLAB     : ENUM_3 := Interfaces.LPC43.UART1.Disabled;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : LCR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCR_Register use record
      WLS      at 0 range 0 .. 1;
      SBS      at 0 range 2 .. 2;
      PE       at 0 range 3 .. 3;
      PS       at 0 range 4 .. 5;
      BC       at 0 range 6 .. 6;
      DLAB     at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------
   -- MCR_Register --
   ------------------

   subtype MCR_DTRCTRL_Field is Interfaces.Bit_Types.Bit;
   subtype MCR_RTSCTRL_Field is Interfaces.Bit_Types.Bit;
   subtype MCR_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype MCR_RESERVED_Field_1 is Interfaces.Bit_Types.Bit;
   subtype MCR_RESERVED_Field_2 is Interfaces.Bit_Types.UInt24;

   --  Modem Control Register. Contains controls for flow control handshaking
   --  and loopback mode.
   type MCR_Register is record
      --  DTR Control. Source for modem output pin, DTR. This bit reads as 0
      --  when modem loopback mode is active.
      DTRCTRL    : MCR_DTRCTRL_Field := 16#0#;
      --  RTS Control. Source for modem output pin RTS. This bit reads as 0
      --  when modem loopback mode is active.
      RTSCTRL    : MCR_RTSCTRL_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED   : MCR_RESERVED_Field := 16#0#;
      --  Loopback Mode Select. The modem loopback mode provides a mechanism to
      --  perform diagnostic loopback testing. Serial data from the transmitter
      --  is connected internally to serial input of the receiver. Input pin,
      --  RXD1, has no effect on loopback and output pin, TXD1 is held in
      --  marking state. The 4 modem inputs (CTS, DSR, RI and DCD) are
      --  disconnected externally. Externally, the modem outputs (RTS, DTR) are
      --  set inactive. Internally, the 4 modem outputs are connected to the 4
      --  modem inputs. As a result of these connections, the upper 4 bits of
      --  the MSR will be driven by the lower 4 bits of the MCR rather than the
      --  4 modem inputs in normal mode. This permits modem status interrupts
      --  to be generated in loopback mode by writing the lower 4 bits of MCR.
      LMS        : ENUM_3 := Interfaces.LPC43.UART1.Disabled;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1 : MCR_RESERVED_Field_1 := 16#0#;
      --  RTS enable.
      RTSEN      : ENUM_3 := Interfaces.LPC43.UART1.Disabled;
      --  CTS enable.
      CTSEN      : ENUM_3 := Interfaces.LPC43.UART1.Disabled;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_2 : MCR_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCR_Register use record
      DTRCTRL    at 0 range 0 .. 0;
      RTSCTRL    at 0 range 1 .. 1;
      RESERVED   at 0 range 2 .. 3;
      LMS        at 0 range 4 .. 4;
      RESERVED_1 at 0 range 5 .. 5;
      RTSEN      at 0 range 6 .. 6;
      CTSEN      at 0 range 7 .. 7;
      RESERVED_2 at 0 range 8 .. 31;
   end record;

   ------------------
   -- LSR_Register --
   ------------------

   --  Receiver Data Ready. LSR[0] is set when the RBR holds an unread
   --  character and is cleared when the UART1 RBR FIFO is empty.
   type ENUM_10 is
     (
      --  Empty. The UART1 receiver FIFO is empty.
      Empty,
      --  Data. The UART1 receiver FIFO is not empty.
      Data)
     with Size => 1;
   for ENUM_10 use
     (Empty => 0,
      Data => 1);

   --  Overrun Error. The overrun error condition is set as soon as it occurs.
   --  An LSR read clears LSR[1]. LSR[1] is set when UART1 RSR has a new
   --  character assembled and the UART1 RBR FIFO is full. In this case, the
   --  UART1 RBR FIFO will not be overwritten and the character in the UART1
   --  RSR will be lost.
   type ENUM_11 is
     (
      --  Inactive. Overrun error status is inactive.
      Inactive,
      --  Active. Overrun error status is active.
      Active)
     with Size => 1;
   for ENUM_11 use
     (Inactive => 0,
      Active => 1);

   --  Break Interrupt. When RXD1 is held in the spacing state (all zeroes) for
   --  one full character transmission (start, data, parity, stop), a break
   --  interrupt occurs. Once the break condition has been detected, the
   --  receiver goes idle until RXD1 goes to marking state (all ones). An LSR
   --  read clears this status bit. The time of break detection is dependent on
   --  FCR[0]. Note: The break interrupt is associated with the character at
   --  the top of the UART1 RBR FIFO.
   type ENUM_12 is
     (
      --  Break interrupt status is inactive.
      Break_Interrupt_Stat,
      --  Break interrupt status is active.
      Break_Interrupt_Stat_1)
     with Size => 1;
   for ENUM_12 use
     (Break_Interrupt_Stat => 0,
      Break_Interrupt_Stat_1 => 1);

   --  Transmitter Holding Register Empty. THRE is set immediately upon
   --  detection of an empty UART1 THR and is cleared on a THR write.
   type ENUM_13 is
     (
      --  Not empty. THR contains valid data.
      Not_Empty,
      --  Empty. THR is empty.
      Empty)
     with Size => 1;
   for ENUM_13 use
     (Not_Empty => 0,
      Empty => 1);

   --  Error in RX FIFO. LSR[7] is set when a character with a RX error such as
   --  framing error, parity error or break interrupt, is loaded into the RBR.
   --  This bit is cleared when the LSR register is read and there are no
   --  subsequent errors in the UART1 FIFO.
   type ENUM_14 is
     (
      --  No error. RBR contains no UART1 RX errors or FCR[0]=0.
      No_Error,
      --  Error. UART1 RBR contains at least one UART1 RX error.
      Error)
     with Size => 1;
   for ENUM_14 use
     (No_Error => 0,
      Error => 1);

   subtype LSR_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Line Status Register. Contains flags for transmit and receive status,
   --  including line errors.
   type LSR_Register is record
      --  Read-only. *** This field is modified following a read operation ***.
      --  Receiver Data Ready. LSR[0] is set when the RBR holds an unread
      --  character and is cleared when the UART1 RBR FIFO is empty.
      RDR      : ENUM_10;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Overrun Error. The overrun error condition is set as soon as it
      --  occurs. An LSR read clears LSR[1]. LSR[1] is set when UART1 RSR has a
      --  new character assembled and the UART1 RBR FIFO is full. In this case,
      --  the UART1 RBR FIFO will not be overwritten and the character in the
      --  UART1 RSR will be lost.
      OE       : ENUM_11;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Parity Error. When the parity bit of a received character is in the
      --  wrong state, a parity error occurs. An LSR read clears LSR[2]. Time
      --  of parity error detection is dependent on FCR[0]. Note: A parity
      --  error is associated with the character at the top of the UART1 RBR
      --  FIFO.
      PE       : ENUM_11;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Framing Error. When the stop bit of a received character is a logic
      --  0, a framing error occurs. An LSR read clears LSR[3]. The time of the
      --  framing error detection is dependent on FCR0. Upon detection of a
      --  framing error, the RX will attempt to resynchronize to the data and
      --  assume that the bad stop bit is actually an early start bit. However,
      --  it cannot be assumed that the next received byte will be correct even
      --  if there is no Framing Error. Note: A framing error is associated
      --  with the character at the top of the UART1 RBR FIFO.
      FE       : ENUM_11;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Break Interrupt. When RXD1 is held in the spacing state (all zeroes)
      --  for one full character transmission (start, data, parity, stop), a
      --  break interrupt occurs. Once the break condition has been detected,
      --  the receiver goes idle until RXD1 goes to marking state (all ones).
      --  An LSR read clears this status bit. The time of break detection is
      --  dependent on FCR[0]. Note: The break interrupt is associated with the
      --  character at the top of the UART1 RBR FIFO.
      BI       : ENUM_12;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Transmitter Holding Register Empty. THRE is set immediately upon
      --  detection of an empty UART1 THR and is cleared on a THR write.
      THRE     : ENUM_13;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Transmitter Empty. TEMT is set when both THR and TSR are empty; TEMT
      --  is cleared when either the TSR or the THR contain valid data.
      TEMT     : ENUM_13;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Error in RX FIFO. LSR[7] is set when a character with a RX error such
      --  as framing error, parity error or break interrupt, is loaded into the
      --  RBR. This bit is cleared when the LSR register is read and there are
      --  no subsequent errors in the UART1 FIFO.
      RXFE     : ENUM_14;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Reserved, the value read from a reserved bit is not defined.
      RESERVED : LSR_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSR_Register use record
      RDR      at 0 range 0 .. 0;
      OE       at 0 range 1 .. 1;
      PE       at 0 range 2 .. 2;
      FE       at 0 range 3 .. 3;
      BI       at 0 range 4 .. 4;
      THRE     at 0 range 5 .. 5;
      TEMT     at 0 range 6 .. 6;
      RXFE     at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------
   -- MSR_Register --
   ------------------

   --  Delta CTS. Set upon state change of input CTS. Cleared on an MSR read.
   type ENUM_15 is
     (
      --  No change. No change detected on modem input, CTS.
      No_Change,
      --  State change. State change detected on modem input, CTS.
      State_Change)
     with Size => 1;
   for ENUM_15 use
     (No_Change => 0,
      State_Change => 1);

   --  Trailing Edge RI. Set upon low to high transition of input RI. Cleared
   --  on an MSR read.
   type ENUM_16 is
     (
      --  No change. No change detected on modem input, RI.
      No_Change,
      --  Rising. Low-to-high transition detected on RI.
      Rising)
     with Size => 1;
   for ENUM_16 use
     (No_Change => 0,
      Rising => 1);

   subtype MSR_CTS_Field is Interfaces.Bit_Types.Bit;
   subtype MSR_DSR_Field is Interfaces.Bit_Types.Bit;
   subtype MSR_RI_Field is Interfaces.Bit_Types.Bit;
   subtype MSR_DCD_Field is Interfaces.Bit_Types.Bit;
   subtype MSR_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Modem Status Register. Contains handshake signal status flags.
   type MSR_Register is record
      --  Read-only. *** This field is modified following a read operation ***.
      --  Delta CTS. Set upon state change of input CTS. Cleared on an MSR
      --  read.
      DCTS     : ENUM_15;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Delta DSR. Set upon state change of input DSR. Cleared on an MSR
      --  read.
      DDSR     : ENUM_15;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Trailing Edge RI. Set upon low to high transition of input RI.
      --  Cleared on an MSR read.
      TERI     : ENUM_16;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Delta DCD. Set upon state change of input DCD. Cleared on an MSR
      --  read.
      DDCD     : ENUM_15;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Clear To Send State. Complement of input signal CTS. This bit is
      --  connected to MCR[1] in modem loopback mode.
      CTS      : MSR_CTS_Field;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Data Set Ready State. Complement of input signal DSR. This bit is
      --  connected to MCR[0] in modem loopback mode.
      DSR      : MSR_DSR_Field;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Ring Indicator State. Complement of input RI. This bit is connected
      --  to MCR[2] in modem loopback mode.
      RI       : MSR_RI_Field;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Data Carrier Detect State. Complement of input DCD. This bit is
      --  connected to MCR[3] in modem loopback mode.
      DCD      : MSR_DCD_Field;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Reserved, the value read from a reserved bit is not defined.
      RESERVED : MSR_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSR_Register use record
      DCTS     at 0 range 0 .. 0;
      DDSR     at 0 range 1 .. 1;
      TERI     at 0 range 2 .. 2;
      DDCD     at 0 range 3 .. 3;
      CTS      at 0 range 4 .. 4;
      DSR      at 0 range 5 .. 5;
      RI       at 0 range 6 .. 6;
      DCD      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------
   -- SCR_Register --
   ------------------

   subtype SCR_Pad_Field is Interfaces.Bit_Types.Byte;
   subtype SCR_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Scratch Pad Register. 8-bit temporary storage for software.
   type SCR_Register is record
      --  Scratch pad. A readable, writable byte.
      Pad      : SCR_Pad_Field := 16#0#;
      --  Reserved, the value read from a reserved bit is not defined.
      RESERVED : SCR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCR_Register use record
      Pad      at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------
   -- ACR_Register --
   ------------------

   --  Auto-baud start bit. This bit is automatically cleared after auto-baud
   --  completion.
   type ENUM_17 is
     (
      --  Stop. Auto-baud stop (auto-baud is not running).
      Stop,
      --  Start. Auto-baud start (auto-baud is running). Auto-baud run bit.
      --  This bit is automatically cleared after auto-baud completion.
      Start)
     with Size => 1;
   for ENUM_17 use
     (Stop => 0,
      Start => 1);

   --  Auto-baud mode select bit.
   type ENUM_18 is
     (
      --  Mode 0.
      Mode_0,
      --  Mode 1.
      Mode_1)
     with Size => 1;
   for ENUM_18 use
     (Mode_0 => 0,
      Mode_1 => 1);

   --  Auto-baud restart bit.
   type ENUM_19 is
     (
      --  No restart
      No_Restart,
      --  Restart. Restart in case of time-out (counter restarts at next UART1
      --  Rx falling edge)
      Restart)
     with Size => 1;
   for ENUM_19 use
     (No_Restart => 0,
      Restart => 1);

   subtype ACR_RESERVED_Field is Interfaces.Bit_Types.UInt5;
   subtype ACR_RESERVED_Field_1 is Interfaces.Bit_Types.UInt22;

   --  Auto-baud Control Register. Contains controls for the auto-baud feature.
   type ACR_Register is record
      --  Auto-baud start bit. This bit is automatically cleared after
      --  auto-baud completion.
      START       : ENUM_17 := Interfaces.LPC43.UART1.Stop;
      --  Auto-baud mode select bit.
      MODE        : ENUM_18 := Interfaces.LPC43.UART1.Mode_0;
      --  Auto-baud restart bit.
      AUTORESTART : ENUM_19 := Interfaces.LPC43.UART1.No_Restart;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED    : ACR_RESERVED_Field := 16#0#;
      --  End of auto-baud interrupt clear bit (write-only).
      ABEOINTCLR  : ENUM_4 := Interfaces.LPC43.UART1.No_Effect;
      --  Auto-baud time-out interrupt clear bit (write-only).
      ABTOINTCLR  : ENUM_4 := Interfaces.LPC43.UART1.No_Effect;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1  : ACR_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACR_Register use record
      START       at 0 range 0 .. 0;
      MODE        at 0 range 1 .. 1;
      AUTORESTART at 0 range 2 .. 2;
      RESERVED    at 0 range 3 .. 7;
      ABEOINTCLR  at 0 range 8 .. 8;
      ABTOINTCLR  at 0 range 9 .. 9;
      RESERVED_1  at 0 range 10 .. 31;
   end record;

   ------------------
   -- FDR_Register --
   ------------------

   subtype FDR_DIVADDVAL_Field is Interfaces.Bit_Types.UInt4;
   subtype FDR_MULVAL_Field is Interfaces.Bit_Types.UInt4;
   subtype FDR_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Fractional Divider Register. Generates a clock input for the baud rate
   --  divider.
   type FDR_Register is record
      --  Baud-rate generation pre-scaler divisor value. If this field is 0,
      --  fractional baud-rate generator will not impact the UARTn baudrate.
      DIVADDVAL : FDR_DIVADDVAL_Field := 16#0#;
      --  Baud-rate pre-scaler multiplier value. This field must be greater or
      --  equal 1 for UARTn to operate properly, regardless of whether the
      --  fractional baud-rate generator is used or not.
      MULVAL    : FDR_MULVAL_Field := 16#1#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED  : FDR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDR_Register use record
      DIVADDVAL at 0 range 0 .. 3;
      MULVAL    at 0 range 4 .. 7;
      RESERVED  at 0 range 8 .. 31;
   end record;

   ------------------------
   -- RS485CTRL_Register --
   ------------------------

   --  Receive enable.
   type ENUM_20 is
     (
      --  Enabled. The receiver is enabled.
      Enabled,
      --  Disabled.The receiver is disabled.
      Disabled)
     with Size => 1;
   for ENUM_20 use
     (Enabled => 0,
      Disabled => 1);

   --  Direction control.
   type ENUM_21 is
     (
      --  RTS. If direction control is enabled (bit DCTRL = 1), pin RTS is used
      --  for direction control.
      Rts,
      --  DTR. If direction control is enabled (bit DCTRL = 1), pin DTR is used
      --  for direction control.
      Dtr)
     with Size => 1;
   for ENUM_21 use
     (Rts => 0,
      Dtr => 1);

   --  Polarity. This bit reverses the polarity of the direction control signal
   --  on the RTS (or DTR) pin.
   type ENUM_22 is
     (
      --  Low. The direction control pin will be driven to logic 0 when the
      --  transmitter has data to be sent. It will be driven to logic 1 after
      --  the last bit of data has been transmitted.
      Low,
      --  High. The direction control pin will be driven to logic 1 when the
      --  transmitter has data to be sent. It will be driven to logic 0 after
      --  the last bit of data has been transmitted.
      High)
     with Size => 1;
   for ENUM_22 use
     (Low => 0,
      High => 1);

   subtype RS485CTRL_RESERVED_Field is Interfaces.Bit_Types.UInt26;

   --  RS-485/EIA-485 Control. Contains controls to configure various aspects
   --  of RS-485/EIA-485 modes.
   type RS485CTRL_Register is record
      --  Multidrop mode select.
      NMMEN    : ENUM_3 := Interfaces.LPC43.UART1.Disabled;
      --  Receive enable.
      RXDIS    : ENUM_20 := Interfaces.LPC43.UART1.Enabled;
      --  Auto Address Detect enable.
      AADEN    : ENUM_3 := Interfaces.LPC43.UART1.Disabled;
      --  Direction control.
      SEL      : ENUM_21 := Interfaces.LPC43.UART1.Rts;
      --  Direction control enable.
      DCTRL    : ENUM_3 := Interfaces.LPC43.UART1.Disabled;
      --  Polarity. This bit reverses the polarity of the direction control
      --  signal on the RTS (or DTR) pin.
      OINV     : ENUM_22 := Interfaces.LPC43.UART1.Low;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : RS485CTRL_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RS485CTRL_Register use record
      NMMEN    at 0 range 0 .. 0;
      RXDIS    at 0 range 1 .. 1;
      AADEN    at 0 range 2 .. 2;
      SEL      at 0 range 3 .. 3;
      DCTRL    at 0 range 4 .. 4;
      OINV     at 0 range 5 .. 5;
      RESERVED at 0 range 6 .. 31;
   end record;

   ----------------------------
   -- RS485ADRMATCH_Register --
   ----------------------------

   subtype RS485ADRMATCH_ADRMATCH_Field is Interfaces.Bit_Types.Byte;
   subtype RS485ADRMATCH_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  RS-485/EIA-485 address match. Contains the address match value for
   --  RS-485/EIA-485 mode.
   type RS485ADRMATCH_Register is record
      --  Contains the address match value.
      ADRMATCH : RS485ADRMATCH_ADRMATCH_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : RS485ADRMATCH_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RS485ADRMATCH_Register use record
      ADRMATCH at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   -----------------------
   -- RS485DLY_Register --
   -----------------------

   subtype RS485DLY_DLY_Field is Interfaces.Bit_Types.Byte;
   subtype RS485DLY_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  RS-485/EIA-485 direction control delay.
   type RS485DLY_Register is record
      --  Contains the direction control (RTS or DTR) delay value. This
      --  register works in conjunction with an 8-bit counter.
      DLY      : RS485DLY_DLY_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : RS485DLY_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RS485DLY_Register use record
      DLY      at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------
   -- TER_Register --
   ------------------

   subtype TER_TXEN_Field is Interfaces.Bit_Types.Bit;
   subtype TER_RESERVED_Field is Interfaces.Bit_Types.UInt31;

   --  Transmit Enable Register. Turns off UART transmitter for use with
   --  software flow control.
   type TER_Register is record
      --  Transmit enable. After reset transmission is enabled. When the TXEN
      --  bit is de-asserted, no data will be transmitted although data may be
      --  pending in the TSR or THR.
      TXEN     : TER_TXEN_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : TER_RESERVED_Field := 16#40#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TER_Register use record
      TXEN     at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type UART1_Disc is
     (
      Mode_1,
      Mode_2,
      Mode_3);

   --  UART1
   type UART1_Peripheral
     (Discriminent : UART1_Disc := Mode_1)
   is record
      --  Line Control Register. Contains controls for frame formatting and
      --  break generation.
      LCR           : LCR_Register;
      --  Modem Control Register. Contains controls for flow control
      --  handshaking and loopback mode.
      MCR           : MCR_Register;
      --  Line Status Register. Contains flags for transmit and receive status,
      --  including line errors.
      LSR           : LSR_Register;
      --  Modem Status Register. Contains handshake signal status flags.
      MSR           : MSR_Register;
      --  Scratch Pad Register. 8-bit temporary storage for software.
      SCR           : SCR_Register;
      --  Auto-baud Control Register. Contains controls for the auto-baud
      --  feature.
      ACR           : ACR_Register;
      --  Fractional Divider Register. Generates a clock input for the baud
      --  rate divider.
      FDR           : FDR_Register;
      --  RS-485/EIA-485 Control. Contains controls to configure various
      --  aspects of RS-485/EIA-485 modes.
      RS485CTRL     : RS485CTRL_Register;
      --  RS-485/EIA-485 address match. Contains the address match value for
      --  RS-485/EIA-485 mode.
      RS485ADRMATCH : RS485ADRMATCH_Register;
      --  RS-485/EIA-485 direction control delay.
      RS485DLY      : RS485DLY_Register;
      --  Transmit Enable Register. Turns off UART transmitter for use with
      --  software flow control.
      TER           : TER_Register;
      case Discriminent is
         when Mode_1 =>
            --  Receiver Buffer Register. Contains the next received character
            --  to be read. (DLAB=0)
            RBR : RBR_Register;
            --  Divisor Latch MSB. Most significant byte of the baud rate
            --  divisor value. The full divisor is used to generate a baud rate
            --  from the fractional rate divider.(DLAB=1)
            DLM : DLM_Register;
            --  Interrupt ID Register. Identifies which interrupt(s) are
            --  pending.
            IIR : IIR_Register;
         when Mode_2 =>
            --  Transmit Holding Register. The next character to be transmitted
            --  is written here. (DLAB=0)
            THR : THR_Register;
            --  Interrupt Enable Register. Contains individual interrupt enable
            --  bits for the 7 potential UART1 interrupts. (DLAB=0)
            IER : IER_Register;
            --  FIFO Control Register. Controls UART1 FIFO usage and modes.
            FCR : FCR_Register;
         when Mode_3 =>
            --  Divisor Latch LSB. Least significant byte of the baud rate
            --  divisor value. The full divisor is used to generate a baud rate
            --  from the fractional rate divider. (DLAB=1)
            DLL : DLL_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for UART1_Peripheral use record
      LCR           at 12 range 0 .. 31;
      MCR           at 16 range 0 .. 31;
      LSR           at 20 range 0 .. 31;
      MSR           at 24 range 0 .. 31;
      SCR           at 28 range 0 .. 31;
      ACR           at 32 range 0 .. 31;
      FDR           at 40 range 0 .. 31;
      RS485CTRL     at 76 range 0 .. 31;
      RS485ADRMATCH at 80 range 0 .. 31;
      RS485DLY      at 84 range 0 .. 31;
      TER           at 92 range 0 .. 31;
      RBR           at 0 range 0 .. 31;
      DLM           at 4 range 0 .. 31;
      IIR           at 8 range 0 .. 31;
      THR           at 0 range 0 .. 31;
      IER           at 4 range 0 .. 31;
      FCR           at 8 range 0 .. 31;
      DLL           at 0 range 0 .. 31;
   end record;

   --  UART1
   UART1_Periph : aliased UART1_Peripheral
     with Import, Address => UART1_Base;

end Interfaces.LPC43.UART1;
