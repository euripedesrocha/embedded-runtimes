--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43.SGPIO is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --------------------------
   -- OUT_MUX_CFG_Register --
   --------------------------

   --  Output control of output SGPIOn. All other values are reserved.
   type ENUM is
     (
      --  dout_doutm1 (1-bit mode)
      Dout_Doutm1,
      --  dout_doutm2a (2-bit mode 2a)
      Dout_Doutm2A,
      --  dout_doutm2b (2-bit mode 2b)
      Dout_Doutm2B,
      --  dout_doutm2c (2-bit mode 2c)
      Dout_Doutm2C,
      --  gpio_out (level set by GPIO_OUTREG)
      Gpio_Out_Level_Set,
      --  dout_doutm4a (4-bit mode 4a)
      Dout_Doutm4A,
      --  dout_doutm4b (4-bit mode 4b)
      Dout_Doutm4B,
      --  dout_doutm4c (4-bit mode 4c)
      Dout_Doutm4C,
      --  clk_out
      Clk_Out,
      --  dout_doutm8a (8-bit mode 8a)
      Dout_Doutm8A,
      --  dout_doutm8b (8-bit mode 8b)
      Dout_Doutm8B,
      --  dout_doutm8c (8-bit mode 8c)
      Dout_Doutm8C)
     with Size => 4;
   for ENUM use
     (Dout_Doutm1 => 0,
      Dout_Doutm2A => 1,
      Dout_Doutm2B => 2,
      Dout_Doutm2C => 3,
      Gpio_Out_Level_Set => 4,
      Dout_Doutm4A => 5,
      Dout_Doutm4B => 6,
      Dout_Doutm4C => 7,
      Clk_Out => 8,
      Dout_Doutm8A => 9,
      Dout_Doutm8B => 10,
      Dout_Doutm8C => 11);

   --  Output enable source. All other values are reserved.
   type ENUM_1 is
     (
      --  gpio_oe (state set by GPIO_OEREG)
      Gpio_Oe_State_Set_B,
      --  dout_oem1 (1-bit mode)
      Dout_Oem1_1_Bit_Mod,
      --  dout_oem2 (2-bit mode)
      Dout_Oem2_2_Bit_Mod,
      --  dout_oem4 (4-bit mode)
      Dout_Oem4_4_Bit_Mod,
      --  dout_oem8 (8-bit mode)
      Dout_Oem8_8_Bit_Mod)
     with Size => 3;
   for ENUM_1 use
     (Gpio_Oe_State_Set_B => 0,
      Dout_Oem1_1_Bit_Mod => 4,
      Dout_Oem2_2_Bit_Mod => 5,
      Dout_Oem4_4_Bit_Mod => 6,
      Dout_Oem8_8_Bit_Mod => 7);

   subtype OUT_MUX_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt25;

   --  Pin multiplexer configuration registers.
   type OUT_MUX_CFG_Register is record
      --  Output control of output SGPIOn. All other values are reserved.
      P_OUT_CFG : ENUM := Interfaces.LPC43.SGPIO.Dout_Doutm1;
      --  Output enable source. All other values are reserved.
      P_OE_CFG  : ENUM_1 := Interfaces.LPC43.SGPIO.Gpio_Oe_State_Set_B;
      --  Reserved.
      RESERVED  : OUT_MUX_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_MUX_CFG_Register use record
      P_OUT_CFG at 0 range 0 .. 3;
      P_OE_CFG  at 0 range 4 .. 6;
      RESERVED  at 0 range 7 .. 31;
   end record;

   --  Pin multiplexer configuration registers.
   type OUT_MUX_CFG_Registers is array (0 .. 15) of OUT_MUX_CFG_Register;

   ----------------------------
   -- SGPIO_MUX_CFG_Register --
   ----------------------------

   --  Select clock signal.
   type ENUM_2 is
     (
      --  Internal clock signal (slice)
      Internal_Clock_Signa,
      --  External clock signal (pin)
      External_Clock_Signa)
     with Size => 1;
   for ENUM_2 use
     (Internal_Clock_Signa => 0,
      External_Clock_Signa => 1);

   --  Select source clock pin.
   type ENUM_3 is
     (
      --  SGPIO8
      Sgpio8,
      --  SGPIO9
      Sgpio9,
      --  SGPIO10
      Sgpio10,
      --  SGPIO11
      Sgpio11)
     with Size => 2;
   for ENUM_3 use
     (Sgpio8 => 0,
      Sgpio9 => 1,
      Sgpio10 => 2,
      Sgpio11 => 3);

   --  Select clock source slice. Note that slices D, H, O and P do not support
   --  this mode.
   type ENUM_4 is
     (
      --  Slice D
      Slice_D,
      --  Slice H
      Slice_H,
      --  Slice O
      Slice_O,
      --  Slice P
      Slice_P)
     with Size => 2;
   for ENUM_4 use
     (Slice_D => 0,
      Slice_H => 1,
      Slice_O => 2,
      Slice_P => 3);

   --  Select qualifier mode.
   type ENUM_5 is
     (
      --  Enable
      Enable,
      --  Disable
      Disable,
      --  Slice (see bits QUALIFIER_SLICE_MODE in this register)
      Slice_See_Bits_Qual,
      --  External SGPIO pin (SGPIO8, SGPIO9, SGPIO10, or SGPIO11)
      External_Sgpio_Pin)
     with Size => 2;
   for ENUM_5 use
     (Enable => 0,
      Disable => 1,
      Slice_See_Bits_Qual => 2,
      External_Sgpio_Pin => 3);

   --  Select qualifier slice.
   type ENUM_6 is
     (
      --  Slice A, but for slice A slice D is used.
      Slice_A,
      --  Slice H, but for slice H slice O is used.
      Slice_H,
      --  Slice I, but for slice I slice D is used.
      Slice_I,
      --  Slice P, but for slice P slice O is used.
      Slice_P)
     with Size => 2;
   for ENUM_6 use
     (Slice_A => 0,
      Slice_H => 1,
      Slice_I => 2,
      Slice_P => 3);

   --  Enable concatenation.
   type ENUM_7 is
     (
      --  External data pin
      External_Data_Pin,
      --  Concatenate data
      Concatenate_Data)
     with Size => 1;
   for ENUM_7 use
     (External_Data_Pin => 0,
      Concatenate_Data => 1);

   --  Select concatenation order
   type ENUM_8 is
     (
      --  Self-loop
      Self_Loop,
      --  2 slices
      ENUM_2_Slices,
      --  4 slices
      ENUM_4_Slices,
      --  8 slices
      ENUM_8_Slices)
     with Size => 2;
   for ENUM_8 use
     (Self_Loop => 0,
      ENUM_2_Slices => 1,
      ENUM_4_Slices => 2,
      ENUM_8_Slices => 3);

   subtype SGPIO_MUX_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt18;

   --  SGPIO multiplexer configuration registers.
   type SGPIO_MUX_CFG_Register is record
      --  Select clock signal.
      EXT_CLK_ENABLE        : ENUM_2 :=
                               Interfaces.LPC43.SGPIO.Internal_Clock_Signa;
      --  Select source clock pin.
      CLK_SOURCE_PIN_MODE   : ENUM_3 := Interfaces.LPC43.SGPIO.Sgpio8;
      --  Select clock source slice. Note that slices D, H, O and P do not
      --  support this mode.
      CLK_SOURCE_SLICE_MODE : ENUM_4 := Interfaces.LPC43.SGPIO.Slice_D;
      --  Select qualifier mode.
      QUALIFIER_MODE        : ENUM_5 := Interfaces.LPC43.SGPIO.Enable;
      --  Select qualifier pin.
      QUALIFIER_PIN_MODE    : ENUM_3 := Interfaces.LPC43.SGPIO.Sgpio8;
      --  Select qualifier slice.
      QUALIFIER_SLICE_MODE  : ENUM_6 := Interfaces.LPC43.SGPIO.Slice_A;
      --  Enable concatenation.
      CONCAT_ENABLE         : ENUM_7 :=
                               Interfaces.LPC43.SGPIO.External_Data_Pin;
      --  Select concatenation order
      CONCAT_ORDER          : ENUM_8 := Interfaces.LPC43.SGPIO.Self_Loop;
      --  Reserved
      RESERVED              : SGPIO_MUX_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SGPIO_MUX_CFG_Register use record
      EXT_CLK_ENABLE        at 0 range 0 .. 0;
      CLK_SOURCE_PIN_MODE   at 0 range 1 .. 2;
      CLK_SOURCE_SLICE_MODE at 0 range 3 .. 4;
      QUALIFIER_MODE        at 0 range 5 .. 6;
      QUALIFIER_PIN_MODE    at 0 range 7 .. 8;
      QUALIFIER_SLICE_MODE  at 0 range 9 .. 10;
      CONCAT_ENABLE         at 0 range 11 .. 11;
      CONCAT_ORDER          at 0 range 12 .. 13;
      RESERVED              at 0 range 14 .. 31;
   end record;

   --  SGPIO multiplexer configuration registers.
   type SGPIO_MUX_CFG_Registers is array (0 .. 15) of SGPIO_MUX_CFG_Register;

   ----------------------------
   -- SLICE_MUX_CFG_Register --
   ----------------------------

   --  Match mode. Selects whether the match filter is active or whether data
   --  is captured.
   type ENUM_9 is
     (
      --  Do not match data.
      Do_Not_Match_Data,
      --  Match data.
      Match_Data)
     with Size => 1;
   for ENUM_9 use
     (Do_Not_Match_Data => 0,
      Match_Data => 1);

   --  Capture clock mode
   type ENUM_10 is
     (
      --  Use rising clock edge.
      Use_Rising_Clock_Edg,
      --  Use falling clock edge.
      Use_Falling_Clock_Ed)
     with Size => 1;
   for ENUM_10 use
     (Use_Rising_Clock_Edg => 0,
      Use_Falling_Clock_Ed => 1);

   --  Clock generation mode. Selects the clock generated by the slice counter
   --  or by an external pin or other slice as shift clock.
   type ENUM_11 is
     (
      --  Use clock internally generated by COUNTER.
      Use_Clock_Internally,
      --  Use external clock from a pin or other slice.
      Use_External_Clock_F)
     with Size => 1;
   for ENUM_11 use
     (Use_Clock_Internally => 0,
      Use_External_Clock_F => 1);

   --  Invert output clock
   type ENUM_12 is
     (
      --  Normal clock.
      Normal_Clock,
      --  Inverted clock.
      Inverted_Clock)
     with Size => 1;
   for ENUM_12 use
     (Normal_Clock => 0,
      Inverted_Clock => 1);

   --  Condition for input bit match interrupt
   type ENUM_13 is
     (
      --  Detect rising edge.
      Detect_Rising_Edge,
      --  Detect falling edge.
      Detect_Falling_Edge,
      --  Detect LOW level.
      Detect_Low_Level,
      --  Detect HIGH level.
      Detect_High_Level)
     with Size => 2;
   for ENUM_13 use
     (Detect_Rising_Edge => 0,
      Detect_Falling_Edge => 1,
      Detect_Low_Level => 2,
      Detect_High_Level => 3);

   --  Parallel mode
   type ENUM_14 is
     (
      --  Shift 1 bit per clock.
      Shift_1_Bit_Per_Cloc,
      --  Shift 2 bits per clock.
      Shift_2_Bits_Per_Clo,
      --  Shift 4 bits per clock.
      Shift_4_Bits_Per_Clo,
      --  Shift 1 byte per clock.
      Shift_1_Byte_Per_Clo)
     with Size => 2;
   for ENUM_14 use
     (Shift_1_Bit_Per_Cloc => 0,
      Shift_2_Bits_Per_Clo => 1,
      Shift_4_Bits_Per_Clo => 2,
      Shift_1_Byte_Per_Clo => 3);

   --  Inversion qualifier
   type ENUM_15 is
     (
      --  Use normal qualifier.
      Use_Normal_Qualifier,
      --  Use inverted qualifier.
      Use_Inverted_Qualifi)
     with Size => 1;
   for ENUM_15 use
     (Use_Normal_Qualifier => 0,
      Use_Inverted_Qualifi => 1);

   subtype SLICE_MUX_CFG_RESERVED_Field is Interfaces.Bit_Types.UInt23;

   --  Slice multiplexer configuration registers.
   type SLICE_MUX_CFG_Register is record
      --  Match mode. Selects whether the match filter is active or whether
      --  data is captured.
      MATCH_MODE        : ENUM_9 := Interfaces.LPC43.SGPIO.Do_Not_Match_Data;
      --  Capture clock mode
      CLK_CAPTURE_MODE  : ENUM_10 :=
                           Interfaces.LPC43.SGPIO.Use_Rising_Clock_Edg;
      --  Clock generation mode. Selects the clock generated by the slice
      --  counter or by an external pin or other slice as shift clock.
      CLKGEN_MODE       : ENUM_11 :=
                           Interfaces.LPC43.SGPIO.Use_Clock_Internally;
      --  Invert output clock
      INV_OUT_CLK       : ENUM_12 := Interfaces.LPC43.SGPIO.Normal_Clock;
      --  Condition for input bit match interrupt
      DATA_CAPTURE_MODE : ENUM_13 :=
                           Interfaces.LPC43.SGPIO.Detect_Rising_Edge;
      --  Parallel mode
      PARALLEL_MODE     : ENUM_14 :=
                           Interfaces.LPC43.SGPIO.Shift_1_Bit_Per_Cloc;
      --  Inversion qualifier
      INV_QUALIFIER     : ENUM_15 :=
                           Interfaces.LPC43.SGPIO.Use_Normal_Qualifier;
      --  Reserved.
      RESERVED          : SLICE_MUX_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLICE_MUX_CFG_Register use record
      MATCH_MODE        at 0 range 0 .. 0;
      CLK_CAPTURE_MODE  at 0 range 1 .. 1;
      CLKGEN_MODE       at 0 range 2 .. 2;
      INV_OUT_CLK       at 0 range 3 .. 3;
      DATA_CAPTURE_MODE at 0 range 4 .. 5;
      PARALLEL_MODE     at 0 range 6 .. 7;
      INV_QUALIFIER     at 0 range 8 .. 8;
      RESERVED          at 0 range 9 .. 31;
   end record;

   --  Slice multiplexer configuration registers.
   type SLICE_MUX_CFG_Registers is array (0 .. 15) of SLICE_MUX_CFG_Register;

   --  Slice data registers. Each time COUNT0 reaches 0x0 the register shifts loading bit 31 with data captured from DIN(n). DOUT(n) is set to REG(0)

   --  Slice data registers. Each time COUNT0 reaches 0x0 the register shifts
   --  loading bit 31 with data captured from DIN(n). DOUT(n) is set to REG(0)
   type REG_Registers is array (0 .. 15) of Interfaces.Bit_Types.Word;

   --  Slice data shadow registers. Each time POS reaches 0x0 the contents of REG_SS is exchanged with the content of REG

   --  Slice data shadow registers. Each time POS reaches 0x0 the contents of
   --  REG_SS is exchanged with the content of REG
   type REG_SS_Registers is array (0 .. 15) of Interfaces.Bit_Types.Word;

   ---------------------
   -- PRESET_Register --
   ---------------------

   subtype PRESET_PRESET_Field is Interfaces.Bit_Types.UInt12;
   subtype PRESET_RESERVED_Field is Interfaces.Bit_Types.UInt20;

   --  Reload value of COUNT0, loaded when COUNT0 reaches 0x0
   type PRESET_Register is record
      --  Counter reload value; loaded when COUNT reaches 0x0.
      PRESET   : PRESET_PRESET_Field := 16#0#;
      --  Reserved.
      RESERVED : PRESET_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRESET_Register use record
      PRESET   at 0 range 0 .. 11;
      RESERVED at 0 range 12 .. 31;
   end record;

   --  Reload value of COUNT0, loaded when COUNT0 reaches 0x0
   type PRESET_Registers is array (0 .. 15) of PRESET_Register;

   --------------------
   -- COUNT_Register --
   --------------------

   subtype COUNT_COUNT_Field is Interfaces.Bit_Types.UInt12;
   subtype COUNT_RESERVED_Field is Interfaces.Bit_Types.UInt20;

   --  Down counter, counts down each clock cycle.
   type COUNT_Register is record
      --  Down counter, counts down each shift clock cycle. Next count after
      --  0x0 is PRESET.
      COUNT    : COUNT_COUNT_Field := 16#0#;
      --  Reserved.
      RESERVED : COUNT_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for COUNT_Register use record
      COUNT    at 0 range 0 .. 11;
      RESERVED at 0 range 12 .. 31;
   end record;

   --  Down counter, counts down each clock cycle.
   type COUNT_Registers is array (0 .. 15) of COUNT_Register;

   ------------------
   -- POS_Register --
   ------------------

   subtype POS_POS_Field is Interfaces.Bit_Types.Byte;
   subtype POS_POS_RESET_Field is Interfaces.Bit_Types.Byte;
   subtype POS_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Each time COUNT0 reaches 0x0 POS counts down.
   type POS_Register is record
      --  Each time COUNT reaches 0x0 POS counts down.
      POS       : POS_POS_Field := 16#0#;
      --  Reload value for POS after POS reaches 0x0.
      POS_RESET : POS_POS_RESET_Field := 16#0#;
      --  Reserved.
      RESERVED  : POS_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for POS_Register use record
      POS       at 0 range 0 .. 7;
      POS_RESET at 0 range 8 .. 15;
      RESERVED  at 0 range 16 .. 31;
   end record;

   --  Each time COUNT0 reaches 0x0 POS counts down.
   type POS_Registers is array (0 .. 15) of POS_Register;

   -------------------------
   -- GPIO_INREG_Register --
   -------------------------

   subtype GPIO_INREG_GPIO_INi_Field is Interfaces.Bit_Types.Short;
   subtype GPIO_INREG_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  GPIO input status register
   type GPIO_INREG_Register is record
      --  Read-only. Bit i reflects the input state of SGPIO pin i . 0 = LOW 1
      --  = HIGH
      GPIO_INi : GPIO_INREG_GPIO_INi_Field;
      --  Read-only. Reserved.
      RESERVED : GPIO_INREG_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO_INREG_Register use record
      GPIO_INi at 0 range 0 .. 15;
      RESERVED at 0 range 16 .. 31;
   end record;

   --------------------------
   -- GPIO_OUTREG_Register --
   --------------------------

   subtype GPIO_OUTREG_GPIO_OUT_Field is Interfaces.Bit_Types.Short;
   subtype GPIO_OUTREG_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  GPIO output control register
   type GPIO_OUTREG_Register is record
      --  GPIO output register. Bit i sets the output of SGPIO pin i. 0 = LOW 1
      --  = HIGH
      GPIO_OUT : GPIO_OUTREG_GPIO_OUT_Field := 16#0#;
      --  Reserved.
      RESERVED : GPIO_OUTREG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO_OUTREG_Register use record
      GPIO_OUT at 0 range 0 .. 15;
      RESERVED at 0 range 16 .. 31;
   end record;

   --------------------------
   -- GPIO_OENREG_Register --
   --------------------------

   subtype GPIO_OENREG_GPIO_OE_Field is Interfaces.Bit_Types.Short;
   subtype GPIO_OENREG_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  GPIO OE control register
   type GPIO_OENREG_Register is record
      --  Bit i selects the output enable state of SGPIO pin i. 0 = GPIO output
      --  i is tri-stated . 1 = GPIO output i is active.
      GPIO_OE  : GPIO_OENREG_GPIO_OE_Field := 16#0#;
      --  Reserved.
      RESERVED : GPIO_OENREG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO_OENREG_Register use record
      GPIO_OE  at 0 range 0 .. 15;
      RESERVED at 0 range 16 .. 31;
   end record;

   --------------------------
   -- CTRL_ENABLE_Register --
   --------------------------

   subtype CTRL_ENABLE_CTRL_EN_Field is Interfaces.Bit_Types.Short;
   subtype CTRL_ENABLE_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Enables the slice COUNT counter
   type CTRL_ENABLE_Register is record
      --  Slice count enable. Bit n controls slice n (0 = slice A, ..., 15 =
      --  slice P). 0 = Disables slice shift clock. 1 = Starts COUNTn or
      --  external shift clock.
      CTRL_EN  : CTRL_ENABLE_CTRL_EN_Field := 16#0#;
      --  Reserved.
      RESERVED : CTRL_ENABLE_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_ENABLE_Register use record
      CTRL_EN  at 0 range 0 .. 15;
      RESERVED at 0 range 16 .. 31;
   end record;

   ---------------------------
   -- CTRL_DISABLE_Register --
   ---------------------------

   subtype CTRL_DISABLE_CTRL_DIS_Field is Interfaces.Bit_Types.Short;
   subtype CTRL_DISABLE_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Disables the slice POS counter
   type CTRL_DISABLE_Register is record
      --  Slice count disable. Bit n controls slice n, (0 = slice A, ..., 15 =
      --  slice P). 0 = Enables COUNT and POS counters. The counters start
      --  counting when the CTRL_EN bit or bits are set in the CTRL_ENABLED
      --  register. 1 = Disables POS counter of slice n.
      CTRL_DIS : CTRL_DISABLE_CTRL_DIS_Field := 16#0#;
      --  Reserved.
      RESERVED : CTRL_DISABLE_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_DISABLE_Register use record
      CTRL_DIS at 0 range 0 .. 15;
      RESERVED at 0 range 16 .. 31;
   end record;

   -----------------------
   -- CLR_EN_0_Register --
   -----------------------

   subtype CLR_EN_0_CLR_SCI_Field is Interfaces.Bit_Types.Short;
   subtype CLR_EN_0_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Shift clock interrupt clear mask
   type CLR_EN_0_Register is record
      --  Write-only. 1 = Shift clock interrupt clear mask of slice n.
      CLR_SCI  : CLR_EN_0_CLR_SCI_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED : CLR_EN_0_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLR_EN_0_Register use record
      CLR_SCI  at 0 range 0 .. 15;
      RESERVED at 0 range 16 .. 31;
   end record;

   -----------------------
   -- SET_EN_0_Register --
   -----------------------

   subtype SET_EN_0_SET_SCI_Field is Interfaces.Bit_Types.Short;
   subtype SET_EN_0_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Shift clock interrupt set mask
   type SET_EN_0_Register is record
      --  Write-only. 1 = Shift clock interrupt set mask of slice n.
      SET_SCI  : SET_EN_0_SET_SCI_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED : SET_EN_0_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET_EN_0_Register use record
      SET_SCI  at 0 range 0 .. 15;
      RESERVED at 0 range 16 .. 31;
   end record;

   -----------------------
   -- ENABLE_0_Register --
   -----------------------

   subtype ENABLE_0_ENABLE_SCI_Field is Interfaces.Bit_Types.Short;
   subtype ENABLE_0_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Shift clock interrupt enable
   type ENABLE_0_Register is record
      --  Read-only. 1 = Shift clock interrupt enable of slice n.
      ENABLE_SCI : ENABLE_0_ENABLE_SCI_Field;
      --  Read-only. Reserved.
      RESERVED   : ENABLE_0_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE_0_Register use record
      ENABLE_SCI at 0 range 0 .. 15;
      RESERVED   at 0 range 16 .. 31;
   end record;

   -----------------------
   -- STATUS_0_Register --
   -----------------------

   subtype STATUS_0_STATUS_SCI_Field is Interfaces.Bit_Types.Short;
   subtype STATUS_0_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Shift clock interrupt status
   type STATUS_0_Register is record
      --  Read-only. Shift clock interrupt status of slice n.
      STATUS_SCI : STATUS_0_STATUS_SCI_Field;
      --  Read-only. Reserved.
      RESERVED   : STATUS_0_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_0_Register use record
      STATUS_SCI at 0 range 0 .. 15;
      RESERVED   at 0 range 16 .. 31;
   end record;

   ---------------------------
   -- CLR_STATUS_0_Register --
   ---------------------------

   subtype CLR_STATUS_0_CLR_STATUS_SCI_Field is Interfaces.Bit_Types.Short;
   subtype CLR_STATUS_0_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Shift clock interrupt clear status
   type CLR_STATUS_0_Register is record
      --  Write-only. Shift clock interrupt clear status of slice n.
      CLR_STATUS_SCI : CLR_STATUS_0_CLR_STATUS_SCI_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED       : CLR_STATUS_0_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLR_STATUS_0_Register use record
      CLR_STATUS_SCI at 0 range 0 .. 15;
      RESERVED       at 0 range 16 .. 31;
   end record;

   ---------------------------
   -- SET_STATUS_0_Register --
   ---------------------------

   subtype SET_STATUS_0_SET_STATUS_SCI_Field is Interfaces.Bit_Types.Short;
   subtype SET_STATUS_0_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Shift clock interrupt set status
   type SET_STATUS_0_Register is record
      --  Write-only. Shift clock interrupt set status of slice n.
      SET_STATUS_SCI : SET_STATUS_0_SET_STATUS_SCI_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED       : SET_STATUS_0_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET_STATUS_0_Register use record
      SET_STATUS_SCI at 0 range 0 .. 15;
      RESERVED       at 0 range 16 .. 31;
   end record;

   -----------------------
   -- CLR_EN_1_Register --
   -----------------------

   subtype CLR_EN_1_CLR_EN_CCI_Field is Interfaces.Bit_Types.Short;
   subtype CLR_EN_1_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Exchange clock interrupt clear mask
   type CLR_EN_1_Register is record
      --  Write-only. 1 = Exchange clock interrupt clear mask of slice n.
      CLR_EN_CCI : CLR_EN_1_CLR_EN_CCI_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED   : CLR_EN_1_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLR_EN_1_Register use record
      CLR_EN_CCI at 0 range 0 .. 15;
      RESERVED   at 0 range 16 .. 31;
   end record;

   -----------------------
   -- SET_EN_1_Register --
   -----------------------

   subtype SET_EN_1_SET_EN_CCI_Field is Interfaces.Bit_Types.Short;
   subtype SET_EN_1_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Exchange clock interrupt set mask
   type SET_EN_1_Register is record
      --  Write-only. 1 = Exchange clock interrupt set mask of slice n.
      SET_EN_CCI : SET_EN_1_SET_EN_CCI_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED   : SET_EN_1_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET_EN_1_Register use record
      SET_EN_CCI at 0 range 0 .. 15;
      RESERVED   at 0 range 16 .. 31;
   end record;

   -----------------------
   -- ENABLE_1_Register --
   -----------------------

   subtype ENABLE_1_ENABLE_CCI_Field is Interfaces.Bit_Types.Short;
   subtype ENABLE_1_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Exchange clock interrupt enable
   type ENABLE_1_Register is record
      --  Read-only. Exchange clock interrupt enable of slice n.
      ENABLE_CCI : ENABLE_1_ENABLE_CCI_Field;
      --  Read-only. Reserved.
      RESERVED   : ENABLE_1_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE_1_Register use record
      ENABLE_CCI at 0 range 0 .. 15;
      RESERVED   at 0 range 16 .. 31;
   end record;

   -----------------------
   -- STATUS_1_Register --
   -----------------------

   subtype STATUS_1_STATUS_CCI_Field is Interfaces.Bit_Types.Short;
   subtype STATUS_1_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Exchange clock interrupt status
   type STATUS_1_Register is record
      --  Read-only. Exchange clock interrupt status of slice n.
      STATUS_CCI : STATUS_1_STATUS_CCI_Field;
      --  Read-only. Reserved.
      RESERVED   : STATUS_1_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_1_Register use record
      STATUS_CCI at 0 range 0 .. 15;
      RESERVED   at 0 range 16 .. 31;
   end record;

   ---------------------------
   -- CLR_STATUS_1_Register --
   ---------------------------

   subtype CLR_STATUS_1_CLR_STATUS_CCI_Field is Interfaces.Bit_Types.Short;
   subtype CLR_STATUS_1_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Exchange clock interrupt clear status
   type CLR_STATUS_1_Register is record
      --  Write-only. Exchange clock interrupt clear status of slice n.
      CLR_STATUS_CCI : CLR_STATUS_1_CLR_STATUS_CCI_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED       : CLR_STATUS_1_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLR_STATUS_1_Register use record
      CLR_STATUS_CCI at 0 range 0 .. 15;
      RESERVED       at 0 range 16 .. 31;
   end record;

   ---------------------------
   -- SET_STATUS_1_Register --
   ---------------------------

   subtype SET_STATUS_1_SET_STATUS_CCI_Field is Interfaces.Bit_Types.Short;
   subtype SET_STATUS_1_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Exchange clock interrupt set status
   type SET_STATUS_1_Register is record
      --  Write-only. Exchange clock interrupt set status of slice n.
      SET_STATUS_CCI : SET_STATUS_1_SET_STATUS_CCI_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED       : SET_STATUS_1_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET_STATUS_1_Register use record
      SET_STATUS_CCI at 0 range 0 .. 15;
      RESERVED       at 0 range 16 .. 31;
   end record;

   -----------------------
   -- CLR_EN_2_Register --
   -----------------------

   subtype CLR_EN_2_CLR_EN2_PMI_Field is Interfaces.Bit_Types.Short;
   subtype CLR_EN_2_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Pattern match interrupt clear mask
   type CLR_EN_2_Register is record
      --  Write-only. 1 = Match interrupt clear mask of slice n.
      CLR_EN2_PMI : CLR_EN_2_CLR_EN2_PMI_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED    : CLR_EN_2_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLR_EN_2_Register use record
      CLR_EN2_PMI at 0 range 0 .. 15;
      RESERVED    at 0 range 16 .. 31;
   end record;

   -----------------------
   -- SET_EN_2_Register --
   -----------------------

   subtype SET_EN_2_SET_EN_PMI_Field is Interfaces.Bit_Types.Short;
   subtype SET_EN_2_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Pattern match interrupt set mask
   type SET_EN_2_Register is record
      --  Write-only. 1 = Match interrupt set mask of slice n.
      SET_EN_PMI : SET_EN_2_SET_EN_PMI_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED   : SET_EN_2_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET_EN_2_Register use record
      SET_EN_PMI at 0 range 0 .. 15;
      RESERVED   at 0 range 16 .. 31;
   end record;

   -----------------------
   -- ENABLE_2_Register --
   -----------------------

   subtype ENABLE_2_ENABLE_PMI_Field is Interfaces.Bit_Types.Short;
   subtype ENABLE_2_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Pattern match interrupt enable
   type ENABLE_2_Register is record
      --  Read-only. Match interrupt enable of slice n.
      ENABLE_PMI : ENABLE_2_ENABLE_PMI_Field;
      --  Read-only. Reserved.
      RESERVED   : ENABLE_2_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE_2_Register use record
      ENABLE_PMI at 0 range 0 .. 15;
      RESERVED   at 0 range 16 .. 31;
   end record;

   -----------------------
   -- STATUS_2_Register --
   -----------------------

   subtype STATUS_2_STATUS_PMI_Field is Interfaces.Bit_Types.Short;
   subtype STATUS_2_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Pattern match interrupt status
   type STATUS_2_Register is record
      --  Read-only. Match interrupt status of slice n.
      STATUS_PMI : STATUS_2_STATUS_PMI_Field;
      --  Read-only. Reserved.
      RESERVED   : STATUS_2_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_2_Register use record
      STATUS_PMI at 0 range 0 .. 15;
      RESERVED   at 0 range 16 .. 31;
   end record;

   ---------------------------
   -- CLR_STATUS_2_Register --
   ---------------------------

   subtype CLR_STATUS_2_CLR_STATUS_PMI_Field is Interfaces.Bit_Types.Short;
   subtype CLR_STATUS_2_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Pattern match interrupt clear status
   type CLR_STATUS_2_Register is record
      --  Write-only. Match interrupt clear status of slice n.
      CLR_STATUS_PMI : CLR_STATUS_2_CLR_STATUS_PMI_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED       : CLR_STATUS_2_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLR_STATUS_2_Register use record
      CLR_STATUS_PMI at 0 range 0 .. 15;
      RESERVED       at 0 range 16 .. 31;
   end record;

   ---------------------------
   -- SET_STATUS_2_Register --
   ---------------------------

   subtype SET_STATUS_2_SET_STATUS_PMI_Field is Interfaces.Bit_Types.Short;
   subtype SET_STATUS_2_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Pattern match interrupt set status
   type SET_STATUS_2_Register is record
      --  Write-only. Match interrupt set status of slice n.
      SET_STATUS_PMI : SET_STATUS_2_SET_STATUS_PMI_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED       : SET_STATUS_2_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET_STATUS_2_Register use record
      SET_STATUS_PMI at 0 range 0 .. 15;
      RESERVED       at 0 range 16 .. 31;
   end record;

   -----------------------
   -- CLR_EN_3_Register --
   -----------------------

   subtype CLR_EN_3_CLR_EN_INPI_Field is Interfaces.Bit_Types.Short;
   subtype CLR_EN_3_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Input interrupt clear mask
   type CLR_EN_3_Register is record
      --  Write-only. 1 = Input interrupt clear mask of slice n.
      CLR_EN_INPI : CLR_EN_3_CLR_EN_INPI_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED    : CLR_EN_3_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLR_EN_3_Register use record
      CLR_EN_INPI at 0 range 0 .. 15;
      RESERVED    at 0 range 16 .. 31;
   end record;

   -----------------------
   -- SET_EN_3_Register --
   -----------------------

   subtype SET_EN_3_SET_EN_INPI_Field is Interfaces.Bit_Types.Short;
   subtype SET_EN_3_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Input bit match interrupt set mask
   type SET_EN_3_Register is record
      --  Write-only. 1 = Input interrupt set mask of slice n.
      SET_EN_INPI : SET_EN_3_SET_EN_INPI_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED    : SET_EN_3_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET_EN_3_Register use record
      SET_EN_INPI at 0 range 0 .. 15;
      RESERVED    at 0 range 16 .. 31;
   end record;

   -----------------------
   -- ENABLE_3_Register --
   -----------------------

   subtype ENABLE_3_ENABLE3_INPI_Field is Interfaces.Bit_Types.Short;
   subtype ENABLE_3_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Input bit match interrupt enable
   type ENABLE_3_Register is record
      --  Read-only. Input interrupt enable of slice n.
      ENABLE3_INPI : ENABLE_3_ENABLE3_INPI_Field;
      --  Read-only. Reserved.
      RESERVED     : ENABLE_3_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE_3_Register use record
      ENABLE3_INPI at 0 range 0 .. 15;
      RESERVED     at 0 range 16 .. 31;
   end record;

   -----------------------
   -- STATUS_3_Register --
   -----------------------

   subtype STATUS_3_STATUS_INPI_Field is Interfaces.Bit_Types.Short;
   subtype STATUS_3_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Input bit match interrupt status
   type STATUS_3_Register is record
      --  Read-only. Input interrupt status of slice n.
      STATUS_INPI : STATUS_3_STATUS_INPI_Field;
      --  Read-only. Reserved.
      RESERVED    : STATUS_3_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_3_Register use record
      STATUS_INPI at 0 range 0 .. 15;
      RESERVED    at 0 range 16 .. 31;
   end record;

   ---------------------------
   -- CLR_STATUS_3_Register --
   ---------------------------

   subtype CLR_STATUS_3_CLR_STATUS_INPI_Field is Interfaces.Bit_Types.Short;
   subtype CLR_STATUS_3_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Input bit match interrupt clear status
   type CLR_STATUS_3_Register is record
      --  Write-only. Input interrupt clear status of slice n.
      CLR_STATUS_INPI : CLR_STATUS_3_CLR_STATUS_INPI_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED        : CLR_STATUS_3_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLR_STATUS_3_Register use record
      CLR_STATUS_INPI at 0 range 0 .. 15;
      RESERVED        at 0 range 16 .. 31;
   end record;

   ---------------------------
   -- SET_STATUS_3_Register --
   ---------------------------

   subtype SET_STATUS_3_SET_STATUS_INPI_Field is Interfaces.Bit_Types.Short;
   subtype SET_STATUS_3_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Input bit match interrupt set status
   type SET_STATUS_3_Register is record
      --  Write-only. Shift interrupt set status of slice n.
      SET_STATUS_INPI : SET_STATUS_3_SET_STATUS_INPI_Field := 16#0#;
      --  Write-only. Reserved.
      RESERVED        : SET_STATUS_3_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET_STATUS_3_Register use record
      SET_STATUS_INPI at 0 range 0 .. 15;
      RESERVED        at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial GPIO (SGPIO)
   type SGPIO_Peripheral is record
      --  Pin multiplexer configuration registers.
      OUT_MUX_CFG   : OUT_MUX_CFG_Registers;
      --  SGPIO multiplexer configuration registers.
      SGPIO_MUX_CFG : SGPIO_MUX_CFG_Registers;
      --  Slice multiplexer configuration registers.
      SLICE_MUX_CFG : SLICE_MUX_CFG_Registers;
      --  Slice data registers. Each time COUNT0 reaches 0x0 the register
      --  shifts loading bit 31 with data captured from DIN(n). DOUT(n) is set
      --  to REG(0)
      REG           : REG_Registers;
      --  Slice data shadow registers. Each time POS reaches 0x0 the contents
      --  of REG_SS is exchanged with the content of REG
      REG_SS        : REG_SS_Registers;
      --  Reload value of COUNT0, loaded when COUNT0 reaches 0x0
      PRESET        : PRESET_Registers;
      --  Down counter, counts down each clock cycle.
      COUNT         : COUNT_Registers;
      --  Each time COUNT0 reaches 0x0 POS counts down.
      POS           : POS_Registers;
      --  Mask for pattern match function of slice A
      MASK_A        : Interfaces.Bit_Types.Word;
      --  Mask for pattern match function of slice H
      MASK_H        : Interfaces.Bit_Types.Word;
      --  Mask for pattern match function of slice I
      MASK_I        : Interfaces.Bit_Types.Word;
      --  Mask for pattern match function of slice P
      MASK_P        : Interfaces.Bit_Types.Word;
      --  GPIO input status register
      GPIO_INREG    : GPIO_INREG_Register;
      --  GPIO output control register
      GPIO_OUTREG   : GPIO_OUTREG_Register;
      --  GPIO OE control register
      GPIO_OENREG   : GPIO_OENREG_Register;
      --  Enables the slice COUNT counter
      CTRL_ENABLE   : CTRL_ENABLE_Register;
      --  Disables the slice POS counter
      CTRL_DISABLE  : CTRL_DISABLE_Register;
      --  Shift clock interrupt clear mask
      CLR_EN_0      : CLR_EN_0_Register;
      --  Shift clock interrupt set mask
      SET_EN_0      : SET_EN_0_Register;
      --  Shift clock interrupt enable
      ENABLE_0      : ENABLE_0_Register;
      --  Shift clock interrupt status
      STATUS_0      : STATUS_0_Register;
      --  Shift clock interrupt clear status
      CLR_STATUS_0  : CLR_STATUS_0_Register;
      --  Shift clock interrupt set status
      SET_STATUS_0  : SET_STATUS_0_Register;
      --  Exchange clock interrupt clear mask
      CLR_EN_1      : CLR_EN_1_Register;
      --  Exchange clock interrupt set mask
      SET_EN_1      : SET_EN_1_Register;
      --  Exchange clock interrupt enable
      ENABLE_1      : ENABLE_1_Register;
      --  Exchange clock interrupt status
      STATUS_1      : STATUS_1_Register;
      --  Exchange clock interrupt clear status
      CLR_STATUS_1  : CLR_STATUS_1_Register;
      --  Exchange clock interrupt set status
      SET_STATUS_1  : SET_STATUS_1_Register;
      --  Pattern match interrupt clear mask
      CLR_EN_2      : CLR_EN_2_Register;
      --  Pattern match interrupt set mask
      SET_EN_2      : SET_EN_2_Register;
      --  Pattern match interrupt enable
      ENABLE_2      : ENABLE_2_Register;
      --  Pattern match interrupt status
      STATUS_2      : STATUS_2_Register;
      --  Pattern match interrupt clear status
      CLR_STATUS_2  : CLR_STATUS_2_Register;
      --  Pattern match interrupt set status
      SET_STATUS_2  : SET_STATUS_2_Register;
      --  Input interrupt clear mask
      CLR_EN_3      : CLR_EN_3_Register;
      --  Input bit match interrupt set mask
      SET_EN_3      : SET_EN_3_Register;
      --  Input bit match interrupt enable
      ENABLE_3      : ENABLE_3_Register;
      --  Input bit match interrupt status
      STATUS_3      : STATUS_3_Register;
      --  Input bit match interrupt clear status
      CLR_STATUS_3  : CLR_STATUS_3_Register;
      --  Input bit match interrupt set status
      SET_STATUS_3  : SET_STATUS_3_Register;
   end record
     with Volatile;

   for SGPIO_Peripheral use record
      OUT_MUX_CFG   at 0 range 0 .. 511;
      SGPIO_MUX_CFG at 64 range 0 .. 511;
      SLICE_MUX_CFG at 128 range 0 .. 511;
      REG           at 192 range 0 .. 511;
      REG_SS        at 256 range 0 .. 511;
      PRESET        at 320 range 0 .. 511;
      COUNT         at 384 range 0 .. 511;
      POS           at 448 range 0 .. 511;
      MASK_A        at 512 range 0 .. 31;
      MASK_H        at 516 range 0 .. 31;
      MASK_I        at 520 range 0 .. 31;
      MASK_P        at 524 range 0 .. 31;
      GPIO_INREG    at 528 range 0 .. 31;
      GPIO_OUTREG   at 532 range 0 .. 31;
      GPIO_OENREG   at 536 range 0 .. 31;
      CTRL_ENABLE   at 540 range 0 .. 31;
      CTRL_DISABLE  at 544 range 0 .. 31;
      CLR_EN_0      at 3840 range 0 .. 31;
      SET_EN_0      at 3844 range 0 .. 31;
      ENABLE_0      at 3848 range 0 .. 31;
      STATUS_0      at 3852 range 0 .. 31;
      CLR_STATUS_0  at 3856 range 0 .. 31;
      SET_STATUS_0  at 3860 range 0 .. 31;
      CLR_EN_1      at 3872 range 0 .. 31;
      SET_EN_1      at 3876 range 0 .. 31;
      ENABLE_1      at 3880 range 0 .. 31;
      STATUS_1      at 3884 range 0 .. 31;
      CLR_STATUS_1  at 3888 range 0 .. 31;
      SET_STATUS_1  at 3892 range 0 .. 31;
      CLR_EN_2      at 3904 range 0 .. 31;
      SET_EN_2      at 3908 range 0 .. 31;
      ENABLE_2      at 3912 range 0 .. 31;
      STATUS_2      at 3916 range 0 .. 31;
      CLR_STATUS_2  at 3920 range 0 .. 31;
      SET_STATUS_2  at 3924 range 0 .. 31;
      CLR_EN_3      at 3936 range 0 .. 31;
      SET_EN_3      at 3940 range 0 .. 31;
      ENABLE_3      at 3944 range 0 .. 31;
      STATUS_3      at 3948 range 0 .. 31;
      CLR_STATUS_3  at 3952 range 0 .. 31;
      SET_STATUS_3  at 3956 range 0 .. 31;
   end record;

   --  Serial GPIO (SGPIO)
   SGPIO_Periph : aliased SGPIO_Peripheral
     with Import, Address => SGPIO_Base;

end Interfaces.LPC43.SGPIO;
