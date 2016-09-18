--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43.GPIO_GROUP_INT0 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -------------------
   -- CTRL_Register --
   -------------------

   --  Group interrupt status. This bit is cleared by writing a one to it.
   --  Writing zero has no effect.
   type ENUM is
     (
      --  No interrupt request is pending.
      No_Interrupt_Request,
      --  Interrupt request is active.
      Interrupt_Request_Is)
     with Size => 1;
   for ENUM use
     (No_Interrupt_Request => 0,
      Interrupt_Request_Is => 1);

   --  Combine enabled inputs for group interrupt
   type ENUM_1 is
     (
      --  OR functionality: A grouped interrupt is generated when any one of
      --  the enabled inputs is active (based on its programmed polarity).
      Or_Functionality_A,
      --  AND functionality: An interrupt is generated when all enabled bits
      --  are active (based on their programmed polarity).
      And_Functionality_A)
     with Size => 1;
   for ENUM_1 use
     (Or_Functionality_A => 0,
      And_Functionality_A => 1);

   --  Group interrupt trigger
   type ENUM_2 is
     (
      --  Edge-triggered
      Edge_Triggered,
      --  Level-triggered
      Level_Triggered)
     with Size => 1;
   for ENUM_2 use
     (Edge_Triggered => 0,
      Level_Triggered => 1);

   subtype CTRL_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  GPIO grouped interrupt control register
   type CTRL_Register is record
      --  Group interrupt status. This bit is cleared by writing a one to it.
      --  Writing zero has no effect.
      INT      : ENUM :=
                  Interfaces.LPC43.GPIO_GROUP_INT0.No_Interrupt_Request;
      --  Combine enabled inputs for group interrupt
      COMB     : ENUM_1 :=
                  Interfaces.LPC43.GPIO_GROUP_INT0.Or_Functionality_A;
      --  Group interrupt trigger
      TRIG     : ENUM_2 := Interfaces.LPC43.GPIO_GROUP_INT0.Edge_Triggered;
      --  Reserved
      RESERVED : CTRL_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      INT      at 0 range 0 .. 0;
      COMB     at 0 range 1 .. 1;
      TRIG     at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------------
   -- PORT_POL_Register --
   -----------------------

   subtype PORT_POL_POL_0_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_1_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_2_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_3_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_4_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_5_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_6_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_7_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_8_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_9_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_10_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_11_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_12_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_13_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_14_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_15_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_16_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_17_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_18_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_19_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_20_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_21_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_22_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_23_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_24_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_25_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_26_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_27_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_28_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_29_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_30_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_POL_POL_31_Field is Interfaces.Bit_Types.Bit;

   --  GPIO grouped interrupt port polarity register
   type PORT_POL_Register is record
      --  Configure pin polarity of port pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m . 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_0  : PORT_POL_POL_0_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_1  : PORT_POL_POL_1_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_2  : PORT_POL_POL_2_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_3  : PORT_POL_POL_3_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_4  : PORT_POL_POL_4_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_5  : PORT_POL_POL_5_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_6  : PORT_POL_POL_6_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_7  : PORT_POL_POL_7_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_8  : PORT_POL_POL_8_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_9  : PORT_POL_POL_9_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_10 : PORT_POL_POL_10_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_11 : PORT_POL_POL_11_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_12 : PORT_POL_POL_12_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_13 : PORT_POL_POL_13_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_14 : PORT_POL_POL_14_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_15 : PORT_POL_POL_15_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_16 : PORT_POL_POL_16_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_17 : PORT_POL_POL_17_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_18 : PORT_POL_POL_18_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_19 : PORT_POL_POL_19_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_20 : PORT_POL_POL_20_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_21 : PORT_POL_POL_21_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_22 : PORT_POL_POL_22_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_23 : PORT_POL_POL_23_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_24 : PORT_POL_POL_24_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_25 : PORT_POL_POL_25_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_26 : PORT_POL_POL_26_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_27 : PORT_POL_POL_27_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_28 : PORT_POL_POL_28_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_29 : PORT_POL_POL_29_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_30 : PORT_POL_POL_30_Field := 16#1#;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_31 : PORT_POL_POL_31_Field := 16#1#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORT_POL_Register use record
      POL_0  at 0 range 0 .. 0;
      POL_1  at 0 range 1 .. 1;
      POL_2  at 0 range 2 .. 2;
      POL_3  at 0 range 3 .. 3;
      POL_4  at 0 range 4 .. 4;
      POL_5  at 0 range 5 .. 5;
      POL_6  at 0 range 6 .. 6;
      POL_7  at 0 range 7 .. 7;
      POL_8  at 0 range 8 .. 8;
      POL_9  at 0 range 9 .. 9;
      POL_10 at 0 range 10 .. 10;
      POL_11 at 0 range 11 .. 11;
      POL_12 at 0 range 12 .. 12;
      POL_13 at 0 range 13 .. 13;
      POL_14 at 0 range 14 .. 14;
      POL_15 at 0 range 15 .. 15;
      POL_16 at 0 range 16 .. 16;
      POL_17 at 0 range 17 .. 17;
      POL_18 at 0 range 18 .. 18;
      POL_19 at 0 range 19 .. 19;
      POL_20 at 0 range 20 .. 20;
      POL_21 at 0 range 21 .. 21;
      POL_22 at 0 range 22 .. 22;
      POL_23 at 0 range 23 .. 23;
      POL_24 at 0 range 24 .. 24;
      POL_25 at 0 range 25 .. 25;
      POL_26 at 0 range 26 .. 26;
      POL_27 at 0 range 27 .. 27;
      POL_28 at 0 range 28 .. 28;
      POL_29 at 0 range 29 .. 29;
      POL_30 at 0 range 30 .. 30;
      POL_31 at 0 range 31 .. 31;
   end record;

   --  GPIO grouped interrupt port polarity register
   type PORT_POL_Registers is array (0 .. 7) of PORT_POL_Register;

   -----------------------
   -- PORT_ENA_Register --
   -----------------------

   subtype PORT_ENA_ENA_0_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_1_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_2_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_3_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_4_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_5_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_6_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_7_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_8_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_9_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_10_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_11_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_12_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_13_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_14_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_15_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_16_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_17_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_18_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_19_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_20_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_21_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_22_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_23_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_24_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_25_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_26_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_27_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_28_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_29_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_30_Field is Interfaces.Bit_Types.Bit;
   subtype PORT_ENA_ENA_31_Field is Interfaces.Bit_Types.Bit;

   --  GPIO grouped interrupt port m enable register
   type PORT_ENA_Register is record
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_0  : PORT_ENA_ENA_0_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_1  : PORT_ENA_ENA_1_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_2  : PORT_ENA_ENA_2_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_3  : PORT_ENA_ENA_3_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_4  : PORT_ENA_ENA_4_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_5  : PORT_ENA_ENA_5_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_6  : PORT_ENA_ENA_6_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_7  : PORT_ENA_ENA_7_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_8  : PORT_ENA_ENA_8_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_9  : PORT_ENA_ENA_9_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_10 : PORT_ENA_ENA_10_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_11 : PORT_ENA_ENA_11_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_12 : PORT_ENA_ENA_12_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_13 : PORT_ENA_ENA_13_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_14 : PORT_ENA_ENA_14_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_15 : PORT_ENA_ENA_15_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_16 : PORT_ENA_ENA_16_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_17 : PORT_ENA_ENA_17_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_18 : PORT_ENA_ENA_18_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_19 : PORT_ENA_ENA_19_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_20 : PORT_ENA_ENA_20_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_21 : PORT_ENA_ENA_21_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_22 : PORT_ENA_ENA_22_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_23 : PORT_ENA_ENA_23_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_24 : PORT_ENA_ENA_24_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_25 : PORT_ENA_ENA_25_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_26 : PORT_ENA_ENA_26_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_27 : PORT_ENA_ENA_27_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_28 : PORT_ENA_ENA_28_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_29 : PORT_ENA_ENA_29_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_30 : PORT_ENA_ENA_30_Field := 16#0#;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_31 : PORT_ENA_ENA_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORT_ENA_Register use record
      ENA_0  at 0 range 0 .. 0;
      ENA_1  at 0 range 1 .. 1;
      ENA_2  at 0 range 2 .. 2;
      ENA_3  at 0 range 3 .. 3;
      ENA_4  at 0 range 4 .. 4;
      ENA_5  at 0 range 5 .. 5;
      ENA_6  at 0 range 6 .. 6;
      ENA_7  at 0 range 7 .. 7;
      ENA_8  at 0 range 8 .. 8;
      ENA_9  at 0 range 9 .. 9;
      ENA_10 at 0 range 10 .. 10;
      ENA_11 at 0 range 11 .. 11;
      ENA_12 at 0 range 12 .. 12;
      ENA_13 at 0 range 13 .. 13;
      ENA_14 at 0 range 14 .. 14;
      ENA_15 at 0 range 15 .. 15;
      ENA_16 at 0 range 16 .. 16;
      ENA_17 at 0 range 17 .. 17;
      ENA_18 at 0 range 18 .. 18;
      ENA_19 at 0 range 19 .. 19;
      ENA_20 at 0 range 20 .. 20;
      ENA_21 at 0 range 21 .. 21;
      ENA_22 at 0 range 22 .. 22;
      ENA_23 at 0 range 23 .. 23;
      ENA_24 at 0 range 24 .. 24;
      ENA_25 at 0 range 25 .. 25;
      ENA_26 at 0 range 26 .. 26;
      ENA_27 at 0 range 27 .. 27;
      ENA_28 at 0 range 28 .. 28;
      ENA_29 at 0 range 29 .. 29;
      ENA_30 at 0 range 30 .. 30;
      ENA_31 at 0 range 31 .. 31;
   end record;

   --  GPIO grouped interrupt port m enable register
   type PORT_ENA_Registers is array (0 .. 7) of PORT_ENA_Register;

   -----------------
   -- Peripherals --
   -----------------

   --  GPIO group interrupt 0
   type GPIO_GROUP_INT0_Peripheral is record
      --  GPIO grouped interrupt control register
      CTRL     : CTRL_Register;
      --  GPIO grouped interrupt port polarity register
      PORT_POL : PORT_POL_Registers;
      --  GPIO grouped interrupt port m enable register
      PORT_ENA : PORT_ENA_Registers;
   end record
     with Volatile;

   for GPIO_GROUP_INT0_Peripheral use record
      CTRL     at 0 range 0 .. 31;
      PORT_POL at 32 range 0 .. 255;
      PORT_ENA at 64 range 0 .. 255;
   end record;

   --  GPIO group interrupt 0
   GPIO_GROUP_INT0_Periph : aliased GPIO_GROUP_INT0_Peripheral
     with Import, Address => GPIO_GROUP_INT0_Base;

   --  GPIO group interrupt 0
   GPIO_GROUP_INT1_Periph : aliased GPIO_GROUP_INT0_Peripheral
     with Import, Address => GPIO_GROUP_INT1_Base;

end Interfaces.LPC43.GPIO_GROUP_INT0;
