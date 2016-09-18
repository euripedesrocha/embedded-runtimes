--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43.SCU is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --------------------
   -- SFSP0_Register --
   --------------------

   --  Select pin function.
   type ENUM is
     (
      --  Function 0 (default)
      Function_0_Default,
      --  Function 1
      Function_1,
      --  Function 2
      Function_2,
      --  Function 3
      Function_3,
      --  Function 4
      Function_4,
      --  Function 5
      Function_5,
      --  Function 6
      Function_6,
      --  Function 7
      Function_7)
     with Size => 3;
   for ENUM use
     (Function_0_Default => 0,
      Function_1 => 1,
      Function_2 => 2,
      Function_3 => 3,
      Function_4 => 4,
      Function_5 => 5,
      Function_6 => 6,
      Function_7 => 7);

   --  Enable pull-down resistor at pad.
   type ENUM_1 is
     (
      --  Disable pull-down.
      Disable_Pull_Down,
      --  Enable pull-down.Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Down)
     with Size => 1;
   for ENUM_1 use
     (Disable_Pull_Down => 0,
      Enable_Pull_Down => 1);

   --  Disable pull-up resistor at pad. By default, the pull-up resistor is
   --  enabled at reset.
   type ENUM_2 is
     (
      --  Enable pull-up. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Up,
      --  Disable pull-up.
      Disable_Pull_Up)
     with Size => 1;
   for ENUM_2 use
     (Enable_Pull_Up => 0,
      Disable_Pull_Up => 1);

   --  Select Slew rate.
   type ENUM_3 is
     (
      --  Slow (low noise with medium speed)
      Slow_Low_Noise_With,
      --  Fast (medium noise with fast speed)
      Fast_Medium_Noise_W)
     with Size => 1;
   for ENUM_3 use
     (Slow_Low_Noise_With => 0,
      Fast_Medium_Noise_W => 1);

   --  Input buffer enable. The input buffer is disabled by default at reset
   --  and must be enabled for receiving.
   type ENUM_4 is
     (
      --  Disable input buffer
      Disable_Input_Buffer,
      --  Enable input buffer
      Enable_Input_Buffer)
     with Size => 1;
   for ENUM_4 use
     (Disable_Input_Buffer => 0,
      Enable_Input_Buffer => 1);

   --  Input glitch filter. Disable the input glitch filter for clocking
   --  signals higher than 30 MHz.
   type ENUM_5 is
     (
      --  Enable input glitch filter
      Enable_Input_Glitch,
      --  Disable input glitch filter
      Disable_Input_Glitch)
     with Size => 1;
   for ENUM_5 use
     (Enable_Input_Glitch => 0,
      Disable_Input_Glitch => 1);

   subtype SFSP0_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin configuration register for pins P0
   type SFSP0_Register is record
      --  Select pin function.
      MODE     : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : ENUM_3 := Interfaces.LPC43.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : ENUM_5 := Interfaces.LPC43.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSP0_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP0_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins P0
   type SFSP0_Registers is array (0 .. 1) of SFSP0_Register;

   --------------------
   -- SFSP1_Register --
   --------------------

   subtype SFSP1_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin configuration register for pins P1
   type SFSP1_Register is record
      --  Select pin function.
      MODE     : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : ENUM_3 := Interfaces.LPC43.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : ENUM_5 := Interfaces.LPC43.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSP1_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP1_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins P1
   type SFSP1_Registers is array (0 .. 16) of SFSP1_Register;

   -----------------------
   -- SFSP1_17_Register --
   -----------------------

   subtype SFSP1_17_RESERVED_Field is Interfaces.Bit_Types.Bit;

   --  Select drive strength.
   type ENUM_6 is
     (
      --  Normal-drive: 4 mA drive strength
      Normal_Drive_4_Ma_D,
      --  Medium-drive: 8 mA drive strength
      Medium_Drive_8_Ma_D,
      --  High-drive: 14 mA drive strength
      High_Drive_14_Ma_Dr,
      --  Ultra high-drive: 20 mA drive strength
      Ultra_High_Drive_20)
     with Size => 2;
   for ENUM_6 use
     (Normal_Drive_4_Ma_D => 0,
      Medium_Drive_8_Ma_D => 1,
      High_Drive_14_Ma_Dr => 2,
      Ultra_High_Drive_20 => 3);

   subtype SFSP1_17_RESERVED_Field_1 is Interfaces.Bit_Types.UInt22;

   --  Pin configuration register for pins P1_17
   type SFSP1_17_Register is record
      --  Select pin function.
      MODE       : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD        : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN       : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Reserved
      RESERVED   : SFSP1_17_RESERVED_Field := 16#0#;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  but must be enabled to transfer data from the I/O buffer to the pad.
      EZI        : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF        : ENUM_5 := Interfaces.LPC43.SCU.Enable_Input_Glitch;
      --  Select drive strength.
      EHD        : ENUM_6 := Interfaces.LPC43.SCU.Normal_Drive_4_Ma_D;
      --  Reserved
      RESERVED_1 : SFSP1_17_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP1_17_Register use record
      MODE       at 0 range 0 .. 2;
      EPD        at 0 range 3 .. 3;
      EPUN       at 0 range 4 .. 4;
      RESERVED   at 0 range 5 .. 5;
      EZI        at 0 range 6 .. 6;
      ZIF        at 0 range 7 .. 7;
      EHD        at 0 range 8 .. 9;
      RESERVED_1 at 0 range 10 .. 31;
   end record;

   -------------------
   -- SFSP_Register --
   -------------------

   --  Pin configuration register for pins P1
   type SFSP_Register is record
      --  Select pin function.
      MODE     : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : ENUM_3 := Interfaces.LPC43.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : ENUM_5 := Interfaces.LPC43.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSP1_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins P1
   type SFSP_Registers is array (0 .. 2) of SFSP_Register;

   --------------------
   -- SFSP2_Register --
   --------------------

   subtype SFSP2_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype SFSP2_RESERVED_Field_1 is Interfaces.Bit_Types.UInt22;

   --  Pin configuration register for pins P2
   type SFSP2_Register is record
      --  Select pin function.
      MODE       : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD        : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN       : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Reserved
      RESERVED   : SFSP2_RESERVED_Field := 16#0#;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  but must be enabled to transfer data from the I/O buffer to the pad.
      EZI        : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF        : ENUM_5 := Interfaces.LPC43.SCU.Enable_Input_Glitch;
      --  Select drive strength.
      EHD        : ENUM_6 := Interfaces.LPC43.SCU.Normal_Drive_4_Ma_D;
      --  Reserved
      RESERVED_1 : SFSP2_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP2_Register use record
      MODE       at 0 range 0 .. 2;
      EPD        at 0 range 3 .. 3;
      EPUN       at 0 range 4 .. 4;
      RESERVED   at 0 range 5 .. 5;
      EZI        at 0 range 6 .. 6;
      ZIF        at 0 range 7 .. 7;
      EHD        at 0 range 8 .. 9;
      RESERVED_1 at 0 range 10 .. 31;
   end record;

   --  Pin configuration register for pins P2
   type SFSP2_Registers is array (0 .. 2) of SFSP2_Register;

   --------------------
   -- SFSP2_Register --
   --------------------

   subtype SFSP2_RESERVED_Field_2 is Interfaces.Bit_Types.UInt24;

   --  Pin configuration register for pins P2
   type SFSP2_Register_1 is record
      --  Select pin function.
      MODE     : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : ENUM_3 := Interfaces.LPC43.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : ENUM_5 := Interfaces.LPC43.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSP2_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP2_Register_1 use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins P2
   type SFSP2_Registers_1 is array (0 .. 6) of SFSP2_Register_1;

   ----------------------
   -- SFSP3_3_Register --
   ----------------------

   --  Slew rate
   type ENUM_7 is
     (
      --  Fast (low noise with fast speed)
      Fast_Low_Noise_With,
      --  High-speed (medium noise with high speed)
      High_Speed_Medium_N)
     with Size => 1;
   for ENUM_7 use
     (Fast_Low_Noise_With => 0,
      High_Speed_Medium_N => 1);

   --  Input glitch filter. Disable the input glitch filter for clocking
   --  signals higher than 30 MHz.
   type ENUM_8 is
     (
      --  Enable input filter
      Enable_Input_Filter,
      --  Disable input filter
      Disable_Input_Filter)
     with Size => 1;
   for ENUM_8 use
     (Enable_Input_Filter => 0,
      Disable_Input_Filter => 1);

   subtype SFSP3_3_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin configuration register for pins P3
   type SFSP3_3_Register is record
      --  Select pin function.
      MODE     : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Slew rate
      EHS      : ENUM_7 := Interfaces.LPC43.SCU.Fast_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : ENUM_8 := Interfaces.LPC43.SCU.Enable_Input_Filter;
      --  Reserved
      RESERVED : SFSP3_3_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP3_3_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --------------------
   -- SFSP3_Register --
   --------------------

   subtype SFSP3_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin configuration register for pins P3
   type SFSP3_Register is record
      --  Select pin function.
      MODE     : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : ENUM_3 := Interfaces.LPC43.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : ENUM_5 := Interfaces.LPC43.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSP3_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP3_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins P3
   type SFSP3_Registers is array (0 .. 4) of SFSP3_Register;

   --------------------
   -- SFSP4_Register --
   --------------------

   subtype SFSP4_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin configuration register for pins P4
   type SFSP4_Register is record
      --  Select pin function.
      MODE     : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : ENUM_3 := Interfaces.LPC43.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : ENUM_5 := Interfaces.LPC43.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSP4_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP4_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins P4
   type SFSP4_Registers is array (0 .. 10) of SFSP4_Register;

   -------------------
   -- SFSP_Register --
   -------------------

   subtype SFSP5_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin configuration register for pins P5
   type SFSP_Register_1 is record
      --  Select pin function.
      MODE     : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : ENUM_3 := Interfaces.LPC43.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : ENUM_5 := Interfaces.LPC43.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSP5_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP_Register_1 use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins P5
   type SFSP_Registers_1 is array (0 .. 7) of SFSP_Register_1;

   --------------------
   -- SFSP6_Register --
   --------------------

   subtype SFSP6_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin configuration register for pins P6
   type SFSP6_Register is record
      --  Select pin function.
      MODE     : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : ENUM_3 := Interfaces.LPC43.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : ENUM_5 := Interfaces.LPC43.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSP6_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP6_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins P6
   type SFSP6_Registers is array (0 .. 12) of SFSP6_Register;

   --------------------
   -- SFSP8_Register --
   --------------------

   subtype SFSP8_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin configuration register for pins P8
   type SFSP8_Register is record
      --  Select pin function.
      MODE     : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : ENUM_3 := Interfaces.LPC43.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : ENUM_5 := Interfaces.LPC43.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSP8_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP8_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins P8
   type SFSP8_Registers is array (0 .. 5) of SFSP8_Register;

   --------------------
   -- SFSP9_Register --
   --------------------

   --  Slew rate
   type ENUM_9 is
     (
      --  Slow
      Slow,
      --  Fast
      Fast)
     with Size => 1;
   for ENUM_9 use
     (Slow => 0,
      Fast => 1);

   subtype SFSP9_RESERVED_Field is Interfaces.Bit_Types.Bit;

   --  Select drive strength
   type ENUM_10 is
     (
      --  Standard drive: 4 mA drive strength
      Standard_Drive_4_Ma,
      --  Medium drive: 8 mA drive strength
      Medium_Drive_8_Ma_D,
      --  High drive: 14 mA drive strength
      High_Drive_14_Ma_Dr,
      --  Ultra-high drive: 20 mA drive strength
      Ultra_High_Drive_20)
     with Size => 2;
   for ENUM_10 use
     (Standard_Drive_4_Ma => 0,
      Medium_Drive_8_Ma_D => 1,
      High_Drive_14_Ma_Dr => 2,
      Ultra_High_Drive_20 => 3);

   subtype SFSP9_RESERVED_Field_1 is Interfaces.Bit_Types.UInt22;

   --  Pin configuration register for pins P9
   type SFSP9_Register is record
      --  Select pin function
      MODE       : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad
      EPD        : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN       : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Slew rate
      EHS        : ENUM_9 := Interfaces.LPC43.SCU.Slow;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  but must be enabled to transfer data from the I/O buffer to the pad.
      EZI        : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Reserved
      RESERVED   : SFSP9_RESERVED_Field := 16#0#;
      --  Select drive strength
      EHD        : ENUM_10 := Interfaces.LPC43.SCU.Standard_Drive_4_Ma;
      --  Reserved
      RESERVED_1 : SFSP9_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP9_Register use record
      MODE       at 0 range 0 .. 2;
      EPD        at 0 range 3 .. 3;
      EPUN       at 0 range 4 .. 4;
      EHS        at 0 range 5 .. 5;
      EZI        at 0 range 6 .. 6;
      RESERVED   at 0 range 7 .. 7;
      EHD        at 0 range 8 .. 9;
      RESERVED_1 at 0 range 10 .. 31;
   end record;

   --  Pin configuration register for pins P9
   type SFSP9_Registers is array (0 .. 6) of SFSP9_Register;

   ----------------------
   -- SFSPA_0_Register --
   ----------------------

   subtype SFSPA_0_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin configuration register for pins PA
   type SFSPA_0_Register is record
      --  Select pin function.
      MODE     : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : ENUM_3 := Interfaces.LPC43.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : ENUM_5 := Interfaces.LPC43.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSPA_0_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSPA_0_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --------------------
   -- SFSPA_Register --
   --------------------

   subtype SFSPA_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype SFSPA_RESERVED_Field_1 is Interfaces.Bit_Types.UInt22;

   --  Pin configuration register for pins PA
   type SFSPA_Register is record
      --  Select pin function.
      MODE       : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD        : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN       : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Reserved
      RESERVED   : SFSPA_RESERVED_Field := 16#0#;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  but must be enabled to transfer data from the I/O buffer to the pad.
      EZI        : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF        : ENUM_5 := Interfaces.LPC43.SCU.Enable_Input_Glitch;
      --  Select drive strength.
      EHD        : ENUM_6 := Interfaces.LPC43.SCU.Normal_Drive_4_Ma_D;
      --  Reserved
      RESERVED_1 : SFSPA_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSPA_Register use record
      MODE       at 0 range 0 .. 2;
      EPD        at 0 range 3 .. 3;
      EPUN       at 0 range 4 .. 4;
      RESERVED   at 0 range 5 .. 5;
      EZI        at 0 range 6 .. 6;
      ZIF        at 0 range 7 .. 7;
      EHD        at 0 range 8 .. 9;
      RESERVED_1 at 0 range 10 .. 31;
   end record;

   --  Pin configuration register for pins PA
   type SFSPA_Registers is array (0 .. 2) of SFSPA_Register;

   ----------------------
   -- SFSPA_4_Register --
   ----------------------

   subtype SFSPA_4_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin configuration register for pins PA
   type SFSPA_4_Register is record
      --  Select pin function.
      MODE     : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : ENUM_3 := Interfaces.LPC43.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : ENUM_5 := Interfaces.LPC43.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSPA_4_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSPA_4_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --------------------
   -- SFSPB_Register --
   --------------------

   subtype SFSPB_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin configuration register for pins PB
   type SFSPB_Register is record
      --  Select pin function.
      MODE     : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : ENUM_3 := Interfaces.LPC43.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : ENUM_5 := Interfaces.LPC43.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSPB_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSPB_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins PB
   type SFSPB_Registers is array (0 .. 6) of SFSPB_Register;

   --------------------
   -- SFSPC_Register --
   --------------------

   subtype SFSPC_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin configuration register for pins PC
   type SFSPC_Register is record
      --  Select pin function.
      MODE     : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : ENUM_3 := Interfaces.LPC43.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : ENUM_5 := Interfaces.LPC43.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSPC_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSPC_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins PC
   type SFSPC_Registers is array (0 .. 14) of SFSPC_Register;

   --------------------
   -- SFSPD_Register --
   --------------------

   subtype SFSPD_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin configuration register for pins PD
   type SFSPD_Register is record
      --  Select pin function.
      MODE     : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : ENUM_3 := Interfaces.LPC43.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : ENUM_5 := Interfaces.LPC43.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSPD_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSPD_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins PD
   type SFSPD_Registers is array (0 .. 16) of SFSPD_Register;

   --------------------
   -- SFSPE_Register --
   --------------------

   subtype SFSPE_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin configuration register for pins PE
   type SFSPE_Register is record
      --  Select pin function.
      MODE     : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : ENUM_3 := Interfaces.LPC43.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : ENUM_5 := Interfaces.LPC43.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSPE_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSPE_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins PE
   type SFSPE_Registers is array (0 .. 15) of SFSPE_Register;

   --------------------
   -- SFSPF_Register --
   --------------------

   subtype SFSPF_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin configuration register for pins PF
   type SFSPF_Register is record
      --  Select pin function.
      MODE     : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : ENUM_3 := Interfaces.LPC43.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : ENUM_5 := Interfaces.LPC43.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSPF_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSPF_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins PF
   type SFSPF_Registers is array (0 .. 11) of SFSPF_Register;

   ---------------------
   -- SFSCLK_Register --
   ---------------------

   subtype SFSCLK_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin configuration register for pins CLK
   type SFSCLK_Register is record
      --  Select pin function.
      MODE     : ENUM := Interfaces.LPC43.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : ENUM_1 := Interfaces.LPC43.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : ENUM_2 := Interfaces.LPC43.SCU.Enable_Pull_Up;
      --  Slew rate
      EHS      : ENUM_7 := Interfaces.LPC43.SCU.Fast_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : ENUM_4 := Interfaces.LPC43.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : ENUM_8 := Interfaces.LPC43.SCU.Enable_Input_Filter;
      --  Reserved
      RESERVED : SFSCLK_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSCLK_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins CLK
   type SFSCLK_Registers is array (0 .. 3) of SFSCLK_Register;

   ---------------------
   -- SFSUSB_Register --
   ---------------------

   --  Differential data input AIP/AIM.
   type ENUM_11 is
     (
      --  Going LOW with full speed edge rate
      Going_Low_With_Full,
      --  Going HIGH with full speed edge rate
      Going_High_With_Full)
     with Size => 1;
   for ENUM_11 use
     (Going_Low_With_Full => 0,
      Going_High_With_Full => 1);

   --  Control signal for differential input or single input.
   type ENUM_12 is
     (
      --  Reserved. Do not use.
      Reserved,
      --  Single input. Enables USB1. Use with the on-chip full-speed PHY.
      Single_Input)
     with Size => 1;
   for ENUM_12 use
     (Reserved => 0,
      Single_Input => 1);

   --  Enable pull-down connect.
   type ENUM_13 is
     (
      --  Pull-down disconnected
      Pull_Down_Disconnect,
      --  Pull-down connected
      Pull_Down_Connected)
     with Size => 1;
   for ENUM_13 use
     (Pull_Down_Disconnect => 0,
      Pull_Down_Connected => 1);

   subtype SFSUSB_RESERVED_Field is Interfaces.Bit_Types.Bit;

   --  Power mode.
   type ENUM_14 is
     (
      --  Power saving mode (Suspend mode)
      Power_Saving_Mode_S,
      --  Normal mode
      Normal_Mode)
     with Size => 1;
   for ENUM_14 use
     (Power_Saving_Mode_S => 0,
      Normal_Mode => 1);

   --  Enable the vbus_valid signal. This signal is monitored by the USB1
   --  block. Use this bit for software de-bouncing of the VBUS sense signal or
   --  to indicate the VBUS state to the USB1 controller when the VBUS signal
   --  is present but the USB1_VBUS function is not connected in the SFSP2_5
   --  register. The setting of this bit has no effect if the USB1_VBUS
   --  function of pin P2_5 is enabled through the SFSP2_5 register.
   type ENUM_15 is
     (
      --  VBUS signal LOW or inactive
      Vbus_Signal_Low_Or_I,
      --  VBUS signal HIGH or active
      Vbus_Signal_High_Or)
     with Size => 1;
   for ENUM_15 use
     (Vbus_Signal_Low_Or_I => 0,
      Vbus_Signal_High_Or => 1);

   subtype SFSUSB_RESERVED_Field_1 is Interfaces.Bit_Types.UInt26;

   --  Pin configuration register for pins USB1_DM and USB1_DP
   type SFSUSB_Register is record
      --  Differential data input AIP/AIM.
      USB_AIM    : ENUM_11 := Interfaces.LPC43.SCU.Going_Low_With_Full;
      --  Control signal for differential input or single input.
      USB_ESEA   : ENUM_12 := Interfaces.LPC43.SCU.Single_Input;
      --  Enable pull-down connect.
      USB_EPD    : ENUM_13 := Interfaces.LPC43.SCU.Pull_Down_Disconnect;
      --  Reserved
      RESERVED   : SFSUSB_RESERVED_Field := 16#0#;
      --  Power mode.
      USB_EPWR   : ENUM_14 := Interfaces.LPC43.SCU.Power_Saving_Mode_S;
      --  Enable the vbus_valid signal. This signal is monitored by the USB1
      --  block. Use this bit for software de-bouncing of the VBUS sense signal
      --  or to indicate the VBUS state to the USB1 controller when the VBUS
      --  signal is present but the USB1_VBUS function is not connected in the
      --  SFSP2_5 register. The setting of this bit has no effect if the
      --  USB1_VBUS function of pin P2_5 is enabled through the SFSP2_5
      --  register.
      USB_VBUS   : ENUM_15 := Interfaces.LPC43.SCU.Vbus_Signal_Low_Or_I;
      --  Reserved
      RESERVED_1 : SFSUSB_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSUSB_Register use record
      USB_AIM    at 0 range 0 .. 0;
      USB_ESEA   at 0 range 1 .. 1;
      USB_EPD    at 0 range 2 .. 2;
      RESERVED   at 0 range 3 .. 3;
      USB_EPWR   at 0 range 4 .. 4;
      USB_VBUS   at 0 range 5 .. 5;
      RESERVED_1 at 0 range 6 .. 31;
   end record;

   ----------------------
   -- SFSI2C0_Register --
   ----------------------

   --  Select input glitch filter time constant for the SCL pin.
   type ENUM_16 is
     (
      --  50 ns glitch filter
      ENUM_50_Ns_Glitch_Filter,
      --  3 ns glitch filter
      ENUM_3_Ns_Glitch_Filter)
     with Size => 1;
   for ENUM_16 use
     (ENUM_50_Ns_Glitch_Filter => 0,
      ENUM_3_Ns_Glitch_Filter => 1);

   subtype SFSI2C0_RESERVED_Field is Interfaces.Bit_Types.Bit;

   --  Select I2C mode for the SCL pin.
   type ENUM_17 is
     (
      --  Standard/Fast mode transmit
      Standardfast_Mode,
      --  Fast-mode Plus transmit
      Fast_Mode_Plus_Trans)
     with Size => 1;
   for ENUM_17 use
     (Standardfast_Mode => 0,
      Fast_Mode_Plus_Trans => 1);

   --  Enable the input receiver for the SCL pin. Always write a 1 to this bit
   --  when using the I2C0.
   type ENUM_18 is
     (
      --  Disabled
      Disabled,
      --  Enabled
      Enabled)
     with Size => 1;
   for ENUM_18 use
     (Disabled => 0,
      Enabled => 1);

   subtype SFSI2C0_RESERVED_Field_1 is Interfaces.Bit_Types.UInt3;
   subtype SFSI2C0_RESERVED_Field_2 is Interfaces.Bit_Types.Short;

   --  Pin configuration register for I2C0-bus pins
   type SFSI2C0_Register is record
      --  Select input glitch filter time constant for the SCL pin.
      SCL_EFP    : ENUM_16 := Interfaces.LPC43.SCU.ENUM_50_Ns_Glitch_Filter;
      --  Reserved. Always write a 0 to this bit.
      RESERVED   : SFSI2C0_RESERVED_Field := 16#0#;
      --  Select I2C mode for the SCL pin.
      SCL_EHD    : ENUM_17 := Interfaces.LPC43.SCU.Standardfast_Mode;
      --  Enable the input receiver for the SCL pin. Always write a 1 to this
      --  bit when using the I2C0.
      SCL_EZI    : ENUM_18 := Interfaces.LPC43.SCU.Disabled;
      --  Reserved
      RESERVED_1 : SFSI2C0_RESERVED_Field_1 := 16#0#;
      --  Enable or disable input glitch filter for the SCL pin. The filter
      --  time constant is determined by bit EFP.
      SCL_ZIF    : ENUM_8 := Interfaces.LPC43.SCU.Enable_Input_Filter;
      --  Select input glitch filter time constant for the SDA pin.
      SDA_EFP    : ENUM_16 := Interfaces.LPC43.SCU.ENUM_50_Ns_Glitch_Filter;
      --  Reserved. Always write a 0 to this bit.
      RESERVED_2 : SFSI2C0_RESERVED_Field := 16#0#;
      --  Select I2C mode for the SDA pin.
      SDA_EHD    : ENUM_17 := Interfaces.LPC43.SCU.Standardfast_Mode;
      --  Enable the input receiver for the SDA pin. Always write a 1 to this
      --  bit when using the I2C0.
      SDA_EZI    : ENUM_18 := Interfaces.LPC43.SCU.Disabled;
      --  Reserved
      RESERVED_3 : SFSI2C0_RESERVED_Field_1 := 16#0#;
      --  Enable or disable input glitch filter for the SDA pin. The filter
      --  time constant is determined by bit SDA_EFP.
      SDA_ZIF    : ENUM_8 := Interfaces.LPC43.SCU.Enable_Input_Filter;
      --  Reserved
      RESERVED_4 : SFSI2C0_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSI2C0_Register use record
      SCL_EFP    at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 1;
      SCL_EHD    at 0 range 2 .. 2;
      SCL_EZI    at 0 range 3 .. 3;
      RESERVED_1 at 0 range 4 .. 6;
      SCL_ZIF    at 0 range 7 .. 7;
      SDA_EFP    at 0 range 8 .. 8;
      RESERVED_2 at 0 range 9 .. 9;
      SDA_EHD    at 0 range 10 .. 10;
      SDA_EZI    at 0 range 11 .. 11;
      RESERVED_3 at 0 range 12 .. 14;
      SDA_ZIF    at 0 range 15 .. 15;
      RESERVED_4 at 0 range 16 .. 31;
   end record;

   ---------------------
   -- ENAIO0_Register --
   ---------------------

   --  Select ADC0_0
   type ENUM_19 is
     (
      --  Digital function selected on pin P4_3.
      Digital_Function_Sel,
      --  Analog function ADC0_0 selected on pin P4_3
      Analog_Function_Adc0)
     with Size => 1;
   for ENUM_19 use
     (Digital_Function_Sel => 0,
      Analog_Function_Adc0 => 1);

   --  ADC0 function select register
   type ENAIO0_Register is record
      --  Select ADC0_0
      ADC0_0        : ENUM_19 := Interfaces.LPC43.SCU.Digital_Function_Sel;
      --  Select ADC0_1
      ADC0_1        : ENUM_19 := Interfaces.LPC43.SCU.Digital_Function_Sel;
      --  Select ADC0_2
      ADC0_2        : ENUM_19 := Interfaces.LPC43.SCU.Digital_Function_Sel;
      --  Select ADC0_3
      ADC0_3        : ENUM_19 := Interfaces.LPC43.SCU.Digital_Function_Sel;
      --  Select ADC0_4
      ADC0_4        : ENUM_19 := Interfaces.LPC43.SCU.Digital_Function_Sel;
      --  Select ADC0_5
      ADC0_5        : ENUM_19 := Interfaces.LPC43.SCU.Digital_Function_Sel;
      --  Select ADC0_6
      ADC0_6        : ENUM_19 := Interfaces.LPC43.SCU.Digital_Function_Sel;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENAIO0_Register use record
      ADC0_0        at 0 range 0 .. 0;
      ADC0_1        at 0 range 1 .. 1;
      ADC0_2        at 0 range 2 .. 2;
      ADC0_3        at 0 range 3 .. 3;
      ADC0_4        at 0 range 4 .. 4;
      ADC0_5        at 0 range 5 .. 5;
      ADC0_6        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   ---------------------
   -- ENAIO1_Register --
   ---------------------

   --  Select ADC1_0
   type ENUM_20 is
     (
      --  Digital function selected on pin PC_3.
      Digital_Function_Sel,
      --  Analog function ADC1_0 selected on pin PC_3.
      Analog_Function_Adc1)
     with Size => 1;
   for ENUM_20 use
     (Digital_Function_Sel => 0,
      Analog_Function_Adc1 => 1);

   --  ADC1 function select register
   type ENAIO1_Register is record
      --  Select ADC1_0
      ADC1_0        : ENUM_20 := Interfaces.LPC43.SCU.Digital_Function_Sel;
      --  Select ADC1_1
      ADC1_1        : ENUM_20 := Interfaces.LPC43.SCU.Digital_Function_Sel;
      --  Select ADC1_2
      ADC1_2        : ENUM_20 := Interfaces.LPC43.SCU.Digital_Function_Sel;
      --  Select ADC1_3
      ADC1_3        : ENUM_20 := Interfaces.LPC43.SCU.Digital_Function_Sel;
      --  Select ADC1_4
      ADC1_4        : ENUM_20 := Interfaces.LPC43.SCU.Digital_Function_Sel;
      --  Select ADC1_5
      ADC1_5        : ENUM_20 := Interfaces.LPC43.SCU.Digital_Function_Sel;
      --  Select ADC1_6
      ADC1_6        : ENUM_20 := Interfaces.LPC43.SCU.Digital_Function_Sel;
      --  Select ADC1_7.
      ADC1_7        : ENUM_20 := Interfaces.LPC43.SCU.Digital_Function_Sel;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENAIO1_Register use record
      ADC1_0        at 0 range 0 .. 0;
      ADC1_1        at 0 range 1 .. 1;
      ADC1_2        at 0 range 2 .. 2;
      ADC1_3        at 0 range 3 .. 3;
      ADC1_4        at 0 range 4 .. 4;
      ADC1_5        at 0 range 5 .. 5;
      ADC1_6        at 0 range 6 .. 6;
      ADC1_7        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ---------------------
   -- ENAIO2_Register --
   ---------------------

   --  Select DAC
   type ENUM_21 is
     (
      --  Digital function selected on pin P4_4.
      Digital_Function_Sel,
      --  Analog function DAC selected on pin P4_4.
      Analog_Function_Dac)
     with Size => 1;
   for ENUM_21 use
     (Digital_Function_Sel => 0,
      Analog_Function_Dac => 1);

   --  Select band gap output. To measure the band gap, disable the pull-up on
   --  pin PF_7 and connect PF_7 to the digital pad. Do not use the digital pad
   --  nor the ADC1_7 on the board when measuring the band gap (see Section
   --  15.4.8.1).
   type ENUM_22 is
     (
      --  Digital function selected on pin PF_7.
      Digital_Function_Sel,
      --  Band gap output selected for pin PF_7.
      Band_Gap_Output_Sele)
     with Size => 1;
   for ENUM_22 use
     (Digital_Function_Sel => 0,
      Band_Gap_Output_Sele => 1);

   --  Analog function select register
   type ENAIO2_Register is record
      --  Select DAC
      DAC           : ENUM_21 := Interfaces.LPC43.SCU.Digital_Function_Sel;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Select band gap output. To measure the band gap, disable the pull-up
      --  on pin PF_7 and connect PF_7 to the digital pad. Do not use the
      --  digital pad nor the ADC1_7 on the board when measuring the band gap
      --  (see Section 15.4.8.1).
      BG            : ENUM_22 := Interfaces.LPC43.SCU.Digital_Function_Sel;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENAIO2_Register use record
      DAC           at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      BG            at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --------------------------
   -- EMCDELAYCLK_Register --
   --------------------------

   subtype EMCDELAYCLK_CLK_DELAY_Field is Interfaces.Bit_Types.Short;
   subtype EMCDELAYCLK_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  EMC clock delay register
   type EMCDELAYCLK_Register is record
      --  EMC_CLKn SDRAM clock output delay. 0x0 = no delay 0x1111
      --  approximately 0.5 ns delay 0x2222 approximately 1.0 ns delay 0x3333
      --  approximately 1.5 ns delay 0x4444 approximately 2.0 ns delay 0x5555
      --  approximately 2.5 ns delay 0x6666 approximately 3.0 ns delay 0x7777
      --  approximately 3.5 ns delay
      CLK_DELAY : EMCDELAYCLK_CLK_DELAY_Field := 16#0#;
      --  Reserved. Do not write ones to reserved register bits.
      RESERVED  : EMCDELAYCLK_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMCDELAYCLK_Register use record
      CLK_DELAY at 0 range 0 .. 15;
      RESERVED  at 0 range 16 .. 31;
   end record;

   ----------------------
   -- SDDELAY_Register --
   ----------------------

   subtype SDDELAY_SAMPLE_DELAY_Field is Interfaces.Bit_Types.UInt4;
   subtype SDDELAY_RESERVED_Field is Interfaces.Bit_Types.UInt4;
   subtype SDDELAY_DRV_DELAY_Field is Interfaces.Bit_Types.UInt4;
   subtype SDDELAY_RESERVED_Field_1 is Interfaces.Bit_Types.UInt20;

   --  SD/MMC sample and drive delay register
   type SDDELAY_Register is record
      --  SD/MMC sample delay. The delay value is SAMPLE_DELAY x 0.5 ns.
      SAMPLE_DELAY : SDDELAY_SAMPLE_DELAY_Field := 16#0#;
      --  Reserved. Do not write ones to reserved register bits.
      RESERVED     : SDDELAY_RESERVED_Field := 16#0#;
      --  SD/MMC drive delay. The delay value is DRV_DELAY x 0.5 ns. The values
      --  DRV_DELAY = 0 and DRV_DELAY = 1 are not allowed.
      DRV_DELAY    : SDDELAY_DRV_DELAY_Field := 16#0#;
      --  Reserved. Do not write ones to reserved register bits.
      RESERVED_1   : SDDELAY_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDDELAY_Register use record
      SAMPLE_DELAY at 0 range 0 .. 3;
      RESERVED     at 0 range 4 .. 7;
      DRV_DELAY    at 0 range 8 .. 11;
      RESERVED_1   at 0 range 12 .. 31;
   end record;

   -----------------------
   -- PINTSEL0_Register --
   -----------------------

   subtype PINTSEL0_INTPIN0_Field is Interfaces.Bit_Types.UInt5;

   --  Pin interrupt 0: Select the port for the pin number to be selected in
   --  the INTPIN0 bits of this register.
   type ENUM_23 is
     (
      --  GPIO Port 0
      Gpio_Port_0,
      --  GPIO Port 1
      Gpio_Port_1,
      --  GPIO Port 2
      Gpio_Port_2,
      --  GPIO Port 3
      Gpio_Port_3,
      --  GPIO Port 4
      Gpio_Port_4,
      --  GPIO Port 5
      Gpio_Port_5,
      --  GPIO Port 6
      Gpio_Port_6,
      --  GPIO Port 7
      Gpio_Port_7)
     with Size => 3;
   for ENUM_23 use
     (Gpio_Port_0 => 0,
      Gpio_Port_1 => 1,
      Gpio_Port_2 => 2,
      Gpio_Port_3 => 3,
      Gpio_Port_4 => 4,
      Gpio_Port_5 => 5,
      Gpio_Port_6 => 6,
      Gpio_Port_7 => 7);

   subtype PINTSEL0_INTPIN1_Field is Interfaces.Bit_Types.UInt5;
   subtype PINTSEL0_INTPIN2_Field is Interfaces.Bit_Types.UInt5;
   subtype PINTSEL0_INTPIN3_Field is Interfaces.Bit_Types.UInt5;

   --  Pin interrupt select register for pin interrupts 0 to 3.
   type PINTSEL0_Register is record
      --  Pint interrupt 0: Select the pin number within the GPIO port selected
      --  by the PORTSEL0 bit in this register.
      INTPIN0  : PINTSEL0_INTPIN0_Field := 16#0#;
      --  Pin interrupt 0: Select the port for the pin number to be selected in
      --  the INTPIN0 bits of this register.
      PORTSEL0 : ENUM_23 := Interfaces.LPC43.SCU.Gpio_Port_0;
      --  Pint interrupt 1: Select the pin number within the GPIO port selected
      --  by the PORTSEL1 bit in this register.
      INTPIN1  : PINTSEL0_INTPIN1_Field := 16#0#;
      --  Pin interrupt 1: Select the port for the pin number to be selected in
      --  the INTPIN1 bits of this register.
      PORTSEL1 : ENUM_23 := Interfaces.LPC43.SCU.Gpio_Port_0;
      --  Pint interrupt 2: Select the pin number within the GPIO port selected
      --  by the PORTSEL2 bit in this register.
      INTPIN2  : PINTSEL0_INTPIN2_Field := 16#0#;
      --  Pin interrupt 2: Select the port for the pin number to be selected in
      --  the INTPIN2 bits of this register.
      PORTSEL2 : ENUM_23 := Interfaces.LPC43.SCU.Gpio_Port_0;
      --  Pint interrupt 3: Select the pin number within the GPIO port selected
      --  by the PORTSEL3 bit in this register.
      INTPIN3  : PINTSEL0_INTPIN3_Field := 16#0#;
      --  Pin interrupt 3: Select the port for the pin number to be selected in
      --  the INTPIN3 bits of this register.
      PORTSEL3 : ENUM_23 := Interfaces.LPC43.SCU.Gpio_Port_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PINTSEL0_Register use record
      INTPIN0  at 0 range 0 .. 4;
      PORTSEL0 at 0 range 5 .. 7;
      INTPIN1  at 0 range 8 .. 12;
      PORTSEL1 at 0 range 13 .. 15;
      INTPIN2  at 0 range 16 .. 20;
      PORTSEL2 at 0 range 21 .. 23;
      INTPIN3  at 0 range 24 .. 28;
      PORTSEL3 at 0 range 29 .. 31;
   end record;

   -----------------------
   -- PINTSEL1_Register --
   -----------------------

   subtype PINTSEL1_INTPIN4_Field is Interfaces.Bit_Types.UInt5;
   subtype PINTSEL1_INTPIN5_Field is Interfaces.Bit_Types.UInt5;
   subtype PINTSEL1_INTPIN6_Field is Interfaces.Bit_Types.UInt5;
   subtype PINTSEL1_INTPIN7_Field is Interfaces.Bit_Types.UInt5;

   --  Pin interrupt select register for pin interrupts 4 to 7.
   type PINTSEL1_Register is record
      --  Pint interrupt 4: Select the pin number within the GPIO port selected
      --  by the PORTSEL4 bit in this register.
      INTPIN4  : PINTSEL1_INTPIN4_Field := 16#0#;
      --  Pin interrupt 4: Select the port for the pin number to be selected in
      --  the INTPIN4 bits of this register.
      PORTSEL4 : ENUM_23 := Interfaces.LPC43.SCU.Gpio_Port_0;
      --  Pint interrupt 5: Select the pin number within the GPIO port selected
      --  by the PORTSEL5 bit in this register.
      INTPIN5  : PINTSEL1_INTPIN5_Field := 16#0#;
      --  Pin interrupt 5: Select the port for the pin number to be selected in
      --  the INTPIN5 bits of this register.
      PORTSEL5 : ENUM_23 := Interfaces.LPC43.SCU.Gpio_Port_0;
      --  Pint interrupt 6: Select the pin number within the GPIO port selected
      --  by the PORTSEL6 bit in this register.
      INTPIN6  : PINTSEL1_INTPIN6_Field := 16#0#;
      --  Pin interrupt 6: Select the port for the pin number to be selected in
      --  the INTPIN6 bits of this register.
      PORTSEL6 : ENUM_23 := Interfaces.LPC43.SCU.Gpio_Port_0;
      --  Pint interrupt 7: Select the pin number within the GPIO port selected
      --  by the PORTSEL7 bit in this register.
      INTPIN7  : PINTSEL1_INTPIN7_Field := 16#0#;
      --  Pin interrupt 7: Select the port for the pin number to be selected in
      --  the INTPIN7 bits of this register.
      PORTSEL7 : ENUM_23 := Interfaces.LPC43.SCU.Gpio_Port_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PINTSEL1_Register use record
      INTPIN4  at 0 range 0 .. 4;
      PORTSEL4 at 0 range 5 .. 7;
      INTPIN5  at 0 range 8 .. 12;
      PORTSEL5 at 0 range 13 .. 15;
      INTPIN6  at 0 range 16 .. 20;
      PORTSEL6 at 0 range 21 .. 23;
      INTPIN7  at 0 range 24 .. 28;
      PORTSEL7 at 0 range 29 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Control Unit (SCU) I/O configuration
   type SCU_Peripheral is record
      --  Pin configuration register for pins P0
      SFSP0       : SFSP0_Registers;
      --  Pin configuration register for pins P1
      SFSP1       : SFSP1_Registers;
      --  Pin configuration register for pins P1_17
      SFSP1_17    : SFSP1_17_Register;
      --  Pin configuration register for pins P1
      SFSP1_1     : SFSP_Registers;
      --  Pin configuration register for pins P2
      SFSP2       : SFSP_Registers;
      --  Pin configuration register for pins P2
      SFSP2_1     : SFSP2_Registers;
      --  Pin configuration register for pins P2
      SFSP2_2     : SFSP2_Registers_1;
      --  Pin configuration register for pins P3
      SFSP3       : SFSP_Registers;
      --  Pin configuration register for pins P3
      SFSP3_3     : SFSP3_3_Register;
      --  Pin configuration register for pins P3
      SFSP3_1     : SFSP3_Registers;
      --  Pin configuration register for pins P4
      SFSP4       : SFSP4_Registers;
      --  Pin configuration register for pins P5
      SFSP5       : SFSP_Registers_1;
      --  Pin configuration register for pins P6
      SFSP6       : SFSP6_Registers;
      --  Pin configuration register for pins P7
      SFSP7       : SFSP_Registers_1;
      --  Pin configuration register for pins P8
      SFSP8       : SFSP_Registers;
      --  Pin configuration register for pins P8
      SFSP8_1     : SFSP8_Registers;
      --  Pin configuration register for pins P9
      SFSP9       : SFSP9_Registers;
      --  Pin configuration register for pins PA
      SFSPA_0     : SFSPA_0_Register;
      --  Pin configuration register for pins PA
      SFSPA       : SFSPA_Registers;
      --  Pin configuration register for pins PA
      SFSPA_4     : SFSPA_4_Register;
      --  Pin configuration register for pins PB
      SFSPB       : SFSPB_Registers;
      --  Pin configuration register for pins PC
      SFSPC       : SFSPC_Registers;
      --  Pin configuration register for pins PD
      SFSPD       : SFSPD_Registers;
      --  Pin configuration register for pins PE
      SFSPE       : SFSPE_Registers;
      --  Pin configuration register for pins PF
      SFSPF       : SFSPF_Registers;
      --  Pin configuration register for pins CLK
      SFSCLK      : SFSCLK_Registers;
      --  Pin configuration register for pins USB1_DM and USB1_DP
      SFSUSB      : SFSUSB_Register;
      --  Pin configuration register for I2C0-bus pins
      SFSI2C0     : SFSI2C0_Register;
      --  ADC0 function select register
      ENAIO0      : ENAIO0_Register;
      --  ADC1 function select register
      ENAIO1      : ENAIO1_Register;
      --  Analog function select register
      ENAIO2      : ENAIO2_Register;
      --  EMC clock delay register
      EMCDELAYCLK : EMCDELAYCLK_Register;
      --  SD/MMC sample and drive delay register
      SDDELAY     : SDDELAY_Register;
      --  Pin interrupt select register for pin interrupts 0 to 3.
      PINTSEL0    : PINTSEL0_Register;
      --  Pin interrupt select register for pin interrupts 4 to 7.
      PINTSEL1    : PINTSEL1_Register;
   end record
     with Volatile;

   for SCU_Peripheral use record
      SFSP0       at 0 range 0 .. 63;
      SFSP1       at 128 range 0 .. 543;
      SFSP1_17    at 196 range 0 .. 31;
      SFSP1_1     at 200 range 0 .. 95;
      SFSP2       at 256 range 0 .. 95;
      SFSP2_1     at 268 range 0 .. 95;
      SFSP2_2     at 280 range 0 .. 223;
      SFSP3       at 384 range 0 .. 95;
      SFSP3_3     at 396 range 0 .. 31;
      SFSP3_1     at 400 range 0 .. 159;
      SFSP4       at 512 range 0 .. 351;
      SFSP5       at 640 range 0 .. 255;
      SFSP6       at 768 range 0 .. 415;
      SFSP7       at 896 range 0 .. 255;
      SFSP8       at 1024 range 0 .. 95;
      SFSP8_1     at 1036 range 0 .. 191;
      SFSP9       at 1152 range 0 .. 223;
      SFSPA_0     at 1280 range 0 .. 31;
      SFSPA       at 1284 range 0 .. 95;
      SFSPA_4     at 1296 range 0 .. 31;
      SFSPB       at 1408 range 0 .. 223;
      SFSPC       at 1536 range 0 .. 479;
      SFSPD       at 1664 range 0 .. 543;
      SFSPE       at 1792 range 0 .. 511;
      SFSPF       at 1920 range 0 .. 383;
      SFSCLK      at 3072 range 0 .. 127;
      SFSUSB      at 3200 range 0 .. 31;
      SFSI2C0     at 3204 range 0 .. 31;
      ENAIO0      at 3208 range 0 .. 31;
      ENAIO1      at 3212 range 0 .. 31;
      ENAIO2      at 3216 range 0 .. 31;
      EMCDELAYCLK at 3328 range 0 .. 31;
      SDDELAY     at 3456 range 0 .. 31;
      PINTSEL0    at 3584 range 0 .. 31;
      PINTSEL1    at 3588 range 0 .. 31;
   end record;

   --  System Control Unit (SCU) I/O configuration
   SCU_Periph : aliased SCU_Peripheral
     with Import, Address => SCU_Base;

end Interfaces.LPC43.SCU;
