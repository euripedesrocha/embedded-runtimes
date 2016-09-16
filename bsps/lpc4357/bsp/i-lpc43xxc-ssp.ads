--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43xxC.SSP is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ------------------
   -- CR0_Register --
   ------------------

   --  Data Size Select. This field controls the number of bits transferred in
   --  each frame. Values 0000-0010 are not supported and should not be used.
   type ENUM is
     (
      --  Reset value for the field
      Enum_Reset,
      --  4-bit transfer
      ENUM_4_Bit_Transfer,
      --  5-bit transfer
      ENUM_5_Bit_Transfer,
      --  6-bit transfer
      ENUM_6_Bit_Transfer,
      --  7-bit transfer
      ENUM_7_Bit_Transfer,
      --  8-bit transfer
      ENUM_8_Bit_Transfer,
      --  9-bit transfer
      ENUM_9_Bit_Transfer,
      --  10-bit transfer
      ENUM_10_Bit_Transfer,
      --  11-bit transfer
      ENUM_11_Bit_Transfer,
      --  12-bit transfer
      ENUM_12_Bit_Transfer,
      --  13-bit transfer
      ENUM_13_Bit_Transfer,
      --  14-bit transfer
      ENUM_14_Bit_Transfer,
      --  15-bit transfer
      ENUM_15_Bit_Transfer,
      --  16-bit transfer
      ENUM_16_Bit_Transfer)
     with Size => 4;
   for ENUM use
     (Enum_Reset => 0,
      ENUM_4_Bit_Transfer => 3,
      ENUM_5_Bit_Transfer => 4,
      ENUM_6_Bit_Transfer => 5,
      ENUM_7_Bit_Transfer => 6,
      ENUM_8_Bit_Transfer => 7,
      ENUM_9_Bit_Transfer => 8,
      ENUM_10_Bit_Transfer => 9,
      ENUM_11_Bit_Transfer => 10,
      ENUM_12_Bit_Transfer => 11,
      ENUM_13_Bit_Transfer => 12,
      ENUM_14_Bit_Transfer => 13,
      ENUM_15_Bit_Transfer => 14,
      ENUM_16_Bit_Transfer => 15);

   --  Frame Format.
   type ENUM_1 is
     (
      --  SPI
      Spi,
      --  TI
      Ti,
      --  Microwire
      Microwire,
      --  This combination is not supported and should not be used.
      This_Combination_Is)
     with Size => 2;
   for ENUM_1 use
     (Spi => 0,
      Ti => 1,
      Microwire => 2,
      This_Combination_Is => 3);

   --  Clock Out Polarity. This bit is only used in SPI mode.
   type ENUM_2 is
     (
      --  SSP controller maintains the bus clock low between frames.
      Bus_Low,
      --  SSP controller maintains the bus clock high between frames.
      Bus_High)
     with Size => 1;
   for ENUM_2 use
     (Bus_Low => 0,
      Bus_High => 1);

   --  Clock Out Phase. This bit is only used in SPI mode.
   type ENUM_3 is
     (
      --  SSP controller captures serial data on the first clock transition of
      --  the frame, that is, the transition away from the inter-frame state of
      --  the clock line.
      First_Clock,
      --  SSP controller captures serial data on the second clock transition of
      --  the frame, that is, the transition back to the inter-frame state of
      --  the clock line.
      Second_Clock)
     with Size => 1;
   for ENUM_3 use
     (First_Clock => 0,
      Second_Clock => 1);

   subtype CR0_SCR_Field is Interfaces.Bit_Types.Byte;
   subtype CR0_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Control Register 0. Selects the serial clock rate, bus type, and data
   --  size.
   type CR0_Register is record
      --  Data Size Select. This field controls the number of bits transferred
      --  in each frame. Values 0000-0010 are not supported and should not be
      --  used.
      DSS      : ENUM := Enum_Reset;
      --  Frame Format.
      FRF      : ENUM_1 := Interfaces.LPC43xxC.SSP.Spi;
      --  Clock Out Polarity. This bit is only used in SPI mode.
      CPOL     : ENUM_2 := Interfaces.LPC43xxC.SSP.Bus_Low;
      --  Clock Out Phase. This bit is only used in SPI mode.
      CPHA     : ENUM_3 := Interfaces.LPC43xxC.SSP.First_Clock;
      --  Serial Clock Rate. The number of prescaler-output clocks per bit on
      --  the bus, minus one. Given that CPSDVSR is the prescale divider, and
      --  the APB clock PCLK clocks the prescaler, the bit frequency is PCLK /
      --  (CPSDVSR X [SCR+1]).
      SCR      : CR0_SCR_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : CR0_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR0_Register use record
      DSS      at 0 range 0 .. 3;
      FRF      at 0 range 4 .. 5;
      CPOL     at 0 range 6 .. 6;
      CPHA     at 0 range 7 .. 7;
      SCR      at 0 range 8 .. 15;
      RESERVED at 0 range 16 .. 31;
   end record;

   ------------------
   -- CR1_Register --
   ------------------

   --  Loop Back Mode.
   type ENUM_4 is
     (
      --  During normal operation.
      Normal,
      --  Serial input is taken from the serial output (MOSI or MISO) rather
      --  than the serial input pin (MISO or MOSI respectively).
      Ouptu)
     with Size => 1;
   for ENUM_4 use
     (Normal => 0,
      Ouptu => 1);

   --  SSP Enable.
   type ENUM_5 is
     (
      --  The SSP controller is disabled.
      Disabled,
      --  The SSP controller will interact with other devices on the serial
      --  bus. Software should write the appropriate control information to the
      --  other SSP registers and interrupt controller registers, before
      --  setting this bit.
      Enabled)
     with Size => 1;
   for ENUM_5 use
     (Disabled => 0,
      Enabled => 1);

   --  Master/Slave Mode.This bit can only be written when the SSE bit is 0.
   type ENUM_6 is
     (
      --  The SSP controller acts as a master on the bus, driving the SCLK,
      --  MOSI, and SSEL lines and receiving the MISO line.
      Master,
      --  The SSP controller acts as a slave on the bus, driving MISO line and
      --  receiving SCLK, MOSI, and SSEL lines.
      Slave)
     with Size => 1;
   for ENUM_6 use
     (Master => 0,
      Slave => 1);

   subtype CR1_SOD_Field is Interfaces.Bit_Types.Bit;
   subtype CR1_RESERVED_Field is Interfaces.Bit_Types.UInt28;

   --  Control Register 1. Selects master/slave and other modes.
   type CR1_Register is record
      --  Loop Back Mode.
      LBM      : ENUM_4 := Interfaces.LPC43xxC.SSP.Normal;
      --  SSP Enable.
      SSE      : ENUM_5 := Interfaces.LPC43xxC.SSP.Disabled;
      --  Master/Slave Mode.This bit can only be written when the SSE bit is 0.
      MS       : ENUM_6 := Interfaces.LPC43xxC.SSP.Master;
      --  Slave Output Disable. This bit is relevant only in slave mode (MS =
      --  1). If it is 1, this blocks this SSP controller from driving the
      --  transmit data line (MISO).
      SOD      : CR1_SOD_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : CR1_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      LBM      at 0 range 0 .. 0;
      SSE      at 0 range 1 .. 1;
      MS       at 0 range 2 .. 2;
      SOD      at 0 range 3 .. 3;
      RESERVED at 0 range 4 .. 31;
   end record;

   -----------------
   -- DR_Register --
   -----------------

   subtype DR_DATA_Field is Interfaces.Bit_Types.Short;
   subtype DR_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Data Register. Writes fill the transmit FIFO, and reads empty the
   --  receive FIFO.
   type DR_Register is record
      --  *** This field is modified following a read operation ***. Write:
      --  software can write data to be sent in a future frame to this register
      --  whenever the TNF bit in the Status register is 1, indicating that the
      --  Tx FIFO is not full. If the Tx FIFO was previously empty and the SSP
      --  controller is not busy on the bus, transmission of the data will
      --  begin immediately. Otherwise the data written to this register will
      --  be sent as soon as all previous data has been sent (and received). If
      --  the data length is less than 16 bits, software must right-justify the
      --  data written to this register. Read: software can read data from this
      --  register whenever the RNE bit in the Status register is 1, indicating
      --  that the Rx FIFO is not empty. When software reads this register, the
      --  SSP controller returns data from the least recent frame in the Rx
      --  FIFO. If the data length is less than 16 bits, the data is
      --  right-justified in this field with higher order bits filled with 0s.
      DATA     : DR_DATA_Field := 16#0#;
      --  *** This field is modified following a read operation ***. Reserved,
      --  user software should not write ones to reserved bits. The value read
      --  from a reserved bit is not defined.
      RESERVED : DR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_Register use record
      DATA     at 0 range 0 .. 15;
      RESERVED at 0 range 16 .. 31;
   end record;

   -----------------
   -- SR_Register --
   -----------------

   subtype SR_TFE_Field is Interfaces.Bit_Types.Bit;
   subtype SR_TNF_Field is Interfaces.Bit_Types.Bit;
   subtype SR_RNE_Field is Interfaces.Bit_Types.Bit;
   subtype SR_RFF_Field is Interfaces.Bit_Types.Bit;
   subtype SR_BSY_Field is Interfaces.Bit_Types.Bit;
   subtype SR_RESERVED_Field is Interfaces.Bit_Types.UInt27;

   --  Status Register
   type SR_Register is record
      --  Read-only. Transmit FIFO Empty. This bit is 1 is the Transmit FIFO is
      --  empty, 0 if not.
      TFE      : SR_TFE_Field;
      --  Read-only. Transmit FIFO Not Full. This bit is 0 if the Tx FIFO is
      --  full, 1 if not.
      TNF      : SR_TNF_Field;
      --  Read-only. Receive FIFO Not Empty. This bit is 0 if the Receive FIFO
      --  is empty, 1 if not.
      RNE      : SR_RNE_Field;
      --  Read-only. Receive FIFO Full. This bit is 1 if the Receive FIFO is
      --  full, 0 if not.
      RFF      : SR_RFF_Field;
      --  Read-only. Busy. This bit is 0 if the SSPn controller is idle, or 1
      --  if it is currently sending/receiving a frame and/or the Tx FIFO is
      --  not empty.
      BSY      : SR_BSY_Field;
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED : SR_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      TFE      at 0 range 0 .. 0;
      TNF      at 0 range 1 .. 1;
      RNE      at 0 range 2 .. 2;
      RFF      at 0 range 3 .. 3;
      BSY      at 0 range 4 .. 4;
      RESERVED at 0 range 5 .. 31;
   end record;

   -------------------
   -- CPSR_Register --
   -------------------

   subtype CPSR_CPSDVSR_Field is Interfaces.Bit_Types.Byte;
   subtype CPSR_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Clock Prescale Register
   type CPSR_Register is record
      --  This even value between 2 and 254, by which PCLK is divided to yield
      --  the prescaler output clock. Bit 0 always reads as 0.
      CPSDVSR  : CPSR_CPSDVSR_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : CPSR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPSR_Register use record
      CPSDVSR  at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   -------------------
   -- IMSC_Register --
   -------------------

   subtype IMSC_RORIM_Field is Interfaces.Bit_Types.Bit;
   subtype IMSC_RTIM_Field is Interfaces.Bit_Types.Bit;
   subtype IMSC_RXIM_Field is Interfaces.Bit_Types.Bit;
   subtype IMSC_TXIM_Field is Interfaces.Bit_Types.Bit;
   subtype IMSC_RESERVED_Field is Interfaces.Bit_Types.UInt28;

   --  Interrupt Mask Set and Clear Register
   type IMSC_Register is record
      --  Software should set this bit to enable interrupt when a Receive
      --  Overrun occurs, that is, when the Rx FIFO is full and another frame
      --  is completely received. The ARM spec implies that the preceding frame
      --  data is overwritten by the new frame data when this occurs.
      RORIM    : IMSC_RORIM_Field := 16#0#;
      --  Software should set this bit to enable interrupt when a Receive
      --  Time-out condition occurs. A Receive Time-out occurs when the Rx FIFO
      --  is not empty, and no has not been read for a time-out period. The
      --  time-out period is the same for master and slave modes and is
      --  determined by the SSP bit rate: 32 bits at PCLK / (CPSDVSR X
      --  [SCR+1]).
      RTIM     : IMSC_RTIM_Field := 16#0#;
      --  Software should set this bit to enable interrupt when the Rx FIFO is
      --  at least half full.
      RXIM     : IMSC_RXIM_Field := 16#0#;
      --  Software should set this bit to enable interrupt when the Tx FIFO is
      --  at least half empty.
      TXIM     : IMSC_TXIM_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : IMSC_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMSC_Register use record
      RORIM    at 0 range 0 .. 0;
      RTIM     at 0 range 1 .. 1;
      RXIM     at 0 range 2 .. 2;
      TXIM     at 0 range 3 .. 3;
      RESERVED at 0 range 4 .. 31;
   end record;

   ------------------
   -- RIS_Register --
   ------------------

   subtype RIS_RORRIS_Field is Interfaces.Bit_Types.Bit;
   subtype RIS_RTRIS_Field is Interfaces.Bit_Types.Bit;
   subtype RIS_RXRIS_Field is Interfaces.Bit_Types.Bit;
   subtype RIS_TXRIS_Field is Interfaces.Bit_Types.Bit;
   subtype RIS_RESERVED_Field is Interfaces.Bit_Types.UInt28;

   --  Raw Interrupt Status Register
   type RIS_Register is record
      --  Read-only. This bit is 1 if another frame was completely received
      --  while the RxFIFO was full. The ARM spec implies that the preceding
      --  frame data is overwritten by the new frame data when this occurs.
      RORRIS   : RIS_RORRIS_Field;
      --  Read-only. This bit is 1 if the Rx FIFO is not empty, and has not
      --  been read for a time-out period. The time-out period is the same for
      --  master and slave modes and is determined by the SSP bit rate: 32 bits
      --  at PCLK / (CPSDVSR X [SCR+1]).
      RTRIS    : RIS_RTRIS_Field;
      --  Read-only. This bit is 1 if the Rx FIFO is at least half full.
      RXRIS    : RIS_RXRIS_Field;
      --  Read-only. This bit is 1 if the Tx FIFO is at least half empty.
      TXRIS    : RIS_TXRIS_Field;
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED : RIS_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIS_Register use record
      RORRIS   at 0 range 0 .. 0;
      RTRIS    at 0 range 1 .. 1;
      RXRIS    at 0 range 2 .. 2;
      TXRIS    at 0 range 3 .. 3;
      RESERVED at 0 range 4 .. 31;
   end record;

   ------------------
   -- MIS_Register --
   ------------------

   subtype MIS_RORMIS_Field is Interfaces.Bit_Types.Bit;
   subtype MIS_RTMIS_Field is Interfaces.Bit_Types.Bit;
   subtype MIS_RXMIS_Field is Interfaces.Bit_Types.Bit;
   subtype MIS_TXMIS_Field is Interfaces.Bit_Types.Bit;
   subtype MIS_RESERVED_Field is Interfaces.Bit_Types.UInt28;

   --  Masked Interrupt Status Register
   type MIS_Register is record
      --  Read-only. This bit is 1 if another frame was completely received
      --  while the RxFIFO was full, and this interrupt is enabled.
      RORMIS   : MIS_RORMIS_Field;
      --  Read-only. This bit is 1 if the Rx FIFO is not empty, has not been
      --  read for a time-out period, and this interrupt is enabled. The
      --  time-out period is the same for master and slave modes and is
      --  determined by the SSP bit rate: 32 bits at PCLK / (CPSDVSR X
      --  [SCR+1]).
      RTMIS    : MIS_RTMIS_Field;
      --  Read-only. This bit is 1 if the Rx FIFO is at least half full, and
      --  this interrupt is enabled.
      RXMIS    : MIS_RXMIS_Field;
      --  Read-only. This bit is 1 if the Tx FIFO is at least half empty, and
      --  this interrupt is enabled.
      TXMIS    : MIS_TXMIS_Field;
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED : MIS_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIS_Register use record
      RORMIS   at 0 range 0 .. 0;
      RTMIS    at 0 range 1 .. 1;
      RXMIS    at 0 range 2 .. 2;
      TXMIS    at 0 range 3 .. 3;
      RESERVED at 0 range 4 .. 31;
   end record;

   ------------------
   -- ICR_Register --
   ------------------

   subtype ICR_RORIC_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_RTIC_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_RESERVED_Field is Interfaces.Bit_Types.UInt30;

   --  SSPICR Interrupt Clear Register
   type ICR_Register is record
      --  Write-only. Writing a 1 to this bit clears the frame was received
      --  when RxFIFO was full interrupt.
      RORIC    : ICR_RORIC_Field := 16#0#;
      --  Write-only. Writing a 1 to this bit clears the Rx FIFO was not empty
      --  and has not been read for a time-out period interrupt. The time-out
      --  period is the same for master and slave modes and is determined by
      --  the SSP bit rate: 32 bits at PCLK / (CPSDVSR / [SCR+1]).
      RTIC     : ICR_RTIC_Field := 16#0#;
      --  Write-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED : ICR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      RORIC    at 0 range 0 .. 0;
      RTIC     at 0 range 1 .. 1;
      RESERVED at 0 range 2 .. 31;
   end record;

   --------------------
   -- DMACR_Register --
   --------------------

   subtype DMACR_RXDMAE_Field is Interfaces.Bit_Types.Bit;
   subtype DMACR_TXDMAE_Field is Interfaces.Bit_Types.Bit;
   subtype DMACR_RESERVED_Field is Interfaces.Bit_Types.UInt30;

   --  SSP0 DMA control register
   type DMACR_Register is record
      --  Receive DMA Enable. When this bit is set to one 1, DMA for the
      --  receive FIFO is enabled, otherwise receive DMA is disabled.
      RXDMAE   : DMACR_RXDMAE_Field := 16#0#;
      --  Transmit DMA Enable. When this bit is set to one 1, DMA for the
      --  transmit FIFO is enabled, otherwise transmit DMA is disabled
      TXDMAE   : DMACR_TXDMAE_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : DMACR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMACR_Register use record
      RXDMAE   at 0 range 0 .. 0;
      TXDMAE   at 0 range 1 .. 1;
      RESERVED at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SSP0/1
   type SSP_Peripheral is record
      --  Control Register 0. Selects the serial clock rate, bus type, and data
      --  size.
      CR0   : CR0_Register;
      --  Control Register 1. Selects master/slave and other modes.
      CR1   : CR1_Register;
      --  Data Register. Writes fill the transmit FIFO, and reads empty the
      --  receive FIFO.
      DR    : DR_Register;
      --  Status Register
      SR    : SR_Register;
      --  Clock Prescale Register
      CPSR  : CPSR_Register;
      --  Interrupt Mask Set and Clear Register
      IMSC  : IMSC_Register;
      --  Raw Interrupt Status Register
      RIS   : RIS_Register;
      --  Masked Interrupt Status Register
      MIS   : MIS_Register;
      --  SSPICR Interrupt Clear Register
      ICR   : ICR_Register;
      --  SSP0 DMA control register
      DMACR : DMACR_Register;
   end record
     with Volatile;

   for SSP_Peripheral use record
      CR0   at 0 range 0 .. 31;
      CR1   at 4 range 0 .. 31;
      DR    at 8 range 0 .. 31;
      SR    at 12 range 0 .. 31;
      CPSR  at 16 range 0 .. 31;
      IMSC  at 20 range 0 .. 31;
      RIS   at 24 range 0 .. 31;
      MIS   at 28 range 0 .. 31;
      ICR   at 32 range 0 .. 31;
      DMACR at 36 range 0 .. 31;
   end record;

   --  SSP0/1
   SSP0_Periph : aliased SSP_Peripheral
     with Import, Address => SSP0_Base;

   --  SSP0/1
   SSP1_Periph : aliased SSP_Peripheral
     with Import, Address => SSP1_Base;

end Interfaces.LPC43xxC.SSP;
