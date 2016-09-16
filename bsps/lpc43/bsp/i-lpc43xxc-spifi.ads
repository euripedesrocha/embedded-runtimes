--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43xxC.SPIFI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -------------------
   -- CTRL_Register --
   -------------------

   subtype CTRL_TIMEOUT_Field is Interfaces.Bit_Types.Short;
   subtype CTRL_CSHIGH_Field is Interfaces.Bit_Types.UInt4;
   subtype CTRL_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_D_PRFTCH_DIS_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_INTEN_Field is Interfaces.Bit_Types.Bit;

   --  SPI Mode 3 select.
   type ENUM is
     (
      --  SCK LOW. The SPIFI drives SCK low after the rising edge at which the
      --  last bit of each command is captured, and keeps it low while CS is
      --  HIGH.
      Sck_Low,
      --  SCK HIGH. the SPIFI keeps SCK high after the rising edge for the last
      --  bit of each command and while CS is HIGH, and drives it low after it
      --  drives CS LOW. (Known serial flash devices can handle either mode,
      --  but some devices may require a particular mode for proper operation.)
      --  MODE3, RFCLK, and FBCLK should not all be 1, because in this case
      --  there is no final rising edge on SCK on which to sample the last data
      --  bit of the frame.
      Sck_High)
     with Size => 1;
   for ENUM use
     (Sck_Low => 0,
      Sck_High => 1);

   subtype CTRL_RESERVED_Field_1 is Interfaces.Bit_Types.UInt3;

   --  Cache prefetching enable. The SPIFI includes an internal cache. A 1 in
   --  this bit disables prefetching of cache lines.
   type ENUM_1 is
     (
      --  Enable. Cache prefetching enabled.
      Enable,
      --  Disable. Disables prefetching of cache lines.
      Disable)
     with Size => 1;
   for ENUM_1 use
     (Enable => 0,
      Disable => 1);

   --  Select dual protocol.
   type ENUM_2 is
     (
      --  Quad protocol. This protocol uses IO3:0.
      Quad_Protocol,
      --  Dual protocol. This protocol uses IO1:0.
      Dual_Protocol)
     with Size => 1;
   for ENUM_2 use
     (Quad_Protocol => 0,
      Dual_Protocol => 1);

   --  Select active clock edge for input data.
   type ENUM_3 is
     (
      --  Rising edge. Read data is sampled on rising edges on the clock, as in
      --  classic SPI operation.
      Rising_Edge,
      --  Falling edge. Read data is sampled on falling edges of the clock,
      --  allowing a full serial clock of of time in order to maximize the
      --  serial clock frequency. MODE3, RFCLK, and FBCLK should not all be 1,
      --  because in this case there is no final rising edge on SCK on which to
      --  sample the last data bit of the frame.
      Falling_Edge)
     with Size => 1;
   for ENUM_3 use
     (Rising_Edge => 0,
      Falling_Edge => 1);

   --  Feedback clock select.
   type ENUM_4 is
     (
      --  Internal clock. The SPIFI samples read data using an internal clock.
      Internal_Clock,
      --  Feedback clock. Read data is sampled using a feedback clock from the
      --  SCK pin. This allows slightly more time for each received bit. MODE3,
      --  RFCLK, and FBCLK should not all be 1, because in this case there is
      --  no final rising edge on SCK on which to sample the last data bit of
      --  the frame.
      Feedback_Clock)
     with Size => 1;
   for ENUM_4 use
     (Internal_Clock => 0,
      Feedback_Clock => 1);

   subtype CTRL_DMAEN_Field is Interfaces.Bit_Types.Bit;

   --  SPIFI control register
   type CTRL_Register is record
      --  This field contains the number of serial clock periods without the
      --  processor reading data in memory mode, which will cause the SPIFI
      --  hardware to terminate the command by driving the CS pin high and
      --  negating the CMD bit in the Status register. (This allows the flash
      --  memory to enter a lower-power state.) If the processor reads data
      --  from the flash region after a time-out, the command in the Memory
      --  Command Register is issued again.
      TIMEOUT      : CTRL_TIMEOUT_Field := 16#FFFF#;
      --  This field controls the minimum CS high time, expressed as a number
      --  of serial clock periods minus one.
      CSHIGH       : CTRL_CSHIGH_Field := 16#F#;
      --  Reserved.
      RESERVED     : CTRL_RESERVED_Field := 16#0#;
      --  This bit allows conditioning of memory mode prefetches based on the
      --  AHB HPROT (instruction/data) access information. A 1 in this register
      --  means that the SPIFI will not attempt a speculative prefetch when it
      --  encounters data accesses.
      D_PRFTCH_DIS : CTRL_D_PRFTCH_DIS_Field := 16#0#;
      --  If this bit is 1 when a command ends, the SPIFI will assert its
      --  interrupt request output. See INTRQ in the status register for
      --  further details.
      INTEN        : CTRL_INTEN_Field := 16#0#;
      --  SPI Mode 3 select.
      MODE3        : ENUM := Interfaces.LPC43xxC.SPIFI.Sck_Low;
      --  Reserved.
      RESERVED_1   : CTRL_RESERVED_Field_1 := 16#0#;
      --  Cache prefetching enable. The SPIFI includes an internal cache. A 1
      --  in this bit disables prefetching of cache lines.
      PRFTCH_DIS   : ENUM_1 := Interfaces.LPC43xxC.SPIFI.Enable;
      --  Select dual protocol.
      DUAL         : ENUM_2 := Interfaces.LPC43xxC.SPIFI.Quad_Protocol;
      --  Select active clock edge for input data.
      RFCLK        : ENUM_3 := Interfaces.LPC43xxC.SPIFI.Rising_Edge;
      --  Feedback clock select.
      FBCLK        : ENUM_4 := Interfaces.LPC43xxC.SPIFI.Feedback_Clock;
      --  A 1 in this bit enables the DMA Request output from the SPIFI. Set
      --  this bit only when a DMA channel is used to transfer data in
      --  peripheral mode. Do not set this bit when a DMA channel is used for
      --  memory-to-memory transfers from the SPIFI memory area. DRQEN should
      --  only be used in Command mode.
      DMAEN        : CTRL_DMAEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      TIMEOUT      at 0 range 0 .. 15;
      CSHIGH       at 0 range 16 .. 19;
      RESERVED     at 0 range 20 .. 20;
      D_PRFTCH_DIS at 0 range 21 .. 21;
      INTEN        at 0 range 22 .. 22;
      MODE3        at 0 range 23 .. 23;
      RESERVED_1   at 0 range 24 .. 26;
      PRFTCH_DIS   at 0 range 27 .. 27;
      DUAL         at 0 range 28 .. 28;
      RFCLK        at 0 range 29 .. 29;
      FBCLK        at 0 range 30 .. 30;
      DMAEN        at 0 range 31 .. 31;
   end record;

   ------------------
   -- CMD_Register --
   ------------------

   subtype CMD_DATALEN_Field is Interfaces.Bit_Types.UInt14;
   subtype CMD_POLL_Field is Interfaces.Bit_Types.Bit;

   --  If the DATALEN field is not zero, this bit controls the direction of the
   --  data:
   type ENUM_5 is
     (
      --  Input from serial flash.
      Input_From_Serial_Fl,
      --  Output to serial flash.
      Output_To_Serial_Fla)
     with Size => 1;
   for ENUM_5 use
     (Input_From_Serial_Fl => 0,
      Output_To_Serial_Fla => 1);

   subtype CMD_INTLEN_Field is Interfaces.Bit_Types.UInt3;

   --  This field controls how the fields of the command are sent.
   type ENUM_6 is
     (
      --  All serial. All fields of the command are serial.
      All_Serial,
      --  Quad/dual data. Data field is quad/dual, other fields are serial.
      Quaddual_Data,
      --  Serial opcode. Opcode field is serial. Other fields are quad/dual.
      Serial_Opcode,
      --  All quad/dual. All fields of the command are in quad/dual format.
      All_Quaddual)
     with Size => 2;
   for ENUM_6 use
     (All_Serial => 0,
      Quaddual_Data => 1,
      Serial_Opcode => 2,
      All_Quaddual => 3);

   --  This field controls the opcode and address fields.
   type ENUM_7 is
     (
      --  Reserved.
      Reserved,
      --  Opcode. Opcode only, no address.
      Opcode,
      --  Opcode one byte. Opcode, least significant byte of address.
      Opcode_One_Byte,
      --  Opcode two bytes. Opcode, two least significant bytes of address.
      Opcode_Two_Bytes,
      --  Opcode three bytes. Opcode, three least significant bytes of address.
      Opcode_Three_Bytes,
      --  Opcode four bytes. Opcode, 4 bytes of address.
      Opcode_Four_Bytes,
      --  No opcode three bytes. No opcode, 3 least significant bytes of
      --  address.
      No_Opcode_Three_Byte,
      --  No opcode four bytes. No opcode, 4 bytes of address.
      No_Opcode_Four_Bytes)
     with Size => 3;
   for ENUM_7 use
     (Reserved => 0,
      Opcode => 1,
      Opcode_One_Byte => 2,
      Opcode_Two_Bytes => 3,
      Opcode_Three_Bytes => 4,
      Opcode_Four_Bytes => 5,
      No_Opcode_Three_Byte => 6,
      No_Opcode_Four_Bytes => 7);

   subtype CMD_OPCODE_Field is Interfaces.Bit_Types.Byte;

   --  SPIFI command register
   type CMD_Register is record
      --  Except when the POLL bit in this register is 1, this field controls
      --  how many data bytes are in the command. 0 indicates that the command
      --  does not contain a data field.
      DATALEN   : CMD_DATALEN_Field := 16#0#;
      --  This bit should be written as 1 only with an opcode that a) contains
      --  an input data field, and b) causes the serial flash device to return
      --  byte status repetitively (e.g., a Read Status command). When this bit
      --  is 1, the SPIFI hardware continues to read bytes until the test
      --  specified by the dataLen field is met. The hardware tests the bit in
      --  each status byte selected by DATALEN bits 2:0, until a bit is found
      --  that is equal to DATALEN bit 3. When the test succeeds, the SPIFI
      --  captures the byte that meets this test so that it can be read from
      --  the Data Register, and terminates the command by raising CS. The
      --  end-of-command interrupt can be enabled to inform software when this
      --  occurs
      POLL      : CMD_POLL_Field := 16#0#;
      --  If the DATALEN field is not zero, this bit controls the direction of
      --  the data:
      DOUT      : ENUM_5 := Interfaces.LPC43xxC.SPIFI.Input_From_Serial_Fl;
      --  This field controls how many intermediate bytes precede the data.
      --  (Each such byte may require 8 or 2 SCK cycles, depending on whether
      --  the intermediate field is in serial, 2-bit, or 4-bit format.)
      --  Intermediate bytes are output by the SPIFI, and include post-address
      --  control information, dummy and delay bytes. See the description of
      --  the Intermediate Data register for the contents of such bytes.
      INTLEN    : CMD_INTLEN_Field := 16#0#;
      --  This field controls how the fields of the command are sent.
      FIELDFORM : ENUM_6 := Interfaces.LPC43xxC.SPIFI.All_Serial;
      --  This field controls the opcode and address fields.
      FRAMEFORM : ENUM_7 := Interfaces.LPC43xxC.SPIFI.Reserved;
      --  The opcode of the command (not used for some FRAMEFORM values).
      OPCODE    : CMD_OPCODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      DATALEN   at 0 range 0 .. 13;
      POLL      at 0 range 14 .. 14;
      DOUT      at 0 range 15 .. 15;
      INTLEN    at 0 range 16 .. 18;
      FIELDFORM at 0 range 19 .. 20;
      FRAMEFORM at 0 range 21 .. 23;
      OPCODE    at 0 range 24 .. 31;
   end record;

   -------------------
   -- MCMD_Register --
   -------------------

   subtype MCMD_RESERVED_Field is Interfaces.Bit_Types.UInt14;
   subtype MCMD_POLL_Field is Interfaces.Bit_Types.Bit;
   subtype MCMD_DOUT_Field is Interfaces.Bit_Types.Bit;
   subtype MCMD_INTLEN_Field is Interfaces.Bit_Types.UInt3;

   --  This field controls the opcode and address fields.
   type ENUM_8 is
     (
      --  Reserved.
      Reserved,
      --  Reserved.
      Reserved_1,
      --  Opcode one byte. Opcode, least-significant byte of address.
      Opcode_One_Byte,
      --  Opcode two bytes. Opcode, 2 least-significant bytes of address.
      Opcode_Two_Bytes,
      --  Opcode three bytes. Opcode, 3 least-significant bytes of address.
      Opcode_Three_Bytes,
      --  Opcode four bytes. Opcode, 4 bytes of address.
      Opcode_Four_Bytes,
      --  No opcode three bytes. No opcode, 3 least-significant bytes of
      --  address.
      No_Opcode_Three_Byte,
      --  No opcode, 4 bytes of address.
      No_Opcode_Four_Bytes)
     with Size => 3;
   for ENUM_8 use
     (Reserved => 0,
      Reserved_1 => 1,
      Opcode_One_Byte => 2,
      Opcode_Two_Bytes => 3,
      Opcode_Three_Bytes => 4,
      Opcode_Four_Bytes => 5,
      No_Opcode_Three_Byte => 6,
      No_Opcode_Four_Bytes => 7);

   subtype MCMD_OPCODE_Field is Interfaces.Bit_Types.Byte;

   --  SPIFI memory command register
   type MCMD_Register is record
      --  Reserved.
      RESERVED  : MCMD_RESERVED_Field := 16#0#;
      --  This bit should be written as 0.
      POLL      : MCMD_POLL_Field := 16#0#;
      --  This bit should be written as 0.
      DOUT      : MCMD_DOUT_Field := 16#0#;
      --  This field controls how many intermediate bytes precede the data.
      --  (Each such byte may require 8 or 2 SCK cycles, depending on whether
      --  the intermediate field is in serial, 2-bit, or 4-bit format.)
      --  Intermediate bytes are output by the SPIFI, and include post-address
      --  control information, dummy and delay bytes. See the description of
      --  the Intermediate Data register for the contents of such bytes.
      INTLEN    : MCMD_INTLEN_Field := 16#0#;
      --  This field controls how the fields of the command are sent.
      FIELDFORM : ENUM_6 := Interfaces.LPC43xxC.SPIFI.All_Serial;
      --  This field controls the opcode and address fields.
      FRAMEFORM : ENUM_8 := Interfaces.LPC43xxC.SPIFI.Reserved;
      --  The opcode of the command (not used for some FRAMEFORM values).
      OPCODE    : MCMD_OPCODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCMD_Register use record
      RESERVED  at 0 range 0 .. 13;
      POLL      at 0 range 14 .. 14;
      DOUT      at 0 range 15 .. 15;
      INTLEN    at 0 range 16 .. 18;
      FIELDFORM at 0 range 19 .. 20;
      FRAMEFORM at 0 range 21 .. 23;
      OPCODE    at 0 range 24 .. 31;
   end record;

   -------------------
   -- STAT_Register --
   -------------------

   subtype STAT_MCINIT_Field is Interfaces.Bit_Types.Bit;
   subtype STAT_CMD_Field is Interfaces.Bit_Types.Bit;
   subtype STAT_RESET_Field is Interfaces.Bit_Types.Bit;
   subtype STAT_INTRQ_Field is Interfaces.Bit_Types.Bit;
   subtype STAT_RESERVED_Field is Interfaces.Bit_Types.UInt18;
   subtype STAT_VERSION_Field is Interfaces.Bit_Types.Byte;

   --  SPIFI status register
   type STAT_Register is record
      --  This bit is set when software successfully writes the Memory Command
      --  register, and is cleared by Reset or by writing a 1 to the RESET bit
      --  in this register.
      MCINIT       : STAT_MCINIT_Field := 16#0#;
      --  This bit is 1 when the Command register is written. It is cleared by
      --  a hardware reset, a write to the RESET bit in this register, or the
      --  deassertion of CS which indicates that the command has completed
      --  communication with the SPI Flash.
      CMD          : STAT_CMD_Field := 16#0#;
      --  unspecified
      Reserved_2_3 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write a 1 to this bit to abort a current command or memory mode. This
      --  bit is cleared when the hardware is ready for a new command to be
      --  written to the Command register.
      RESET        : STAT_RESET_Field := 16#0#;
      --  This bit reflects the SPIFI interrupt request. Write a 1 to this bit
      --  to clear it. This bit is set when a CMD was previously 1 and has been
      --  cleared due to the deassertion of CS.
      INTRQ        : STAT_INTRQ_Field := 16#0#;
      --  Reserved
      RESERVED     : STAT_RESERVED_Field := 16#0#;
      --  The SPIFI hardware described in this chapter returns
      VERSION      : STAT_VERSION_Field := 16#2#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      MCINIT       at 0 range 0 .. 0;
      CMD          at 0 range 1 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      RESET        at 0 range 4 .. 4;
      INTRQ        at 0 range 5 .. 5;
      RESERVED     at 0 range 6 .. 23;
      VERSION      at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SPI Flash Interface (SPIFI)
   type SPIFI_Peripheral is record
      --  SPIFI control register
      CTRL   : CTRL_Register;
      --  SPIFI command register
      CMD    : CMD_Register;
      --  SPIFI address register
      ADDR   : Interfaces.Bit_Types.Word;
      --  SPIFI intermediate data register
      IDATA  : Interfaces.Bit_Types.Word;
      --  SPIFI cache limit register
      CLIMIT : Interfaces.Bit_Types.Word;
      --  SPIFI data register
      DATA   : Interfaces.Bit_Types.Word;
      --  SPIFI memory command register
      MCMD   : MCMD_Register;
      --  SPIFI status register
      STAT   : STAT_Register;
   end record
     with Volatile;

   for SPIFI_Peripheral use record
      CTRL   at 0 range 0 .. 31;
      CMD    at 4 range 0 .. 31;
      ADDR   at 8 range 0 .. 31;
      IDATA  at 12 range 0 .. 31;
      CLIMIT at 16 range 0 .. 31;
      DATA   at 20 range 0 .. 31;
      MCMD   at 24 range 0 .. 31;
      STAT   at 28 range 0 .. 31;
   end record;

   --  SPI Flash Interface (SPIFI)
   SPIFI_Periph : aliased SPIFI_Peripheral
     with Import, Address => SPIFI_Base;

end Interfaces.LPC43xxC.SPIFI;
