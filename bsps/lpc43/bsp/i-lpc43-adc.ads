--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43.ADC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- CR_Register --
   -----------------

   subtype CR_SEL_Field is Interfaces.Bit_Types.Byte;
   subtype CR_CLKDIV_Field is Interfaces.Bit_Types.Byte;

   --  Burst mode
   type ENUM is
     (
      --  Conversions are software controlled and require 11 clocks.
      Software,
      --  The AD converter does repeated conversions at the rate selected by
      --  the CLKS field, scanning (if necessary) through the pins selected by
      --  1s in the SEL field. The first conversion after the start corresponds
      --  to the least-significant 1 in the SEL field, then higher numbered 1
      --  bits (pins) if applicable. Repeated conversions can be terminated by
      --  clearing this bit, but the conversion that is in progress when this
      --  bit is cleared will be completed. Important: START bits must be 000
      --  when BURST = 1 or conversions will not start.
      Burst)
     with Size => 1;
   for ENUM use
     (Software => 0,
      Burst => 1);

   --  This field selects the number of clocks used for each conversion in
   --  Burst mode, and the number of bits of accuracy of the result in the LS
   --  bits of ADDR, between 11 clocks (10 bits) and 4 clocks (3 bits).
   type ENUM_1 is
     (
      --  11 clocks / 10 bits
      ENUM_11_Clocks_10_Bits,
      --  10 clocks / 9 bits
      ENUM_10_Clocks_9_Bits,
      --  9 clocks / 8 bits
      ENUM_9_Clocks_8_Bits,
      --  8 clocks / 7 bits
      ENUM_8_Clocks_7_Bits,
      --  7 clocks / 6 bits
      ENUM_7_Clocks_6_Bits,
      --  6 clocks / 5 bits
      ENUM_6_Clocks_5_Bits,
      --  5 clocks / 4 bits
      ENUM_5_Clocks_4_Bits,
      --  4 clocks / 3 bits
      ENUM_4_Clocks_3_Bits)
     with Size => 3;
   for ENUM_1 use
     (ENUM_11_Clocks_10_Bits => 0,
      ENUM_10_Clocks_9_Bits => 1,
      ENUM_9_Clocks_8_Bits => 2,
      ENUM_8_Clocks_7_Bits => 3,
      ENUM_7_Clocks_6_Bits => 4,
      ENUM_6_Clocks_5_Bits => 5,
      ENUM_5_Clocks_4_Bits => 6,
      ENUM_4_Clocks_3_Bits => 7);

   subtype CR_RESERVED_Field is Interfaces.Bit_Types.Bit;

   --  Power mode
   type ENUM_2 is
     (
      --  The A/D converter is in Power-down mode.
      Powerdown,
      --  The A/D converter is operational.
      Running)
     with Size => 1;
   for ENUM_2 use
     (Powerdown => 0,
      Running => 1);

   subtype CR_RESERVED_Field_1 is Interfaces.Bit_Types.UInt2;

   --  When the BURST bit is 0, these bits control whether and when an A/D
   --  conversion is started (also see Figure 56):
   type ENUM_3 is
     (
      --  No start (this value should be used when clearing PDN to 0).
      No_Start,
      --  Start conversion now.
      Start_Conversion_Now,
      --  Start conversion when the edge selected by bit 27 occurs on CTOUT_15
      --  (combined timer output 15).
      Ctout_15,
      --  Start conversion when the edge selected by bit 27 occurs on CTOUT_8
      --  (combined timer output 8).
      Ctout_8,
      --  Start conversion when the edge selected by bit 27 occurs on ADCTRIG0
      --  input.
      Adctrig0,
      --  Start conversion when the edge selected by bit 27 occurs on ADCTRIG1
      --  input.
      Adctrig1,
      --  Start conversion when the edge selected by bit 27 occurs on Motocon
      --  PWM output MCOA2.
      Mcoa2,
      --  Reserved.
      Reserved)
     with Size => 3;
   for ENUM_3 use
     (No_Start => 0,
      Start_Conversion_Now => 1,
      Ctout_15 => 2,
      Ctout_8 => 3,
      Adctrig0 => 4,
      Adctrig1 => 5,
      Mcoa2 => 6,
      Reserved => 7);

   --  This bit is significant only when the START field contains 0x2 -0x6. In
   --  these cases:
   type ENUM_4 is
     (
      --  Start conversion on a rising edge on the selected signal.
      Rising,
      --  Start conversion on a falling edge on the selected signal.
      Falling)
     with Size => 1;
   for ENUM_4 use
     (Rising => 0,
      Falling => 1);

   subtype CR_RESERVED_Field_2 is Interfaces.Bit_Types.UInt4;

   --  A/D Control Register. The AD0CR register must be written to select the
   --  operating mode before A/D conversion can occur.
   type CR_Register is record
      --  Selects which of the ADC[7:0] pins are to be sampled and converted.
      --  Bit 0 selects Pin ADC0, bit 1 selects pin AD1,..., and bit 7 selects
      --  pin ADC7. In software-controlled mode, only one of these bits should
      --  be 1. In hardware scan mode, any value containing 1 to 8 ones. All
      --  zeroes is equivalent to 0x01.
      SEL        : CR_SEL_Field := 16#0#;
      --  The ADC clock is divided by the CLKDIV value plus one to produce the
      --  clock for the A/D converter, which should be less than or equal to
      --  4.5 MHz. Typically, software should program the smallest value in
      --  this field that yields a clock of 4.5 MHz or slightly less, but in
      --  certain cases (such as a high-impedance analog source) a slower clock
      --  may be desirable.
      CLKDIV     : CR_CLKDIV_Field := 16#0#;
      --  Burst mode
      BURST      : ENUM := Interfaces.LPC43.ADC.Software;
      --  This field selects the number of clocks used for each conversion in
      --  Burst mode, and the number of bits of accuracy of the result in the
      --  LS bits of ADDR, between 11 clocks (10 bits) and 4 clocks (3 bits).
      CLKS       : ENUM_1 := Interfaces.LPC43.ADC.ENUM_11_Clocks_10_Bits;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED   : CR_RESERVED_Field := 16#0#;
      --  Power mode
      PDN        : ENUM_2 := Interfaces.LPC43.ADC.Powerdown;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1 : CR_RESERVED_Field_1 := 16#0#;
      --  When the BURST bit is 0, these bits control whether and when an A/D
      --  conversion is started (also see Figure 56):
      START      : ENUM_3 := Interfaces.LPC43.ADC.No_Start;
      --  This bit is significant only when the START field contains 0x2 -0x6.
      --  In these cases:
      EDGE       : ENUM_4 := Interfaces.LPC43.ADC.Rising;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_2 : CR_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      SEL        at 0 range 0 .. 7;
      CLKDIV     at 0 range 8 .. 15;
      BURST      at 0 range 16 .. 16;
      CLKS       at 0 range 17 .. 19;
      RESERVED   at 0 range 20 .. 20;
      PDN        at 0 range 21 .. 21;
      RESERVED_1 at 0 range 22 .. 23;
      START      at 0 range 24 .. 26;
      EDGE       at 0 range 27 .. 27;
      RESERVED_2 at 0 range 28 .. 31;
   end record;

   ------------------
   -- GDR_Register --
   ------------------

   subtype GDR_RESERVED_Field is Interfaces.Bit_Types.UInt6;
   subtype GDR_V_VREF_Field is Interfaces.Bit_Types.UInt10;
   subtype GDR_RESERVED_Field_1 is Interfaces.Bit_Types.Byte;
   subtype GDR_CHN_Field is Interfaces.Bit_Types.UInt3;
   subtype GDR_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;
   subtype GDR_OVERRUN_Field is Interfaces.Bit_Types.Bit;
   subtype GDR_DONE_Field is Interfaces.Bit_Types.Bit;

   --  A/D Global Data Register. Contains the result of the most recent A/D
   --  conversion.
   type GDR_Register is record
      --  Read-only. Reserved. These bits always read as zeroes.
      RESERVED   : GDR_RESERVED_Field;
      --  Read-only. When DONE is 1, this field contains a binary fraction
      --  representing the voltage on the ADCn pin selected by the SEL field,
      --  divided by the reference voltage on the VDDA pin. Zero in the field
      --  indicates that the voltage on the ADCn input pin was less than, equal
      --  to, or close to that on VSSA, while 0x3FF indicates that the voltage
      --  on ADCn input pin was close to, equal to, or greater than that on
      --  VDDA.
      V_VREF     : GDR_V_VREF_Field;
      --  Read-only. Reserved. These bits always read as zeroes.
      RESERVED_1 : GDR_RESERVED_Field_1;
      --  Read-only. These bits contain the channel from which the LS bits were
      --  converted.
      CHN        : GDR_CHN_Field;
      --  Read-only. Reserved. These bits always read as zeroes.
      RESERVED_2 : GDR_RESERVED_Field_2;
      --  Read-only. This bit is 1 in burst mode if the results of one or more
      --  conversions was (were) lost and overwritten before the conversion
      --  that produced the result in the V_VREF bits.
      OVERRUN    : GDR_OVERRUN_Field;
      --  Read-only. This bit is set to 1 when an analog-to-digital conversion
      --  completes. It is cleared when this register is read and when the
      --  AD0/1CR register is written. If the AD0/1CR is written while a
      --  conversion is still in progress, this bit is set and a new conversion
      --  is started.
      DONE       : GDR_DONE_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GDR_Register use record
      RESERVED   at 0 range 0 .. 5;
      V_VREF     at 0 range 6 .. 15;
      RESERVED_1 at 0 range 16 .. 23;
      CHN        at 0 range 24 .. 26;
      RESERVED_2 at 0 range 27 .. 29;
      OVERRUN    at 0 range 30 .. 30;
      DONE       at 0 range 31 .. 31;
   end record;

   --------------------
   -- INTEN_Register --
   --------------------

   subtype INTEN_ADINTEN_Field is Interfaces.Bit_Types.Byte;
   subtype INTEN_ADGINTEN_Field is Interfaces.Bit_Types.Bit;
   subtype INTEN_RESERVED_Field is Interfaces.Bit_Types.UInt23;

   --  A/D Interrupt Enable Register. This register contains enable bits that
   --  allow the DONE flag of each A/D channel to be included or excluded from
   --  contributing to the generation of an A/D interrupt.
   type INTEN_Register is record
      --  These bits allow control over which A/D channels generate interrupts
      --  for conversion completion. When bit 0 is one, completion of a
      --  conversion on A/D channel 0 will generate an interrupt, when bit 1 is
      --  one, completion of a conversion on A/D channel 1 will generate an
      --  interrupt, etc.
      ADINTEN  : INTEN_ADINTEN_Field := 16#0#;
      --  When 1, enables the global DONE flag in ADDR to generate an
      --  interrupt. When 0, only the individual A/D channels enabled by
      --  ADINTEN 7:0 will generate interrupts.
      ADGINTEN : INTEN_ADGINTEN_Field := 16#1#;
      --  Reserved. Always 0.
      RESERVED : INTEN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      ADINTEN  at 0 range 0 .. 7;
      ADGINTEN at 0 range 8 .. 8;
      RESERVED at 0 range 9 .. 31;
   end record;

   -----------------
   -- DR_Register --
   -----------------

   subtype DR_RESERVED_Field is Interfaces.Bit_Types.UInt6;
   subtype DR_V_VREF_Field is Interfaces.Bit_Types.UInt10;
   subtype DR_RESERVED_Field_1 is Interfaces.Bit_Types.UInt14;
   subtype DR_OVERRUN_Field is Interfaces.Bit_Types.Bit;
   subtype DR_DONE_Field is Interfaces.Bit_Types.Bit;

   --  A/D Channel Data Register. This register contains the result of the most
   --  recent conversion completed on channel n.
   type DR_Register is record
      --  Read-only. Reserved. Always 0.
      RESERVED   : DR_RESERVED_Field;
      --  Read-only. When DONE is 1, this field contains a binary fraction
      --  representing the voltage on the ADCn input pin selected in Table 727,
      --  divided by the voltage on the VDDA pin. Zero in the field indicates
      --  that the voltage on the ADCn input pin was less than, equal to, or
      --  close to that on VDDA, while 0x3FF indicates that the voltage on ADCn
      --  input pin was close to, equal to, or greater than that on VDDA.
      V_VREF     : DR_V_VREF_Field;
      --  Read-only. Reserved. Always 0.
      RESERVED_1 : DR_RESERVED_Field_1;
      --  Read-only. This bit is 1 in burst mode if the results of one or more
      --  conversions was (were) lost and overwritten before the conversion
      --  that produced the result in the V_VREF bits in this register.This bit
      --  is cleared by reading this register.
      OVERRUN    : DR_OVERRUN_Field;
      --  Read-only. This bit is set to 1 when an A/D conversion completes. It
      --  is cleared when this register is read.
      DONE       : DR_DONE_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_Register use record
      RESERVED   at 0 range 0 .. 5;
      V_VREF     at 0 range 6 .. 15;
      RESERVED_1 at 0 range 16 .. 29;
      OVERRUN    at 0 range 30 .. 30;
      DONE       at 0 range 31 .. 31;
   end record;

   --  A/D Channel Data Register. This register contains the result of the most
   --  recent conversion completed on channel n.
   type DR_Registers is array (0 .. 7) of DR_Register;

   -------------------
   -- STAT_Register --
   -------------------

   subtype STAT_DONE_Field is Interfaces.Bit_Types.Byte;
   subtype STAT_OVERUN_Field is Interfaces.Bit_Types.Byte;
   subtype STAT_ADINT_Field is Interfaces.Bit_Types.Bit;
   subtype STAT_RESERVED_Field is Interfaces.Bit_Types.UInt15;

   --  A/D Status Register. This register contains DONE and OVERRUN flags for
   --  all of the A/D channels, as well as the A/D interrupt flag.
   type STAT_Register is record
      --  Read-only. These bits mirror the DONE status flags that appear in the
      --  result register for each A/D channel.
      DONE     : STAT_DONE_Field;
      --  Read-only. These bits mirror the OVERRRUN status flags that appear in
      --  the result register for each A/D channel. Reading ADSTAT allows
      --  checking the status of all A/D channels simultaneously.
      OVERUN   : STAT_OVERUN_Field;
      --  Read-only. This bit is the A/D interrupt flag. It is one when any of
      --  the individual A/D channel Done flags is asserted and enabled to
      --  contribute to the A/D interrupt via the ADINTEN register.
      ADINT    : STAT_ADINT_Field;
      --  Read-only. Reserved. Always 0.
      RESERVED : STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      DONE     at 0 range 0 .. 7;
      OVERUN   at 0 range 8 .. 15;
      ADINT    at 0 range 16 .. 16;
      RESERVED at 0 range 17 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  10-bit Analog-to-Digital Converter (ADC)
   type ADC_Peripheral is record
      --  A/D Control Register. The AD0CR register must be written to select
      --  the operating mode before A/D conversion can occur.
      CR    : CR_Register;
      --  A/D Global Data Register. Contains the result of the most recent A/D
      --  conversion.
      GDR   : GDR_Register;
      --  A/D Interrupt Enable Register. This register contains enable bits
      --  that allow the DONE flag of each A/D channel to be included or
      --  excluded from contributing to the generation of an A/D interrupt.
      INTEN : INTEN_Register;
      --  A/D Channel Data Register. This register contains the result of the
      --  most recent conversion completed on channel n.
      DR    : DR_Registers;
      --  A/D Status Register. This register contains DONE and OVERRUN flags
      --  for all of the A/D channels, as well as the A/D interrupt flag.
      STAT  : STAT_Register;
   end record
     with Volatile;

   for ADC_Peripheral use record
      CR    at 0 range 0 .. 31;
      GDR   at 4 range 0 .. 31;
      INTEN at 12 range 0 .. 31;
      DR    at 16 range 0 .. 255;
      STAT  at 48 range 0 .. 31;
   end record;

   --  10-bit Analog-to-Digital Converter (ADC)
   ADC0_Periph : aliased ADC_Peripheral
     with Import, Address => ADC0_Base;

   --  10-bit Analog-to-Digital Converter (ADC)
   ADC1_Periph : aliased ADC_Peripheral
     with Import, Address => ADC1_Base;

end Interfaces.LPC43.ADC;
