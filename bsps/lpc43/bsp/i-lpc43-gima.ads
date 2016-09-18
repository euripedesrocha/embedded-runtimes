--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43.GIMA is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ------------------------
   -- CAP0_0_IN_Register --
   ------------------------

   --  Invert input
   type ENUM is
     (
      --  Not inverted.
      Not_Inverted,
      --  Input inverted.
      Input_Inverted)
     with Size => 1;
   for ENUM use
     (Not_Inverted => 0,
      Input_Inverted => 1);

   --  Enable rising edge detection
   type ENUM_1 is
     (
      --  No edge detection.
      No_Edge_Detection,
      --  Rising edge detection enabled.
      Rising_Edge_Detectio)
     with Size => 1;
   for ENUM_1 use
     (No_Edge_Detection => 0,
      Rising_Edge_Detectio => 1);

   --  Enable synchronization
   type ENUM_2 is
     (
      --  Disable synchronization.
      Disable_Synchroniz,
      --  Enable synchronization.
      Enable_Synchroniza)
     with Size => 1;
   for ENUM_2 use
     (Disable_Synchroniz => 0,
      Enable_Synchroniza => 1);

   --  Enable single pulse generation.
   type ENUM_3 is
     (
      --  Disable single pulse generation.
      Disable_Single_Pulse,
      --  Enable single pulse generation.
      Enable_Single_Pulse)
     with Size => 1;
   for ENUM_3 use
     (Disable_Single_Pulse => 0,
      Enable_Single_Pulse => 1);

   --  Select input. Values 0x3 to 0xF are reserved.
   type ENUM_4 is
     (
      --  CTIN_0
      Ctin_0,
      --  SGPIO3
      Sgpio3,
      --  T0_CAP0
      T0_Cap0)
     with Size => 4;
   for ENUM_4 use
     (Ctin_0 => 0,
      Sgpio3 => 1,
      T0_Cap0 => 2);

   subtype CAP0_0_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Timer 0 CAP0_0 capture input multiplexer (GIMA output 0)
   type CAP0_0_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x3 to 0xF are reserved.
      SELECT_k : ENUM_4 := Interfaces.LPC43.GIMA.Ctin_0;
      --  Reserved
      RESERVED : CAP0_0_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAP0_0_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CAP0_1_IN_Register --
   ------------------------

   --  Select input. Values 0x3 to 0xF are reserved.
   type ENUM_5 is
     (
      --  CTIN_1
      Ctin_1,
      --  USART2 TX active
      Usart2_Tx_Active,
      --  T0_CAP1
      T0_Cap1)
     with Size => 4;
   for ENUM_5 use
     (Ctin_1 => 0,
      Usart2_Tx_Active => 1,
      T0_Cap1 => 2);

   subtype CAP0_1_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Timer 0 CAP0_1 capture input multiplexer (GIMA output 1)
   type CAP0_1_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x3 to 0xF are reserved.
      SELECT_k : ENUM_5 := Interfaces.LPC43.GIMA.Ctin_1;
      --  Reserved
      RESERVED : CAP0_1_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAP0_1_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CAP0_2_IN_Register --
   ------------------------

   --  Select input. Values 0x3 to 0xF are reserved.
   type ENUM_6 is
     (
      --  CTIN_2
      Ctin_2,
      --  SGPIO3_DIV
      Sgpio3_Div,
      --  T0_CAP2
      T0_Cap2)
     with Size => 4;
   for ENUM_6 use
     (Ctin_2 => 0,
      Sgpio3_Div => 1,
      T0_Cap2 => 2);

   subtype CAP0_2_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Timer 0 CAP0_2 capture input multiplexer (GIMA output 2)
   type CAP0_2_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x3 to 0xF are reserved.
      SELECT_k : ENUM_6 := Interfaces.LPC43.GIMA.Ctin_2;
      --  Reserved
      RESERVED : CAP0_2_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAP0_2_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CAP0_3_IN_Register --
   ------------------------

   --  Select input. Values 0x3 to 0xF are reserved.
   type ENUM_7 is
     (
      --  CTOUT_15 or T3_MAT3
      Ctout_15_Or_T3_Mat3,
      --  T0_CAP3
      T0_Cap3,
      --  T3_MAT3
      T3_Mat3)
     with Size => 4;
   for ENUM_7 use
     (Ctout_15_Or_T3_Mat3 => 0,
      T0_Cap3 => 1,
      T3_Mat3 => 2);

   subtype CAP0_3_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Timer 0 CAP0_3 capture input multiplexer (GIMA output 3)
   type CAP0_3_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x3 to 0xF are reserved.
      SELECT_k : ENUM_7 := Interfaces.LPC43.GIMA.Ctout_15_Or_T3_Mat3;
      --  Reserved
      RESERVED : CAP0_3_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAP0_3_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CAP1_0_IN_Register --
   ------------------------

   --  Select input. Values 0x3 to 0xF are reserved.
   type ENUM_8 is
     (
      --  CTIN_0
      Ctin_0,
      --  SGPIO12
      Sgpio12,
      --  T1_CAP0
      T1_Cap0)
     with Size => 4;
   for ENUM_8 use
     (Ctin_0 => 0,
      Sgpio12 => 1,
      T1_Cap0 => 2);

   subtype CAP1_0_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Timer 1 CAP1_0 capture input multiplexer (GIMA output 4)
   type CAP1_0_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x3 to 0xF are reserved.
      SELECT_k : ENUM_8 := Interfaces.LPC43.GIMA.Ctin_0;
      --  Reserved
      RESERVED : CAP1_0_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAP1_0_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CAP1_1_IN_Register --
   ------------------------

   --  Select input. Values 0x3 to 0xF are reserved.
   type ENUM_9 is
     (
      --  CTIN_3
      Ctin_3,
      --  USART0 TX active
      Usart0_Tx_Active,
      --  T1_CAP1
      T1_Cap1)
     with Size => 4;
   for ENUM_9 use
     (Ctin_3 => 0,
      Usart0_Tx_Active => 1,
      T1_Cap1 => 2);

   subtype CAP1_1_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Timer 1 CAP1_1 capture input multiplexer (GIMA output 5)
   type CAP1_1_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x3 to 0xF are reserved.
      SELECT_k : ENUM_9 := Interfaces.LPC43.GIMA.Ctin_3;
      --  Reserved
      RESERVED : CAP1_1_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAP1_1_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CAP1_2_IN_Register --
   ------------------------

   --  Select input. Values 0x3 to 0xF are reserved.
   type ENUM_10 is
     (
      --  CTIN_4
      Ctin_4,
      --  USART0 RX active
      Usart0_Rx_Active,
      --  T1_CAP2
      T1_Cap2)
     with Size => 4;
   for ENUM_10 use
     (Ctin_4 => 0,
      Usart0_Rx_Active => 1,
      T1_Cap2 => 2);

   subtype CAP1_2_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Timer 1 CAP1_2 capture input multiplexer (GIMA output 6)
   type CAP1_2_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x3 to 0xF are reserved.
      SELECT_k : ENUM_10 := Interfaces.LPC43.GIMA.Ctin_4;
      --  Reserved
      RESERVED : CAP1_2_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAP1_2_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CAP1_3_IN_Register --
   ------------------------

   --  Select input. Values 0x3 to 0xF are reserved.
   type ENUM_11 is
     (
      --  CTOUT_3 or T0_MAT3
      Ctout_3_Or_T0_Mat3,
      --  T1_CAP3
      T1_Cap3,
      --  T0_MAT3
      T0_Mat3)
     with Size => 4;
   for ENUM_11 use
     (Ctout_3_Or_T0_Mat3 => 0,
      T1_Cap3 => 1,
      T0_Mat3 => 2);

   subtype CAP1_3_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Timer 1 CAP1_3 capture input multiplexer (GIMA output 7)
   type CAP1_3_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x3 to 0xF are reserved.
      SELECT_k : ENUM_11 := Interfaces.LPC43.GIMA.Ctout_3_Or_T0_Mat3;
      --  Reserved
      RESERVED : CAP1_3_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAP1_3_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CAP2_0_IN_Register --
   ------------------------

   --  Select input. Values 0x4 to 0xF are reserved.
   type ENUM_12 is
     (
      --  CTIN_0
      Ctin_0,
      --  SGPIO12_DIV
      Sgpio12_Div,
      --  T2_CAP0
      T2_Cap0)
     with Size => 4;
   for ENUM_12 use
     (Ctin_0 => 0,
      Sgpio12_Div => 1,
      T2_Cap0 => 2);

   subtype CAP2_0_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Timer 2 CAP2_0 capture input multiplexer (GIMA output 8)
   type CAP2_0_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x4 to 0xF are reserved.
      SELECT_k : ENUM_12 := Interfaces.LPC43.GIMA.Ctin_0;
      --  Reserved
      RESERVED : CAP2_0_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAP2_0_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CAP2_1_IN_Register --
   ------------------------

   --  Select input. Values 0x4 to 0xF are reserved.
   type ENUM_13 is
     (
      --  CTIN_1
      Ctin_1,
      --  USART2 TX active
      Usart2_Tx_Active,
      --  - I2S1_RX_MWS
      I2S1_Rx_Mws,
      --  T2_CAP1
      T2_Cap1)
     with Size => 4;
   for ENUM_13 use
     (Ctin_1 => 0,
      Usart2_Tx_Active => 1,
      I2S1_Rx_Mws => 2,
      T2_Cap1 => 3);

   subtype CAP2_1_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Timer 2 CAP2_1 capture input multiplexer (GIMA output 9)
   type CAP2_1_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x4 to 0xF are reserved.
      SELECT_k : ENUM_13 := Interfaces.LPC43.GIMA.Ctin_1;
      --  Reserved
      RESERVED : CAP2_1_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAP2_1_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CAP2_2_IN_Register --
   ------------------------

   --  Select input. Values 0x4 to 0xF are reserved.
   type ENUM_14 is
     (
      --  CTIN_5
      Ctin_5,
      --  USART2 RX active
      Usart2_Rx_Active,
      --  - I2S1_TX_MWS
      I2S1_Tx_Mws,
      --  T2_CAP2
      T2_Cap2)
     with Size => 4;
   for ENUM_14 use
     (Ctin_5 => 0,
      Usart2_Rx_Active => 1,
      I2S1_Tx_Mws => 2,
      T2_Cap2 => 3);

   subtype CAP2_2_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Timer 2 CAP2_2 capture input multiplexer (GIMA output 10)
   type CAP2_2_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x4 to 0xF are reserved.
      SELECT_k : ENUM_14 := Interfaces.LPC43.GIMA.Ctin_5;
      --  Reserved
      RESERVED : CAP2_2_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAP2_2_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CAP2_3_IN_Register --
   ------------------------

   --  Select input. Values 0x3 to 0xF are reserved.
   type ENUM_15 is
     (
      --  CTOUT_7 or T1_MAT3
      Ctout_7_Or_T1_Mat3,
      --  T2_CAP3
      T2_Cap3,
      --  T1_MAT3
      T1_Mat3)
     with Size => 4;
   for ENUM_15 use
     (Ctout_7_Or_T1_Mat3 => 0,
      T2_Cap3 => 1,
      T1_Mat3 => 2);

   subtype CAP2_3_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Timer 2 CAP2_3 capture input multiplexer (GIMA output 11)
   type CAP2_3_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x3 to 0xF are reserved.
      SELECT_k : ENUM_15 := Interfaces.LPC43.GIMA.Ctout_7_Or_T1_Mat3;
      --  Reserved
      RESERVED : CAP2_3_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAP2_3_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CAP3_0_IN_Register --
   ------------------------

   --  Select input. Values 0x3 to 0xF are reserved.
   type ENUM_16 is
     (
      --  CTIN_0
      Ctin_0,
      --  I2S0_RX_MWS
      I2S0_Rx_Mws,
      --  T3_CAP0
      T3_Cap0)
     with Size => 4;
   for ENUM_16 use
     (Ctin_0 => 0,
      I2S0_Rx_Mws => 1,
      T3_Cap0 => 2);

   subtype CAP3_0_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Timer 3 CAP3_0 capture input multiplexer (GIMA output 12)
   type CAP3_0_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x3 to 0xF are reserved.
      SELECT_k : ENUM_16 := Interfaces.LPC43.GIMA.Ctin_0;
      --  Reserved
      RESERVED : CAP3_0_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAP3_0_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CAP3_1_IN_Register --
   ------------------------

   --  Select input. Values 0x4 to 0xF are reserved.
   type ENUM_17 is
     (
      --  CTIN_6
      Ctin_6,
      --  USART3 TX active
      Usart3_Tx_Active,
      --  TBD - I2S0_TX_MWS
      Tbd_I2S0_Tx_Mws,
      --  T3_CAP1
      T3_Cap1)
     with Size => 4;
   for ENUM_17 use
     (Ctin_6 => 0,
      Usart3_Tx_Active => 1,
      Tbd_I2S0_Tx_Mws => 2,
      T3_Cap1 => 3);

   subtype CAP3_1_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Timer 3 CAP3_1 capture input multiplexer (GIMA output 13)
   type CAP3_1_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x4 to 0xF are reserved.
      SELECT_k : ENUM_17 := Interfaces.LPC43.GIMA.Ctin_6;
      --  Reserved
      RESERVED : CAP3_1_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAP3_1_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CAP3_2_IN_Register --
   ------------------------

   --  Select input. Values 0x4 to 0xF are reserved.
   type ENUM_18 is
     (
      --  CTIN_7
      Ctin_7,
      --  USART3 RX active
      Usart3_Rx_Active,
      --  SOF0 (Start-Of-Frame USB0)
      Sof0_Start_Of_Frame,
      --  T3_CAP2
      T3_Cap2)
     with Size => 4;
   for ENUM_18 use
     (Ctin_7 => 0,
      Usart3_Rx_Active => 1,
      Sof0_Start_Of_Frame => 2,
      T3_Cap2 => 3);

   subtype CAP3_2_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Timer 3 CAP3_2 capture input multiplexer (GIMA output 14)
   type CAP3_2_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x4 to 0xF are reserved.
      SELECT_k : ENUM_18 := Interfaces.LPC43.GIMA.Ctin_7;
      --  Reserved
      RESERVED : CAP3_2_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAP3_2_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CAP3_3_IN_Register --
   ------------------------

   --  Select input. Values 0x4 to 0xF are reserved.
   type ENUM_19 is
     (
      --  CTOUT11 or T2_MAT3
      Ctout11_Or_T2_Mat3,
      --  SOF1 (Start-Of-Frame USB1)
      Sof1_Start_Of_Frame,
      --  T3_CAP3
      T3_Cap3,
      --  T2_MAT3
      T2_Mat3)
     with Size => 4;
   for ENUM_19 use
     (Ctout11_Or_T2_Mat3 => 0,
      Sof1_Start_Of_Frame => 1,
      T3_Cap3 => 2,
      T2_Mat3 => 3);

   subtype CAP3_3_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Timer 3 CAP3_3 capture input multiplexer (GIMA output 15)
   type CAP3_3_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x4 to 0xF are reserved.
      SELECT_k : ENUM_19 := Interfaces.LPC43.GIMA.Ctout11_Or_T2_Mat3;
      --  Reserved
      RESERVED : CAP3_3_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAP3_3_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CTIN_0_IN_Register --
   ------------------------

   --  Select input. Values 0x3 to 0xF are reserved.
   type ENUM_20 is
     (
      --  CTIN_0
      Ctin_0,
      --  SGPIO3
      Sgpio3,
      --  SGPIO3_DIV
      Sgpio3_Div)
     with Size => 4;
   for ENUM_20 use
     (Ctin_0 => 0,
      Sgpio3 => 1,
      Sgpio3_Div => 2);

   subtype CTIN_0_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  SCT CTIN_0 capture input multiplexer (GIMA output 16)
   type CTIN_0_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x3 to 0xF are reserved.
      SELECT_k : ENUM_20 := Interfaces.LPC43.GIMA.Ctin_0;
      --  Reserved
      RESERVED : CTIN_0_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTIN_0_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CTIN_1_IN_Register --
   ------------------------

   --  Select input. Values 0x3 to 0xF are reserved.
   type ENUM_21 is
     (
      --  CTIN_1
      Ctin_1,
      --  USART2 TX active
      Usart2_Tx_Active,
      --  SGPIO12
      Sgpio12)
     with Size => 4;
   for ENUM_21 use
     (Ctin_1 => 0,
      Usart2_Tx_Active => 1,
      Sgpio12 => 2);

   subtype CTIN_1_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  SCT CTIN_1 capture input multiplexer (GIMA output 17)
   type CTIN_1_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x3 to 0xF are reserved.
      SELECT_k : ENUM_21 := Interfaces.LPC43.GIMA.Ctin_1;
      --  Reserved
      RESERVED : CTIN_1_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTIN_1_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CTIN_2_IN_Register --
   ------------------------

   --  Select input. Values 0x3 to 0xF are reserved.
   type ENUM_22 is
     (
      --  CTIN_2
      Ctin_2,
      --  SGPIO12
      Sgpio12,
      --  SGPIO12_DIV
      Sgpio12_Div)
     with Size => 4;
   for ENUM_22 use
     (Ctin_2 => 0,
      Sgpio12 => 1,
      Sgpio12_Div => 2);

   subtype CTIN_2_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  SCT CTIN_2 capture input multiplexer (GIMA output 18)
   type CTIN_2_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x3 to 0xF are reserved.
      SELECT_k : ENUM_22 := Interfaces.LPC43.GIMA.Ctin_2;
      --  Reserved
      RESERVED : CTIN_2_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTIN_2_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CTIN_3_IN_Register --
   ------------------------

   --  Select input. Values 0x4 to 0xF are reserved.
   type ENUM_23 is
     (
      --  CTIN_3
      Ctin_3,
      --  USART0 TX active
      Usart0_Tx_Active,
      --  Reserved
      Reserved,
      --  Reserved
      Reserved_1)
     with Size => 4;
   for ENUM_23 use
     (Ctin_3 => 0,
      Usart0_Tx_Active => 1,
      Reserved => 2,
      Reserved_1 => 3);

   subtype CTIN_3_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  SCT CTIN_3 capture input multiplexer (GIMA output 19)
   type CTIN_3_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x4 to 0xF are reserved.
      SELECT_k : ENUM_23 := Interfaces.LPC43.GIMA.Ctin_3;
      --  Reserved
      RESERVED : CTIN_3_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTIN_3_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CTIN_4_IN_Register --
   ------------------------

   --  Select input. Values 0x4 to 0xF are reserved.
   type ENUM_24 is
     (
      --  CTIN_4
      Ctin_4,
      --  USART0 RX active
      Usart0_Rx_Active,
      --  - I2S1_RX_MWS1
      I2S1_Rx_Mws1,
      --  - I2S1_TX_MWS1
      I2S1_Tx_Mws1)
     with Size => 4;
   for ENUM_24 use
     (Ctin_4 => 0,
      Usart0_Rx_Active => 1,
      I2S1_Rx_Mws1 => 2,
      I2S1_Tx_Mws1 => 3);

   subtype CTIN_4_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  SCT CTIN_4 capture input multiplexer (GIMA output 20)
   type CTIN_4_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x4 to 0xF are reserved.
      SELECT_k : ENUM_24 := Interfaces.LPC43.GIMA.Ctin_4;
      --  Reserved
      RESERVED : CTIN_4_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTIN_4_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CTIN_5_IN_Register --
   ------------------------

   --  Select input. Values 0x3 to 0xF are reserved.
   type ENUM_25 is
     (
      --  CTIN_5
      Ctin_5,
      --  USART2 RX active
      Usart2_Rx_Active,
      --  SGPIO12_DIV
      Sgpio12_Div)
     with Size => 4;
   for ENUM_25 use
     (Ctin_5 => 0,
      Usart2_Rx_Active => 1,
      Sgpio12_Div => 2);

   subtype CTIN_5_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  SCT CTIN_5 capture input multiplexer (GIMA output 21)
   type CTIN_5_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x3 to 0xF are reserved.
      SELECT_k : ENUM_25 := Interfaces.LPC43.GIMA.Ctin_5;
      --  Reserved
      RESERVED : CTIN_5_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTIN_5_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CTIN_6_IN_Register --
   ------------------------

   --  Select input. Values 0x4 to 0xF are reserved.
   type ENUM_26 is
     (
      --  CTIN_6
      Ctin_6,
      --  USART3 TX active
      Usart3_Tx_Active,
      --  I2S0_RX_MWS
      I2S0_Rx_Mws,
      --  I2S0_TX_MWS
      I2S0_Tx_Mws)
     with Size => 4;
   for ENUM_26 use
     (Ctin_6 => 0,
      Usart3_Tx_Active => 1,
      I2S0_Rx_Mws => 2,
      I2S0_Tx_Mws => 3);

   subtype CTIN_6_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  SCT CTIN_6 capture input multiplexer (GIMA output 22)
   type CTIN_6_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x4 to 0xF are reserved.
      SELECT_k : ENUM_26 := Interfaces.LPC43.GIMA.Ctin_6;
      --  Reserved
      RESERVED : CTIN_6_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTIN_6_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- CTIN_7_IN_Register --
   ------------------------

   --  Select input. Values 0x4 to 0xF are reserved.
   type ENUM_27 is
     (
      --  CTIN_7
      Ctin_7,
      --  USART3 RX active
      Usart3_Rx_Active,
      --  SOF0 (Start-Of-Frame USB0)
      Sof0_Start_Of_Frame,
      --  SOF1 (Start-Of-Frame USB1)
      Sof1_Start_Of_Frame)
     with Size => 4;
   for ENUM_27 use
     (Ctin_7 => 0,
      Usart3_Rx_Active => 1,
      Sof0_Start_Of_Frame => 2,
      Sof1_Start_Of_Frame => 3);

   subtype CTIN_7_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  SCT CTIN_7 capture input multiplexer (GIMA output 23)
   type CTIN_7_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x4 to 0xF are reserved.
      SELECT_k : ENUM_27 := Interfaces.LPC43.GIMA.Ctin_7;
      --  Reserved
      RESERVED : CTIN_7_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTIN_7_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   -------------------------------
   -- ADCHS_TRIGGER_IN_Register --
   -------------------------------

   --  Select input. Values 0xA to 0xF are reserved.
   type ENUM_28 is
     (
      --  GPIO6[28]
      Gpio6_28,
      --  GPIO5[3]
      Gpio5_3,
      --  SGPIO10
      Sgpio10,
      --  SGPIO12
      Sgpio12,
      --  Reserved
      Reserved,
      --  MCOB2
      Mcob2,
      --  CTOUT_0 or T0_MAT0
      Ctout_0_Or_T0_Mat0,
      --  CTOUT_8 or T2_MAT0
      Ctout_8_Or_T2_Mat0,
      --  T0_MAT0
      T0_Mat0,
      --  T2_MAT0
      T2_Mat0)
     with Size => 4;
   for ENUM_28 use
     (Gpio6_28 => 0,
      Gpio5_3 => 1,
      Sgpio10 => 2,
      Sgpio12 => 3,
      Reserved => 4,
      Mcob2 => 5,
      Ctout_0_Or_T0_Mat0 => 6,
      Ctout_8_Or_T2_Mat0 => 7,
      T0_Mat0 => 8,
      T2_Mat0 => 9);

   subtype ADCHS_TRIGGER_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  ADCHS trigger input multiplexer (GIMA output 24)
   type ADCHS_TRIGGER_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0xA to 0xF are reserved.
      SELECT_k : ENUM_28 := Interfaces.LPC43.GIMA.Gpio6_28;
      --  Reserved
      RESERVED : ADCHS_TRIGGER_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCHS_TRIGGER_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --------------------------------
   -- EVENTROUTER_13_IN_Register --
   --------------------------------

   --  Select input. Values 0x3 to 0xF are reserved.
   type ENUM_29 is
     (
      --  CTOUT_2 or T0_MAT2
      Ctout_2_Or_T0_Mat2,
      --  SGPIO3
      Sgpio3,
      --  T0_MAT2
      T0_Mat2)
     with Size => 4;
   for ENUM_29 use
     (Ctout_2_Or_T0_Mat2 => 0,
      Sgpio3 => 1,
      T0_Mat2 => 2);

   subtype EVENTROUTER_13_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Event router input 13 multiplexer (GIMA output 25)
   type EVENTROUTER_13_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x3 to 0xF are reserved.
      SELECT_k : ENUM_29 := Interfaces.LPC43.GIMA.Ctout_2_Or_T0_Mat2;
      --  Reserved
      RESERVED : EVENTROUTER_13_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTROUTER_13_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --------------------------------
   -- EVENTROUTER_14_IN_Register --
   --------------------------------

   --  Select input. Values 0x3 to 0xF are reserved.
   type ENUM_30 is
     (
      --  CTOUT_6 or T1_MAT2
      Ctout_6_Or_T1_Mat2,
      --  SGPIO12
      Sgpio12,
      --  T1_MAT2
      T1_Mat2)
     with Size => 4;
   for ENUM_30 use
     (Ctout_6_Or_T1_Mat2 => 0,
      Sgpio12 => 1,
      T1_Mat2 => 2);

   subtype EVENTROUTER_14_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Event router input 14 multiplexer (GIMA output 26)
   type EVENTROUTER_14_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x3 to 0xF are reserved.
      SELECT_k : ENUM_30 := Interfaces.LPC43.GIMA.Ctout_6_Or_T1_Mat2;
      --  Reserved
      RESERVED : EVENTROUTER_14_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTROUTER_14_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --------------------------------
   -- EVENTROUTER_16_IN_Register --
   --------------------------------

   --  Select input. Values 0x2 to 0xF are reserved.
   type ENUM_31 is
     (
      --  CTOUT_14 or T3_MAT2
      Ctout_14_Or_T3_Mat2,
      --  T3_MAT2
      T3_Mat2)
     with Size => 4;
   for ENUM_31 use
     (Ctout_14_Or_T3_Mat2 => 0,
      T3_Mat2 => 1);

   subtype EVENTROUTER_16_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Event router input 16 multiplexer (GIMA output 27)
   type EVENTROUTER_16_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x2 to 0xF are reserved.
      SELECT_k : ENUM_31 := Interfaces.LPC43.GIMA.Ctout_14_Or_T3_Mat2;
      --  Reserved
      RESERVED : EVENTROUTER_16_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTROUTER_16_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ---------------------------
   -- ADCSTART0_IN_Register --
   ---------------------------

   --  Select input. Values 0x2 to 0xF are reserved.
   type ENUM_32 is
     (
      --  CTOUT_15 or T3_MAT3
      Ctout_15_Or_T3_Mat3,
      --  T0_MAT0
      T0_Mat0)
     with Size => 4;
   for ENUM_32 use
     (Ctout_15_Or_T3_Mat3 => 0,
      T0_Mat0 => 1);

   subtype ADCSTART0_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  ADC start0 input multiplexer (GIMA output 28)
   type ADCSTART0_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x2 to 0xF are reserved.
      SELECT_k : ENUM_32 := Interfaces.LPC43.GIMA.Ctout_15_Or_T3_Mat3;
      --  Reserved
      RESERVED : ADCSTART0_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCSTART0_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ---------------------------
   -- ADCSTART1_IN_Register --
   ---------------------------

   --  Select input. Values 0x2 to 0xF are reserved.
   type ENUM_33 is
     (
      --  CTOUT_8 or T2_MAT0
      Ctout_8_Or_T2_Mat0,
      --  T2_MAT0
      T2_Mat0)
     with Size => 4;
   for ENUM_33 use
     (Ctout_8_Or_T2_Mat0 => 0,
      T2_Mat0 => 1);

   subtype ADCSTART1_IN_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  ADC start1 input multiplexer (GIMA output 29)
   type ADCSTART1_IN_Register is record
      --  Invert input
      INV      : ENUM := Interfaces.LPC43.GIMA.Not_Inverted;
      --  Enable rising edge detection
      EDGE     : ENUM_1 := Interfaces.LPC43.GIMA.No_Edge_Detection;
      --  Enable synchronization
      SYNCH    : ENUM_2 := Interfaces.LPC43.GIMA.Disable_Synchroniz;
      --  Enable single pulse generation.
      PULSE    : ENUM_3 := Interfaces.LPC43.GIMA.Disable_Single_Pulse;
      --  Select input. Values 0x2 to 0xF are reserved.
      SELECT_k : ENUM_33 := Interfaces.LPC43.GIMA.Ctout_8_Or_T2_Mat0;
      --  Reserved
      RESERVED : ADCSTART1_IN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCSTART1_IN_Register use record
      INV      at 0 range 0 .. 0;
      EDGE     at 0 range 1 .. 1;
      SYNCH    at 0 range 2 .. 2;
      PULSE    at 0 range 3 .. 3;
      SELECT_k at 0 range 4 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Global Input Multiplexer Array (GIMA)
   type GIMA_Peripheral is record
      --  Timer 0 CAP0_0 capture input multiplexer (GIMA output 0)
      CAP0_0_IN         : CAP0_0_IN_Register;
      --  Timer 0 CAP0_1 capture input multiplexer (GIMA output 1)
      CAP0_1_IN         : CAP0_1_IN_Register;
      --  Timer 0 CAP0_2 capture input multiplexer (GIMA output 2)
      CAP0_2_IN         : CAP0_2_IN_Register;
      --  Timer 0 CAP0_3 capture input multiplexer (GIMA output 3)
      CAP0_3_IN         : CAP0_3_IN_Register;
      --  Timer 1 CAP1_0 capture input multiplexer (GIMA output 4)
      CAP1_0_IN         : CAP1_0_IN_Register;
      --  Timer 1 CAP1_1 capture input multiplexer (GIMA output 5)
      CAP1_1_IN         : CAP1_1_IN_Register;
      --  Timer 1 CAP1_2 capture input multiplexer (GIMA output 6)
      CAP1_2_IN         : CAP1_2_IN_Register;
      --  Timer 1 CAP1_3 capture input multiplexer (GIMA output 7)
      CAP1_3_IN         : CAP1_3_IN_Register;
      --  Timer 2 CAP2_0 capture input multiplexer (GIMA output 8)
      CAP2_0_IN         : CAP2_0_IN_Register;
      --  Timer 2 CAP2_1 capture input multiplexer (GIMA output 9)
      CAP2_1_IN         : CAP2_1_IN_Register;
      --  Timer 2 CAP2_2 capture input multiplexer (GIMA output 10)
      CAP2_2_IN         : CAP2_2_IN_Register;
      --  Timer 2 CAP2_3 capture input multiplexer (GIMA output 11)
      CAP2_3_IN         : CAP2_3_IN_Register;
      --  Timer 3 CAP3_0 capture input multiplexer (GIMA output 12)
      CAP3_0_IN         : CAP3_0_IN_Register;
      --  Timer 3 CAP3_1 capture input multiplexer (GIMA output 13)
      CAP3_1_IN         : CAP3_1_IN_Register;
      --  Timer 3 CAP3_2 capture input multiplexer (GIMA output 14)
      CAP3_2_IN         : CAP3_2_IN_Register;
      --  Timer 3 CAP3_3 capture input multiplexer (GIMA output 15)
      CAP3_3_IN         : CAP3_3_IN_Register;
      --  SCT CTIN_0 capture input multiplexer (GIMA output 16)
      CTIN_0_IN         : CTIN_0_IN_Register;
      --  SCT CTIN_1 capture input multiplexer (GIMA output 17)
      CTIN_1_IN         : CTIN_1_IN_Register;
      --  SCT CTIN_2 capture input multiplexer (GIMA output 18)
      CTIN_2_IN         : CTIN_2_IN_Register;
      --  SCT CTIN_3 capture input multiplexer (GIMA output 19)
      CTIN_3_IN         : CTIN_3_IN_Register;
      --  SCT CTIN_4 capture input multiplexer (GIMA output 20)
      CTIN_4_IN         : CTIN_4_IN_Register;
      --  SCT CTIN_5 capture input multiplexer (GIMA output 21)
      CTIN_5_IN         : CTIN_5_IN_Register;
      --  SCT CTIN_6 capture input multiplexer (GIMA output 22)
      CTIN_6_IN         : CTIN_6_IN_Register;
      --  SCT CTIN_7 capture input multiplexer (GIMA output 23)
      CTIN_7_IN         : CTIN_7_IN_Register;
      --  ADCHS trigger input multiplexer (GIMA output 24)
      ADCHS_TRIGGER_IN  : ADCHS_TRIGGER_IN_Register;
      --  Event router input 13 multiplexer (GIMA output 25)
      EVENTROUTER_13_IN : EVENTROUTER_13_IN_Register;
      --  Event router input 14 multiplexer (GIMA output 26)
      EVENTROUTER_14_IN : EVENTROUTER_14_IN_Register;
      --  Event router input 16 multiplexer (GIMA output 27)
      EVENTROUTER_16_IN : EVENTROUTER_16_IN_Register;
      --  ADC start0 input multiplexer (GIMA output 28)
      ADCSTART0_IN      : ADCSTART0_IN_Register;
      --  ADC start1 input multiplexer (GIMA output 29)
      ADCSTART1_IN      : ADCSTART1_IN_Register;
   end record
     with Volatile;

   for GIMA_Peripheral use record
      CAP0_0_IN         at 0 range 0 .. 31;
      CAP0_1_IN         at 4 range 0 .. 31;
      CAP0_2_IN         at 8 range 0 .. 31;
      CAP0_3_IN         at 12 range 0 .. 31;
      CAP1_0_IN         at 16 range 0 .. 31;
      CAP1_1_IN         at 20 range 0 .. 31;
      CAP1_2_IN         at 24 range 0 .. 31;
      CAP1_3_IN         at 28 range 0 .. 31;
      CAP2_0_IN         at 32 range 0 .. 31;
      CAP2_1_IN         at 36 range 0 .. 31;
      CAP2_2_IN         at 40 range 0 .. 31;
      CAP2_3_IN         at 44 range 0 .. 31;
      CAP3_0_IN         at 48 range 0 .. 31;
      CAP3_1_IN         at 52 range 0 .. 31;
      CAP3_2_IN         at 56 range 0 .. 31;
      CAP3_3_IN         at 60 range 0 .. 31;
      CTIN_0_IN         at 64 range 0 .. 31;
      CTIN_1_IN         at 68 range 0 .. 31;
      CTIN_2_IN         at 72 range 0 .. 31;
      CTIN_3_IN         at 76 range 0 .. 31;
      CTIN_4_IN         at 80 range 0 .. 31;
      CTIN_5_IN         at 84 range 0 .. 31;
      CTIN_6_IN         at 88 range 0 .. 31;
      CTIN_7_IN         at 92 range 0 .. 31;
      ADCHS_TRIGGER_IN  at 96 range 0 .. 31;
      EVENTROUTER_13_IN at 100 range 0 .. 31;
      EVENTROUTER_14_IN at 104 range 0 .. 31;
      EVENTROUTER_16_IN at 108 range 0 .. 31;
      ADCSTART0_IN      at 112 range 0 .. 31;
      ADCSTART1_IN      at 116 range 0 .. 31;
   end record;

   --  Global Input Multiplexer Array (GIMA)
   GIMA_Periph : aliased GIMA_Peripheral
     with Import, Address => GIMA_Base;

end Interfaces.LPC43.GIMA;
