--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43xxC.SDMMC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -------------------
   -- CTRL_Register --
   -------------------

   --  Controller reset. To reset controller, software should set bit to 1.
   --  This bit is auto-cleared after two AHB and two cclk_in clock cycles.
   --  This resets: - BIU/CIU interface - CIU and state machines -
   --  abort_read_data, send_irq_response, and read_wait bits of Control
   --  register - start_cmd bit of Command register Does not affect any
   --  registers or DMA interface, or FIFO. or host interrupts.
   type ENUM is
     (
      --  No change.
      No_Change,
      --  Reset. Reset SD/MMC controller
      Reset)
     with Size => 1;
   for ENUM use
     (No_Change => 0,
      Reset => 1);

   subtype CTRL_RESERVED_Field is Interfaces.Bit_Types.Bit;

   --  Global interrupt enable/disable bit. The int port is 1 only when this
   --  bit is 1 and one or more unmasked interrupts are set.
   type ENUM_1 is
     (
      --  Disable interrupts
      Disable_Interrupts,
      --  Enable interrupts
      Enable_Interrupts)
     with Size => 1;
   for ENUM_1 use
     (Disable_Interrupts => 0,
      Enable_Interrupts => 1);

   --  Read/wait. For sending read-wait to SDIO cards.
   type ENUM_2 is
     (
      --  Clear read wait
      Clear_Read_Wait,
      --  Assert read wait
      Assert_Read_Wait)
     with Size => 1;
   for ENUM_2 use
     (Clear_Read_Wait => 0,
      Assert_Read_Wait => 1);

   --  Send irq response. This bit automatically clears once response is sent.
   --  To wait for MMC card interrupts, the host issues CMD40, and the SD/MMC
   --  controller waits for an interrupt response from the MMC card. In the
   --  meantime, if the host wants the SD/MMC interface to exit waiting for
   --  interrupt state, it can set this bit, at which time the SD/MMC interface
   --  command state-machine sends a CMD40 response on the bus and returns to
   --  idle state.
   type ENUM_3 is
     (
      --  No change
      No_Change,
      --  Send auto IRQ response
      Send_Auto_Irq_Respon)
     with Size => 1;
   for ENUM_3 use
     (No_Change => 0,
      Send_Auto_Irq_Respon => 1);

   --  Abort read data. Used in SDIO card suspend sequence.
   type ENUM_4 is
     (
      --  No change
      No_Change,
      --  Abort. After suspend command is issued during read-transfer, software
      --  polls card to find when suspend happened. Once suspend occurs,
      --  software sets bit to reset data state-machine, which is waiting for
      --  next block of data. This bit automatically clears once data state
      --  machine resets to idle. Used in SDIO card suspend sequence.
      Abort_k)
     with Size => 1;
   for ENUM_4 use
     (No_Change => 0,
      Abort_k => 1);

   --  Send ccsd. When set, the SD/MMC controller sends CCSD to the CE-ATA
   --  device. Software sets this bit only if current command is expecting CCS
   --  (that is, RW_BLK) and interrupts are enabled in CE-ATA device. Once the
   --  CCSD pattern is sent to device, the SD/MMC interface automatically
   --  clears send_ccsd bit. It also sets Command Done (CD) bit in RINTSTS
   --  register and generates interrupt to host if Command Done interrupt is
   --  not masked. NOTE: Once send_ccsd bit is set, it takes two card clock
   --  cycles to drive the CCSD on the CMD line. Due to this, during the
   --  boundary conditions it may happen that CCSD is sent to the CE-ATA
   --  device, even if the device signalled CCS.
   type ENUM_5 is
     (
      --  Clear bit if the SD/MMC controller does not reset the bit.
      Clear_Bit,
      --  Send Command Completion Signal Disable (CCSD) to CE-ATA device
      Send_Command_Complet)
     with Size => 1;
   for ENUM_5 use
     (Clear_Bit => 0,
      Send_Command_Complet => 1);

   --  Send auto stop ccsd. NOTE: Always set send_auto_stop_ccsd and send_ccsd
   --  bits together; send_auto_stop_ccsd should not be set independent of
   --  send_ccsd. When set, the SD/MMC interface automatically sends
   --  internallygenerated STOP command (CMD12) to CE-ATA device. After sending
   --  internally-generated STOP command, Auto Command Done (ACD) bit in
   --  RINTSTS is set and generates interrupt to host if Auto Command Done
   --  interrupt is not masked. After sending the CCSD, the SD/MMC interface
   --  automatically clears send_auto_stop_ccsd bit.
   type ENUM_6 is
     (
      --  Clear this bit if the SD/MMC controller does not reset the bit.
      Clear_This_Bit_If_Th,
      --  Send internally generated STOP after sending CCSD to CE-ATA device.
      Send_Internally_Gene)
     with Size => 1;
   for ENUM_6 use
     (Clear_This_Bit_If_Th => 0,
      Send_Internally_Gene => 1);

   --  CEATA device interrupt status. Software should appropriately write to
   --  this bit after power-on reset or any other reset to CE-ATA device. After
   --  reset, usually CE-ATA device interrupt is disabled (nIEN = 1). If the
   --  host enables CE-ATA device interrupt, then software should set this bit.
   type ENUM_7 is
     (
      --  Disabled. Interrupts not enabled in CE-ATA device (nIEN = 1 in ATA
      --  control register)
      Disabled,
      --  Enabled. Interrupts are enabled in CE-ATA device (nIEN = 0 in ATA
      --  control register)
      Enabled)
     with Size => 1;
   for ENUM_7 use
     (Disabled => 0,
      Enabled => 1);

   subtype CTRL_RESERVED_Field_1 is Interfaces.Bit_Types.UInt4;

   -------------------------
   -- CTRL.CARD_VOLTAGE_A --
   -------------------------

   --  CTRL_CARD_VOLTAGE_A array element
   subtype CTRL_CARD_VOLTAGE_A_Element is Interfaces.Bit_Types.Bit;

   --  CTRL_CARD_VOLTAGE_A array
   type CTRL_CARD_VOLTAGE_A_Field_Array is array (0 .. 2)
     of CTRL_CARD_VOLTAGE_A_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CTRL_CARD_VOLTAGE_A
   type CTRL_CARD_VOLTAGE_A_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CARD_VOLTAGE_A as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  CARD_VOLTAGE_A as an array
            Arr : CTRL_CARD_VOLTAGE_A_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CTRL_CARD_VOLTAGE_A_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype CTRL_RESERVED_Field_2 is Interfaces.Bit_Types.UInt5;

   --  SD/MMC DMA use.
   type ENUM_8 is
     (
      --  Host. The host performs data transfers through the slave interface
      Host,
      --  DMA. Internal DMA used for data transfer
      Dma)
     with Size => 1;
   for ENUM_8 use
     (Host => 0,
      Dma => 1);

   subtype CTRL_RESERVED_Field_3 is Interfaces.Bit_Types.UInt6;

   --  Control Register
   type CTRL_Register is record
      --  Controller reset. To reset controller, software should set bit to 1.
      --  This bit is auto-cleared after two AHB and two cclk_in clock cycles.
      --  This resets: - BIU/CIU interface - CIU and state machines -
      --  abort_read_data, send_irq_response, and read_wait bits of Control
      --  register - start_cmd bit of Command register Does not affect any
      --  registers or DMA interface, or FIFO. or host interrupts.
      CONTROLLER_RESET : ENUM :=
                          Interfaces.LPC43xxC.SDMMC.No_Change;
      --  Fifo reset. To reset FIFO, software should set bit to 1. This bit is
      --  auto-cleared after completion of reset operation. auto-cleared after
      --  two AHB clocks.
      FIFO_RESET       : ENUM :=
                          Interfaces.LPC43xxC.SDMMC.No_Change;
      --  Dma reset. To reset DMA interface, software should set bit to 1. This
      --  bit is auto-cleared after two AHB clocks.
      DMA_RESET        : ENUM :=
                          Interfaces.LPC43xxC.SDMMC.No_Change;
      --  Reserved
      RESERVED                      : CTRL_RESERVED_Field := 16#0#;
      --  Global interrupt enable/disable bit. The int port is 1 only when this
      --  bit is 1 and one or more unmasked interrupts are set.
      INT_ENABLE       : ENUM_1 :=
                          Interfaces.LPC43xxC.SDMMC.Disable_Interrupts;
      --  Reserved. Always write this bit as 0.
      RESERVED_1                    : CTRL_RESERVED_Field := 16#0#;
      --  Read/wait. For sending read-wait to SDIO cards.
      READ_WAIT        : ENUM_2 :=
                          Interfaces.LPC43xxC.SDMMC.Clear_Read_Wait;
      --  Send irq response. This bit automatically clears once response is
      --  sent. To wait for MMC card interrupts, the host issues CMD40, and the
      --  SD/MMC controller waits for an interrupt response from the MMC card.
      --  In the meantime, if the host wants the SD/MMC interface to exit
      --  waiting for interrupt state, it can set this bit, at which time the
      --  SD/MMC interface command state-machine sends a CMD40 response on the
      --  bus and returns to idle state.
      SEND_IRQ_RESPONSE             : ENUM_3 :=
                                       Interfaces.LPC43xxC.SDMMC.No_Change;
      --  Abort read data. Used in SDIO card suspend sequence.
      ABORT_READ_DATA               : ENUM_4 :=
                                       Interfaces.LPC43xxC.SDMMC.No_Change;
      --  Send ccsd. When set, the SD/MMC controller sends CCSD to the CE-ATA
      --  device. Software sets this bit only if current command is expecting
      --  CCS (that is, RW_BLK) and interrupts are enabled in CE-ATA device.
      --  Once the CCSD pattern is sent to device, the SD/MMC interface
      --  automatically clears send_ccsd bit. It also sets Command Done (CD)
      --  bit in RINTSTS register and generates interrupt to host if Command
      --  Done interrupt is not masked. NOTE: Once send_ccsd bit is set, it
      --  takes two card clock cycles to drive the CCSD on the CMD line. Due to
      --  this, during the boundary conditions it may happen that CCSD is sent
      --  to the CE-ATA device, even if the device signalled CCS.
      SEND_CCSD                     : ENUM_5 :=
                                       Interfaces.LPC43xxC.SDMMC.Clear_Bit;
      --  Send auto stop ccsd. NOTE: Always set send_auto_stop_ccsd and
      --  send_ccsd bits together; send_auto_stop_ccsd should not be set
      --  independent of send_ccsd. When set, the SD/MMC interface
      --  automatically sends internallygenerated STOP command (CMD12) to
      --  CE-ATA device. After sending internally-generated STOP command, Auto
      --  Command Done (ACD) bit in RINTSTS is set and generates interrupt to
      --  host if Auto Command Done interrupt is not masked. After sending the
      --  CCSD, the SD/MMC interface automatically clears send_auto_stop_ccsd
      --  bit.
      SEND_AUTO_STOP   : ENUM_6 :=
                          Interfaces.LPC43xxC.SDMMC.Clear_This_Bit_If_Th;
      --  CEATA device interrupt status. Software should appropriately write to
      --  this bit after power-on reset or any other reset to CE-ATA device.
      --  After reset, usually CE-ATA device interrupt is disabled (nIEN = 1).
      --  If the host enables CE-ATA device interrupt, then software should set
      --  this bit.
      CEATA_DEVICE_INTERRUPT_STATUS : ENUM_7 :=
                                       Interfaces.LPC43xxC.SDMMC.Disabled;
      --  Reserved
      RESERVED_2                    : CTRL_RESERVED_Field_1 := 16#0#;
      --  Controls the state of the SD_VOLT0 pin. SD/MMC card voltage control
      --  is not implemented.
      CARD_VOLTAGE_A                : CTRL_CARD_VOLTAGE_A_Field :=
                                       (As_Array => False, Val => 16#0#);
      --  Reserved.
      RESERVED_3                    : CTRL_RESERVED_Field_2 := 16#0#;
      --  Reserved. Always write this bit as 0.
      RESERVED_4                    : CTRL_RESERVED_Field := 16#0#;
      --  SD/MMC DMA use.
      USE_INTERNAL_DMAC             : ENUM_8 :=
                                       Interfaces.LPC43xxC.SDMMC.Host;
      --  Reserved
      RESERVED_5                    : CTRL_RESERVED_Field_3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      CONTROLLER_RESET              at 0 range 0 .. 0;
      FIFO_RESET                    at 0 range 1 .. 1;
      DMA_RESET                     at 0 range 2 .. 2;
      RESERVED                      at 0 range 3 .. 3;
      INT_ENABLE                    at 0 range 4 .. 4;
      RESERVED_1                    at 0 range 5 .. 5;
      READ_WAIT                     at 0 range 6 .. 6;
      SEND_IRQ_RESPONSE             at 0 range 7 .. 7;
      ABORT_READ_DATA               at 0 range 8 .. 8;
      SEND_CCSD                     at 0 range 9 .. 9;
      SEND_AUTO_STOP                at 0 range 10 .. 10;
      CEATA_DEVICE_INTERRUPT_STATUS at 0 range 11 .. 11;
      RESERVED_2                    at 0 range 12 .. 15;
      CARD_VOLTAGE_A                at 0 range 16 .. 18;
      RESERVED_3                    at 0 range 19 .. 23;
      RESERVED_4                    at 0 range 24 .. 24;
      USE_INTERNAL_DMAC             at 0 range 25 .. 25;
      RESERVED_5                    at 0 range 26 .. 31;
   end record;

   --------------------
   -- PWREN_Register --
   --------------------

   subtype PWREN_POWER_ENABLE_Field is Interfaces.Bit_Types.Bit;
   subtype PWREN_RESERVED_Field is Interfaces.Bit_Types.UInt31;

   --  Power Enable Register
   type PWREN_Register is record
      --  Power on/off switch for card; once power is turned on, software
      --  should wait for regulator/switch ramp-up time before trying to
      --  initialize card. 0 - power off 1 - power on Optional feature: port
      --  can be used as general-purpose output on the SD_POW pin.
      POWER_ENABLE : PWREN_POWER_ENABLE_Field := 16#0#;
      --  Reserved
      RESERVED     : PWREN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWREN_Register use record
      POWER_ENABLE at 0 range 0 .. 0;
      RESERVED     at 0 range 1 .. 31;
   end record;

   ---------------------
   -- CLKDIV_Register --
   ---------------------

   --  CLKDIV_CLK_DIVIDER array element
   subtype CLKDIV_CLK_DIVIDER_Element is Interfaces.Bit_Types.Byte;

   --  CLKDIV_CLK_DIVIDER array
   type CLKDIV_CLK_DIVIDER_Field_Array is array (0 .. 3)
     of CLKDIV_CLK_DIVIDER_Element
     with Component_Size => 8, Size => 32;

   --  Clock Divider Register
   type CLKDIV_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CLK_DIVIDER as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  CLK_DIVIDER as an array
            Arr : CLKDIV_CLK_DIVIDER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CLKDIV_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ---------------------
   -- CLKSRC_Register --
   ---------------------

   subtype CLKSRC_CLK_SOURCE_Field is Interfaces.Bit_Types.UInt2;

   --  SD Clock Source Register
   type CLKSRC_Register is record
      --  Clock divider source for SD card. 00 - Clock divider 0 01 - Clock
      --  divider 1 10 - Clock divider 2 11 - Clock divider 3 In
      --  MMC-Ver3.3-only controller, only one clock divider supported. The
      --  cclk_out is always from clock divider 0, and this register is not
      --  implemented.
      CLK_SOURCE    : CLKSRC_CLK_SOURCE_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKSRC_Register use record
      CLK_SOURCE    at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   ---------------------
   -- CLKENA_Register --
   ---------------------

   subtype CLKENA_CCLK_ENABLE_Field is Interfaces.Bit_Types.Bit;
   subtype CLKENA_RESERVED_Field is Interfaces.Bit_Types.UInt15;
   subtype CLKENA_CCLK_LOW_POWER_Field is Interfaces.Bit_Types.Bit;

   --  Clock Enable Register
   type CLKENA_Register is record
      --  Clock-enable control for SD card clock. One MMC card clock supported.
      --  0 - Clock disabled 1 - Clock enabled
      CCLK_ENABLE    : CLKENA_CCLK_ENABLE_Field := 16#0#;
      --  Reserved
      RESERVED       : CLKENA_RESERVED_Field := 16#0#;
      --  Low-power control for SD card clock. One MMC card clock supported. 0
      --  - Non-low-power mode 1 - Low-power mode; stop clock when card in IDLE
      --  (should be normally set to only MMC and SD memory cards; for SDIO
      --  cards, if interrupts must be detected, clock should not be stopped).
      CCLK_LOW_POWER : CLKENA_CCLK_LOW_POWER_Field := 16#0#;
      --  Reserved
      RESERVED_1     : CLKENA_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKENA_Register use record
      CCLK_ENABLE    at 0 range 0 .. 0;
      RESERVED       at 0 range 1 .. 15;
      CCLK_LOW_POWER at 0 range 16 .. 16;
      RESERVED_1     at 0 range 17 .. 31;
   end record;

   --------------------
   -- TMOUT_Register --
   --------------------

   subtype TMOUT_RESPONSE_TIMEOUT_Field is Interfaces.Bit_Types.Byte;
   subtype TMOUT_DATA_TIMEOUT_Field is Interfaces.Bit_Types.UInt24;

   --  Time-out Register
   type TMOUT_Register is record
      --  Response time-out value. Value is in number of card output clocks -
      --  cclk_out.
      RESPONSE_TIMEOUT : TMOUT_RESPONSE_TIMEOUT_Field := 16#0#;
      --  Value for card Data Read time-out; same value also used for Data
      --  Starvation by Host time-out. Value is in number of card output clocks
      --  - cclk_out of selected card. Starvation by Host time-out. Value is in
      --  number of card output clocks - cclk_out of selected card.
      DATA_TIMEOUT     : TMOUT_DATA_TIMEOUT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TMOUT_Register use record
      RESPONSE_TIMEOUT at 0 range 0 .. 7;
      DATA_TIMEOUT     at 0 range 8 .. 31;
   end record;

   --------------------
   -- CTYPE_Register --
   --------------------

   subtype CTYPE_CARD_WIDTH0_Field is Interfaces.Bit_Types.Bit;
   subtype CTYPE_RESERVED_Field is Interfaces.Bit_Types.UInt15;
   subtype CTYPE_CARD_WIDTH1_Field is Interfaces.Bit_Types.Bit;

   --  Card Type Register
   type CTYPE_Register is record
      --  Indicates if card is 1-bit or 4-bit: 0 - 1-bit mode 1 - 4-bit mode 1
      --  and 4-bit modes only work when 8-bit mode in CARD_WIDTH1 is not
      --  enabled (bit 16 in this register is set to 0).
      CARD_WIDTH0 : CTYPE_CARD_WIDTH0_Field := 16#0#;
      --  Reserved
      RESERVED    : CTYPE_RESERVED_Field := 16#0#;
      --  Indicates if card is 8-bit: 0 - Non 8-bit mode 1 - 8-bit mode.
      CARD_WIDTH1 : CTYPE_CARD_WIDTH1_Field := 16#0#;
      --  Reserved
      RESERVED_1  : CTYPE_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTYPE_Register use record
      CARD_WIDTH0 at 0 range 0 .. 0;
      RESERVED    at 0 range 1 .. 15;
      CARD_WIDTH1 at 0 range 16 .. 16;
      RESERVED_1  at 0 range 17 .. 31;
   end record;

   ---------------------
   -- BLKSIZ_Register --
   ---------------------

   subtype BLKSIZ_BLOCK_SIZE_Field is Interfaces.Bit_Types.Short;
   subtype BLKSIZ_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Block Size Register
   type BLKSIZ_Register is record
      --  Block size
      BLOCK_SIZE : BLKSIZ_BLOCK_SIZE_Field := 16#200#;
      --  Reserved
      RESERVED   : BLKSIZ_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BLKSIZ_Register use record
      BLOCK_SIZE at 0 range 0 .. 15;
      RESERVED   at 0 range 16 .. 31;
   end record;

   ----------------------
   -- INTMASK_Register --
   ----------------------

   subtype INTMASK_CDET_Field is Interfaces.Bit_Types.Bit;
   subtype INTMASK_RE_Field is Interfaces.Bit_Types.Bit;
   subtype INTMASK_CDONE_Field is Interfaces.Bit_Types.Bit;
   subtype INTMASK_DTO_Field is Interfaces.Bit_Types.Bit;
   subtype INTMASK_TXDR_Field is Interfaces.Bit_Types.Bit;
   subtype INTMASK_RXDR_Field is Interfaces.Bit_Types.Bit;
   subtype INTMASK_RCRC_Field is Interfaces.Bit_Types.Bit;
   subtype INTMASK_DCRC_Field is Interfaces.Bit_Types.Bit;
   subtype INTMASK_RTO_Field is Interfaces.Bit_Types.Bit;
   subtype INTMASK_DRTO_Field is Interfaces.Bit_Types.Bit;
   subtype INTMASK_HTO_Field is Interfaces.Bit_Types.Bit;
   subtype INTMASK_FRUN_Field is Interfaces.Bit_Types.Bit;
   subtype INTMASK_HLE_Field is Interfaces.Bit_Types.Bit;
   subtype INTMASK_SBE_Field is Interfaces.Bit_Types.Bit;
   subtype INTMASK_ACD_Field is Interfaces.Bit_Types.Bit;
   subtype INTMASK_EBE_Field is Interfaces.Bit_Types.Bit;
   subtype INTMASK_SDIO_INT_MASK_Field is Interfaces.Bit_Types.Bit;
   subtype INTMASK_RESERVED_Field is Interfaces.Bit_Types.UInt15;

   --  Interrupt Mask Register
   type INTMASK_Register is record
      --  Card detect. Bits used to mask unwanted interrupts. Value of 0 masks
      --  interrupt; value of 1 enables interrupt.
      CDET          : INTMASK_CDET_Field := 16#0#;
      --  Response error. Bits used to mask unwanted interrupts. Value of 0
      --  masks interrupt; value of 1 enables interrupt.
      RE            : INTMASK_RE_Field := 16#0#;
      --  Command done. Bits used to mask unwanted interrupts. Value of 0 masks
      --  interrupt; value of 1 enables interrupt.
      CDONE         : INTMASK_CDONE_Field := 16#0#;
      --  Data transfer over. Bits used to mask unwanted interrupts. Value of 0
      --  masks interrupt; value of 1 enables interrupt.
      DTO           : INTMASK_DTO_Field := 16#0#;
      --  Transmit FIFO data request. Bits used to mask unwanted interrupts.
      --  Value of 0 masks interrupt; value of 1 enables interrupt.
      TXDR          : INTMASK_TXDR_Field := 16#0#;
      --  Receive FIFO data request. Bits used to mask unwanted interrupts.
      --  Value of 0 masks interrupt; value of 1 enables interrupt.
      RXDR          : INTMASK_RXDR_Field := 16#0#;
      --  Response CRC error. Bits used to mask unwanted interrupts. Value of 0
      --  masks interrupt; value of 1 enables interrupt.
      RCRC          : INTMASK_RCRC_Field := 16#0#;
      --  Data CRC error. Bits used to mask unwanted interrupts. Value of 0
      --  masks interrupt; value of 1 enables interrupt.
      DCRC          : INTMASK_DCRC_Field := 16#0#;
      --  Response time-out. Bits used to mask unwanted interrupts. Value of 0
      --  masks interrupt; value of 1 enables interrupt.
      RTO           : INTMASK_RTO_Field := 16#0#;
      --  Data read time-out. Bits used to mask unwanted interrupts. Value of 0
      --  masks interrupt; value of 1 enables interrupt.
      DRTO          : INTMASK_DRTO_Field := 16#0#;
      --  Data starvation-by-host time-out (HTO) /Volt_switch_int. Bits used to
      --  mask unwanted interrupts. Value of 0 masks interrupt; value of 1
      --  enables interrupt.
      HTO           : INTMASK_HTO_Field := 16#0#;
      --  FIFO underrun/overrun error. Bits used to mask unwanted interrupts.
      --  Value of 0 masks interrupt; value of 1 enables interrupt.
      FRUN          : INTMASK_FRUN_Field := 16#0#;
      --  Hardware locked write error. Bits used to mask unwanted interrupts.
      --  Value of 0 masks interrupt; value of 1 enables interrupt.
      HLE           : INTMASK_HLE_Field := 16#0#;
      --  Start-bit error. Bits used to mask unwanted interrupts. Value of 0
      --  masks interrupt; value of 1 enables interrupt.
      SBE           : INTMASK_SBE_Field := 16#0#;
      --  Auto command done. Bits used to mask unwanted interrupts. Value of 0
      --  masks interrupt; value of 1 enables interrupt.
      ACD           : INTMASK_ACD_Field := 16#0#;
      --  End-bit error (read)/Write no CRC. Bits used to mask unwanted
      --  interrupts. Value of 0 masks interrupt; value of 1 enables interrupt.
      EBE           : INTMASK_EBE_Field := 16#0#;
      --  Mask SDIO interrupt. When masked, SDIO interrupt detection for card
      --  is disabled. A 0 masks an interrupt, and 1 enables an interrupt. In
      --  MMC-Ver3.3-only mode, this bit is always 0.
      SDIO_INT_MASK : INTMASK_SDIO_INT_MASK_Field := 16#0#;
      --  Reserved
      RESERVED      : INTMASK_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTMASK_Register use record
      CDET          at 0 range 0 .. 0;
      RE            at 0 range 1 .. 1;
      CDONE         at 0 range 2 .. 2;
      DTO           at 0 range 3 .. 3;
      TXDR          at 0 range 4 .. 4;
      RXDR          at 0 range 5 .. 5;
      RCRC          at 0 range 6 .. 6;
      DCRC          at 0 range 7 .. 7;
      RTO           at 0 range 8 .. 8;
      DRTO          at 0 range 9 .. 9;
      HTO           at 0 range 10 .. 10;
      FRUN          at 0 range 11 .. 11;
      HLE           at 0 range 12 .. 12;
      SBE           at 0 range 13 .. 13;
      ACD           at 0 range 14 .. 14;
      EBE           at 0 range 15 .. 15;
      SDIO_INT_MASK at 0 range 16 .. 16;
      RESERVED      at 0 range 17 .. 31;
   end record;

   ------------------
   -- CMD_Register --
   ------------------

   subtype CMD_CMD_INDEX_Field is Interfaces.Bit_Types.UInt6;

   --  Response expect
   type ENUM_9 is
     (
      --  None. No response expected from card
      None,
      --  Expected. Response expected from card
      Expected)
     with Size => 1;
   for ENUM_9 use
     (None => 0,
      Expected => 1);

   --  Response length
   type ENUM_10 is
     (
      --  Short. Short response expected from card
      Short,
      --  Long. Long response expected from card
      Long)
     with Size => 1;
   for ENUM_10 use
     (Short => 0,
      Long => 1);

   --  Check response crc. Some of command responses do not return valid CRC
   --  bits. Software should disable CRC checks for those commands in order to
   --  disable CRC checking by controller.
   type ENUM_11 is
     (
      --  Do not check response CRC
      Do_Not_Check_Respons,
      --  Check response CRC
      Check_Response_Crc)
     with Size => 1;
   for ENUM_11 use
     (Do_Not_Check_Respons => 0,
      Check_Response_Crc => 1);

   --  Data expected
   type ENUM_12 is
     (
      --  None. No data transfer expected (read/write)
      None,
      --  Data. Data transfer expected (read/write)
      Data)
     with Size => 1;
   for ENUM_12 use
     (None => 0,
      Data => 1);

   --  read/write. Don't care if no data expected from card.
   type ENUM_13 is
     (
      --  Read from card
      Read_From_Card,
      --  Write to card
      Write_To_Card)
     with Size => 1;
   for ENUM_13 use
     (Read_From_Card => 0,
      Write_To_Card => 1);

   --  Transfer mode. Don't care if no data expected.
   type ENUM_14 is
     (
      --  Block data transfer command
      Block_Data_Transfer,
      --  Stream data transfer command
      Stream_Data_Transfer)
     with Size => 1;
   for ENUM_14 use
     (Block_Data_Transfer => 0,
      Stream_Data_Transfer => 1);

   --  Send auto stop. When set, the SD/MMC interface sends stop command to
   --  SD_MMC_CEATA cards at end of data transfer. Refer to Table 339 to
   --  determine: - when send_auto_stop bit should be set, since some data
   --  transfers do not need explicit stop commands - open-ended transfers that
   --  software should explicitly send to stop command Additionally, when
   --  resume is sent to resume - suspended memory access of SD-Combo card -
   --  bit should be set correctly if suspended data transfer needs
   --  send_auto_stop. Don't care if no data expected from card.
   type ENUM_15 is
     (
      --  No stop command sent at end of data transfer
      No_Stop_Command_Sent,
      --  Send stop command at end of data transfer
      Send_Stop_Command_At)
     with Size => 1;
   for ENUM_15 use
     (No_Stop_Command_Sent => 0,
      Send_Stop_Command_At => 1);

   --  Wait prvdata complete. The wait_prvdata_complete = 0 option typically
   --  used to query status of card during data transfer or to stop current
   --  data transfer; card_number should be same as in previous command.
   type ENUM_16 is
     (
      --  Send. Send command at once, even if previous data transfer has not
      --  completed.
      Send,
      --  Wait. Wait for previous data transfer completion before sending
      --  command.
      Wait)
     with Size => 1;
   for ENUM_16 use
     (Send => 0,
      Wait => 1);

   --  Send initialization. After power on, 80 clocks must be sent to card for
   --  initialization before sending any commands to card. Bit should be set
   --  while sending first command to card so that controller will initialize
   --  clocks before sending command to card. This bit should not be set for
   --  either of the boot modes (alternate or mandatory).
   type ENUM_17 is
     (
      --  No. Do not send initialization sequence (80 clocks of 1) before
      --  sending this command.
      No,
      --  Send. Send initialization sequence before sending this command.
      Send)
     with Size => 1;
   for ENUM_17 use
     (No => 0,
      Send => 1);

   subtype CMD_RESERVED_Field is Interfaces.Bit_Types.UInt5;

   --  Update clock registers only. Following register values transferred into
   --  card clock domain: CLKDIV, CLRSRC, CLKENA. Changes card clocks (change
   --  frequency, truncate off or on, and set low-frequency mode); provided in
   --  order to change clock frequency or stop clock without having to send
   --  command to cards. During normal command sequence, when
   --  update_clock_registers_only = 0, following control registers are
   --  transferred from BIU to CIU: CMD, CMDARG, TMOUT, CTYPE, BLKSIZ, BYTCNT.
   --  CIU uses new register values for new command sequence to card(s). When
   --  bit is set, there are no Command Done interrupts because no command is
   --  sent to SD_MMC_CEATA cards.
   type ENUM_18 is
     (
      --  Normal. Normal command sequence
      Normal,
      --  No. Do not send commands, just update clock register value into card
      --  clock domain
      No)
     with Size => 1;
   for ENUM_18 use
     (Normal => 0,
      No => 1);

   --  Read ceata device. Software should set this bit to indicate that CE-ATA
   --  device is being accessed for read transfer. This bit is used to disable
   --  read data time-out indication while performing CE-ATA read transfers.
   --  Maximum value of I/O transmission delay can be no less than 10
   --  seconds.The SD/MMC interface should not indicate read data time-out
   --  while waiting for data from CE-ATA device.
   type ENUM_19 is
     (
      --  No read. Host is not performing read access (RW_REG or RW_BLK)
      --  towards CE-ATA device.
      No_Read,
      --  Read. Host is performing read access (RW_REG or RW_BLK) towards
      --  CE-ATA device.
      Read)
     with Size => 1;
   for ENUM_19 use
     (No_Read => 0,
      Read => 1);

   subtype CMD_ENABLE_BOOT_Field is Interfaces.Bit_Types.Bit;
   subtype CMD_EXPECT_BOOT_ACK_Field is Interfaces.Bit_Types.Bit;
   subtype CMD_DISABLE_BOOT_Field is Interfaces.Bit_Types.Bit;

   --  Boot Mode
   type ENUM_20 is
     (
      --  Mandatory Boot operation
      Mandatory_Boot_Opera,
      --  Alternate Boot operation
      Alternate_Boot_Opera)
     with Size => 1;
   for ENUM_20 use
     (Mandatory_Boot_Opera => 0,
      Alternate_Boot_Opera => 1);

   subtype CMD_RESERVED_Field_1 is Interfaces.Bit_Types.UInt2;
   subtype CMD_START_CMD_Field is Interfaces.Bit_Types.Bit;

   --  Command Register
   type CMD_Register is record
      --  Command index
      CMD_INDEX                   : CMD_CMD_INDEX_Field := 16#0#;
      --  Response expect
      RESPONSE_EXPECT             : ENUM_9 := Interfaces.LPC43xxC.SDMMC.None;
      --  Response length
      RESPONSE_LENGTH             : ENUM_10 :=
                                     Interfaces.LPC43xxC.SDMMC.Short;
      --  Check response crc. Some of command responses do not return valid CRC
      --  bits. Software should disable CRC checks for those commands in order
      --  to disable CRC checking by controller.
      CHECK_RESPONSE_CRC     : ENUM_11 :=
                                Interfaces.LPC43xxC.SDMMC.Do_Not_Check_Respons;
      --  Data expected
      DATA_EXPECTED               : ENUM_12 := Interfaces.LPC43xxC.SDMMC.None;
      --  read/write. Don't care if no data expected from card.
      READ_WRITE                  : ENUM_13 :=
                                     Interfaces.LPC43xxC.SDMMC.Read_From_Card;
      --  Transfer mode. Don't care if no data expected.
      TRANSFER_MODE           : ENUM_14 :=
                                 Interfaces.LPC43xxC.SDMMC.Block_Data_Transfer;
      --  Send auto stop. When set, the SD/MMC interface sends stop command to
      --  SD_MMC_CEATA cards at end of data transfer. Refer to Table 339 to
      --  determine: - when send_auto_stop bit should be set, since some data
      --  transfers do not need explicit stop commands - open-ended transfers
      --  that software should explicitly send to stop command Additionally,
      --  when resume is sent to resume - suspended memory access of SD-Combo
      --  card - bit should be set correctly if suspended data transfer needs
      --  send_auto_stop. Don't care if no data expected from card.
      SEND_AUTO_STOP        : ENUM_15 :=
                               Interfaces.LPC43xxC.SDMMC.No_Stop_Command_Sent;
      --  Wait prvdata complete. The wait_prvdata_complete = 0 option typically
      --  used to query status of card during data transfer or to stop current
      --  data transfer; card_number should be same as in previous command.
      WAIT_PRVDATA_COMPLETE       : ENUM_16 := Interfaces.LPC43xxC.SDMMC.Send;
      --  Stop abort command. When open-ended or predefined data transfer is in
      --  progress, and host issues stop or abort command to stop data
      --  transfer, bit should be set so that command/data state-machines of
      --  CIU can return correctly to idle state. This is also applicable for
      --  Boot mode transfers. To Abort boot mode, this bit should be set along
      --  with CMD[26] = disable_boot.
      STOP_ABORT_CMD              : ENUM_7 :=
                                     Interfaces.LPC43xxC.SDMMC.Disabled;
      --  Send initialization. After power on, 80 clocks must be sent to card
      --  for initialization before sending any commands to card. Bit should be
      --  set while sending first command to card so that controller will
      --  initialize clocks before sending command to card. This bit should not
      --  be set for either of the boot modes (alternate or mandatory).
      SEND_INITIALIZATION         : ENUM_17 := Interfaces.LPC43xxC.SDMMC.No;
      --  Reserved. Always write as 0.
      RESERVED                    : CMD_RESERVED_Field := 16#0#;
      --  Update clock registers only. Following register values transferred
      --  into card clock domain: CLKDIV, CLRSRC, CLKENA. Changes card clocks
      --  (change frequency, truncate off or on, and set low-frequency mode);
      --  provided in order to change clock frequency or stop clock without
      --  having to send command to cards. During normal command sequence, when
      --  update_clock_registers_only = 0, following control registers are
      --  transferred from BIU to CIU: CMD, CMDARG, TMOUT, CTYPE, BLKSIZ,
      --  BYTCNT. CIU uses new register values for new command sequence to
      --  card(s). When bit is set, there are no Command Done interrupts
      --  because no command is sent to SD_MMC_CEATA cards.
      UPDATE_CLOCK_REGISTERS_ONLY : ENUM_18 :=
                                     Interfaces.LPC43xxC.SDMMC.Normal;
      --  Read ceata device. Software should set this bit to indicate that
      --  CE-ATA device is being accessed for read transfer. This bit is used
      --  to disable read data time-out indication while performing CE-ATA read
      --  transfers. Maximum value of I/O transmission delay can be no less
      --  than 10 seconds.The SD/MMC interface should not indicate read data
      --  time-out while waiting for data from CE-ATA device.
      READ_CEATA_DEVICE           : ENUM_19 :=
                                     Interfaces.LPC43xxC.SDMMC.No_Read;
      --  CCS expected. If the command expects Command Completion Signal (CCS)
      --  from the CE-ATA device, the software should set this control bit. The
      --  SD/MMC controller sets the Data Transfer Over (DTO) bit in the
      --  RINTSTS register and generates an interrupt to the host if the Data
      --  Transfer Over interrupt is not masked.
      CCS_EXPECTED                : ENUM_7 :=
                                     Interfaces.LPC43xxC.SDMMC.Disabled;
      --  Enable Boot - this bit should be set only for mandatory boot mode.
      --  When Software sets this bit along with start_cmd, CIU starts the boot
      --  sequence for the corresponding card by asserting the CMD line low. Do
      --  NOT set disable_boot and enable_boot together.
      ENABLE_BOOT                 : CMD_ENABLE_BOOT_Field := 16#0#;
      --  Expect Boot Acknowledge. When Software sets this bit along with
      --  enable_boot, CIU expects a boot acknowledge start pattern of 0-1-0
      --  from the selected card.
      EXPECT_BOOT_ACK             : CMD_EXPECT_BOOT_ACK_Field := 16#0#;
      --  Disable Boot. When software sets this bit along with start_cmd, CIU
      --  terminates the boot operation. Do NOT set disable_boot and
      --  enable_boot together.
      DISABLE_BOOT                : CMD_DISABLE_BOOT_Field := 16#0#;
      --  Boot Mode
      BOOT_MODE             : ENUM_20 :=
                               Interfaces.LPC43xxC.SDMMC.Mandatory_Boot_Opera;
      --  Voltage switch bit
      VOLT_SWITCH                 : ENUM_7 :=
                                     Interfaces.LPC43xxC.SDMMC.Disabled;
      --  Reserved
      RESERVED_1                  : CMD_RESERVED_Field_1 := 16#0#;
      --  Start command. Once command is taken by CIU, this bit is cleared.
      --  When bit is set, host should not attempt to write to any command
      --  registers. If write is attempted, hardware lock error is set in raw
      --  interrupt register. Once command is sent and response is received
      --  from SD_MMC_CEATA cards, Command Done bit is set in the raw interrupt
      --  register.
      START_CMD                   : CMD_START_CMD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      CMD_INDEX                   at 0 range 0 .. 5;
      RESPONSE_EXPECT             at 0 range 6 .. 6;
      RESPONSE_LENGTH             at 0 range 7 .. 7;
      CHECK_RESPONSE_CRC          at 0 range 8 .. 8;
      DATA_EXPECTED               at 0 range 9 .. 9;
      READ_WRITE                  at 0 range 10 .. 10;
      TRANSFER_MODE               at 0 range 11 .. 11;
      SEND_AUTO_STOP              at 0 range 12 .. 12;
      WAIT_PRVDATA_COMPLETE       at 0 range 13 .. 13;
      STOP_ABORT_CMD              at 0 range 14 .. 14;
      SEND_INITIALIZATION         at 0 range 15 .. 15;
      RESERVED                    at 0 range 16 .. 20;
      UPDATE_CLOCK_REGISTERS_ONLY at 0 range 21 .. 21;
      READ_CEATA_DEVICE           at 0 range 22 .. 22;
      CCS_EXPECTED                at 0 range 23 .. 23;
      ENABLE_BOOT                 at 0 range 24 .. 24;
      EXPECT_BOOT_ACK             at 0 range 25 .. 25;
      DISABLE_BOOT                at 0 range 26 .. 26;
      BOOT_MODE                   at 0 range 27 .. 27;
      VOLT_SWITCH                 at 0 range 28 .. 28;
      RESERVED_1                  at 0 range 29 .. 30;
      START_CMD                   at 0 range 31 .. 31;
   end record;

   ----------------------
   -- MINTSTS_Register --
   ----------------------

   subtype MINTSTS_CDET_Field is Interfaces.Bit_Types.Bit;
   subtype MINTSTS_RE_Field is Interfaces.Bit_Types.Bit;
   subtype MINTSTS_CDONE_Field is Interfaces.Bit_Types.Bit;
   subtype MINTSTS_DTO_Field is Interfaces.Bit_Types.Bit;
   subtype MINTSTS_TXDR_Field is Interfaces.Bit_Types.Bit;
   subtype MINTSTS_RXDR_Field is Interfaces.Bit_Types.Bit;
   subtype MINTSTS_RCRC_Field is Interfaces.Bit_Types.Bit;
   subtype MINTSTS_DCRC_Field is Interfaces.Bit_Types.Bit;
   subtype MINTSTS_RTO_Field is Interfaces.Bit_Types.Bit;
   subtype MINTSTS_DRTO_Field is Interfaces.Bit_Types.Bit;
   subtype MINTSTS_HTO_Field is Interfaces.Bit_Types.Bit;
   subtype MINTSTS_FRUN_Field is Interfaces.Bit_Types.Bit;
   subtype MINTSTS_HLE_Field is Interfaces.Bit_Types.Bit;
   subtype MINTSTS_SBE_Field is Interfaces.Bit_Types.Bit;
   subtype MINTSTS_ACD_Field is Interfaces.Bit_Types.Bit;
   subtype MINTSTS_EBE_Field is Interfaces.Bit_Types.Bit;
   subtype MINTSTS_SDIO_INTERRUPT_Field is Interfaces.Bit_Types.Bit;
   subtype MINTSTS_RESERVED_Field is Interfaces.Bit_Types.UInt15;

   --  Masked Interrupt Status Register
   type MINTSTS_Register is record
      --  Read-only. Card detect. Interrupt enabled only if corresponding bit
      --  in interrupt mask register is set.
      CDET           : MINTSTS_CDET_Field;
      --  Read-only. Response error. Interrupt enabled only if corresponding
      --  bit in interrupt mask register is set.
      RE             : MINTSTS_RE_Field;
      --  Read-only. Command done. Interrupt enabled only if corresponding bit
      --  in interrupt mask register is set.
      CDONE          : MINTSTS_CDONE_Field;
      --  Read-only. Data transfer over. Interrupt enabled only if
      --  corresponding bit in interrupt mask register is set.
      DTO            : MINTSTS_DTO_Field;
      --  Read-only. Transmit FIFO data request. Interrupt enabled only if
      --  corresponding bit in interrupt mask register is set.
      TXDR           : MINTSTS_TXDR_Field;
      --  Read-only. Receive FIFO data request. Interrupt enabled only if
      --  corresponding bit in interrupt mask register is set.
      RXDR           : MINTSTS_RXDR_Field;
      --  Read-only. Response CRC error. Interrupt enabled only if
      --  corresponding bit in interrupt mask register is set.
      RCRC           : MINTSTS_RCRC_Field;
      --  Read-only. Data CRC error. Interrupt enabled only if corresponding
      --  bit in interrupt mask register is set.
      DCRC           : MINTSTS_DCRC_Field;
      --  Read-only. Response time-out. Interrupt enabled only if corresponding
      --  bit in interrupt mask register is set.
      RTO            : MINTSTS_RTO_Field;
      --  Read-only. Data read time-out. Interrupt enabled only if
      --  corresponding bit in interrupt mask register is set.
      DRTO           : MINTSTS_DRTO_Field;
      --  Read-only. Data starvation-by-host time-out (HTO). Interrupt enabled
      --  only if corresponding bit in interrupt mask register is set.
      HTO            : MINTSTS_HTO_Field;
      --  Read-only. FIFO underrun/overrun error. Interrupt enabled only if
      --  corresponding bit in interrupt mask register is set.
      FRUN           : MINTSTS_FRUN_Field;
      --  Read-only. Hardware locked write error. Interrupt enabled only if
      --  corresponding bit in interrupt mask register is set.
      HLE            : MINTSTS_HLE_Field;
      --  Read-only. Start-bit error. Interrupt enabled only if corresponding
      --  bit in interrupt mask register is set.
      SBE            : MINTSTS_SBE_Field;
      --  Read-only. Auto command done. Interrupt enabled only if corresponding
      --  bit in interrupt mask register is set.
      ACD            : MINTSTS_ACD_Field;
      --  Read-only. End-bit error (read)/write no CRC. Interrupt enabled only
      --  if corresponding bit in interrupt mask register is set.
      EBE            : MINTSTS_EBE_Field;
      --  Read-only. Interrupt from SDIO card. SDIO interrupt for card enabled
      --  only if corresponding sdio_int_mask bit is set in Interrupt mask
      --  register (mask bit 1 enables interrupt; 0 masks interrupt). 0 - No
      --  SDIO interrupt from card 1 - SDIO interrupt from card In
      --  MMC-Ver3.3-only mode, this bit is always 0.
      SDIO_INTERRUPT : MINTSTS_SDIO_INTERRUPT_Field;
      --  Read-only. Reserved
      RESERVED       : MINTSTS_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MINTSTS_Register use record
      CDET           at 0 range 0 .. 0;
      RE             at 0 range 1 .. 1;
      CDONE          at 0 range 2 .. 2;
      DTO            at 0 range 3 .. 3;
      TXDR           at 0 range 4 .. 4;
      RXDR           at 0 range 5 .. 5;
      RCRC           at 0 range 6 .. 6;
      DCRC           at 0 range 7 .. 7;
      RTO            at 0 range 8 .. 8;
      DRTO           at 0 range 9 .. 9;
      HTO            at 0 range 10 .. 10;
      FRUN           at 0 range 11 .. 11;
      HLE            at 0 range 12 .. 12;
      SBE            at 0 range 13 .. 13;
      ACD            at 0 range 14 .. 14;
      EBE            at 0 range 15 .. 15;
      SDIO_INTERRUPT at 0 range 16 .. 16;
      RESERVED       at 0 range 17 .. 31;
   end record;

   ----------------------
   -- RINTSTS_Register --
   ----------------------

   subtype RINTSTS_CDET_Field is Interfaces.Bit_Types.Bit;
   subtype RINTSTS_RE_Field is Interfaces.Bit_Types.Bit;
   subtype RINTSTS_CDONE_Field is Interfaces.Bit_Types.Bit;
   subtype RINTSTS_DTO_Field is Interfaces.Bit_Types.Bit;
   subtype RINTSTS_TXDR_Field is Interfaces.Bit_Types.Bit;
   subtype RINTSTS_RXDR_Field is Interfaces.Bit_Types.Bit;
   subtype RINTSTS_RCRC_Field is Interfaces.Bit_Types.Bit;
   subtype RINTSTS_DCRC_Field is Interfaces.Bit_Types.Bit;
   subtype RINTSTS_RTO_BAR_Field is Interfaces.Bit_Types.Bit;
   subtype RINTSTS_DRTO_BDS_Field is Interfaces.Bit_Types.Bit;
   subtype RINTSTS_HTO_Field is Interfaces.Bit_Types.Bit;
   subtype RINTSTS_FRUN_Field is Interfaces.Bit_Types.Bit;
   subtype RINTSTS_HLE_Field is Interfaces.Bit_Types.Bit;
   subtype RINTSTS_SBE_Field is Interfaces.Bit_Types.Bit;
   subtype RINTSTS_ACD_Field is Interfaces.Bit_Types.Bit;
   subtype RINTSTS_EBE_Field is Interfaces.Bit_Types.Bit;
   subtype RINTSTS_SDIO_INTERRUPT_Field is Interfaces.Bit_Types.Bit;
   subtype RINTSTS_RESERVED_Field is Interfaces.Bit_Types.UInt15;

   --  Raw Interrupt Status Register
   type RINTSTS_Register is record
      --  Card detect. Writes to bits clear status bit. Value of 1 clears
      --  status bit, and value of 0 leaves bit intact. Bits are logged
      --  regardless of interrupt mask status.
      CDET           : RINTSTS_CDET_Field := 16#0#;
      --  Response error. Writes to bits clear status bit. Value of 1 clears
      --  status bit, and value of 0 leaves bit intact. Bits are logged
      --  regardless of interrupt mask status.
      RE             : RINTSTS_RE_Field := 16#0#;
      --  Command done. Writes to bits clear status bit. Value of 1 clears
      --  status bit, and value of 0 leaves bit intact. Bits are logged
      --  regardless of interrupt mask status.
      CDONE          : RINTSTS_CDONE_Field := 16#0#;
      --  Data transfer over. Writes to bits clear status bit. Value of 1
      --  clears status bit, and value of 0 leaves bit intact. Bits are logged
      --  regardless of interrupt mask status.
      DTO            : RINTSTS_DTO_Field := 16#0#;
      --  Transmit FIFO data request. Writes to bits clear status bit. Value of
      --  1 clears status bit, and value of 0 leaves bit intact. Bits are
      --  logged regardless of interrupt mask status.
      TXDR           : RINTSTS_TXDR_Field := 16#0#;
      --  Receive FIFO data request. Writes to bits clear status bit. Value of
      --  1 clears status bit, and value of 0 leaves bit intact. Bits are
      --  logged regardless of interrupt mask status.
      RXDR           : RINTSTS_RXDR_Field := 16#0#;
      --  Response CRC error. Writes to bits clear status bit. Value of 1
      --  clears status bit, and value of 0 leaves bit intact. Bits are logged
      --  regardless of interrupt mask status.
      RCRC           : RINTSTS_RCRC_Field := 16#0#;
      --  Data CRC error. Writes to bits clear status bit. Value of 1 clears
      --  status bit, and value of 0 leaves bit intact. Bits are logged
      --  regardless of interrupt mask status.
      DCRC           : RINTSTS_DCRC_Field := 16#0#;
      --  Response time-out (RTO)/Boot Ack Received (BAR). Writes to bits clear
      --  status bit. Value of 1 clears status bit, and value of 0 leaves bit
      --  intact. Bits are logged regardless of interrupt mask status.
      RTO_BAR        : RINTSTS_RTO_BAR_Field := 16#0#;
      --  Data read time-out (DRTO)/Boot Data Start (BDS). Writes to bits clear
      --  status bit. Value of 1 clears status bit, and value of 0 leaves bit
      --  intact. Bits are logged regardless of interrupt mask status.
      DRTO_BDS       : RINTSTS_DRTO_BDS_Field := 16#0#;
      --  Data starvation-by-host time-out (HTO). Writes to bits clear status
      --  bit. Value of 1 clears status bit, and value of 0 leaves bit intact.
      --  Bits are logged regardless of interrupt mask status./Volt_switch_int
      HTO            : RINTSTS_HTO_Field := 16#0#;
      --  FIFO underrun/overrun error. Writes to bits clear status bit. Value
      --  of 1 clears status bit, and value of 0 leaves bit intact. Bits are
      --  logged regardless of interrupt mask status.
      FRUN           : RINTSTS_FRUN_Field := 16#0#;
      --  Hardware locked write error. Writes to bits clear status bit. Value
      --  of 1 clears status bit, and value of 0 leaves bit intact. Bits are
      --  logged regardless of interrupt mask status.
      HLE            : RINTSTS_HLE_Field := 16#0#;
      --  Start-bit error. Writes to bits clear status bit. Value of 1 clears
      --  status bit, and value of 0 leaves bit intact. Bits are logged
      --  regardless of interrupt mask status.
      SBE            : RINTSTS_SBE_Field := 16#0#;
      --  Auto command done. Writes to bits clear status bit. Value of 1 clears
      --  status bit, and value of 0 leaves bit intact. Bits are logged
      --  regardless of interrupt mask status.
      ACD            : RINTSTS_ACD_Field := 16#0#;
      --  End-bit error (read)/write no CRC. Writes to bits clear status bit.
      --  Value of 1 clears status bit, and value of 0 leaves bit intact. Bits
      --  are logged regardless of interrupt mask status.
      EBE            : RINTSTS_EBE_Field := 16#0#;
      --  Interrupt from SDIO card. Writes to these bits clear them. Value of 1
      --  clears bit and 0 leaves bit intact. 0 - No SDIO interrupt from card 1
      --  - SDIO interrupt from card In MMC-Ver3.3-only mode, bits always 0.
      --  Bits are logged regardless of interrupt-mask status.
      SDIO_INTERRUPT : RINTSTS_SDIO_INTERRUPT_Field := 16#0#;
      --  Reserved.
      RESERVED       : RINTSTS_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RINTSTS_Register use record
      CDET           at 0 range 0 .. 0;
      RE             at 0 range 1 .. 1;
      CDONE          at 0 range 2 .. 2;
      DTO            at 0 range 3 .. 3;
      TXDR           at 0 range 4 .. 4;
      RXDR           at 0 range 5 .. 5;
      RCRC           at 0 range 6 .. 6;
      DCRC           at 0 range 7 .. 7;
      RTO_BAR        at 0 range 8 .. 8;
      DRTO_BDS       at 0 range 9 .. 9;
      HTO            at 0 range 10 .. 10;
      FRUN           at 0 range 11 .. 11;
      HLE            at 0 range 12 .. 12;
      SBE            at 0 range 13 .. 13;
      ACD            at 0 range 14 .. 14;
      EBE            at 0 range 15 .. 15;
      SDIO_INTERRUPT at 0 range 16 .. 16;
      RESERVED       at 0 range 17 .. 31;
   end record;

   ---------------------
   -- STATUS_Register --
   ---------------------

   subtype STATUS_FIFO_RX_WATERMARK_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_FIFO_TX_WATERMARK_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_FIFO_EMPTY_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_FIFO_FULL_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_CMDFSMSTATES_Field is Interfaces.Bit_Types.UInt4;
   subtype STATUS_DATA_3_STATUS_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_DATA_BUSY_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_DATA_STATE_MC_BUSY_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_RESPONSE_INDEX_Field is Interfaces.Bit_Types.UInt6;
   subtype STATUS_FIFO_COUNT_Field is Interfaces.Bit_Types.UInt13;
   subtype STATUS_DMA_ACK_Field is Interfaces.Bit_Types.Bit;
   subtype STATUS_DMA_REQ_Field is Interfaces.Bit_Types.Bit;

   --  Status Register
   type STATUS_Register is record
      --  Read-only. FIFO reached Receive watermark level; not qualified with
      --  data transfer.
      FIFO_RX_WATERMARK  : STATUS_FIFO_RX_WATERMARK_Field;
      --  Read-only. FIFO reached Transmit watermark level; not qualified with
      --  data transfer.
      FIFO_TX_WATERMARK  : STATUS_FIFO_TX_WATERMARK_Field;
      --  Read-only. FIFO is empty status
      FIFO_EMPTY         : STATUS_FIFO_EMPTY_Field;
      --  Read-only. FIFO is full status
      FIFO_FULL          : STATUS_FIFO_FULL_Field;
      --  Read-only. Command FSM states: 0 - Idle 1 - Send init sequence 2 - Tx
      --  cmd start bit 3 - Tx cmd tx bit 4 - Tx cmd index + arg 5 - Tx cmd
      --  crc7 6 - Tx cmd end bit 7 - Rx resp start bit 8 - Rx resp IRQ
      --  response 9 - Rx resp tx bit 10 - Rx resp cmd idx 11 - Rx resp data 12
      --  - Rx resp crc7 13 - Rx resp end bit 14 - Cmd path wait NCC 15 - Wait;
      --  CMD-to-response turnaround NOTE: The command FSM state is represented
      --  using 19 bits. The STATUS Register(7:4) has 4 bits to represent the
      --  command FSM states. Using these 4 bits, only 16 states can be
      --  represented. Thus three states cannot be represented in the
      --  STATUS(7:4) register. The three states that are not represented in
      --  the STATUS Register(7:4) are: - Bit 16 - Wait for CCS - Bit 17 - Send
      --  CCSD - Bit 18 - Boot Mode Due to this, while command FSM is in Wait
      --  for CCS state or Send CCSD or Boot Mode, the Status register
      --  indicates status as 0 for the bit field 7:4.
      CMDFSMSTATES       : STATUS_CMDFSMSTATES_Field;
      --  Read-only. Raw selected card_data[3]; checks whether card is present
      --  0 - card not present 1 - card present
      DATA_3_STATUS      : STATUS_DATA_3_STATUS_Field;
      --  Read-only. Inverted version of raw selected card_data[0] 0 - card
      --  data not busy 1 - card data busy
      DATA_BUSY          : STATUS_DATA_BUSY_Field;
      --  Read-only. Data transmit or receive state-machine is busy
      DATA_STATE_MC_BUSY : STATUS_DATA_STATE_MC_BUSY_Field;
      --  Read-only. Index of previous response, including any auto-stop sent
      --  by core.
      RESPONSE_INDEX     : STATUS_RESPONSE_INDEX_Field;
      --  Read-only. FIFO count - Number of filled locations in FIFO
      FIFO_COUNT         : STATUS_FIFO_COUNT_Field;
      --  Read-only. DMA acknowledge signal state
      DMA_ACK            : STATUS_DMA_ACK_Field;
      --  Read-only. DMA request signal state
      DMA_REQ            : STATUS_DMA_REQ_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      FIFO_RX_WATERMARK  at 0 range 0 .. 0;
      FIFO_TX_WATERMARK  at 0 range 1 .. 1;
      FIFO_EMPTY         at 0 range 2 .. 2;
      FIFO_FULL          at 0 range 3 .. 3;
      CMDFSMSTATES       at 0 range 4 .. 7;
      DATA_3_STATUS      at 0 range 8 .. 8;
      DATA_BUSY          at 0 range 9 .. 9;
      DATA_STATE_MC_BUSY at 0 range 10 .. 10;
      RESPONSE_INDEX     at 0 range 11 .. 16;
      FIFO_COUNT         at 0 range 17 .. 29;
      DMA_ACK            at 0 range 30 .. 30;
      DMA_REQ            at 0 range 31 .. 31;
   end record;

   ---------------------
   -- FIFOTH_Register --
   ---------------------

   subtype FIFOTH_TX_WMARK_Field is Interfaces.Bit_Types.UInt12;
   subtype FIFOTH_RESERVED_Field is Interfaces.Bit_Types.UInt4;
   subtype FIFOTH_RX_WMARK_Field is Interfaces.Bit_Types.UInt12;

   --  Burst size of multiple transaction; should be programmed same as DW-DMA
   --  controller multiple-transaction-size SRC/DEST_MSIZE.The units for
   --  transfers is the H_DATA_WIDTH parameter. A single transfer
   --  (dw_dma_single assertion in case of Non DW DMA interface) would be
   --  signalled based on this value. Value should be sub-multiple of (RX_WMark
   --  + 1) and (32 - TX_WMark). For example, if FIFO_DEPTH = 16, FDATA_WIDTH =
   --  H_DATA_WIDTH Allowed combinations for MSize and TX_WMark are: MSize = 1,
   --  TX_WMARK = 1-15 MSize = 4, TX_WMark = 8 MSize = 4, TX_WMark = 4 MSize =
   --  4, TX_WMark = 12 MSize = 8, TX_WMark = 8 MSize = 8, TX_WMark = 4.
   --  Allowed combinations for MSize and RX_WMark are: MSize = 1, RX_WMARK =
   --  0-14 MSize = 4, RX_WMark = 3 MSize = 4, RX_WMark = 7 MSize = 4, RX_WMark
   --  = 11 MSize = 8, RX_WMark = 7 MSize = 8, RX_WMark = 11 Recommended: MSize
   --  = 8, TX_WMark = 8, RX_WMark = 7
   type ENUM_21 is
     (
      --  1 transfer
      ENUM_1_Transfer,
      --  4 transfers
      ENUM_4_Transfers,
      --  8 transfers
      ENUM_8_Transfers,
      --  16 transfers
      ENUM_16_Transfers,
      --  32 transfers
      ENUM_32_Transfers,
      --  64 transfers
      ENUM_64_Transfers,
      --  128 transfers
      ENUM_128_Transfers,
      --  256 transfers
      ENUM_256_Transfers)
     with Size => 3;
   for ENUM_21 use
     (ENUM_1_Transfer => 0,
      ENUM_4_Transfers => 1,
      ENUM_8_Transfers => 2,
      ENUM_16_Transfers => 3,
      ENUM_32_Transfers => 4,
      ENUM_64_Transfers => 5,
      ENUM_128_Transfers => 6,
      ENUM_256_Transfers => 7);

   subtype FIFOTH_RESERVED_Field_1 is Interfaces.Bit_Types.Bit;

   --  FIFO Threshold Watermark Register
   type FIFOTH_Register is record
      --  FIFO threshold watermark level when transmitting data to card. When
      --  FIFO data count is less than or equal to this number, DMA/FIFO
      --  request is raised. If Interrupt is enabled, then interrupt occurs.
      --  During end of packet, request or interrupt is generated, regardless
      --  of threshold programming. In non-DMA mode, when transmit FIFO
      --  threshold (TXDR) interrupt is enabled, then interrupt is generated
      --  instead of DMA request. During end of packet, on last interrupt, host
      --  is responsible for filling FIFO with only required remaining bytes
      --  (not before FIFO is full or after CIU completes data transfers,
      --  because FIFO may not be empty). In DMA mode, at end of packet, if
      --  last transfer is less than burst size, DMA controller does single
      --  cycles until required bytes are transferred. 12 bits - 1 bit less
      --  than FIFO-count of status register, which is 13 bits. Limitation:
      --  TX_WMark >= 1; Recommended value: TX_WMARK = 16; (means less than or
      --  equal to FIFO_DEPTH/2).
      TX_WMARK   : FIFOTH_TX_WMARK_Field := 16#0#;
      --  Reserved.
      RESERVED   : FIFOTH_RESERVED_Field := 16#0#;
      --  FIFO threshold watermark level when receiving data to card. When FIFO
      --  data count reaches greater than this number, DMA/FIFO request is
      --  raised. During end of packet, request is generated regardless of
      --  threshold programming in order to complete any remaining data. In
      --  non-DMA mode, when receiver FIFO threshold (RXDR) interrupt is
      --  enabled, then interrupt is generated instead of DMA request. During
      --  end of packet, interrupt is not generated if threshold programming is
      --  larger than any remaining data. It is responsibility of host to read
      --  remaining bytes on seeing Data Transfer Done interrupt. In DMA mode,
      --  at end of packet, even if remaining bytes are less than threshold,
      --  DMA request does single transfers to flush out any remaining bytes
      --  before Data Transfer Done interrupt is set. 12 bits - 1 bit less than
      --  FIFO-count of status register, which is 13 bits. Limitation: RX_WMark
      --  less than FIFO_DEPTH-2 Recommended: RX_WMARK = 15; (means greater
      --  than (FIFO_DEPTH/2) - 1) NOTE: In DMA mode during CCS time-out, the
      --  DMA does not generate the request at the end of packet, even if
      --  remaining bytes are less than threshold. In this case, there will be
      --  some data left in the FIFO. It is the responsibility of the
      --  application to reset the FIFO after the CCS time-out.
      RX_WMARK   : FIFOTH_RX_WMARK_Field := 16#F80#;
      --  Burst size of multiple transaction; should be programmed same as
      --  DW-DMA controller multiple-transaction-size SRC/DEST_MSIZE.The units
      --  for transfers is the H_DATA_WIDTH parameter. A single transfer
      --  (dw_dma_single assertion in case of Non DW DMA interface) would be
      --  signalled based on this value. Value should be sub-multiple of
      --  (RX_WMark + 1) and (32 - TX_WMark). For example, if FIFO_DEPTH = 16,
      --  FDATA_WIDTH = H_DATA_WIDTH Allowed combinations for MSize and
      --  TX_WMark are: MSize = 1, TX_WMARK = 1-15 MSize = 4, TX_WMark = 8
      --  MSize = 4, TX_WMark = 4 MSize = 4, TX_WMark = 12 MSize = 8, TX_WMark
      --  = 8 MSize = 8, TX_WMark = 4. Allowed combinations for MSize and
      --  RX_WMark are: MSize = 1, RX_WMARK = 0-14 MSize = 4, RX_WMark = 3
      --  MSize = 4, RX_WMark = 7 MSize = 4, RX_WMark = 11 MSize = 8, RX_WMark
      --  = 7 MSize = 8, RX_WMark = 11 Recommended: MSize = 8, TX_WMark = 8,
      --  RX_WMark = 7
      DMA_MTS    : ENUM_21 := Interfaces.LPC43xxC.SDMMC.ENUM_1_Transfer;
      --  Reserved
      RESERVED_1 : FIFOTH_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFOTH_Register use record
      TX_WMARK   at 0 range 0 .. 11;
      RESERVED   at 0 range 12 .. 15;
      RX_WMARK   at 0 range 16 .. 27;
      DMA_MTS    at 0 range 28 .. 30;
      RESERVED_1 at 0 range 31 .. 31;
   end record;

   ----------------------
   -- CDETECT_Register --
   ----------------------

   subtype CDETECT_CARD_DETECT_Field is Interfaces.Bit_Types.Bit;
   subtype CDETECT_RESERVED_Field is Interfaces.Bit_Types.UInt31;

   --  Card Detect Register
   type CDETECT_Register is record
      --  Read-only. Card detect. 0 represents presence of card.
      CARD_DETECT : CDETECT_CARD_DETECT_Field;
      --  Read-only. Reserved
      RESERVED    : CDETECT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CDETECT_Register use record
      CARD_DETECT at 0 range 0 .. 0;
      RESERVED    at 0 range 1 .. 31;
   end record;

   ---------------------
   -- WRTPRT_Register --
   ---------------------

   subtype WRTPRT_WRITE_PROTECT_Field is Interfaces.Bit_Types.Bit;
   subtype WRTPRT_RESERVED_Field is Interfaces.Bit_Types.UInt31;

   --  Write Protect Register
   type WRTPRT_Register is record
      --  Read-only. Write protect. 1 represents write protection.
      WRITE_PROTECT : WRTPRT_WRITE_PROTECT_Field;
      --  Read-only. Reserved
      RESERVED      : WRTPRT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WRTPRT_Register use record
      WRITE_PROTECT at 0 range 0 .. 0;
      RESERVED      at 0 range 1 .. 31;
   end record;

   ---------------------
   -- DEBNCE_Register --
   ---------------------

   subtype DEBNCE_DEBOUNCE_COUNT_Field is Interfaces.Bit_Types.UInt24;
   subtype DEBNCE_RESERVED_Field is Interfaces.Bit_Types.Byte;

   --  Debounce Count Register
   type DEBNCE_Register is record
      --  Number of host clocks (clk) used by debounce filter logic for card
      --  detect; typical debounce time is 5-25 ms.
      DEBOUNCE_COUNT : DEBNCE_DEBOUNCE_COUNT_Field := 16#0#;
      --  Reserved
      RESERVED       : DEBNCE_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEBNCE_Register use record
      DEBOUNCE_COUNT at 0 range 0 .. 23;
      RESERVED       at 0 range 24 .. 31;
   end record;

   --------------------
   -- RST_N_Register --
   --------------------

   subtype RST_N_CARD_RESET_Field is Interfaces.Bit_Types.Bit;
   subtype RST_N_RESERVED_Field is Interfaces.Bit_Types.UInt31;

   --  Hardware Reset
   type RST_N_Register is record
      --  Hardware reset. 1 - Active mode 0 - Reset Toggles state on SD_RST
      --  pin. This bit causes the card to enter pre-idle state, which requires
      --  it to be re-initialized.
      CARD_RESET : RST_N_CARD_RESET_Field := 16#0#;
      --  Reserved
      RESERVED   : RST_N_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RST_N_Register use record
      CARD_RESET at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 31;
   end record;

   -------------------
   -- BMOD_Register --
   -------------------

   subtype BMOD_SWR_Field is Interfaces.Bit_Types.Bit;
   subtype BMOD_FB_Field is Interfaces.Bit_Types.Bit;
   subtype BMOD_DSL_Field is Interfaces.Bit_Types.UInt5;
   subtype BMOD_DE_Field is Interfaces.Bit_Types.Bit;
   subtype BMOD_RESERVED_Field is Interfaces.Bit_Types.UInt21;

   --  Bus Mode Register
   type BMOD_Register is record
      --  Software Reset. When set, the DMA Controller resets all its internal
      --  registers. SWR is read/write. It is automatically cleared after 1
      --  clock cycle.
      SWR      : BMOD_SWR_Field := 16#0#;
      --  Fixed Burst. Controls whether the AHB Master interface performs fixed
      --  burst transfers or not. When set, the AHB will use only SINGLE,
      --  INCR4, INCR8 or INCR16 during start of normal burst transfers. When
      --  reset, the AHB will use SINGLE and INCR burst transfer operations. FB
      --  is read/write.
      FB       : BMOD_FB_Field := 16#0#;
      --  Descriptor Skip Length. Specifies the number of HWord/Word/Dword to
      --  skip between two unchained descriptors. This is applicable only for
      --  dual buffer structure. DSL is read/write.
      DSL      : BMOD_DSL_Field := 16#0#;
      --  SD/MMC DMA Enable. When set, the SD/MMC DMA is enabled. DE is
      --  read/write.
      DE       : BMOD_DE_Field := 16#0#;
      --  Programmable Burst Length. These bits indicate the maximum number of
      --  beats to be performed in one SD/MMC DMA transaction. The SD/MMC DMA
      --  will always attempt to burst as specified in PBL each time it starts
      --  a Burst transfer on the host bus. The permissible values are 1, 4, 8,
      --  16, 32, 64, 128 and 256. This value is the mirror of MSIZE of FIFOTH
      --  register. In order to change this value, write the required value to
      --  FIFOTH register. This is an encode value as follows.Transfer unit is
      --  32 bit. PBL is a read-only value.
      PBL      : ENUM_21 := Interfaces.LPC43xxC.SDMMC.ENUM_1_Transfer;
      --  Reserved
      RESERVED : BMOD_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BMOD_Register use record
      SWR      at 0 range 0 .. 0;
      FB       at 0 range 1 .. 1;
      DSL      at 0 range 2 .. 6;
      DE       at 0 range 7 .. 7;
      PBL      at 0 range 8 .. 10;
      RESERVED at 0 range 11 .. 31;
   end record;

   --------------------
   -- IDSTS_Register --
   --------------------

   subtype IDSTS_TI_Field is Interfaces.Bit_Types.Bit;
   subtype IDSTS_RI_Field is Interfaces.Bit_Types.Bit;
   subtype IDSTS_FBE_Field is Interfaces.Bit_Types.Bit;
   subtype IDSTS_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype IDSTS_DU_Field is Interfaces.Bit_Types.Bit;
   subtype IDSTS_CES_Field is Interfaces.Bit_Types.Bit;
   subtype IDSTS_RESERVED_Field_1 is Interfaces.Bit_Types.UInt2;
   subtype IDSTS_NIS_Field is Interfaces.Bit_Types.Bit;
   subtype IDSTS_AIS_Field is Interfaces.Bit_Types.Bit;
   subtype IDSTS_EB_Field is Interfaces.Bit_Types.UInt3;
   subtype IDSTS_FSM_Field is Interfaces.Bit_Types.UInt4;
   subtype IDSTS_RESERVED_Field_2 is Interfaces.Bit_Types.UInt15;

   --  Internal DMAC Status Register
   type IDSTS_Register is record
      --  Transmit Interrupt. Indicates that data transmission is finished for
      --  a descriptor. Writing a 1 clears this bit.
      TI         : IDSTS_TI_Field := 16#0#;
      --  Receive Interrupt. Indicates the completion of data reception for a
      --  descriptor. Writing a 1 clears this bit.
      RI         : IDSTS_RI_Field := 16#0#;
      --  Fatal Bus Error Interrupt. Indicates that a Bus Error occurred
      --  (IDSTS[12:10]). When this bit is set, the DMA disables all its bus
      --  accesses. Writing a 1 clears this bit.
      FBE        : IDSTS_FBE_Field := 16#0#;
      --  Reserved
      RESERVED   : IDSTS_RESERVED_Field := 16#0#;
      --  Descriptor Unavailable Interrupt. This bit is set when the descriptor
      --  is unavailable due to OWN bit = 0 (DES0[31] =0). Writing a 1 clears
      --  this bit.
      DU         : IDSTS_DU_Field := 16#0#;
      --  Card Error Summary. Indicates the status of the transaction to/from
      --  the card; also present in RINTSTS. Indicates the logical OR of the
      --  following bits: EBE - End Bit Error RTO - Response Time-out/Boot Ack
      --  Time-out RCRC - Response CRC SBE - Start Bit Error DRTO - Data Read
      --  Time-out/BDS time-out DCRC - Data CRC for Receive RE - Response Error
      --  Writing a 1 clears this bit.
      CES        : IDSTS_CES_Field := 16#0#;
      --  Reserved
      RESERVED_1 : IDSTS_RESERVED_Field_1 := 16#0#;
      --  Normal Interrupt Summary. Logical OR of the following: IDSTS[0] -
      --  Transmit Interrupt IDSTS[1] - Receive Interrupt Only unmasked bits
      --  affect this bit. This is a sticky bit and must be cleared each time a
      --  corresponding bit that causes NIS to be set is cleared. Writing a 1
      --  clears this bit.
      NIS        : IDSTS_NIS_Field := 16#0#;
      --  Abnormal Interrupt Summary. Logical OR of the following: IDSTS[2] -
      --  Fatal Bus Interrupt IDSTS[4] - DU bit Interrupt IDSTS[5] - Card Error
      --  Summary Interrupt Only unmasked bits affect this bit. This is a
      --  sticky bit and must be cleared each time a corresponding bit that
      --  causes AIS to be set is cleared. Writing a 1 clears this bit.
      AIS        : IDSTS_AIS_Field := 16#0#;
      --  Error Bits. Indicates the type of error that caused a Bus Error.
      --  Valid only with Fatal Bus Error bit (IDSTS[2]) set. This field does
      --  not generate an interrupt. 001 - Host Abort received during
      --  transmission 010 - Host Abort received during reception Others:
      --  Reserved EB is read-only.
      EB         : IDSTS_EB_Field := 16#0#;
      --  DMAC state machine present state. 0 - DMA_IDLE 1 - DMA_SUSPEND 2 -
      --  DESC_RD 3 - DESC_CHK 4 - DMA_RD_REQ_WAIT 5 - DMA_WR_REQ_WAIT 6 -
      --  DMA_RD 7 - DMA_WR 8 - DESC_CLOSE This bit is read-only.
      FSM        : IDSTS_FSM_Field := 16#0#;
      --  Reserved
      RESERVED_2 : IDSTS_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDSTS_Register use record
      TI         at 0 range 0 .. 0;
      RI         at 0 range 1 .. 1;
      FBE        at 0 range 2 .. 2;
      RESERVED   at 0 range 3 .. 3;
      DU         at 0 range 4 .. 4;
      CES        at 0 range 5 .. 5;
      RESERVED_1 at 0 range 6 .. 7;
      NIS        at 0 range 8 .. 8;
      AIS        at 0 range 9 .. 9;
      EB         at 0 range 10 .. 12;
      FSM        at 0 range 13 .. 16;
      RESERVED_2 at 0 range 17 .. 31;
   end record;

   ----------------------
   -- IDINTEN_Register --
   ----------------------

   subtype IDINTEN_TI_Field is Interfaces.Bit_Types.Bit;
   subtype IDINTEN_RI_Field is Interfaces.Bit_Types.Bit;
   subtype IDINTEN_FBE_Field is Interfaces.Bit_Types.Bit;
   subtype IDINTEN_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype IDINTEN_DU_Field is Interfaces.Bit_Types.Bit;
   subtype IDINTEN_CES_Field is Interfaces.Bit_Types.Bit;
   subtype IDINTEN_RESERVED_Field_1 is Interfaces.Bit_Types.UInt2;
   subtype IDINTEN_NIS_Field is Interfaces.Bit_Types.Bit;
   subtype IDINTEN_AIS_Field is Interfaces.Bit_Types.Bit;
   subtype IDINTEN_RESERVED_Field_2 is Interfaces.Bit_Types.UInt22;

   --  Internal DMAC Interrupt Enable Register
   type IDINTEN_Register is record
      --  Transmit Interrupt Enable. When set with Normal Interrupt Summary
      --  Enable, Transmit Interrupt is enabled. When reset, Transmit Interrupt
      --  is disabled.
      TI         : IDINTEN_TI_Field := 16#0#;
      --  Receive Interrupt Enable. When set with Normal Interrupt Summary
      --  Enable, Receive Interrupt is enabled. When reset, Receive Interrupt
      --  is disabled.
      RI         : IDINTEN_RI_Field := 16#0#;
      --  Fatal Bus Error Enable. When set with Abnormal Interrupt Summary
      --  Enable, the Fatal Bus Error Interrupt is enabled. When reset, Fatal
      --  Bus Error Enable Interrupt is disabled.
      FBE        : IDINTEN_FBE_Field := 16#0#;
      --  Reserved
      RESERVED   : IDINTEN_RESERVED_Field := 16#0#;
      --  Descriptor Unavailable Interrupt. When set along with Abnormal
      --  Interrupt Summary Enable, the DU interrupt is enabled.
      DU         : IDINTEN_DU_Field := 16#0#;
      --  Card Error summary Interrupt Enable. When set, it enables the Card
      --  Interrupt summary.
      CES        : IDINTEN_CES_Field := 16#0#;
      --  Reserved
      RESERVED_1 : IDINTEN_RESERVED_Field_1 := 16#0#;
      --  Normal Interrupt Summary Enable. When set, a normal interrupt is
      --  enabled. When reset, a normal interrupt is disabled. This bit enables
      --  the following bits: IDINTEN[0] - Transmit Interrupt IDINTEN[1] -
      --  Receive Interrupt
      NIS        : IDINTEN_NIS_Field := 16#0#;
      --  Abnormal Interrupt Summary Enable. When set, an abnormal interrupt is
      --  enabled. This bit enables the following bits: IDINTEN[2] - Fatal Bus
      --  Error Interrupt IDINTEN[4] - DU Interrupt IDINTEN[5] - Card Error
      --  Summary Interrupt
      AIS        : IDINTEN_AIS_Field := 16#0#;
      --  Reserved
      RESERVED_2 : IDINTEN_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDINTEN_Register use record
      TI         at 0 range 0 .. 0;
      RI         at 0 range 1 .. 1;
      FBE        at 0 range 2 .. 2;
      RESERVED   at 0 range 3 .. 3;
      DU         at 0 range 4 .. 4;
      CES        at 0 range 5 .. 5;
      RESERVED_1 at 0 range 6 .. 7;
      NIS        at 0 range 8 .. 8;
      AIS        at 0 range 9 .. 9;
      RESERVED_2 at 0 range 10 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SD/MMC
   type SDMMC_Peripheral is record
      --  Control Register
      CTRL    : CTRL_Register;
      --  Power Enable Register
      PWREN   : PWREN_Register;
      --  Clock Divider Register
      CLKDIV  : CLKDIV_Register;
      --  SD Clock Source Register
      CLKSRC  : CLKSRC_Register;
      --  Clock Enable Register
      CLKENA  : CLKENA_Register;
      --  Time-out Register
      TMOUT   : TMOUT_Register;
      --  Card Type Register
      CTYPE   : CTYPE_Register;
      --  Block Size Register
      BLKSIZ  : BLKSIZ_Register;
      --  Byte Count Register
      BYTCNT  : Interfaces.Bit_Types.Word;
      --  Interrupt Mask Register
      INTMASK : INTMASK_Register;
      --  Command Argument Register
      CMDARG  : Interfaces.Bit_Types.Word;
      --  Command Register
      CMD     : CMD_Register;
      --  Response Register 0
      RESP0   : Interfaces.Bit_Types.Word;
      --  Response Register 1
      RESP1   : Interfaces.Bit_Types.Word;
      --  Response Register 2
      RESP2   : Interfaces.Bit_Types.Word;
      --  Response Register 3
      RESP3   : Interfaces.Bit_Types.Word;
      --  Masked Interrupt Status Register
      MINTSTS : MINTSTS_Register;
      --  Raw Interrupt Status Register
      RINTSTS : RINTSTS_Register;
      --  Status Register
      STATUS  : STATUS_Register;
      --  FIFO Threshold Watermark Register
      FIFOTH  : FIFOTH_Register;
      --  Card Detect Register
      CDETECT : CDETECT_Register;
      --  Write Protect Register
      WRTPRT  : WRTPRT_Register;
      --  Transferred CIU Card Byte Count Register
      TCBCNT  : Interfaces.Bit_Types.Word;
      --  Transferred Host to BIU-FIFO Byte Count Register
      TBBCNT  : Interfaces.Bit_Types.Word;
      --  Debounce Count Register
      DEBNCE  : DEBNCE_Register;
      --  Hardware Reset
      RST_N   : RST_N_Register;
      --  Bus Mode Register
      BMOD    : BMOD_Register;
      --  Poll Demand Register
      PLDMND  : Interfaces.Bit_Types.Word;
      --  Descriptor List Base Address Register
      DBADDR  : Interfaces.Bit_Types.Word;
      --  Internal DMAC Status Register
      IDSTS   : IDSTS_Register;
      --  Internal DMAC Interrupt Enable Register
      IDINTEN : IDINTEN_Register;
      --  Current Host Descriptor Address Register
      DSCADDR : Interfaces.Bit_Types.Word;
      --  Current Buffer Descriptor Address Register
      BUFADDR : Interfaces.Bit_Types.Word;
   end record
     with Volatile;

   for SDMMC_Peripheral use record
      CTRL    at 0 range 0 .. 31;
      PWREN   at 4 range 0 .. 31;
      CLKDIV  at 8 range 0 .. 31;
      CLKSRC  at 12 range 0 .. 31;
      CLKENA  at 16 range 0 .. 31;
      TMOUT   at 20 range 0 .. 31;
      CTYPE   at 24 range 0 .. 31;
      BLKSIZ  at 28 range 0 .. 31;
      BYTCNT  at 32 range 0 .. 31;
      INTMASK at 36 range 0 .. 31;
      CMDARG  at 40 range 0 .. 31;
      CMD     at 44 range 0 .. 31;
      RESP0   at 48 range 0 .. 31;
      RESP1   at 52 range 0 .. 31;
      RESP2   at 56 range 0 .. 31;
      RESP3   at 60 range 0 .. 31;
      MINTSTS at 64 range 0 .. 31;
      RINTSTS at 68 range 0 .. 31;
      STATUS  at 72 range 0 .. 31;
      FIFOTH  at 76 range 0 .. 31;
      CDETECT at 80 range 0 .. 31;
      WRTPRT  at 84 range 0 .. 31;
      TCBCNT  at 92 range 0 .. 31;
      TBBCNT  at 96 range 0 .. 31;
      DEBNCE  at 100 range 0 .. 31;
      RST_N   at 120 range 0 .. 31;
      BMOD    at 128 range 0 .. 31;
      PLDMND  at 132 range 0 .. 31;
      DBADDR  at 136 range 0 .. 31;
      IDSTS   at 140 range 0 .. 31;
      IDINTEN at 144 range 0 .. 31;
      DSCADDR at 148 range 0 .. 31;
      BUFADDR at 152 range 0 .. 31;
   end record;

   --  SD/MMC
   SDMMC_Periph : aliased SDMMC_Peripheral
     with Import, Address => SDMMC_Base;

end Interfaces.LPC43xxC.SDMMC;
