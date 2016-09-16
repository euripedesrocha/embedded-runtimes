--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43xxC.I2S is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ------------------
   -- DAO_Register --
   ------------------

   --  Selects the number of bytes in data as follows:
   type ENUM is
     (
      --  8-bit data
      ENUM_8_Bit_Data,
      --  16-bit data
      ENUM_16_Bit_Data,
      --  Reserved, do not use this setting
      Reserved,
      --  32-bit data
      ENUM_32_Bit_Data)
     with Size => 2;
   for ENUM use
     (ENUM_8_Bit_Data => 0,
      ENUM_16_Bit_Data => 1,
      Reserved => 2,
      ENUM_32_Bit_Data => 3);

   subtype DAO_MONO_Field is Interfaces.Bit_Types.Bit;
   subtype DAO_STOP_Field is Interfaces.Bit_Types.Bit;
   subtype DAO_RESET_Field is Interfaces.Bit_Types.Bit;
   subtype DAO_WS_SEL_Field is Interfaces.Bit_Types.Bit;
   subtype DAO_WS_HALFPERIOD_Field is Interfaces.Bit_Types.UInt9;
   subtype DAO_MUTE_Field is Interfaces.Bit_Types.Bit;
   subtype DAO_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  I2S Digital Audio Output Register. Contains control bits for the I2S
   --  transmit channel.
   type DAO_Register is record
      --  Selects the number of bytes in data as follows:
      WORDWIDTH     : ENUM := Interfaces.LPC43xxC.I2S.ENUM_16_Bit_Data;
      --  When 1, data is of monaural format. When 0, the data is in stereo
      --  format.
      MONO          : DAO_MONO_Field := 16#0#;
      --  When 1, disables accesses on FIFOs, places the transmit channel in
      --  mute mode.
      STOP          : DAO_STOP_Field := 16#0#;
      --  When 1, asynchronously resets the transmit channel and FIFO.
      RESET         : DAO_RESET_Field := 16#0#;
      --  When 0, the interface is in master mode. When 1, the interface is in
      --  slave mode. See Section 34.7.2 for a summary of useful combinations
      --  for this bit with TXMODE.
      WS_SEL        : DAO_WS_SEL_Field := 16#1#;
      --  Word select half period minus 1, i.e. WS 64clk period ->
      --  ws_halfperiod = 31.
      WS_HALFPERIOD : DAO_WS_HALFPERIOD_Field := 16#1F#;
      --  When 1, the transmit channel sends only zeroes.
      MUTE          : DAO_MUTE_Field := 16#1#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED      : DAO_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAO_Register use record
      WORDWIDTH     at 0 range 0 .. 1;
      MONO          at 0 range 2 .. 2;
      STOP          at 0 range 3 .. 3;
      RESET         at 0 range 4 .. 4;
      WS_SEL        at 0 range 5 .. 5;
      WS_HALFPERIOD at 0 range 6 .. 14;
      MUTE          at 0 range 15 .. 15;
      RESERVED      at 0 range 16 .. 31;
   end record;

   ------------------
   -- DAI_Register --
   ------------------

   subtype DAI_MONO_Field is Interfaces.Bit_Types.Bit;
   subtype DAI_STOP_Field is Interfaces.Bit_Types.Bit;
   subtype DAI_RESET_Field is Interfaces.Bit_Types.Bit;
   subtype DAI_WS_SEL_Field is Interfaces.Bit_Types.Bit;
   subtype DAI_WS_HALFPERIOD_Field is Interfaces.Bit_Types.UInt9;
   subtype DAI_RESERVED_Field is Interfaces.Bit_Types.UInt17;

   --  I2S Digital Audio Input Register. Contains control bits for the I2S
   --  receive channel.
   type DAI_Register is record
      --  Selects the number of bytes in data as follows:
      WORDWIDTH     : ENUM := Interfaces.LPC43xxC.I2S.ENUM_16_Bit_Data;
      --  When 1, data is of monaural format. When 0, the data is in stereo
      --  format.
      MONO          : DAI_MONO_Field := 16#0#;
      --  When 1, disables accesses on FIFOs, places the transmit channel in
      --  mute mode.
      STOP          : DAI_STOP_Field := 16#0#;
      --  When 1, asynchronously reset the transmit channel and FIFO.
      RESET         : DAI_RESET_Field := 16#0#;
      --  When 0, the interface is in master mode. When 1, the interface is in
      --  slave mode. See Section 34.7.2 for a summary of useful combinations
      --  for this bit with RXMODE.
      WS_SEL        : DAI_WS_SEL_Field := 16#1#;
      --  Word select half period minus 1, i.e. WS 64clk period ->
      --  ws_halfperiod = 31.
      WS_HALFPERIOD : DAI_WS_HALFPERIOD_Field := 16#1F#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED      : DAI_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAI_Register use record
      WORDWIDTH     at 0 range 0 .. 1;
      MONO          at 0 range 2 .. 2;
      STOP          at 0 range 3 .. 3;
      RESET         at 0 range 4 .. 4;
      WS_SEL        at 0 range 5 .. 5;
      WS_HALFPERIOD at 0 range 6 .. 14;
      RESERVED      at 0 range 15 .. 31;
   end record;

   --------------------
   -- STATE_Register --
   --------------------

   subtype STATE_IRQ_Field is Interfaces.Bit_Types.Bit;

   ------------------
   -- STATE.DMAREQ --
   ------------------

   --  STATE_DMAREQ array element
   subtype STATE_DMAREQ_Element is Interfaces.Bit_Types.Bit;

   --  STATE_DMAREQ array
   type STATE_DMAREQ_Field_Array is array (1 .. 2) of STATE_DMAREQ_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for STATE_DMAREQ
   type STATE_DMAREQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DMAREQ as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  DMAREQ as an array
            Arr : STATE_DMAREQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for STATE_DMAREQ_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype STATE_RESERVED_Field is Interfaces.Bit_Types.UInt5;
   subtype STATE_RX_LEVEL_Field is Interfaces.Bit_Types.UInt4;
   subtype STATE_RESERVED_Field_1 is Interfaces.Bit_Types.UInt4;
   subtype STATE_TX_LEVEL_Field is Interfaces.Bit_Types.UInt4;
   subtype STATE_RESERVED_Field_2 is Interfaces.Bit_Types.UInt12;

   --  I2S Status Feedback Register. Contains status information about the I2S
   --  interface.
   type STATE_Register is record
      --  Read-only. This bit reflects the presence of Receive Interrupt or
      --  Transmit Interrupt. This is determined by comparing the current FIFO
      --  levels to the rx_depth_irq and tx_depth_irq fields in the IRQ
      --  register.
      IRQ        : STATE_IRQ_Field;
      --  Read-only. This bit reflects the presence of Receive or Transmit DMA
      --  Request 1. This is determined by comparing the current FIFO levels to
      --  the rx_depth_dma1 and tx_depth_dma1 fields in the DMA1 register.
      DMAREQ     : STATE_DMAREQ_Field;
      --  Read-only. Reserved.
      RESERVED   : STATE_RESERVED_Field;
      --  Read-only. Reflects the current level of the Receive FIFO.
      RX_LEVEL   : STATE_RX_LEVEL_Field;
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED_1 : STATE_RESERVED_Field_1;
      --  Read-only. Reflects the current level of the Transmit FIFO.
      TX_LEVEL   : STATE_TX_LEVEL_Field;
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED_2 : STATE_RESERVED_Field_2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATE_Register use record
      IRQ        at 0 range 0 .. 0;
      DMAREQ     at 0 range 1 .. 2;
      RESERVED   at 0 range 3 .. 7;
      RX_LEVEL   at 0 range 8 .. 11;
      RESERVED_1 at 0 range 12 .. 15;
      TX_LEVEL   at 0 range 16 .. 19;
      RESERVED_2 at 0 range 20 .. 31;
   end record;

   -------------------
   -- DMA1_Register --
   -------------------

   subtype DMA1_RX_DMA1_ENABLE_Field is Interfaces.Bit_Types.Bit;
   subtype DMA1_TX_DMA1_ENABLE_Field is Interfaces.Bit_Types.Bit;
   subtype DMA1_RESERVED_Field is Interfaces.Bit_Types.UInt6;
   subtype DMA1_RX_DEPTH_DMA1_Field is Interfaces.Bit_Types.UInt4;
   subtype DMA1_RESERVED_Field_1 is Interfaces.Bit_Types.UInt4;
   subtype DMA1_TX_DEPTH_DMA1_Field is Interfaces.Bit_Types.UInt4;
   subtype DMA1_RESERVED_Field_2 is Interfaces.Bit_Types.UInt12;

   --  I2S DMA Configuration Register 1. Contains control information for DMA
   --  request 1.
   type DMA1_Register is record
      --  When 1, enables DMA1 for I2S receive.
      RX_DMA1_ENABLE : DMA1_RX_DMA1_ENABLE_Field := 16#0#;
      --  When 1, enables DMA1 for I2S transmit.
      TX_DMA1_ENABLE : DMA1_TX_DMA1_ENABLE_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED       : DMA1_RESERVED_Field := 16#0#;
      --  Set the FIFO level that triggers a receive DMA request on DMA1.
      RX_DEPTH_DMA1  : DMA1_RX_DEPTH_DMA1_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1     : DMA1_RESERVED_Field_1 := 16#0#;
      --  Set the FIFO level that triggers a transmit DMA request on DMA1.
      TX_DEPTH_DMA1  : DMA1_TX_DEPTH_DMA1_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_2     : DMA1_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA1_Register use record
      RX_DMA1_ENABLE at 0 range 0 .. 0;
      TX_DMA1_ENABLE at 0 range 1 .. 1;
      RESERVED       at 0 range 2 .. 7;
      RX_DEPTH_DMA1  at 0 range 8 .. 11;
      RESERVED_1     at 0 range 12 .. 15;
      TX_DEPTH_DMA1  at 0 range 16 .. 19;
      RESERVED_2     at 0 range 20 .. 31;
   end record;

   -------------------
   -- DMA2_Register --
   -------------------

   subtype DMA2_RX_DMA2_ENABLE_Field is Interfaces.Bit_Types.Bit;
   subtype DMA2_TX_DMA2_ENABLE_Field is Interfaces.Bit_Types.Bit;
   subtype DMA2_RESERVED_Field is Interfaces.Bit_Types.UInt6;
   subtype DMA2_RX_DEPTH_DMA2_Field is Interfaces.Bit_Types.UInt4;
   subtype DMA2_RESERVED_Field_1 is Interfaces.Bit_Types.UInt4;
   subtype DMA2_TX_DEPTH_DMA2_Field is Interfaces.Bit_Types.UInt4;
   subtype DMA2_RESERVED_Field_2 is Interfaces.Bit_Types.UInt12;

   --  I2S DMA Configuration Register 2. Contains control information for DMA
   --  request 2.
   type DMA2_Register is record
      --  When 1, enables DMA1 for I2S receive.
      RX_DMA2_ENABLE : DMA2_RX_DMA2_ENABLE_Field := 16#0#;
      --  When 1, enables DMA1 for I2S transmit.
      TX_DMA2_ENABLE : DMA2_TX_DMA2_ENABLE_Field := 16#0#;
      --  Reserved.
      RESERVED       : DMA2_RESERVED_Field := 16#0#;
      --  Set the FIFO level that triggers a receive DMA request on DMA2.
      RX_DEPTH_DMA2  : DMA2_RX_DEPTH_DMA2_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1     : DMA2_RESERVED_Field_1 := 16#0#;
      --  Set the FIFO level that triggers a transmit DMA request on DMA2.
      TX_DEPTH_DMA2  : DMA2_TX_DEPTH_DMA2_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_2     : DMA2_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2_Register use record
      RX_DMA2_ENABLE at 0 range 0 .. 0;
      TX_DMA2_ENABLE at 0 range 1 .. 1;
      RESERVED       at 0 range 2 .. 7;
      RX_DEPTH_DMA2  at 0 range 8 .. 11;
      RESERVED_1     at 0 range 12 .. 15;
      TX_DEPTH_DMA2  at 0 range 16 .. 19;
      RESERVED_2     at 0 range 20 .. 31;
   end record;

   ------------------
   -- IRQ_Register --
   ------------------

   subtype IRQ_RX_IRQ_ENABLE_Field is Interfaces.Bit_Types.Bit;
   subtype IRQ_TX_IRQ_ENABLE_Field is Interfaces.Bit_Types.Bit;
   subtype IRQ_RESERVED_Field is Interfaces.Bit_Types.UInt6;
   subtype IRQ_RX_DEPTH_IRQ_Field is Interfaces.Bit_Types.UInt4;
   subtype IRQ_RESERVED_Field_1 is Interfaces.Bit_Types.UInt4;
   subtype IRQ_TX_DEPTH_IRQ_Field is Interfaces.Bit_Types.UInt4;
   subtype IRQ_RESERVED_Field_2 is Interfaces.Bit_Types.UInt12;

   --  I2S Interrupt Request Control Register. Contains bits that control how
   --  the I2S interrupt request is generated.
   type IRQ_Register is record
      --  When 1, enables I2S receive interrupt.
      RX_IRQ_ENABLE : IRQ_RX_IRQ_ENABLE_Field := 16#0#;
      --  When 1, enables I2S transmit interrupt.
      TX_IRQ_ENABLE : IRQ_TX_IRQ_ENABLE_Field := 16#0#;
      --  Reserved.
      RESERVED      : IRQ_RESERVED_Field := 16#0#;
      --  Set the FIFO level on which to create an irq request.
      RX_DEPTH_IRQ  : IRQ_RX_DEPTH_IRQ_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1    : IRQ_RESERVED_Field_1 := 16#0#;
      --  Set the FIFO level on which to create an irq request.
      TX_DEPTH_IRQ  : IRQ_TX_DEPTH_IRQ_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_2    : IRQ_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IRQ_Register use record
      RX_IRQ_ENABLE at 0 range 0 .. 0;
      TX_IRQ_ENABLE at 0 range 1 .. 1;
      RESERVED      at 0 range 2 .. 7;
      RX_DEPTH_IRQ  at 0 range 8 .. 11;
      RESERVED_1    at 0 range 12 .. 15;
      TX_DEPTH_IRQ  at 0 range 16 .. 19;
      RESERVED_2    at 0 range 20 .. 31;
   end record;

   ---------------------
   -- TXRATE_Register --
   ---------------------

   subtype TXRATE_Y_DIVIDER_Field is Interfaces.Bit_Types.Byte;
   subtype TXRATE_X_DIVIDER_Field is Interfaces.Bit_Types.Byte;
   subtype TXRATE_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  I2S Transmit MCLK divider. This register determines the I2S TX MCLK rate
   --  by specifying the value to divide PCLK by in order to produce MCLK.
   type TXRATE_Register is record
      --  I2S transmit MCLK rate denominator. This value is used to divide PCLK
      --  to produce the transmit MCLK. Eight bits of fractional divide
      --  supports a wide range of possibilities. A value of 0 stops the clock.
      Y_DIVIDER : TXRATE_Y_DIVIDER_Field := 16#0#;
      --  I2S transmit MCLK rate numerator. This value is used to multiply PCLK
      --  by to produce the transmit MCLK. A value of 0 stops the clock. Eight
      --  bits of fractional divide supports a wide range of possibilities.
      --  Note: the resulting ratio X/Y is divided by 2.
      X_DIVIDER : TXRATE_X_DIVIDER_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED  : TXRATE_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXRATE_Register use record
      Y_DIVIDER at 0 range 0 .. 7;
      X_DIVIDER at 0 range 8 .. 15;
      RESERVED  at 0 range 16 .. 31;
   end record;

   ---------------------
   -- RXRATE_Register --
   ---------------------

   subtype RXRATE_Y_DIVIDER_Field is Interfaces.Bit_Types.Byte;
   subtype RXRATE_X_DIVIDER_Field is Interfaces.Bit_Types.Byte;
   subtype RXRATE_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  I2S Receive MCLK divider. This register determines the I2S RX MCLK rate
   --  by specifying the value to divide PCLK by in order to produce MCLK.
   type RXRATE_Register is record
      --  I2S receive MCLK rate denominator. This value is used to divide PCLK
      --  to produce the receive MCLK. Eight bits of fractional divide supports
      --  a wide range of possibilities. A value of 0 stops the clock.
      Y_DIVIDER : RXRATE_Y_DIVIDER_Field := 16#0#;
      --  I2S receive MCLK rate numerator. This value is used to multiply PCLK
      --  by to produce the receive MCLK. A value of 0 stops the clock. Eight
      --  bits of fractional divide supports a wide range of possibilities.
      --  Note: the resulting ratio X/Y is divided by 2.
      X_DIVIDER : RXRATE_X_DIVIDER_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED  : RXRATE_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXRATE_Register use record
      Y_DIVIDER at 0 range 0 .. 7;
      X_DIVIDER at 0 range 8 .. 15;
      RESERVED  at 0 range 16 .. 31;
   end record;

   ------------------------
   -- TXBITRATE_Register --
   ------------------------

   subtype TXBITRATE_TX_BITRATE_Field is Interfaces.Bit_Types.UInt6;
   subtype TXBITRATE_RESERVED_Field is Interfaces.Bit_Types.UInt26;

   --  I2S Transmit bit rate divider. This register determines the I2S transmit
   --  bit rate by specifying the value to divide TX_MCLK by in order to
   --  produce the transmit bit clock.
   type TXBITRATE_Register is record
      --  I2S transmit bit rate. This value plus one is used to divide TX_MCLK
      --  to produce the transmit bit clock.
      TX_BITRATE : TXBITRATE_TX_BITRATE_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED   : TXBITRATE_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXBITRATE_Register use record
      TX_BITRATE at 0 range 0 .. 5;
      RESERVED   at 0 range 6 .. 31;
   end record;

   ------------------------
   -- RXBITRATE_Register --
   ------------------------

   subtype RXBITRATE_RX_BITRATE_Field is Interfaces.Bit_Types.UInt6;
   subtype RXBITRATE_RESERVED_Field is Interfaces.Bit_Types.UInt26;

   --  I2S Receive bit rate divider. This register determines the I2S receive
   --  bit rate by specifying the value to divide RX_MCLK by in order to
   --  produce the receive bit clock.
   type RXBITRATE_Register is record
      --  I2S receive bit rate. This value plus one is used to divide RX_MCLK
      --  to produce the receive bit clock.
      RX_BITRATE : RXBITRATE_RX_BITRATE_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED   : RXBITRATE_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXBITRATE_Register use record
      RX_BITRATE at 0 range 0 .. 5;
      RESERVED   at 0 range 6 .. 31;
   end record;

   ---------------------
   -- TXMODE_Register --
   ---------------------

   --  Clock source selection for the transmit bit clock divider.
   type ENUM_1 is
     (
      --  Select the TX fractional rate divider clock output as the source
      Select_The_Tx_Fracti,
      --  Reserved
      Reserved,
      --  Select the RX_MCLK signal as the TX_MCLK clock source
      Select_The_Rx_Mclk_S,
      --  Reserved
      Reserved_1)
     with Size => 2;
   for ENUM_1 use
     (Select_The_Tx_Fracti => 0,
      Reserved => 1,
      Select_The_Rx_Mclk_S => 2,
      Reserved_1 => 3);

   subtype TXMODE_TX4PIN_Field is Interfaces.Bit_Types.Bit;
   subtype TXMODE_TXMCENA_Field is Interfaces.Bit_Types.Bit;
   subtype TXMODE_RESERVED_Field is Interfaces.Bit_Types.UInt28;

   --  I2S Transmit mode control.
   type TXMODE_Register is record
      --  Clock source selection for the transmit bit clock divider.
      TXCLKSEL : ENUM_1 := Interfaces.LPC43xxC.I2S.Select_The_Tx_Fracti;
      --  Transmit 4-pin mode selection. When 1, enables 4-pin mode.
      TX4PIN   : TXMODE_TX4PIN_Field := 16#0#;
      --  Enable for the TX_MCLK output. When 0, output of TX_MCLK is not
      --  enabled. When 1, output of TX_MCLK is enabled.
      TXMCENA  : TXMODE_TXMCENA_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : TXMODE_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXMODE_Register use record
      TXCLKSEL at 0 range 0 .. 1;
      TX4PIN   at 0 range 2 .. 2;
      TXMCENA  at 0 range 3 .. 3;
      RESERVED at 0 range 4 .. 31;
   end record;

   ---------------------
   -- RXMODE_Register --
   ---------------------

   --  Clock source selection for the receive bit clock divider.
   type ENUM_2 is
     (
      --  Select the RX fractional rate divider clock output as the source
      Select_The_Rx_Fracti,
      --  Reserved
      Reserved,
      --  Select the TX_MCLK signal as the RX_MCLK clock source
      Select_The_Tx_Mclk_S,
      --  Reserved
      Reserved_1)
     with Size => 2;
   for ENUM_2 use
     (Select_The_Rx_Fracti => 0,
      Reserved => 1,
      Select_The_Tx_Mclk_S => 2,
      Reserved_1 => 3);

   subtype RXMODE_RX4PIN_Field is Interfaces.Bit_Types.Bit;
   subtype RXMODE_RXMCENA_Field is Interfaces.Bit_Types.Bit;
   subtype RXMODE_RESERVED_Field is Interfaces.Bit_Types.UInt28;

   --  I2S Receive mode control.
   type RXMODE_Register is record
      --  Clock source selection for the receive bit clock divider.
      RXCLKSEL : ENUM_2 := Interfaces.LPC43xxC.I2S.Select_The_Rx_Fracti;
      --  Receive 4-pin mode selection. When 1, enables 4-pin mode.
      RX4PIN   : RXMODE_RX4PIN_Field := 16#0#;
      --  Enable for the RX_MCLK output. When 0, output of RX_MCLK is not
      --  enabled. When 1, output of RX_MCLK is enabled.
      RXMCENA  : RXMODE_RXMCENA_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : RXMODE_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXMODE_Register use record
      RXCLKSEL at 0 range 0 .. 1;
      RX4PIN   at 0 range 2 .. 2;
      RXMCENA  at 0 range 3 .. 3;
      RESERVED at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  I2S interface
   type I2S_Peripheral is record
      --  I2S Digital Audio Output Register. Contains control bits for the I2S
      --  transmit channel.
      DAO       : DAO_Register;
      --  I2S Digital Audio Input Register. Contains control bits for the I2S
      --  receive channel.
      DAI       : DAI_Register;
      --  I2S Transmit FIFO. Access register for the 8 x 32-bit transmitter
      --  FIFO.
      TXFIFO    : Interfaces.Bit_Types.Word;
      --  I2S Receive FIFO. Access register for the 8 x 32-bit receiver FIFO.
      RXFIFO    : Interfaces.Bit_Types.Word;
      --  I2S Status Feedback Register. Contains status information about the
      --  I2S interface.
      STATE     : STATE_Register;
      --  I2S DMA Configuration Register 1. Contains control information for
      --  DMA request 1.
      DMA1      : DMA1_Register;
      --  I2S DMA Configuration Register 2. Contains control information for
      --  DMA request 2.
      DMA2      : DMA2_Register;
      --  I2S Interrupt Request Control Register. Contains bits that control
      --  how the I2S interrupt request is generated.
      IRQ       : IRQ_Register;
      --  I2S Transmit MCLK divider. This register determines the I2S TX MCLK
      --  rate by specifying the value to divide PCLK by in order to produce
      --  MCLK.
      TXRATE    : TXRATE_Register;
      --  I2S Receive MCLK divider. This register determines the I2S RX MCLK
      --  rate by specifying the value to divide PCLK by in order to produce
      --  MCLK.
      RXRATE    : RXRATE_Register;
      --  I2S Transmit bit rate divider. This register determines the I2S
      --  transmit bit rate by specifying the value to divide TX_MCLK by in
      --  order to produce the transmit bit clock.
      TXBITRATE : TXBITRATE_Register;
      --  I2S Receive bit rate divider. This register determines the I2S
      --  receive bit rate by specifying the value to divide RX_MCLK by in
      --  order to produce the receive bit clock.
      RXBITRATE : RXBITRATE_Register;
      --  I2S Transmit mode control.
      TXMODE    : TXMODE_Register;
      --  I2S Receive mode control.
      RXMODE    : RXMODE_Register;
   end record
     with Volatile;

   for I2S_Peripheral use record
      DAO       at 0 range 0 .. 31;
      DAI       at 4 range 0 .. 31;
      TXFIFO    at 8 range 0 .. 31;
      RXFIFO    at 12 range 0 .. 31;
      STATE     at 16 range 0 .. 31;
      DMA1      at 20 range 0 .. 31;
      DMA2      at 24 range 0 .. 31;
      IRQ       at 28 range 0 .. 31;
      TXRATE    at 32 range 0 .. 31;
      RXRATE    at 36 range 0 .. 31;
      TXBITRATE at 40 range 0 .. 31;
      RXBITRATE at 44 range 0 .. 31;
      TXMODE    at 48 range 0 .. 31;
      RXMODE    at 52 range 0 .. 31;
   end record;

   --  I2S interface
   I2S0_Periph : aliased I2S_Peripheral
     with Import, Address => I2S0_Base;

   --  I2S interface
   I2S1_Periph : aliased I2S_Peripheral
     with Import, Address => I2S1_Base;

end Interfaces.LPC43xxC.I2S;
