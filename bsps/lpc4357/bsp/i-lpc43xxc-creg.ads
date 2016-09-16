--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43xxC.CREG is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --------------------
   -- CREG0_Register --
   --------------------

   --  Enable 1 kHz output.
   type ENUM is
     (
      --  1 kHz output disabled.
      ENUM_1_Khz_Output_Disable,
      --  1 kHz output enabled.
      ENUM_1_Khz_Output_Enabled)
     with Size => 1;
   for ENUM use
     (ENUM_1_Khz_Output_Disable => 0,
      ENUM_1_Khz_Output_Enabled => 1);

   --  Enable 32 kHz output
   type ENUM_1 is
     (
      --  32 kHz output disabled.
      ENUM_32_Khz_Output_Disabl,
      --  32 kHz output enabled.
      ENUM_32_Khz_Output_Enable)
     with Size => 1;
   for ENUM_1 use
     (ENUM_32_Khz_Output_Disabl => 0,
      ENUM_32_Khz_Output_Enable => 1);

   --  32 kHz oscillator reset
   type ENUM_2 is
     (
      --  Clear reset.
      Clear_Reset,
      --  Reset active.
      Reset_Active)
     with Size => 1;
   for ENUM_2 use
     (Clear_Reset => 0,
      Reset_Active => 1);

   --  32 kHz power control.
   type ENUM_3 is
     (
      --  Powered.
      Powered,
      --  Powered-down.
      Powered_Down)
     with Size => 1;
   for ENUM_3 use
     (Powered => 0,
      Powered_Down => 1);

   subtype CREG0_RESERVED_Field is Interfaces.Bit_Types.Bit;

   --  USB0 PHY power control.
   type ENUM_4 is
     (
      --  Enable USB0 PHY power.
      Enable_Usb0_Phy_Powe,
      --  Disable USB0 PHY. PHY powered down.
      Disable_Usb0_Phy)
     with Size => 1;
   for ENUM_4 use
     (Enable_Usb0_Phy_Powe => 0,
      Disable_Usb0_Phy => 1);

   --  RTC_ALARM pin output control
   type ENUM_5 is
     (
      --  RTC alarm.
      Rtc_Alarm,
      --  Event router event.
      Event_Router_Event,
      --  Reserved.
      Reserved,
      --  Inactive.
      Inactive)
     with Size => 2;
   for ENUM_5 use
     (Rtc_Alarm => 0,
      Event_Router_Event => 1,
      Reserved => 2,
      Inactive => 3);

   --  BOD trip level to generate an interrupt. See the LPC43xx data sheets for
   --  the trip values.
   type ENUM_6 is
     (
      --  Level 0 interrupt
      Level_0_Interrupt,
      --  Level 1 interrupt
      Level_1_Interrupt,
      --  Level 2 interrupt
      Level_2_Interrupt,
      --  Level 3 interrupt
      Level_3_Interrupt)
     with Size => 2;
   for ENUM_6 use
     (Level_0_Interrupt => 0,
      Level_1_Interrupt => 1,
      Level_2_Interrupt => 2,
      Level_3_Interrupt => 3);

   --  BOD trip level to generate a reset. See the LPC43xx data sheets for the
   --  trip values.
   type ENUM_7 is
     (
      --  Level 0 reset
      Level_0_Reset,
      --  Level 1 reset
      Level_1_Reset,
      --  Level 2 reset
      Level_2_Reset,
      --  Level 3 reset
      Level_3_Reset)
     with Size => 2;
   for ENUM_7 use
     (Level_0_Reset => 0,
      Level_1_Reset => 1,
      Level_2_Reset => 2,
      Level_3_Reset => 3);

   --  SAMPLE pin input/output control
   type ENUM_8 is
     (
      --  Reserved
      Reserved,
      --  Sample output from the event monitor/recorder.
      Sample_Output_From_T,
      --  Output from the event router.
      Output_From_The_Even,
      --  Reserved.
      Reserved_1)
     with Size => 2;
   for ENUM_8 use
     (Reserved => 0,
      Sample_Output_From_T => 1,
      Output_From_The_Even => 2,
      Reserved_1 => 3);

   --  WAKEUP0 pin input/output control
   type ENUM_9 is
     (
      --  Input to the event router.
      Input_To_The_Event_R,
      --  Output from the event router.
      Output_From_The_Even,
      --  Reserved.
      Reserved,
      --  Input to the event router.
      Input_To_The_Event_R_1)
     with Size => 2;
   for ENUM_9 use
     (Input_To_The_Event_R => 0,
      Output_From_The_Even => 1,
      Reserved => 2,
      Input_To_The_Event_R_1 => 3);

   --  WAKEUP1 pin input/output control
   type ENUM_10 is
     (
      --  Input to event router.
      Input_To_Event_Route,
      --  Output from the event router.
      Output_From_The_Even,
      --  Reserved
      Reserved,
      --  Input to event router.
      Input_To_Event_Route_1)
     with Size => 2;
   for ENUM_10 use
     (Input_To_Event_Route => 0,
      Output_From_The_Even => 1,
      Reserved => 2,
      Input_To_Event_Route_1 => 3);

   subtype CREG0_RESERVED_Field_1 is Interfaces.Bit_Types.UInt14;

   --  Chip configuration register 32 kHz oscillator output and BOD control
   --  register.
   type CREG0_Register is record
      --  Enable 1 kHz output.
      EN1KHZ      : ENUM :=
                     Interfaces.LPC43xxC.CREG.ENUM_1_Khz_Output_Disable;
      --  Enable 32 kHz output
      EN32KHZ     : ENUM_1 :=
                     Interfaces.LPC43xxC.CREG.ENUM_32_Khz_Output_Disabl;
      --  32 kHz oscillator reset
      RESET32KHZ  : ENUM_2 := Interfaces.LPC43xxC.CREG.Clear_Reset;
      --  32 kHz power control.
      PD32KHZ     : ENUM_3 := Interfaces.LPC43xxC.CREG.Powered;
      --  Reserved
      RESERVED    : CREG0_RESERVED_Field := 16#0#;
      --  USB0 PHY power control.
      USB0PHY     : ENUM_4 := Interfaces.LPC43xxC.CREG.Enable_Usb0_Phy_Powe;
      --  RTC_ALARM pin output control
      ALARMCTRL   : ENUM_5 := Interfaces.LPC43xxC.CREG.Rtc_Alarm;
      --  BOD trip level to generate an interrupt. See the LPC43xx data sheets
      --  for the trip values.
      BODLVL1     : ENUM_6 := Interfaces.LPC43xxC.CREG.Level_0_Interrupt;
      --  BOD trip level to generate a reset. See the LPC43xx data sheets for
      --  the trip values.
      BODLVL2     : ENUM_7 := Interfaces.LPC43xxC.CREG.Level_0_Reset;
      --  SAMPLE pin input/output control
      SAMPLECTRL  : ENUM_8 := Interfaces.LPC43xxC.CREG.Reserved;
      --  WAKEUP0 pin input/output control
      WAKEUP0CTRL : ENUM_9 := Interfaces.LPC43xxC.CREG.Input_To_The_Event_R;
      --  WAKEUP1 pin input/output control
      WAKEUP1CTRL : ENUM_10 := Interfaces.LPC43xxC.CREG.Input_To_Event_Route;
      --  Reserved
      RESERVED_1  : CREG0_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CREG0_Register use record
      EN1KHZ      at 0 range 0 .. 0;
      EN32KHZ     at 0 range 1 .. 1;
      RESET32KHZ  at 0 range 2 .. 2;
      PD32KHZ     at 0 range 3 .. 3;
      RESERVED    at 0 range 4 .. 4;
      USB0PHY     at 0 range 5 .. 5;
      ALARMCTRL   at 0 range 6 .. 7;
      BODLVL1     at 0 range 8 .. 9;
      BODLVL2     at 0 range 10 .. 11;
      SAMPLECTRL  at 0 range 12 .. 13;
      WAKEUP0CTRL at 0 range 14 .. 15;
      WAKEUP1CTRL at 0 range 16 .. 17;
      RESERVED_1  at 0 range 18 .. 31;
   end record;

   -----------------------
   -- M4MEMMAP_Register --
   -----------------------

   subtype M4MEMMAP_M4MAP_Field is Interfaces.Bit_Types.UInt20;

   --  ARM Cortex-M4 memory mapping
   type M4MEMMAP_Register is record
      --  unspecified
      Reserved_0_11 : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Shadow address when accessing memory at address 0x0000 0000
      M4MAP         : M4MEMMAP_M4MAP_Field := 16#10400#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for M4MEMMAP_Register use record
      Reserved_0_11 at 0 range 0 .. 11;
      M4MAP         at 0 range 12 .. 31;
   end record;

   --------------------
   -- CREG5_Register --
   --------------------

   subtype CREG5_RESERVED_Field is Interfaces.Bit_Types.UInt10;

   --  JTAG debug disable for M0SUB co-processor. If this bit is set to 1, it
   --  can be changed to 0 only through a chip reset.
   type ENUM_11 is
     (
      --  No effect.
      No_Effect,
      --  Disable JTAG debug. Once JTAG is disabled, JTAG access remains
      --  disabled until the chip is reset by any source.
      Disable_Jtag_Debug)
     with Size => 1;
   for ENUM_11 use
     (No_Effect => 0,
      Disable_Jtag_Debug => 1);

   subtype CREG5_RESERVED_Field_1 is Interfaces.Bit_Types.UInt19;

   --  Chip configuration register 5. Controls JTAG access.
   type CREG5_Register is record
      --  Reserved.
      RESERVED    : CREG5_RESERVED_Field := 16#0#;
      --  JTAG debug disable for M0SUB co-processor. If this bit is set to 1,
      --  it can be changed to 0 only through a chip reset.
      M0SUBTAPSEL : ENUM_11 := Interfaces.LPC43xxC.CREG.No_Effect;
      --  JTAG debug disable for M4 main processor. If this bit is set to 1, it
      --  can be changed to 0 only through a chip reset.
      M4TAPSEL    : ENUM_11 := Interfaces.LPC43xxC.CREG.No_Effect;
      --  JTAG debug disable for M0APPco-processor. If this bit is set to 1, it
      --  can be changed to 0 only through a chip reset.
      M0APPTAPSEL : ENUM_11 := Interfaces.LPC43xxC.CREG.No_Effect;
      --  Reserved.
      RESERVED_1  : CREG5_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CREG5_Register use record
      RESERVED    at 0 range 0 .. 9;
      M0SUBTAPSEL at 0 range 10 .. 10;
      M4TAPSEL    at 0 range 11 .. 11;
      M0APPTAPSEL at 0 range 12 .. 12;
      RESERVED_1  at 0 range 13 .. 31;
   end record;

   ---------------------
   -- DMAMUX_Register --
   ---------------------

   --  Select DMA to peripheral connection for DMA peripheral 0.
   type ENUM_12 is
     (
      --  SPIFI
      Spifi,
      --  SCT CTOUT_2
      Sct_Ctout_2,
      --  SGPIO14
      Sgpio14,
      --  Timer3 match 1
      Timer3_Match_1)
     with Size => 2;
   for ENUM_12 use
     (Spifi => 0,
      Sct_Ctout_2 => 1,
      Sgpio14 => 2,
      Timer3_Match_1 => 3);

   --  Select DMA to peripheral connection for DMA peripheral 1
   type ENUM_13 is
     (
      --  Timer0 match 0
      Timer0_Match_0,
      --  USART0 transmit
      Usart0_Transmit,
      --  Reserved
      Reserved,
      --  Reserved
      Reserved_1)
     with Size => 2;
   for ENUM_13 use
     (Timer0_Match_0 => 0,
      Usart0_Transmit => 1,
      Reserved => 2,
      Reserved_1 => 3);

   --  Select DMA to peripheral connection for DMA peripheral 2.
   type ENUM_14 is
     (
      --  Timer0 match 1
      Timer0_Match_1,
      --  USART0 receive
      Usart0_Receive,
      --  Reserved
      Reserved,
      --  Reserved
      Reserved_1)
     with Size => 2;
   for ENUM_14 use
     (Timer0_Match_1 => 0,
      Usart0_Receive => 1,
      Reserved => 2,
      Reserved_1 => 3);

   --  Select DMA to peripheral connection for DMA peripheral 3.
   type ENUM_15 is
     (
      --  Timer1 match 0
      Timer1_Match_0,
      --  UART1 transmit
      Uart1_Transmit,
      --  I2S1 DMA request 1
      I2S1_Dma_Request_1,
      --  SSP1 transmit
      Ssp1_Transmit)
     with Size => 2;
   for ENUM_15 use
     (Timer1_Match_0 => 0,
      Uart1_Transmit => 1,
      I2S1_Dma_Request_1 => 2,
      Ssp1_Transmit => 3);

   --  Select DMA to peripheral connection for DMA peripheral 4.
   type ENUM_16 is
     (
      --  Timer1 match 1
      Timer1_Match_1,
      --  UART1 receive
      Uart1_Receive,
      --  I2S1 DMA request 2
      I2S1_Dma_Request_2,
      --  SSP1 receive
      Ssp1_Receive)
     with Size => 2;
   for ENUM_16 use
     (Timer1_Match_1 => 0,
      Uart1_Receive => 1,
      I2S1_Dma_Request_2 => 2,
      Ssp1_Receive => 3);

   --  Select DMA to peripheral connection for DMA peripheral 5.
   type ENUM_17 is
     (
      --  Timer2 match 0
      Timer2_Match_0,
      --  USART2 transmit
      Usart2_Transmit,
      --  SSP1 transmit
      Ssp1_Transmit,
      --  SGPIO15
      Sgpio15)
     with Size => 2;
   for ENUM_17 use
     (Timer2_Match_0 => 0,
      Usart2_Transmit => 1,
      Ssp1_Transmit => 2,
      Sgpio15 => 3);

   --  Selects DMA to peripheral connection for DMA peripheral 6.
   type ENUM_18 is
     (
      --  Timer2 match 1
      Timer2_Match_1,
      --  USART2 receive
      Usart2_Receive,
      --  SSP1 receive
      Ssp1_Receive,
      --  SGPIO14
      Sgpio14)
     with Size => 2;
   for ENUM_18 use
     (Timer2_Match_1 => 0,
      Usart2_Receive => 1,
      Ssp1_Receive => 2,
      Sgpio14 => 3);

   --  Selects DMA to peripheral connection for DMA peripheral 7.
   type ENUM_19 is
     (
      --  Timer3 match 0
      Timer3_Match_0,
      --  USART3 transmit
      Usart3_Transmit,
      --  SCT DMA request 0
      Sct_Dma_Request_0,
      --  ADCHS write
      Adchs_Write)
     with Size => 2;
   for ENUM_19 use
     (Timer3_Match_0 => 0,
      Usart3_Transmit => 1,
      Sct_Dma_Request_0 => 2,
      Adchs_Write => 3);

   --  Select DMA to peripheral connection for DMA peripheral 8.
   type ENUM_20 is
     (
      --  Timer3 match 1
      Timer3_Match_1,
      --  USART3 receive
      Usart3_Receive,
      --  SCT DMA request 1
      Sct_Dma_Request_1,
      --  ADCHS read
      Adchs_Read)
     with Size => 2;
   for ENUM_20 use
     (Timer3_Match_1 => 0,
      Usart3_Receive => 1,
      Sct_Dma_Request_1 => 2,
      Adchs_Read => 3);

   --  Select DMA to peripheral connection for DMA peripheral 9.
   type ENUM_21 is
     (
      --  SSP0 receive
      Ssp0_Receive,
      --  I2S0 DMA request 1
      I2S0_Dma_Request_1,
      --  SCT DMA request 1
      Sct_Dma_Request_1,
      --  Reserved
      Reserved)
     with Size => 2;
   for ENUM_21 use
     (Ssp0_Receive => 0,
      I2S0_Dma_Request_1 => 1,
      Sct_Dma_Request_1 => 2,
      Reserved => 3);

   --  Select DMA to peripheral connection for DMA peripheral 10.
   type ENUM_22 is
     (
      --  SSP0 transmit
      Ssp0_Transmit,
      --  I2S0 DMA request 2
      I2S0_Dma_Request_2,
      --  SCT DMA request 0
      Sct_Dma_Request_0,
      --  Reserved
      Reserved)
     with Size => 2;
   for ENUM_22 use
     (Ssp0_Transmit => 0,
      I2S0_Dma_Request_2 => 1,
      Sct_Dma_Request_0 => 2,
      Reserved => 3);

   --  Selects DMA to peripheral connection for DMA peripheral 11.
   type ENUM_23 is
     (
      --  SSP1 receive
      Ssp1_Receive,
      --  SGPIO14
      Sgpio14,
      --  USART0 transmit
      Usart0_Transmit,
      --  Reserved
      Reserved)
     with Size => 2;
   for ENUM_23 use
     (Ssp1_Receive => 0,
      Sgpio14 => 1,
      Usart0_Transmit => 2,
      Reserved => 3);

   --  Select DMA to peripheral connection for DMA peripheral 12.
   type ENUM_24 is
     (
      --  SSP1 transmit
      Ssp1_Transmit,
      --  SGPIO15
      Sgpio15,
      --  USART0 receive
      Usart0_Receive,
      --  Reserved
      Reserved)
     with Size => 2;
   for ENUM_24 use
     (Ssp1_Transmit => 0,
      Sgpio15 => 1,
      Usart0_Receive => 2,
      Reserved => 3);

   --  Select DMA to peripheral connection for DMA peripheral 13.
   type ENUM_25 is
     (
      --  ADC0
      Adc0,
      --  Reserved
      Reserved,
      --  SSP1 receive
      Ssp1_Receive,
      --  USART3 receive
      Usart3_Receive)
     with Size => 2;
   for ENUM_25 use
     (Adc0 => 0,
      Reserved => 1,
      Ssp1_Receive => 2,
      Usart3_Receive => 3);

   --  Select DMA to peripheral connection for DMA peripheral 14.
   type ENUM_26 is
     (
      --  ADC1
      Adc1,
      --  Reserved
      Reserved,
      --  SSP1 transmit
      Ssp1_Transmit,
      --  USART3 transmit
      Usart3_Transmit)
     with Size => 2;
   for ENUM_26 use
     (Adc1 => 0,
      Reserved => 1,
      Ssp1_Transmit => 2,
      Usart3_Transmit => 3);

   --  Select DMA to peripheral connection for DMA peripheral 15.
   type ENUM_27 is
     (
      --  DAC
      Dac,
      --  SCT CTOUT_3
      Sct_Ctout_3,
      --  SGPIO15
      Sgpio15,
      --  Timer3 match 0
      Timer3_Match_0)
     with Size => 2;
   for ENUM_27 use
     (Dac => 0,
      Sct_Ctout_3 => 1,
      Sgpio15 => 2,
      Timer3_Match_0 => 3);

   --  DMA mux control
   type DMAMUX_Register is record
      --  Select DMA to peripheral connection for DMA peripheral 0.
      DMAMUXPER0  : ENUM_12 := Interfaces.LPC43xxC.CREG.Spifi;
      --  Select DMA to peripheral connection for DMA peripheral 1
      DMAMUXPER1  : ENUM_13 := Interfaces.LPC43xxC.CREG.Timer0_Match_0;
      --  Select DMA to peripheral connection for DMA peripheral 2.
      DMAMUXPER2  : ENUM_14 := Interfaces.LPC43xxC.CREG.Timer0_Match_1;
      --  Select DMA to peripheral connection for DMA peripheral 3.
      DMAMUXPER3  : ENUM_15 := Interfaces.LPC43xxC.CREG.Timer1_Match_0;
      --  Select DMA to peripheral connection for DMA peripheral 4.
      DMAMUXPER4  : ENUM_16 := Interfaces.LPC43xxC.CREG.Timer1_Match_1;
      --  Select DMA to peripheral connection for DMA peripheral 5.
      DMAMUXPER5  : ENUM_17 := Interfaces.LPC43xxC.CREG.Timer2_Match_0;
      --  Selects DMA to peripheral connection for DMA peripheral 6.
      DMAMUXPER6  : ENUM_18 := Interfaces.LPC43xxC.CREG.Timer2_Match_1;
      --  Selects DMA to peripheral connection for DMA peripheral 7.
      DMAMUXPER7  : ENUM_19 := Interfaces.LPC43xxC.CREG.Timer3_Match_0;
      --  Select DMA to peripheral connection for DMA peripheral 8.
      DMAMUXPER8  : ENUM_20 := Interfaces.LPC43xxC.CREG.Timer3_Match_1;
      --  Select DMA to peripheral connection for DMA peripheral 9.
      DMAMUXPER9  : ENUM_21 := Interfaces.LPC43xxC.CREG.Ssp0_Receive;
      --  Select DMA to peripheral connection for DMA peripheral 10.
      DMAMUXPER10 : ENUM_22 := Interfaces.LPC43xxC.CREG.Ssp0_Transmit;
      --  Selects DMA to peripheral connection for DMA peripheral 11.
      DMAMUXPER11 : ENUM_23 := Interfaces.LPC43xxC.CREG.Ssp1_Receive;
      --  Select DMA to peripheral connection for DMA peripheral 12.
      DMAMUXPER12 : ENUM_24 := Interfaces.LPC43xxC.CREG.Ssp1_Transmit;
      --  Select DMA to peripheral connection for DMA peripheral 13.
      DMAMUXPER13 : ENUM_25 := Interfaces.LPC43xxC.CREG.Adc0;
      --  Select DMA to peripheral connection for DMA peripheral 14.
      DMAMUXPER14 : ENUM_26 := Interfaces.LPC43xxC.CREG.Adc1;
      --  Select DMA to peripheral connection for DMA peripheral 15.
      DMAMUXPER15 : ENUM_27 := Interfaces.LPC43xxC.CREG.Dac;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX_Register use record
      DMAMUXPER0  at 0 range 0 .. 1;
      DMAMUXPER1  at 0 range 2 .. 3;
      DMAMUXPER2  at 0 range 4 .. 5;
      DMAMUXPER3  at 0 range 6 .. 7;
      DMAMUXPER4  at 0 range 8 .. 9;
      DMAMUXPER5  at 0 range 10 .. 11;
      DMAMUXPER6  at 0 range 12 .. 13;
      DMAMUXPER7  at 0 range 14 .. 15;
      DMAMUXPER8  at 0 range 16 .. 17;
      DMAMUXPER9  at 0 range 18 .. 19;
      DMAMUXPER10 at 0 range 20 .. 21;
      DMAMUXPER11 at 0 range 22 .. 23;
      DMAMUXPER12 at 0 range 24 .. 25;
      DMAMUXPER13 at 0 range 26 .. 27;
      DMAMUXPER14 at 0 range 28 .. 29;
      DMAMUXPER15 at 0 range 30 .. 31;
   end record;

   ------------------------
   -- FLASHCFGA_Register --
   ------------------------

   subtype FLASHCFGA_RESERVED_Field is Interfaces.Bit_Types.UInt12;

   --  Flash access time. The value of this field plus 1 gives the number of
   --  BASE_M4_CLK clocks used for a flash access. Warning: Improper setting of
   --  this value may result in incorrect operation of the device. All other
   --  values are allowed but may not be optimal for the supported clock
   --  frequencies.
   type ENUM_28 is
     (
      --  1 BASE_M4_CLK clock. Use for BASE_M4_CLK up to 21 MHz.
      ENUM_1_Base_M4_Clk_Clock,
      --  2 BASE_M4_CLK clocks. Use for BASE_M4_CLK up to 43 MHz.
      ENUM_2_Base_M4_Clk_Clocks,
      --  3 BASE_M4_CLK clocks. Use for BASE_M4_CLK up to 64 MHz.
      ENUM_3_Base_M4_Clk_Clocks,
      --  4 BASE_M4_CLK clocks. Use for BASE_M4_CLK up to 86 MHz.
      ENUM_4_Base_M4_Clk_Clocks,
      --  5 BASE_M4_CLK clocks. Use for BASE_M4_CLK up to 107 MHz.
      ENUM_5_Base_M4_Clk_Clocks,
      --  6 BASE_M4_CLK clocks. Use for BASE_M4_CLK up to 129 MHz.
      ENUM_6_Base_M4_Clk_Clocks,
      --  7 BASE_M4_CLK clocks. Use for BASE_M4_CLK up to 150 MHz.
      ENUM_7_Base_M4_Clk_Clocks,
      --  8 BASE_M4_CLK clocks. Use for BASE_M4_CLK up to 172 MHz.
      ENUM_8_Base_M4_Clk_Clocks,
      --  9 BASE_M4_CLK clocks. Use for BASE_M4_CLK up to 193 MHz.
      ENUM_9_Base_M4_Clk_Clocks,
      --  10 BASE_M4_CLK clocks. Use for BASE_M4_CLK up to 204 MHz. Safe
      --  setting for all allowed conditions.
      ENUM_10_Base_M4_Clk_Clock,
      --  Reset value for the field
      Enum_Reset)
     with Size => 4;
   for ENUM_28 use
     (ENUM_1_Base_M4_Clk_Clock => 0,
      ENUM_2_Base_M4_Clk_Clocks => 1,
      ENUM_3_Base_M4_Clk_Clocks => 2,
      ENUM_4_Base_M4_Clk_Clocks => 3,
      ENUM_5_Base_M4_Clk_Clocks => 4,
      ENUM_6_Base_M4_Clk_Clocks => 5,
      ENUM_7_Base_M4_Clk_Clocks => 6,
      ENUM_8_Base_M4_Clk_Clocks => 7,
      ENUM_9_Base_M4_Clk_Clocks => 8,
      ENUM_10_Base_M4_Clk_Clock => 9,
      Enum_Reset => 15);

   subtype FLASHCFGA_RESERVED_Field_1 is Interfaces.Bit_Types.UInt15;

   --  Flash bank A power control
   type ENUM_29 is
     (
      --  Power-down
      Power_Down,
      --  Active (Default)
      Active)
     with Size => 1;
   for ENUM_29 use
     (Power_Down => 0,
      Active => 1);

   --  Flash accelerator configuration register for flash bank A
   type FLASHCFGA_Register is record
      --  Reserved. Do not change these bits from the reset value.
      RESERVED   : FLASHCFGA_RESERVED_Field := 16#3A#;
      --  Flash access time. The value of this field plus 1 gives the number of
      --  BASE_M4_CLK clocks used for a flash access. Warning: Improper setting
      --  of this value may result in incorrect operation of the device. All
      --  other values are allowed but may not be optimal for the supported
      --  clock frequencies.
      FLASHTIM   : ENUM_28 := Enum_Reset;
      --  Reserved. Write zeros only to these bits.
      RESERVED_1 : FLASHCFGA_RESERVED_Field_1 := 16#0#;
      --  Flash bank A power control
      POW        : ENUM_29 := Interfaces.LPC43xxC.CREG.Active;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCFGA_Register use record
      RESERVED   at 0 range 0 .. 11;
      FLASHTIM   at 0 range 12 .. 15;
      RESERVED_1 at 0 range 16 .. 30;
      POW        at 0 range 31 .. 31;
   end record;

   ------------------------
   -- FLASHCFGB_Register --
   ------------------------

   subtype FLASHCFGB_RESERVED_Field is Interfaces.Bit_Types.UInt12;
   subtype FLASHCFGB_RESERVED_Field_1 is Interfaces.Bit_Types.UInt15;

   --  Flash accelerator configuration register for flash bank B
   type FLASHCFGB_Register is record
      --  Reserved. Do not change these bits from the reset value.
      RESERVED   : FLASHCFGB_RESERVED_Field := 16#3A#;
      --  Flash access time. The value of this field plus 1 gives the number of
      --  BASE_M4_CLK clocks used for a flash access. Warning: Improper setting
      --  of this value may result in incorrect operation of the device. All
      --  other values are allowed but may not be optimal for the supported
      --  clock frequencies.
      FLASHTIM   : ENUM_28 := Enum_Reset;
      --  Reserved. Write zeros only to these bits.
      RESERVED_1 : FLASHCFGB_RESERVED_Field_1 := 16#0#;
      --  Flash bank A power control
      POW        : ENUM_29 := Interfaces.LPC43xxC.CREG.Active;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCFGB_Register use record
      RESERVED   at 0 range 0 .. 11;
      FLASHTIM   at 0 range 12 .. 15;
      RESERVED_1 at 0 range 16 .. 30;
      POW        at 0 range 31 .. 31;
   end record;

   ---------------------
   -- ETBCFG_Register --
   ---------------------

   --  Select SRAM interface
   type ENUM_30 is
     (
      --  ETB accesses SRAM at address 0x2000 C000.
      Etb_Accesses_Sram_At,
      --  AHB accesses SRAM at address 0x2000 C000.
      Ahb_Accesses_Sram_At)
     with Size => 1;
   for ENUM_30 use
     (Etb_Accesses_Sram_At => 0,
      Ahb_Accesses_Sram_At => 1);

   subtype ETBCFG_RESERVED_Field is Interfaces.Bit_Types.UInt31;

   --  ETB RAM configuration
   type ETBCFG_Register is record
      --  Select SRAM interface
      ETB      : ENUM_30 := Interfaces.LPC43xxC.CREG.Ahb_Accesses_Sram_At;
      --  Reserved.
      RESERVED : ETBCFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETBCFG_Register use record
      ETB      at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 31;
   end record;

   --------------------
   -- CREG6_Register --
   --------------------

   --  Selects the Ethernet mode. Reset the ethernet after changing the PHY
   --  interface. All other settings are reserved.
   type ENUM_31 is
     (
      --  MII
      Mii,
      --  RMII
      Rmii)
     with Size => 3;
   for ENUM_31 use
     (Mii => 0,
      Rmii => 4);

   subtype CREG6_RESERVED_Field is Interfaces.Bit_Types.Bit;

   --  Selects the functionality of the SCT outputs.
   type ENUM_32 is
     (
      --  Combine SCT and timer match outputs. SCT outputs are Red with timer
      --  outputs.
      Combine_Sct_And_Time,
      --  SCT outputs only. SCT outputs are used without timer match outputs.
      Sct_Outputs_Only)
     with Size => 1;
   for ENUM_32 use
     (Combine_Sct_And_Time => 0,
      Sct_Outputs_Only => 1);

   subtype CREG6_RESERVED_Field_1 is Interfaces.Bit_Types.UInt7;

   --  I2S0_TX_SCK input select
   type ENUM_33 is
     (
      --  I2S Register. I2S clock selected as defined by the I2S transmit mode
      --  register Table 960.
      I2S_Register,
      --  BASE_AUDIO_CLK for I2S transmit clock MCLK input and MCLK output. The
      --  I2S must be configured in slave mode.
      Base_Audio_Clk_For_I)
     with Size => 1;
   for ENUM_33 use
     (I2S_Register => 0,
      Base_Audio_Clk_For_I => 1);

   --  EMC_CLK divided clock select (see Section 21.1).
   type ENUM_34 is
     (
      --  Divide by 1. EMC_CLK_DIV not divided.
      Divide_By_1,
      --  Divide by 2. EMC_CLK_DIV divided by 2.
      Divide_By_2)
     with Size => 1;
   for ENUM_34 use
     (Divide_By_1 => 0,
      Divide_By_2 => 1);

   subtype CREG6_RESERVED_Field_2 is Interfaces.Bit_Types.UInt15;

   --  Chip configuration register 6. Controls multiple functions : Ethernet
   --  interface, SCT output, I2S0/1 inputs, EMC clock.
   type CREG6_Register is record
      --  Selects the Ethernet mode. Reset the ethernet after changing the PHY
      --  interface. All other settings are reserved.
      ETHMODE            : ENUM_31 := Interfaces.LPC43xxC.CREG.Mii;
      --  Reserved.
      RESERVED           : CREG6_RESERVED_Field := 16#0#;
      --  Selects the functionality of the SCT outputs.
      CTOUTCTRL          : ENUM_32 :=
                            Interfaces.LPC43xxC.CREG.Combine_Sct_And_Time;
      --  Reserved.
      RESERVED_1         : CREG6_RESERVED_Field_1 := 16#0#;
      --  I2S0_TX_SCK input select
      I2S0_TX_SCK_IN_SEL : ENUM_33 := Interfaces.LPC43xxC.CREG.I2S_Register;
      --  I2S0_RX_SCK input select
      I2S0_RX_SCK_IN_SEL : ENUM_33 := Interfaces.LPC43xxC.CREG.I2S_Register;
      --  I2S1_TX_SCK input select
      I2S1_TX_SCK_IN_SEL : ENUM_33 := Interfaces.LPC43xxC.CREG.I2S_Register;
      --  I2S1_RX_SCK input select
      I2S1_RX_SCK_IN_SEL : ENUM_33 := Interfaces.LPC43xxC.CREG.I2S_Register;
      --  EMC_CLK divided clock select (see Section 21.1).
      EMC_CLK_SEL        : ENUM_34 := Interfaces.LPC43xxC.CREG.Divide_By_1;
      --  Reserved.
      RESERVED_2         : CREG6_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CREG6_Register use record
      ETHMODE            at 0 range 0 .. 2;
      RESERVED           at 0 range 3 .. 3;
      CTOUTCTRL          at 0 range 4 .. 4;
      RESERVED_1         at 0 range 5 .. 11;
      I2S0_TX_SCK_IN_SEL at 0 range 12 .. 12;
      I2S0_RX_SCK_IN_SEL at 0 range 13 .. 13;
      I2S1_TX_SCK_IN_SEL at 0 range 14 .. 14;
      I2S1_RX_SCK_IN_SEL at 0 range 15 .. 15;
      EMC_CLK_SEL        at 0 range 16 .. 16;
      RESERVED_2         at 0 range 17 .. 31;
   end record;

   ------------------------
   -- M4TXEVENT_Register --
   ------------------------

   --  Cortex-M4 TXEV event.
   type ENUM_35 is
     (
      --  Clear the TXEV event.
      Clear_The_Txev_Event,
      --  No effect.
      No_Effect)
     with Size => 1;
   for ENUM_35 use
     (Clear_The_Txev_Event => 0,
      No_Effect => 1);

   subtype M4TXEVENT_RESERVED_Field is Interfaces.Bit_Types.UInt31;

   --  Cortex-M4 TXEV event clear
   type M4TXEVENT_Register is record
      --  Cortex-M4 TXEV event.
      TXEVCLR  : ENUM_35 := Interfaces.LPC43xxC.CREG.Clear_The_Txev_Event;
      --  Reserved.
      RESERVED : M4TXEVENT_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for M4TXEVENT_Register use record
      TXEVCLR  at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 31;
   end record;

   --------------------------
   -- M0SUBMEMMAP_Register --
   --------------------------

   subtype M0SUBMEMMAP_M0SUBMAP_Field is Interfaces.Bit_Types.UInt20;

   --  ARM Cortex-M0SUB memory mapping
   type M0SUBMEMMAP_Register is record
      --  unspecified
      Reserved_0_11 : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Shadow address when accessing memory at address 0x0000 0000
      M0SUBMAP      : M0SUBMEMMAP_M0SUBMAP_Field := 16#18400#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for M0SUBMEMMAP_Register use record
      Reserved_0_11 at 0 range 0 .. 11;
      M0SUBMAP      at 0 range 12 .. 31;
   end record;

   ---------------------------
   -- M0SUBTXEVENT_Register --
   ---------------------------

   subtype M0SUBTXEVENT_RESERVED_Field is Interfaces.Bit_Types.UInt31;

   --  Cortex-M0SUB TXEV event clear
   type M0SUBTXEVENT_Register is record
      --  Cortex-M0SUB TXEV event handling.
      TXEVCLR  : ENUM_35 := Interfaces.LPC43xxC.CREG.Clear_The_Txev_Event;
      --  Reserved.
      RESERVED : M0SUBTXEVENT_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for M0SUBTXEVENT_Register use record
      TXEVCLR  at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 31;
   end record;

   ---------------------------
   -- M0APPTXEVENT_Register --
   ---------------------------

   subtype M0APPTXEVENT_RESERVED_Field is Interfaces.Bit_Types.UInt31;

   --  Cortex-M0APP TXEV event clear
   type M0APPTXEVENT_Register is record
      --  Cortex-M0APP TXEV event handling.
      TXEVCLR  : ENUM_35 := Interfaces.LPC43xxC.CREG.Clear_The_Txev_Event;
      --  Reserved.
      RESERVED : M0APPTXEVENT_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for M0APPTXEVENT_Register use record
      TXEVCLR  at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 31;
   end record;

   --------------------------
   -- M0APPMEMMAP_Register --
   --------------------------

   subtype M0APPMEMMAP_M0APPMAP_Field is Interfaces.Bit_Types.UInt20;

   --  ARM Cortex-M0APP memory mapping
   type M0APPMEMMAP_Register is record
      --  unspecified
      Reserved_0_11 : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Shadow address when accessing memory at address 0x0000 0000
      M0APPMAP      : M0APPMEMMAP_M0APPMAP_Field := 16#20000#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for M0APPMEMMAP_Register use record
      Reserved_0_11 at 0 range 0 .. 11;
      M0APPMAP      at 0 range 12 .. 31;
   end record;

   ------------------------
   -- USB0FLADJ_Register --
   ------------------------

   subtype USB0FLADJ_FLTV_Field is Interfaces.Bit_Types.UInt6;
   subtype USB0FLADJ_RESERVED_Field is Interfaces.Bit_Types.UInt26;

   --  USB0 frame length adjust register
   type USB0FLADJ_Register is record
      --  Frame length timing value The frame length is given in the number of
      --  high-speed bit times in decimal format. Each decimal value change to
      --  this register corresponds to 16 high-speed bit times. The SOF cycle
      --  time (number of SOF counter clock periods to generate a SOF
      --  micro-frame length) is equal to 59488 + value in this field. The
      --  default value is decimal 32 (0x20), which results in a SOF cycle time
      --  of 60000. 0x00 = 59488 (= 59488 + 0 x 16) 0x01 = 59504 (= 59488 + 1 x
      --  16) 0x02 = 59520 (= 59488 + 2 x 16) ... 0x1F = 59984 (= 59488 + 31 x
      --  16) 0x20 = 60000 (= 59488 + 32 x 16) ... 0x3E = 60480 (= 59488 + 62 x
      --  16) 0x3F = 60496 (= 59488 + 63 x 16)
      FLTV     : USB0FLADJ_FLTV_Field := 16#20#;
      --  Reserved
      RESERVED : USB0FLADJ_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB0FLADJ_Register use record
      FLTV     at 0 range 0 .. 5;
      RESERVED at 0 range 6 .. 31;
   end record;

   ------------------------
   -- USB1FLADJ_Register --
   ------------------------

   subtype USB1FLADJ_FLTV_Field is Interfaces.Bit_Types.UInt6;
   subtype USB1FLADJ_RESERVED_Field is Interfaces.Bit_Types.UInt26;

   --  USB1 frame length adjust register
   type USB1FLADJ_Register is record
      --  Frame length timing value The frame length is given in the number of
      --  high-speed bit times in decimal format. Each decimal value change to
      --  this register corresponds to 16 high-speed bit times. The SOF cycle
      --  time (number of SOF counter clock periods to generate a SOF
      --  micro-frame length) is equal to 59488 + value in this field. The
      --  default value is decimal 32 (0x20), which results in a SOF cycle time
      --  of 60000. 0x00 = 59488 (= 59488 + 0 x 16) 0x01 = 59504 (= 59488 + 1 x
      --  16) 0x02 = 59520 (= 59488 + 2 x 16) ... 0x1F = 59984 (= 59488 + 31 x
      --  16) 0x20 = 60000 (= 59488 + 32 x 16) ... 0x3E = 60480 (= 59488 + 62 x
      --  16) 0x3F = 60496 (= 59488 + 63 x 16)
      FLTV     : USB1FLADJ_FLTV_Field := 16#20#;
      --  Reserved
      RESERVED : USB1FLADJ_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB1FLADJ_Register use record
      FLTV     at 0 range 0 .. 5;
      RESERVED at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Configuration Registers (CREG)
   type CREG_Peripheral is record
      --  Chip configuration register 32 kHz oscillator output and BOD control
      --  register.
      CREG0        : CREG0_Register;
      --  ARM Cortex-M4 memory mapping
      M4MEMMAP     : M4MEMMAP_Register;
      --  Chip configuration register 5. Controls JTAG access.
      CREG5        : CREG5_Register;
      --  DMA mux control
      DMAMUX       : DMAMUX_Register;
      --  Flash accelerator configuration register for flash bank A
      FLASHCFGA    : FLASHCFGA_Register;
      --  Flash accelerator configuration register for flash bank B
      FLASHCFGB    : FLASHCFGB_Register;
      --  ETB RAM configuration
      ETBCFG       : ETBCFG_Register;
      --  Chip configuration register 6. Controls multiple functions : Ethernet
      --  interface, SCT output, I2S0/1 inputs, EMC clock.
      CREG6        : CREG6_Register;
      --  Cortex-M4 TXEV event clear
      M4TXEVENT    : M4TXEVENT_Register;
      --  Part ID
      CHIPID       : Interfaces.Bit_Types.Word;
      --  ARM Cortex-M0SUB memory mapping
      M0SUBMEMMAP  : M0SUBMEMMAP_Register;
      --  Cortex-M0SUB TXEV event clear
      M0SUBTXEVENT : M0SUBTXEVENT_Register;
      --  Cortex-M0APP TXEV event clear
      M0APPTXEVENT : M0APPTXEVENT_Register;
      --  ARM Cortex-M0APP memory mapping
      M0APPMEMMAP  : M0APPMEMMAP_Register;
      --  USB0 frame length adjust register
      USB0FLADJ    : USB0FLADJ_Register;
      --  USB1 frame length adjust register
      USB1FLADJ    : USB1FLADJ_Register;
   end record
     with Volatile;

   for CREG_Peripheral use record
      CREG0        at 4 range 0 .. 31;
      M4MEMMAP     at 256 range 0 .. 31;
      CREG5        at 280 range 0 .. 31;
      DMAMUX       at 284 range 0 .. 31;
      FLASHCFGA    at 288 range 0 .. 31;
      FLASHCFGB    at 292 range 0 .. 31;
      ETBCFG       at 296 range 0 .. 31;
      CREG6        at 300 range 0 .. 31;
      M4TXEVENT    at 304 range 0 .. 31;
      CHIPID       at 512 range 0 .. 31;
      M0SUBMEMMAP  at 776 range 0 .. 31;
      M0SUBTXEVENT at 788 range 0 .. 31;
      M0APPTXEVENT at 1024 range 0 .. 31;
      M0APPMEMMAP  at 1028 range 0 .. 31;
      USB0FLADJ    at 1280 range 0 .. 31;
      USB1FLADJ    at 1536 range 0 .. 31;
   end record;

   --  Configuration Registers (CREG)
   CREG_Periph : aliased CREG_Peripheral
     with Import, Address => CREG_Base;

end Interfaces.LPC43xxC.CREG;
