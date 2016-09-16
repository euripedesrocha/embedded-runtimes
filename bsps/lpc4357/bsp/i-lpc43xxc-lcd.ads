--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43xxC.LCD is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -------------------
   -- TIMH_Register --
   -------------------

   subtype TIMH_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype TIMH_PPL_Field is Interfaces.Bit_Types.UInt6;
   subtype TIMH_HSW_Field is Interfaces.Bit_Types.Byte;
   subtype TIMH_HFP_Field is Interfaces.Bit_Types.Byte;
   subtype TIMH_HBP_Field is Interfaces.Bit_Types.Byte;

   --  Horizontal Timing Control register
   type TIMH_Register is record
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : TIMH_RESERVED_Field := 16#0#;
      --  Pixels-per-line. The PPL bit field specifies the number of pixels in
      --  each line or row of the screen. PPL is a 6-bit value that represents
      --  between 16 and 1024 pixels per line. PPL counts the number of pixel
      --  clocks that occur before the HFP is applied. Program the value
      --  required divided by 16, minus 1. Actual pixels-per-line = 16 * (PPL +
      --  1). For example, to obtain 320 pixels per line, program PPL as
      --  (320/16) -1 = 19.
      PPL      : TIMH_PPL_Field := 16#0#;
      --  Horizontal synchronization pulse width. The 8-bit HSW field specifies
      --  the pulse width of the line clock in passive mode, or the horizontal
      --  synchronization pulse in active mode. Program with desired value
      --  minus 1.
      HSW      : TIMH_HSW_Field := 16#0#;
      --  Horizontal front porch. The 8-bit HFP field sets the number of pixel
      --  clock intervals at the end of each line or row of pixels, before the
      --  LCD line clock is pulsed. When a complete line of pixels is
      --  transmitted to the LCD driver, the value in HFP counts the number of
      --  pixel clocks to wait before asserting the line clock. HFP can
      --  generate a period of 1-256 pixel clock cycles. Program with desired
      --  value minus 1.
      HFP      : TIMH_HFP_Field := 16#0#;
      --  Horizontal back porch. The 8-bit HBP field is used to specify the
      --  number of pixel clock periods inserted at the beginning of each line
      --  or row of pixels. After the line clock for the previous line has been
      --  deasserted, the value in HBP counts the number of pixel clocks to
      --  wait before starting the next display line. HBP can generate a delay
      --  of 1-256 pixel clock cycles. Program with desired value minus 1.
      HBP      : TIMH_HBP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMH_Register use record
      RESERVED at 0 range 0 .. 1;
      PPL      at 0 range 2 .. 7;
      HSW      at 0 range 8 .. 15;
      HFP      at 0 range 16 .. 23;
      HBP      at 0 range 24 .. 31;
   end record;

   -------------------
   -- TIMV_Register --
   -------------------

   subtype TIMV_LPP_Field is Interfaces.Bit_Types.UInt10;
   subtype TIMV_VSW_Field is Interfaces.Bit_Types.UInt6;
   subtype TIMV_VFP_Field is Interfaces.Bit_Types.Byte;
   subtype TIMV_VBP_Field is Interfaces.Bit_Types.Byte;

   --  Vertical Timing Control register
   type TIMV_Register is record
      --  Lines per panel. This is the number of active lines per screen. The
      --  LPP field specifies the total number of lines or rows on the LCD
      --  panel being controlled. LPP is a 10 bit value allowing between 1 and
      --  1024 lines. Program the register with the number of lines per LCD
      --  panel, minus 1. For dual panel displays, program the register with
      --  the number of lines on each of the upper and lower panels.
      LPP : TIMV_LPP_Field := 16#0#;
      --  Vertical synchronization pulse width. This is the number of
      --  horizontal synchronization lines. The 6 bit VSW field specifies the
      --  pulse width of the vertical synchronization pulse. Program the
      --  register with the number of lines required, minus one. The number of
      --  horizontal synchronization lines must be small (for example, program
      --  to zero) for passive STN LCDs. The higher the value the worse the
      --  contrast on STN LCDs.
      VSW : TIMV_VSW_Field := 16#0#;
      --  Vertical front porch. This is the number of inactive lines at the end
      --  of a frame, before the vertical synchronization period. The 8 bit VFP
      --  field specifies the number of line clocks to insert at the end of
      --  each frame. When a complete frame of pixels is transmitted to the LCD
      --  display, the value in VFP is used to count the number of line clock
      --  periods to wait. After the count has elapsed, the vertical
      --  synchronization signal, LCDFP, is asserted in active mode, or extra
      --  line clocks are inserted as specified by the VSW bit field in passive
      --  mode. VFP generates 0-255 line clock cycles. Program to zero on
      --  passive displays for improved contrast.
      VFP : TIMV_VFP_Field := 16#0#;
      --  Vertical back porch. This is the number of inactive lines at the
      --  start of a frame, after the vertical synchronization period. The 8
      --  bit VBP field specifies the number of line clocks inserted at the
      --  beginning of each frame. The VBP count starts immediately after the
      --  vertical synchronization signal for the previous frame has been
      --  negated for active mode, or the extra line clocks have been inserted
      --  as specified by the VSW bit field in passive mode. After this has
      --  occurred, the count value in VBP sets the number of line clock
      --  periods inserted before the next frame. VBP generates 0-255 extra
      --  line clock cycles. Program to zero on passive displays for improved
      --  contrast.
      VBP : TIMV_VBP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMV_Register use record
      LPP at 0 range 0 .. 9;
      VSW at 0 range 10 .. 15;
      VFP at 0 range 16 .. 23;
      VBP at 0 range 24 .. 31;
   end record;

   ------------------
   -- POL_Register --
   ------------------

   subtype POL_PCD_LO_Field is Interfaces.Bit_Types.UInt5;
   subtype POL_CLKSEL_Field is Interfaces.Bit_Types.Bit;
   subtype POL_ACB_Field is Interfaces.Bit_Types.UInt5;
   subtype POL_IVS_Field is Interfaces.Bit_Types.Bit;
   subtype POL_IHS_Field is Interfaces.Bit_Types.Bit;
   subtype POL_IPC_Field is Interfaces.Bit_Types.Bit;
   subtype POL_IOE_Field is Interfaces.Bit_Types.Bit;
   subtype POL_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype POL_CPL_Field is Interfaces.Bit_Types.UInt10;
   subtype POL_BCD_Field is Interfaces.Bit_Types.Bit;
   subtype POL_PCD_HI_Field is Interfaces.Bit_Types.UInt5;

   --  Clock and Signal Polarity Control register
   type POL_Register is record
      --  Lower five bits of panel clock divisor. The ten-bit PCD field,
      --  comprising PCD_HI (bits 31:27 of this register) and PCD_LO, is used
      --  to derive the LCD panel clock frequency LCDDCLK from the input clock,
      --  LCDDCLK = LCDCLK/(PCD+2). For monochrome STN displays with a 4 or
      --  8-bit interface, the panel clock is a factor of four and eight down
      --  from the actual individual pixel clock rate. For color STN displays,
      --  22/3 pixels are output per LCDDCLK cycle, so the panel clock is 0.375
      --  times the pixel rate. For TFT displays, the pixel clock divider can
      --  be bypassed by setting the BCD bit in this register. Note: data path
      --  latency forces some restrictions on the usable minimum values for the
      --  panel clock divider in STN modes: Single panel color mode, PCD = 1
      --  (LCDDCLK = LCDCLK/3). Dual panel color mode, PCD = 4 (LCDDCLK =
      --  LCDCLK/6). Single panel monochrome 4-bit interface mode, PCD =
      --  2(LCDDCLK = LCDCLK/4). Dual panel monochrome 4-bit interface mode and
      --  single panel monochrome 8-bit interface mode, PCD = 6(LCDDCLK =
      --  LCDCLK/8). Dual panel monochrome 8-bit interface mode, PCD =
      --  14(LCDDCLK = LCDCLK/16).
      PCD_LO   : POL_PCD_LO_Field := 16#0#;
      --  Clock Select. This bit controls the selection of the source for
      --  LCDCLK. 0 = the clock source for the LCD block is CCLK. 1 = the clock
      --  source for the LCD block is LCDCLKIN (external clock input for the
      --  LVD).
      CLKSEL   : POL_CLKSEL_Field := 16#0#;
      --  AC bias pin frequency. The AC bias pin frequency is only applicable
      --  to STN displays. These require the pixel voltage polarity to
      --  periodically reverse to prevent damage caused by DC charge
      --  accumulation. Program this field with the required value minus one to
      --  apply the number of line clocks between each toggle of the AC bias
      --  pin, LCDENAB. This field has no effect if the LCD is operating in TFT
      --  mode, when the LCDENAB pin is used as a data enable signal.
      ACB      : POL_ACB_Field := 16#0#;
      --  Invert vertical synchronization. The IVS bit inverts the polarity of
      --  the LCDFP signal. 0 = LCDFP pin is active HIGH and inactive LOW. 1 =
      --  LCDFP pin is active LOW and inactive HIGH.
      IVS      : POL_IVS_Field := 16#0#;
      --  Invert horizontal synchronization. The IHS bit inverts the polarity
      --  of the LCDLP signal. 0 = LCDLP pin is active HIGH and inactive LOW. 1
      --  = LCDLP pin is active LOW and inactive HIGH.
      IHS      : POL_IHS_Field := 16#0#;
      --  Invert panel clock. The IPC bit selects the edge of the panel clock
      --  on which pixel data is driven out onto the LCD data lines. 0 = Data
      --  is driven on the LCD data lines on the rising edge of LCDDCLK. 1 =
      --  Data is driven on the LCD data lines on the falling edge of LCDDCLK.
      IPC      : POL_IPC_Field := 16#0#;
      --  Invert output enable. This bit selects the active polarity of the
      --  output enable signal in TFT mode. In this mode, the LCDENAB pin is
      --  used as an enable that indicates to the LCD panel when valid display
      --  data is available. In active display mode, data is driven onto the
      --  LCD data lines at the programmed edge of LCDDCLK when LCDENAB is in
      --  its active state. 0 = LCDENAB output pin is active HIGH in TFT mode.
      --  1 = LCDENAB output pin is active LOW in TFT mode.
      IOE      : POL_IOE_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : POL_RESERVED_Field := 16#0#;
      --  Clocks per line. This field specifies the number of actual LCDDCLK
      --  clocks to the LCD panel on each line. This is the number of PPL
      --  divided by either 1 (for TFT), 4 or 8 (for monochrome passive), 2 2/3
      --  (for color passive), minus one. This must be correctly programmed in
      --  addition to the PPL bit in the TIMH register for the LCD display to
      --  work correctly.
      CPL      : POL_CPL_Field := 16#0#;
      --  Bypass pixel clock divider. Setting this to 1 bypasses the pixel
      --  clock divider logic. This is mainly used for TFT displays.
      BCD      : POL_BCD_Field := 16#0#;
      --  Upper five bits of panel clock divisor. See description for PCD_LO,
      --  in bits [4:0] of this register.
      PCD_HI   : POL_PCD_HI_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for POL_Register use record
      PCD_LO   at 0 range 0 .. 4;
      CLKSEL   at 0 range 5 .. 5;
      ACB      at 0 range 6 .. 10;
      IVS      at 0 range 11 .. 11;
      IHS      at 0 range 12 .. 12;
      IPC      at 0 range 13 .. 13;
      IOE      at 0 range 14 .. 14;
      RESERVED at 0 range 15 .. 15;
      CPL      at 0 range 16 .. 25;
      BCD      at 0 range 26 .. 26;
      PCD_HI   at 0 range 27 .. 31;
   end record;

   -----------------
   -- LE_Register --
   -----------------

   subtype LE_LED_Field is Interfaces.Bit_Types.UInt7;
   subtype LE_RESERVED_Field is Interfaces.Bit_Types.UInt9;
   subtype LE_LEE_Field is Interfaces.Bit_Types.Bit;
   subtype LE_RESERVED_Field_1 is Interfaces.Bit_Types.UInt15;

   --  Line End Control register
   type LE_Register is record
      --  Line-end delay. Controls Line-end signal delay from the rising-edge
      --  of the last panel clock, LCDDCLK. Program with number of LCDCLK clock
      --  periods minus 1.
      LED        : LE_LED_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED   : LE_RESERVED_Field := 16#0#;
      --  LCD Line end enable. 0 = LCDLE disabled (held LOW). 1 = LCDLE signal
      --  active.
      LEE        : LE_LEE_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1 : LE_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LE_Register use record
      LED        at 0 range 0 .. 6;
      RESERVED   at 0 range 7 .. 15;
      LEE        at 0 range 16 .. 16;
      RESERVED_1 at 0 range 17 .. 31;
   end record;

   ---------------------
   -- UPBASE_Register --
   ---------------------

   subtype UPBASE_RESERVED_Field is Interfaces.Bit_Types.UInt3;
   subtype UPBASE_LCDUPBASE_Field is Interfaces.Bit_Types.UInt29;

   --  Upper Panel Frame Base Address register
   type UPBASE_Register is record
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED  : UPBASE_RESERVED_Field := 16#0#;
      --  LCD upper panel base address. This is the start address of the upper
      --  panel frame data in memory and is doubleword aligned.
      LCDUPBASE : UPBASE_LCDUPBASE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UPBASE_Register use record
      RESERVED  at 0 range 0 .. 2;
      LCDUPBASE at 0 range 3 .. 31;
   end record;

   ---------------------
   -- LPBASE_Register --
   ---------------------

   subtype LPBASE_RESERVED_Field is Interfaces.Bit_Types.UInt3;
   subtype LPBASE_LCDLPBASE_Field is Interfaces.Bit_Types.UInt29;

   --  Lower Panel Frame Base Address register
   type LPBASE_Register is record
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED  : LPBASE_RESERVED_Field := 16#0#;
      --  LCD lower panel base address. This is the start address of the lower
      --  panel frame data in memory and is doubleword aligned.
      LCDLPBASE : LPBASE_LCDLPBASE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPBASE_Register use record
      RESERVED  at 0 range 0 .. 2;
      LCDLPBASE at 0 range 3 .. 31;
   end record;

   -------------------
   -- CTRL_Register --
   -------------------

   subtype CTRL_LCDEN_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_LCDBPP_Field is Interfaces.Bit_Types.UInt3;
   subtype CTRL_LCDBW_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_LCDTFT_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_LCDMONO8_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_LCDDUAL_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_BGR_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_BEBO_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_BEPO_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_LCDPWR_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_LCDVCOMP_Field is Interfaces.Bit_Types.UInt2;
   subtype CTRL_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype CTRL_WATERMARK_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_RESERVED_Field_1 is Interfaces.Bit_Types.UInt15;

   --  LCD Control register
   type CTRL_Register is record
      --  LCD enable control bit. 0 = LCD disabled. Signals LCDLP, LCDDCLK,
      --  LCDFP, LCDENAB, and LCDLE are low. 1 = LCD enabled. Signals LCDLP,
      --  LCDDCLK, LCDFP, LCDENAB, and LCDLE are high. See LCD power-up and
      --  power-down sequence for details on LCD power sequencing.
      LCDEN      : CTRL_LCDEN_Field := 16#0#;
      --  LCD bits per pixel: Selects the number of bits per LCD pixel: 000 = 1
      --  bpp. 001 = 2 bpp. 010 = 4 bpp. 011 = 8 bpp. 100 = 16 bpp. 101 = 24
      --  bpp (TFT panel only). 110 = 16 bpp, 5:6:5 mode. 111 = 12 bpp, 4:4:4
      --  mode.
      LCDBPP     : CTRL_LCDBPP_Field := 16#0#;
      --  STN LCD monochrome/color selection. 0 = STN LCD is color. 1 = STN LCD
      --  is monochrome. This bit has no meaning in TFT mode.
      LCDBW      : CTRL_LCDBW_Field := 16#0#;
      --  LCD panel TFT type selection. 0 = LCD is an STN display. Use gray
      --  scaler. 1 = LCD is a TFT display. Do not use gray scaler.
      LCDTFT     : CTRL_LCDTFT_Field := 16#0#;
      --  Monochrome LCD interface width. This bit controls whether a
      --  monochrome STN LCD uses a 4 or 8-bit parallel interface. It has no
      --  meaning in other modes and must be programmed to zero. 0 = monochrome
      --  LCD uses a 4-bit interface. 1 = monochrome LCD uses a 8-bit
      --  interface.
      LCDMONO8   : CTRL_LCDMONO8_Field := 16#0#;
      --  Single or Dual LCD panel selection. STN LCD interface is: 0 =
      --  single-panel. 1 = dual-panel.
      LCDDUAL    : CTRL_LCDDUAL_Field := 16#0#;
      --  Color format selection. 0 = RGB: normal output. 1 = BGR: red and blue
      --  swapped.
      BGR        : CTRL_BGR_Field := 16#0#;
      --  Big-endian Byte Order. Controls byte ordering in memory: 0 =
      --  little-endian byte order. 1 = big-endian byte order.
      BEBO       : CTRL_BEBO_Field := 16#0#;
      --  Big-Endian Pixel Ordering. Controls pixel ordering within a byte: 0 =
      --  little-endian ordering within a byte. 1 = big-endian pixel ordering
      --  within a byte. The BEPO bit selects between little and big-endian
      --  pixel packing for 1, 2, and 4 bpp display modes, it has no effect on
      --  8 or 16 bpp pixel formats. See Pixel serializer for more information
      --  on the data format.
      BEPO       : CTRL_BEPO_Field := 16#0#;
      --  LCD power enable. 0 = power not gated through to LCD panel and
      --  LCDV[23:0] signals disabled, (held LOW). 1 = power gated through to
      --  LCD panel and LCDV[23:0] signals enabled, (active). See LCD power-up
      --  and power-down sequence for details on LCD power sequencing.
      LCDPWR     : CTRL_LCDPWR_Field := 16#0#;
      --  LCD Vertical Compare Interrupt. Generate VComp interrupt at: 00 =
      --  start of vertical synchronization. 01 = start of back porch. 10 =
      --  start of active video. 11 = start of front porch.
      LCDVCOMP   : CTRL_LCDVCOMP_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED   : CTRL_RESERVED_Field := 16#0#;
      --  LCD DMA FIFO watermark level. Controls when DMA requests are
      --  generated: 0 = An LCD DMA request is generated when either of the DMA
      --  FIFOs have four or more empty locations. 1 = An LCD DMA request is
      --  generated when either of the DMA FIFOs have eight or more empty
      --  locations.
      WATERMARK  : CTRL_WATERMARK_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1 : CTRL_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      LCDEN      at 0 range 0 .. 0;
      LCDBPP     at 0 range 1 .. 3;
      LCDBW      at 0 range 4 .. 4;
      LCDTFT     at 0 range 5 .. 5;
      LCDMONO8   at 0 range 6 .. 6;
      LCDDUAL    at 0 range 7 .. 7;
      BGR        at 0 range 8 .. 8;
      BEBO       at 0 range 9 .. 9;
      BEPO       at 0 range 10 .. 10;
      LCDPWR     at 0 range 11 .. 11;
      LCDVCOMP   at 0 range 12 .. 13;
      RESERVED   at 0 range 14 .. 15;
      WATERMARK  at 0 range 16 .. 16;
      RESERVED_1 at 0 range 17 .. 31;
   end record;

   ---------------------
   -- INTMSK_Register --
   ---------------------

   subtype INTMSK_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype INTMSK_FUFIM_Field is Interfaces.Bit_Types.Bit;
   subtype INTMSK_LNBUIM_Field is Interfaces.Bit_Types.Bit;
   subtype INTMSK_VCOMPIM_Field is Interfaces.Bit_Types.Bit;
   subtype INTMSK_BERIM_Field is Interfaces.Bit_Types.Bit;
   subtype INTMSK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt27;

   --  Interrupt Mask register
   type INTMSK_Register is record
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED   : INTMSK_RESERVED_Field := 16#0#;
      --  FIFO underflow interrupt enable. 0: The FIFO underflow interrupt is
      --  disabled. 1: Interrupt will be generated when the FIFO underflows.
      FUFIM      : INTMSK_FUFIM_Field := 16#0#;
      --  LCD next base address update interrupt enable. 0: The base address
      --  update interrupt is disabled. 1: Interrupt will be generated when the
      --  LCD base address registers have been updated from the next address
      --  registers.
      LNBUIM     : INTMSK_LNBUIM_Field := 16#0#;
      --  Vertical compare interrupt enable. 0: The vertical compare time
      --  interrupt is disabled. 1: Interrupt will be generated when the
      --  vertical compare time (as defined by LcdVComp field in the CTRL
      --  register) is reached.
      VCOMPIM    : INTMSK_VCOMPIM_Field := 16#0#;
      --  AHB master error interrupt enable. 0: The AHB Master error interrupt
      --  is disabled. 1: Interrupt will be generated when an AHB Master error
      --  occurs.
      BERIM      : INTMSK_BERIM_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1 : INTMSK_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTMSK_Register use record
      RESERVED   at 0 range 0 .. 0;
      FUFIM      at 0 range 1 .. 1;
      LNBUIM     at 0 range 2 .. 2;
      VCOMPIM    at 0 range 3 .. 3;
      BERIM      at 0 range 4 .. 4;
      RESERVED_1 at 0 range 5 .. 31;
   end record;

   ---------------------
   -- INTRAW_Register --
   ---------------------

   subtype INTRAW_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype INTRAW_FUFRIS_Field is Interfaces.Bit_Types.Bit;
   subtype INTRAW_LNBURIS_Field is Interfaces.Bit_Types.Bit;
   subtype INTRAW_VCOMPRIS_Field is Interfaces.Bit_Types.Bit;
   subtype INTRAW_BERRAW_Field is Interfaces.Bit_Types.Bit;
   subtype INTRAW_RESERVED_Field_1 is Interfaces.Bit_Types.UInt27;

   --  Raw Interrupt Status register
   type INTRAW_Register is record
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED   : INTRAW_RESERVED_Field;
      --  Read-only. FIFO underflow raw interrupt status. Set when either the
      --  upper or lower DMA FIFOs have been read accessed when empty causing
      --  an underflow condition to occur. Generates an interrupt if the FUFIM
      --  bit in the INTMSK register is set.
      FUFRIS     : INTRAW_FUFRIS_Field;
      --  Read-only. LCD next address base update raw interrupt status. Mode
      --  dependent. Set when the current base address registers have been
      --  successfully updated by the next address registers. Signifies that a
      --  new next address can be loaded if double buffering is in use.
      --  Generates an interrupt if the LNBUIM bit in the INTMSK register is
      --  set.
      LNBURIS    : INTRAW_LNBURIS_Field;
      --  Read-only. Vertical compare raw interrupt status. Set when one of the
      --  four vertical regions is reached, as selected by the LcdVComp bits in
      --  the CTRL register. Generates an interrupt if the VCompIM bit in the
      --  INTMSK register is set.
      VCOMPRIS   : INTRAW_VCOMPRIS_Field;
      --  Read-only. AHB master bus error raw interrupt status. Set when the
      --  AHB master interface receives a bus error response from a slave.
      --  Generates an interrupt if the BERIM bit in the INTMSK register is
      --  set.
      BERRAW     : INTRAW_BERRAW_Field;
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED_1 : INTRAW_RESERVED_Field_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTRAW_Register use record
      RESERVED   at 0 range 0 .. 0;
      FUFRIS     at 0 range 1 .. 1;
      LNBURIS    at 0 range 2 .. 2;
      VCOMPRIS   at 0 range 3 .. 3;
      BERRAW     at 0 range 4 .. 4;
      RESERVED_1 at 0 range 5 .. 31;
   end record;

   ----------------------
   -- INTSTAT_Register --
   ----------------------

   subtype INTSTAT_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype INTSTAT_FUFMIS_Field is Interfaces.Bit_Types.Bit;
   subtype INTSTAT_LNBUMIS_Field is Interfaces.Bit_Types.Bit;
   subtype INTSTAT_VCOMPMIS_Field is Interfaces.Bit_Types.Bit;
   subtype INTSTAT_BERMIS_Field is Interfaces.Bit_Types.Bit;
   subtype INTSTAT_RESERVED_Field_1 is Interfaces.Bit_Types.UInt27;

   --  Masked Interrupt Status register
   type INTSTAT_Register is record
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED   : INTSTAT_RESERVED_Field;
      --  Read-only. FIFO underflow masked interrupt status. Set when the both
      --  the FUFRIS bit in the INTRAW register and the FUFIM bit in the INTMSK
      --  register are set.
      FUFMIS     : INTSTAT_FUFMIS_Field;
      --  Read-only. LCD next address base update masked interrupt status. Set
      --  when the both the LNBURIS bit in the INTRAW register and the LNBUIM
      --  bit in the INTMSK register are set.
      LNBUMIS    : INTSTAT_LNBUMIS_Field;
      --  Read-only. Vertical compare masked interrupt status. Set when the
      --  both the VCompRIS bit in the INTRAW register and the VCompIM bit in
      --  the INTMSK register are set.
      VCOMPMIS   : INTSTAT_VCOMPMIS_Field;
      --  Read-only. AHB master bus error masked interrupt status. Set when the
      --  both the BERRAW bit in the INTRAW register and the BERIM bit in the
      --  INTMSK register are set.
      BERMIS     : INTSTAT_BERMIS_Field;
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED_1 : INTSTAT_RESERVED_Field_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSTAT_Register use record
      RESERVED   at 0 range 0 .. 0;
      FUFMIS     at 0 range 1 .. 1;
      LNBUMIS    at 0 range 2 .. 2;
      VCOMPMIS   at 0 range 3 .. 3;
      BERMIS     at 0 range 4 .. 4;
      RESERVED_1 at 0 range 5 .. 31;
   end record;

   ---------------------
   -- INTCLR_Register --
   ---------------------

   subtype INTCLR_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype INTCLR_FUFIC_Field is Interfaces.Bit_Types.Bit;
   subtype INTCLR_LNBUIC_Field is Interfaces.Bit_Types.Bit;
   subtype INTCLR_VCOMPIC_Field is Interfaces.Bit_Types.Bit;
   subtype INTCLR_BERIC_Field is Interfaces.Bit_Types.Bit;
   subtype INTCLR_RESERVED_Field_1 is Interfaces.Bit_Types.UInt27;

   --  Interrupt Clear register
   type INTCLR_Register is record
      --  Write-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED   : INTCLR_RESERVED_Field := 16#0#;
      --  Write-only. FIFO underflow interrupt clear. Writing a 1 to this bit
      --  clears the FIFO underflow interrupt.
      FUFIC      : INTCLR_FUFIC_Field := 16#0#;
      --  Write-only. LCD next address base update interrupt clear. Writing a 1
      --  to this bit clears the LCD next address base update interrupt.
      LNBUIC     : INTCLR_LNBUIC_Field := 16#0#;
      --  Write-only. Vertical compare interrupt clear. Writing a 1 to this bit
      --  clears the vertical compare interrupt.
      VCOMPIC    : INTCLR_VCOMPIC_Field := 16#0#;
      --  Write-only. AHB master error interrupt clear. Writing a 1 to this bit
      --  clears the AHB master error interrupt.
      BERIC      : INTCLR_BERIC_Field := 16#0#;
      --  Write-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED_1 : INTCLR_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTCLR_Register use record
      RESERVED   at 0 range 0 .. 0;
      FUFIC      at 0 range 1 .. 1;
      LNBUIC     at 0 range 2 .. 2;
      VCOMPIC    at 0 range 3 .. 3;
      BERIC      at 0 range 4 .. 4;
      RESERVED_1 at 0 range 5 .. 31;
   end record;

   ------------------
   -- PAL_Register --
   ------------------

   subtype PAL_R04_0_Field is Interfaces.Bit_Types.UInt5;
   subtype PAL_G04_0_Field is Interfaces.Bit_Types.UInt5;
   subtype PAL_B04_0_Field is Interfaces.Bit_Types.UInt5;
   subtype PAL_I0_Field is Interfaces.Bit_Types.Bit;
   subtype PAL_R14_0_Field is Interfaces.Bit_Types.UInt5;
   subtype PAL_G14_0_Field is Interfaces.Bit_Types.UInt5;
   subtype PAL_B14_0_Field is Interfaces.Bit_Types.UInt5;
   subtype PAL_I1_Field is Interfaces.Bit_Types.Bit;

   --  256x16-bit Color Palette registers
   type PAL_Register is record
      --  Red palette data. For STN displays, only the four MSBs, bits [4:1],
      --  are used. For monochrome displays only the red palette data is used.
      --  All of the palette registers have the same bit fields.
      R04_0 : PAL_R04_0_Field := 16#0#;
      --  Green palette data.
      G04_0 : PAL_G04_0_Field := 16#0#;
      --  Blue palette data.
      B04_0 : PAL_B04_0_Field := 16#0#;
      --  Intensity / unused bit. Can be used as the LSB of the R, G, and B
      --  inputs to a 6:6:6 TFT display, doubling the number of colors to 64K,
      --  where each color has two different intensities.
      I0    : PAL_I0_Field := 16#0#;
      --  Red palette data. For STN displays, only the four MSBs, bits [4:1],
      --  are used. For monochrome displays only the red palette data is used.
      --  All of the palette registers have the same bit fields.
      R14_0 : PAL_R14_0_Field := 16#0#;
      --  Green palette data.
      G14_0 : PAL_G14_0_Field := 16#0#;
      --  Blue palette data.
      B14_0 : PAL_B14_0_Field := 16#0#;
      --  Intensity / unused bit. Can be used as the LSB of the R, G, and B
      --  inputs to a 6:6:6 TFT display, doubling the number of colors to 64K,
      --  where each color has two different intensities.
      I1    : PAL_I1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PAL_Register use record
      R04_0 at 0 range 0 .. 4;
      G04_0 at 0 range 5 .. 9;
      B04_0 at 0 range 10 .. 14;
      I0    at 0 range 15 .. 15;
      R14_0 at 0 range 16 .. 20;
      G14_0 at 0 range 21 .. 25;
      B14_0 at 0 range 26 .. 30;
      I1    at 0 range 31 .. 31;
   end record;

   --  256x16-bit Color Palette registers
   type PAL_Registers is array (0 .. 255) of PAL_Register;

   --  Cursor Image registers

   --  Cursor Image registers
   type CRSR_IMG_Registers is array (0 .. 255) of Interfaces.Bit_Types.Word;

   ------------------------
   -- CRSR_CTRL_Register --
   ------------------------

   subtype CRSR_CTRL_CrsrOn_Field is Interfaces.Bit_Types.Bit;
   subtype CRSR_CTRL_RESERVED_Field is Interfaces.Bit_Types.UInt3;
   subtype CRSR_CTRL_CRSRNUM1_0_Field is Interfaces.Bit_Types.UInt2;
   subtype CRSR_CTRL_RESERVED_Field_1 is Interfaces.Bit_Types.UInt26;

   --  Cursor Control register
   type CRSR_CTRL_Register is record
      --  Cursor enable. 0 = Cursor is not displayed. 1 = Cursor is displayed.
      CrsrOn     : CRSR_CTRL_CrsrOn_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED   : CRSR_CTRL_RESERVED_Field := 16#0#;
      --  Cursor image number. If the selected cursor size is 6x64, this field
      --  has no effect. If the selected cursor size is 32x32: 00 = Cursor0. 01
      --  = Cursor1. 10 = Cursor2. 11 = Cursor3.
      CRSRNUM1_0 : CRSR_CTRL_CRSRNUM1_0_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1 : CRSR_CTRL_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRSR_CTRL_Register use record
      CrsrOn     at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 3;
      CRSRNUM1_0 at 0 range 4 .. 5;
      RESERVED_1 at 0 range 6 .. 31;
   end record;

   -----------------------
   -- CRSR_CFG_Register --
   -----------------------

   subtype CRSR_CFG_CrsrSize_Field is Interfaces.Bit_Types.Bit;
   subtype CRSR_CFG_FRAMESYNC_Field is Interfaces.Bit_Types.Bit;
   subtype CRSR_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt30;

   --  Cursor Configuration register
   type CRSR_CFG_Register is record
      --  Cursor size selection. 0 = 32x32 pixel cursor. Allows for 4 defined
      --  cursors. 1 = 64x64 pixel cursor.
      CrsrSize  : CRSR_CFG_CrsrSize_Field := 16#0#;
      --  Cursor frame synchronization type. 0 = Cursor coordinates are
      --  asynchronous. 1 = Cursor coordinates are synchronized to the frame
      --  synchronization pulse.
      FRAMESYNC : CRSR_CFG_FRAMESYNC_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED  : CRSR_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRSR_CFG_Register use record
      CrsrSize  at 0 range 0 .. 0;
      FRAMESYNC at 0 range 1 .. 1;
      RESERVED  at 0 range 2 .. 31;
   end record;

   -----------------------
   -- CRSR_PAL_Register --
   -----------------------

   subtype CRSR_PAL0_RED_Field is Interfaces.Bit_Types.Byte;
   subtype CRSR_PAL0_GREEN_Field is Interfaces.Bit_Types.Byte;
   subtype CRSR_PAL0_BLUE_Field is Interfaces.Bit_Types.Byte;
   subtype CRSR_PAL0_RESERVED_Field is Interfaces.Bit_Types.Byte;

   --  Cursor Palette register 0
   type CRSR_PAL_Register is record
      --  Red color component
      RED      : CRSR_PAL0_RED_Field := 16#0#;
      --  Green color component
      GREEN    : CRSR_PAL0_GREEN_Field := 16#0#;
      --  Blue color component.
      BLUE     : CRSR_PAL0_BLUE_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : CRSR_PAL0_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRSR_PAL_Register use record
      RED      at 0 range 0 .. 7;
      GREEN    at 0 range 8 .. 15;
      BLUE     at 0 range 16 .. 23;
      RESERVED at 0 range 24 .. 31;
   end record;

   ----------------------
   -- CRSR_XY_Register --
   ----------------------

   subtype CRSR_XY_CRSRX_Field is Interfaces.Bit_Types.UInt10;
   subtype CRSR_XY_RESERVED_Field is Interfaces.Bit_Types.UInt6;
   subtype CRSR_XY_CRSRY_Field is Interfaces.Bit_Types.UInt10;

   --  Cursor XY Position register
   type CRSR_XY_Register is record
      --  X ordinate of the cursor origin measured in pixels. When 0, the left
      --  edge of the cursor is at the left of the display.
      CRSRX      : CRSR_XY_CRSRX_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED   : CRSR_XY_RESERVED_Field := 16#0#;
      --  Y ordinate of the cursor origin measured in pixels. When 0, the top
      --  edge of the cursor is at the top of the display.
      CRSRY      : CRSR_XY_CRSRY_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1 : CRSR_XY_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRSR_XY_Register use record
      CRSRX      at 0 range 0 .. 9;
      RESERVED   at 0 range 10 .. 15;
      CRSRY      at 0 range 16 .. 25;
      RESERVED_1 at 0 range 26 .. 31;
   end record;

   ------------------------
   -- CRSR_CLIP_Register --
   ------------------------

   subtype CRSR_CLIP_CRSRCLIPX_Field is Interfaces.Bit_Types.UInt6;
   subtype CRSR_CLIP_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype CRSR_CLIP_CRSRCLIPY_Field is Interfaces.Bit_Types.UInt6;
   subtype CRSR_CLIP_RESERVED_Field_1 is Interfaces.Bit_Types.UInt18;

   --  Cursor Clip Position register
   type CRSR_CLIP_Register is record
      --  Cursor clip position for X direction. Distance from the left edge of
      --  the cursor image to the first displayed pixel in the cursor. When 0,
      --  the first pixel of the cursor line is displayed.
      CRSRCLIPX  : CRSR_CLIP_CRSRCLIPX_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED   : CRSR_CLIP_RESERVED_Field := 16#0#;
      --  Cursor clip position for Y direction. Distance from the top of the
      --  cursor image to the first displayed pixel in the cursor. When 0, the
      --  first displayed pixel is from the top line of the cursor image.
      CRSRCLIPY  : CRSR_CLIP_CRSRCLIPY_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1 : CRSR_CLIP_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRSR_CLIP_Register use record
      CRSRCLIPX  at 0 range 0 .. 5;
      RESERVED   at 0 range 6 .. 7;
      CRSRCLIPY  at 0 range 8 .. 13;
      RESERVED_1 at 0 range 14 .. 31;
   end record;

   --------------------------
   -- CRSR_INTMSK_Register --
   --------------------------

   subtype CRSR_INTMSK_CRSRIM_Field is Interfaces.Bit_Types.Bit;
   subtype CRSR_INTMSK_RESERVED_Field is Interfaces.Bit_Types.UInt31;

   --  Cursor Interrupt Mask register
   type CRSR_INTMSK_Register is record
      --  Cursor interrupt mask. When clear, the cursor never interrupts the
      --  processor. When set, the cursor interrupts the processor immediately
      --  after reading of the last word of cursor image.
      CRSRIM   : CRSR_INTMSK_CRSRIM_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : CRSR_INTMSK_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRSR_INTMSK_Register use record
      CRSRIM   at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 31;
   end record;

   --------------------------
   -- CRSR_INTCLR_Register --
   --------------------------

   subtype CRSR_INTCLR_CRSRIC_Field is Interfaces.Bit_Types.Bit;
   subtype CRSR_INTCLR_RESERVED_Field is Interfaces.Bit_Types.UInt31;

   --  Cursor Interrupt Clear register
   type CRSR_INTCLR_Register is record
      --  Write-only. Cursor interrupt clear. Writing a 0 to this bit has no
      --  effect. Writing a 1 to this bit causes the cursor interrupt status to
      --  be cleared.
      CRSRIC   : CRSR_INTCLR_CRSRIC_Field := 16#0#;
      --  Write-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED : CRSR_INTCLR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRSR_INTCLR_Register use record
      CRSRIC   at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 31;
   end record;

   --------------------------
   -- CRSR_INTRAW_Register --
   --------------------------

   subtype CRSR_INTRAW_CRSRRIS_Field is Interfaces.Bit_Types.Bit;
   subtype CRSR_INTRAW_RESERVED_Field is Interfaces.Bit_Types.UInt31;

   --  Cursor Raw Interrupt Status register
   type CRSR_INTRAW_Register is record
      --  Read-only. Cursor raw interrupt status. The cursor interrupt status
      --  is set immediately after the last data is read from the cursor image
      --  for the current frame. This bit is cleared by writing to the CrsrIC
      --  bit in the CRSR_INTCLR register.
      CRSRRIS  : CRSR_INTRAW_CRSRRIS_Field;
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED : CRSR_INTRAW_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRSR_INTRAW_Register use record
      CRSRRIS  at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 31;
   end record;

   ---------------------------
   -- CRSR_INTSTAT_Register --
   ---------------------------

   subtype CRSR_INTSTAT_CRSRMIS_Field is Interfaces.Bit_Types.Bit;
   subtype CRSR_INTSTAT_RESERVED_Field is Interfaces.Bit_Types.UInt31;

   --  Cursor Masked Interrupt Status register
   type CRSR_INTSTAT_Register is record
      --  Read-only. Cursor masked interrupt status. The cursor interrupt
      --  status is set immediately after the last data read from the cursor
      --  image for the current frame, providing that the corresponding bit in
      --  the CRSR_INTMSK register is set. The bit remains clear if the
      --  CRSR_INTMSK register is clear. This bit is cleared by writing to the
      --  CRSR_INTCLR register.
      CRSRMIS  : CRSR_INTSTAT_CRSRMIS_Field;
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED : CRSR_INTSTAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRSR_INTSTAT_Register use record
      CRSRMIS  at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LCD controller
   type LCD_Peripheral is record
      --  Horizontal Timing Control register
      TIMH         : TIMH_Register;
      --  Vertical Timing Control register
      TIMV         : TIMV_Register;
      --  Clock and Signal Polarity Control register
      POL          : POL_Register;
      --  Line End Control register
      LE           : LE_Register;
      --  Upper Panel Frame Base Address register
      UPBASE       : UPBASE_Register;
      --  Lower Panel Frame Base Address register
      LPBASE       : LPBASE_Register;
      --  LCD Control register
      CTRL         : CTRL_Register;
      --  Interrupt Mask register
      INTMSK       : INTMSK_Register;
      --  Raw Interrupt Status register
      INTRAW       : INTRAW_Register;
      --  Masked Interrupt Status register
      INTSTAT      : INTSTAT_Register;
      --  Interrupt Clear register
      INTCLR       : INTCLR_Register;
      --  Upper Panel Current Address Value register
      UPCURR       : Interfaces.Bit_Types.Word;
      --  Lower Panel Current Address Value register
      LPCURR       : Interfaces.Bit_Types.Word;
      --  256x16-bit Color Palette registers
      PAL          : PAL_Registers;
      --  Cursor Image registers
      CRSR_IMG     : CRSR_IMG_Registers;
      --  Cursor Control register
      CRSR_CTRL    : CRSR_CTRL_Register;
      --  Cursor Configuration register
      CRSR_CFG     : CRSR_CFG_Register;
      --  Cursor Palette register 0
      CRSR_PAL0    : CRSR_PAL_Register;
      --  Cursor Palette register 1
      CRSR_PAL1    : CRSR_PAL_Register;
      --  Cursor XY Position register
      CRSR_XY      : CRSR_XY_Register;
      --  Cursor Clip Position register
      CRSR_CLIP    : CRSR_CLIP_Register;
      --  Cursor Interrupt Mask register
      CRSR_INTMSK  : CRSR_INTMSK_Register;
      --  Cursor Interrupt Clear register
      CRSR_INTCLR  : CRSR_INTCLR_Register;
      --  Cursor Raw Interrupt Status register
      CRSR_INTRAW  : CRSR_INTRAW_Register;
      --  Cursor Masked Interrupt Status register
      CRSR_INTSTAT : CRSR_INTSTAT_Register;
   end record
     with Volatile;

   for LCD_Peripheral use record
      TIMH         at 0 range 0 .. 31;
      TIMV         at 4 range 0 .. 31;
      POL          at 8 range 0 .. 31;
      LE           at 12 range 0 .. 31;
      UPBASE       at 16 range 0 .. 31;
      LPBASE       at 20 range 0 .. 31;
      CTRL         at 24 range 0 .. 31;
      INTMSK       at 28 range 0 .. 31;
      INTRAW       at 32 range 0 .. 31;
      INTSTAT      at 36 range 0 .. 31;
      INTCLR       at 40 range 0 .. 31;
      UPCURR       at 44 range 0 .. 31;
      LPCURR       at 48 range 0 .. 31;
      PAL          at 512 range 0 .. 8191;
      CRSR_IMG     at 2048 range 0 .. 8191;
      CRSR_CTRL    at 3072 range 0 .. 31;
      CRSR_CFG     at 3076 range 0 .. 31;
      CRSR_PAL0    at 3080 range 0 .. 31;
      CRSR_PAL1    at 3084 range 0 .. 31;
      CRSR_XY      at 3088 range 0 .. 31;
      CRSR_CLIP    at 3092 range 0 .. 31;
      CRSR_INTMSK  at 3104 range 0 .. 31;
      CRSR_INTCLR  at 3108 range 0 .. 31;
      CRSR_INTRAW  at 3112 range 0 .. 31;
      CRSR_INTSTAT at 3116 range 0 .. 31;
   end record;

   --  LCD controller
   LCD_Periph : aliased LCD_Peripheral
     with Import, Address => LCD_Base;

end Interfaces.LPC43xxC.LCD;
