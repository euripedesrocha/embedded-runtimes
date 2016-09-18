--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43.I2C is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ---------------------
   -- CONSET_Register --
   ---------------------

   subtype CONSET_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype CONSET_AA_Field is Interfaces.Bit_Types.Bit;
   subtype CONSET_SI_Field is Interfaces.Bit_Types.Bit;
   subtype CONSET_STO_Field is Interfaces.Bit_Types.Bit;
   subtype CONSET_STA_Field is Interfaces.Bit_Types.Bit;
   subtype CONSET_I2EN_Field is Interfaces.Bit_Types.Bit;
   subtype CONSET_RESERVED_Field_1 is Interfaces.Bit_Types.UInt25;

   --  I2C Control Set Register. When a one is written to a bit of this
   --  register, the corresponding bit in the I2C control register is set.
   --  Writing a zero has no effect on the corresponding bit in the I2C control
   --  register.
   type CONSET_Register is record
      --  Reserved. User software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED   : CONSET_RESERVED_Field := 16#0#;
      --  Assert acknowledge flag.
      AA         : CONSET_AA_Field := 16#0#;
      --  I2C interrupt flag.
      SI         : CONSET_SI_Field := 16#0#;
      --  STOP flag.
      STO        : CONSET_STO_Field := 16#0#;
      --  START flag.
      STA        : CONSET_STA_Field := 16#0#;
      --  I2C interface enable.
      I2EN       : CONSET_I2EN_Field := 16#0#;
      --  Reserved. The value read from a reserved bit is not defined.
      RESERVED_1 : CONSET_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONSET_Register use record
      RESERVED   at 0 range 0 .. 1;
      AA         at 0 range 2 .. 2;
      SI         at 0 range 3 .. 3;
      STO        at 0 range 4 .. 4;
      STA        at 0 range 5 .. 5;
      I2EN       at 0 range 6 .. 6;
      RESERVED_1 at 0 range 7 .. 31;
   end record;

   -------------------
   -- STAT_Register --
   -------------------

   subtype STAT_RESERVED_Field is Interfaces.Bit_Types.UInt3;
   subtype STAT_Status_Field is Interfaces.Bit_Types.UInt5;
   subtype STAT_RESERVED_Field_1 is Interfaces.Bit_Types.UInt24;

   --  I2C Status Register. During I2C operation, this register provides
   --  detailed status codes that allow software to determine the next action
   --  needed.
   type STAT_Register is record
      --  Read-only. These bits are unused and are always 0.
      RESERVED   : STAT_RESERVED_Field;
      --  Read-only. These bits give the actual status information about the I
      --  2C interface.
      Status     : STAT_Status_Field;
      --  Read-only. Reserved. The value read from a reserved bit is not
      --  defined.
      RESERVED_1 : STAT_RESERVED_Field_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      RESERVED   at 0 range 0 .. 2;
      Status     at 0 range 3 .. 7;
      RESERVED_1 at 0 range 8 .. 31;
   end record;

   ------------------
   -- DAT_Register --
   ------------------

   subtype DAT_Data_Field is Interfaces.Bit_Types.Byte;
   subtype DAT_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  I2C Data Register. During master or slave transmit mode, data to be
   --  transmitted is written to this register. During master or slave receive
   --  mode, data that has been received may be read from this register.
   type DAT_Register is record
      --  This register holds data values that have been received or are to be
      --  transmitted.
      Data     : DAT_Data_Field := 16#0#;
      --  Reserved. The value read from a reserved bit is not defined.
      RESERVED : DAT_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAT_Register use record
      Data     at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   -------------------
   -- ADR0_Register --
   -------------------

   subtype ADR0_GC_Field is Interfaces.Bit_Types.Bit;
   subtype ADR0_Address_Field is Interfaces.Bit_Types.UInt7;
   subtype ADR0_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  I2C Slave Address Register 0. Contains the 7-bit slave address for
   --  operation of the I2C interface in slave mode, and is not used in master
   --  mode. The least significant bit determines whether a slave responds to
   --  the General Call address.
   type ADR0_Register is record
      --  General Call enable bit.
      GC       : ADR0_GC_Field := 16#0#;
      --  The I2C device address for slave mode.
      Address  : ADR0_Address_Field := 16#0#;
      --  Reserved. The value read from a reserved bit is not defined.
      RESERVED : ADR0_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADR0_Register use record
      GC       at 0 range 0 .. 0;
      Address  at 0 range 1 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   -------------------
   -- SCLH_Register --
   -------------------

   subtype SCLH_SCLH_Field is Interfaces.Bit_Types.Short;
   subtype SCLH_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  SCH Duty Cycle Register High Half Word. Determines the high time of the
   --  I2C clock.
   type SCLH_Register is record
      --  Count for SCL HIGH time period selection.
      SCLH     : SCLH_SCLH_Field := 16#4#;
      --  Reserved. The value read from a reserved bit is not defined.
      RESERVED : SCLH_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCLH_Register use record
      SCLH     at 0 range 0 .. 15;
      RESERVED at 0 range 16 .. 31;
   end record;

   -------------------
   -- SCLL_Register --
   -------------------

   subtype SCLL_SCLL_Field is Interfaces.Bit_Types.Short;
   subtype SCLL_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  SCL Duty Cycle Register Low Half Word. Determines the low time of the
   --  I2C clock. SCLL and SCLH together determine the clock frequency
   --  generated by an I2C master and certain times used in slave mode.
   type SCLL_Register is record
      --  Count for SCL low time period selection.
      SCLL     : SCLL_SCLL_Field := 16#4#;
      --  Reserved. The value read from a reserved bit is not defined.
      RESERVED : SCLL_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCLL_Register use record
      SCLL     at 0 range 0 .. 15;
      RESERVED at 0 range 16 .. 31;
   end record;

   ---------------------
   -- CONCLR_Register --
   ---------------------

   subtype CONCLR_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype CONCLR_AAC_Field is Interfaces.Bit_Types.Bit;
   subtype CONCLR_SIC_Field is Interfaces.Bit_Types.Bit;
   subtype CONCLR_RESERVED_Field_1 is Interfaces.Bit_Types.Bit;
   subtype CONCLR_STAC_Field is Interfaces.Bit_Types.Bit;
   subtype CONCLR_I2ENC_Field is Interfaces.Bit_Types.Bit;
   subtype CONCLR_RESERVED_Field_2 is Interfaces.Bit_Types.UInt24;

   --  I2C Control Clear Register. When a one is written to a bit of this
   --  register, the corresponding bit in the I2C control register is cleared.
   --  Writing a zero has no effect on the corresponding bit in the I2C control
   --  register.
   type CONCLR_Register is record
      --  Write-only. Reserved. User software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED   : CONCLR_RESERVED_Field := 16#0#;
      --  Write-only. Assert acknowledge Clear bit.
      AAC        : CONCLR_AAC_Field := 16#0#;
      --  Write-only. I2C interrupt Clear bit.
      SIC        : CONCLR_SIC_Field := 16#0#;
      --  Write-only. Reserved. User software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED_1 : CONCLR_RESERVED_Field_1 := 16#0#;
      --  Write-only. START flag Clear bit.
      STAC       : CONCLR_STAC_Field := 16#0#;
      --  Write-only. I2C interface Disable bit.
      I2ENC      : CONCLR_I2ENC_Field := 16#0#;
      --  Write-only. Reserved. User software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED_2 : CONCLR_RESERVED_Field_1 := 16#0#;
      --  Write-only. Reserved. The value read from a reserved bit is not
      --  defined.
      RESERVED_3 : CONCLR_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONCLR_Register use record
      RESERVED   at 0 range 0 .. 1;
      AAC        at 0 range 2 .. 2;
      SIC        at 0 range 3 .. 3;
      RESERVED_1 at 0 range 4 .. 4;
      STAC       at 0 range 5 .. 5;
      I2ENC      at 0 range 6 .. 6;
      RESERVED_2 at 0 range 7 .. 7;
      RESERVED_3 at 0 range 8 .. 31;
   end record;

   ---------------------
   -- MMCTRL_Register --
   ---------------------

   --  Monitor mode enable.
   type ENUM is
     (
      --  Monitor mode disabled.
      Monitor_Mode_Disable,
      --  The I 2C module will enter monitor mode. In this mode the SDA output
      --  will be forced high. This will prevent the I2C module from outputting
      --  data of any kind (including ACK) onto the I2C data bus. Depending on
      --  the state of the ENA_SCL bit, the output may be also forced high,
      --  preventing the module from having control over the I2C clock line.
      The_I_2C_Module_Will)
     with Size => 1;
   for ENUM use
     (Monitor_Mode_Disable => 0,
      The_I_2C_Module_Will => 1);

   --  SCL output enable.
   type ENUM_1 is
     (
      --  When this bit is cleared to 0, the SCL output will be forced high
      --  when the module is in monitor mode. As described above, this will
      --  prevent the module from having any control over the I2C clock line.
      When_This_Bit_Is_Cle,
      --  When this bit is set, the I2C module may exercise the same control
      --  over the clock line that it would in normal operation. This means
      --  that, acting as a slave peripheral, the I2C module can stretch the
      --  clock line (hold it low) until it has had time to respond to an I2C
      --  interrupt.[1]
      When_This_Bit_Is_Set)
     with Size => 1;
   for ENUM_1 use
     (When_This_Bit_Is_Cle => 0,
      When_This_Bit_Is_Set => 1);

   subtype MMCTRL_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  Monitor mode control register.
   type MMCTRL_Register is record
      --  Monitor mode enable.
      MM_ENA    : ENUM := Interfaces.LPC43.I2C.Monitor_Mode_Disable;
      --  SCL output enable.
      ENA_SCL   : ENUM_1 := Interfaces.LPC43.I2C.When_This_Bit_Is_Cle;
      --  Select interrupt register match.
      MATCH_ALL : ENUM_1 := Interfaces.LPC43.I2C.When_This_Bit_Is_Cle;
      --  Reserved. The value read from reserved bits is not defined.
      RESERVED  : MMCTRL_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MMCTRL_Register use record
      MM_ENA    at 0 range 0 .. 0;
      ENA_SCL   at 0 range 1 .. 1;
      MATCH_ALL at 0 range 2 .. 2;
      RESERVED  at 0 range 3 .. 31;
   end record;

   ------------------
   -- ADR_Register --
   ------------------

   subtype ADR_GC_Field is Interfaces.Bit_Types.Bit;
   subtype ADR_Address_Field is Interfaces.Bit_Types.UInt7;
   subtype ADR_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  I2C Slave Address Register. Contains the 7-bit slave address for
   --  operation of the I2C interface in slave mode, and is not used in master
   --  mode. The least significant bit determines whether a slave responds to
   --  the General Call address.
   type ADR_Register is record
      --  General Call enable bit.
      GC       : ADR_GC_Field := 16#0#;
      --  The I2C device address for slave mode.
      Address  : ADR_Address_Field := 16#0#;
      --  Reserved. The value read from a reserved bit is not defined.
      RESERVED : ADR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADR_Register use record
      GC       at 0 range 0 .. 0;
      Address  at 0 range 1 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  I2C Slave Address Register. Contains the 7-bit slave address for
   --  operation of the I2C interface in slave mode, and is not used in master
   --  mode. The least significant bit determines whether a slave responds to
   --  the General Call address.
   type ADR_Registers is array (0 .. 2) of ADR_Register;

   --------------------------
   -- DATA_BUFFER_Register --
   --------------------------

   subtype DATA_BUFFER_Data_Field is Interfaces.Bit_Types.Byte;
   subtype DATA_BUFFER_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Data buffer register. The contents of the 8 MSBs of the DAT shift
   --  register will be transferred to the DATA_BUFFER automatically after
   --  every nine bits (8 bits of data plus ACK or NACK) has been received on
   --  the bus.
   type DATA_BUFFER_Register is record
      --  Read-only. This register holds contents of the 8 MSBs of the DAT
      --  shift register.
      Data     : DATA_BUFFER_Data_Field;
      --  Read-only. Reserved. The value read from a reserved bit is not
      --  defined.
      RESERVED : DATA_BUFFER_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_BUFFER_Register use record
      Data     at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   -------------------
   -- MASK_Register --
   -------------------

   subtype MASK_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype MASK_MASK_Field is Interfaces.Bit_Types.UInt7;
   subtype MASK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt24;

   --  I2C Slave address mask register
   type MASK_Register is record
      --  Reserved. User software should not write ones to reserved bits. This
      --  bit reads always back as 0.
      RESERVED   : MASK_RESERVED_Field := 16#0#;
      --  Mask bits.
      MASK       : MASK_MASK_Field := 16#0#;
      --  Reserved. The value read from a reserved bit is not defined.
      RESERVED_1 : MASK_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MASK_Register use record
      RESERVED   at 0 range 0 .. 0;
      MASK       at 0 range 1 .. 7;
      RESERVED_1 at 0 range 8 .. 31;
   end record;

   --  I2C Slave address mask register
   type MASK_Registers is array (0 .. 3) of MASK_Register;

   -----------------
   -- Peripherals --
   -----------------

   --  I2C-bus interface
   type I2C_Peripheral is record
      --  I2C Control Set Register. When a one is written to a bit of this
      --  register, the corresponding bit in the I2C control register is set.
      --  Writing a zero has no effect on the corresponding bit in the I2C
      --  control register.
      CONSET      : CONSET_Register;
      --  I2C Status Register. During I2C operation, this register provides
      --  detailed status codes that allow software to determine the next
      --  action needed.
      STAT        : STAT_Register;
      --  I2C Data Register. During master or slave transmit mode, data to be
      --  transmitted is written to this register. During master or slave
      --  receive mode, data that has been received may be read from this
      --  register.
      DAT         : DAT_Register;
      --  I2C Slave Address Register 0. Contains the 7-bit slave address for
      --  operation of the I2C interface in slave mode, and is not used in
      --  master mode. The least significant bit determines whether a slave
      --  responds to the General Call address.
      ADR0        : ADR0_Register;
      --  SCH Duty Cycle Register High Half Word. Determines the high time of
      --  the I2C clock.
      SCLH        : SCLH_Register;
      --  SCL Duty Cycle Register Low Half Word. Determines the low time of the
      --  I2C clock. SCLL and SCLH together determine the clock frequency
      --  generated by an I2C master and certain times used in slave mode.
      SCLL        : SCLL_Register;
      --  I2C Control Clear Register. When a one is written to a bit of this
      --  register, the corresponding bit in the I2C control register is
      --  cleared. Writing a zero has no effect on the corresponding bit in the
      --  I2C control register.
      CONCLR      : CONCLR_Register;
      --  Monitor mode control register.
      MMCTRL      : MMCTRL_Register;
      --  I2C Slave Address Register. Contains the 7-bit slave address for
      --  operation of the I2C interface in slave mode, and is not used in
      --  master mode. The least significant bit determines whether a slave
      --  responds to the General Call address.
      ADR         : ADR_Registers;
      --  Data buffer register. The contents of the 8 MSBs of the DAT shift
      --  register will be transferred to the DATA_BUFFER automatically after
      --  every nine bits (8 bits of data plus ACK or NACK) has been received
      --  on the bus.
      DATA_BUFFER : DATA_BUFFER_Register;
      --  I2C Slave address mask register
      MASK        : MASK_Registers;
   end record
     with Volatile;

   for I2C_Peripheral use record
      CONSET      at 0 range 0 .. 31;
      STAT        at 4 range 0 .. 31;
      DAT         at 8 range 0 .. 31;
      ADR0        at 12 range 0 .. 31;
      SCLH        at 16 range 0 .. 31;
      SCLL        at 20 range 0 .. 31;
      CONCLR      at 24 range 0 .. 31;
      MMCTRL      at 28 range 0 .. 31;
      ADR         at 32 range 0 .. 95;
      DATA_BUFFER at 44 range 0 .. 31;
      MASK        at 48 range 0 .. 127;
   end record;

   --  I2C-bus interface
   I2C0_Periph : aliased I2C_Peripheral
     with Import, Address => I2C0_Base;

   --  I2C-bus interface
   I2C1_Periph : aliased I2C_Peripheral
     with Import, Address => I2C1_Base;

end Interfaces.LPC43.I2C;
