--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43.RGU is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --------------------------
   -- RESET_CTRL0_Register --
   --------------------------

   subtype RESET_CTRL0_CORE_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL0_PERIPH_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL0_MASTER_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL0_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL0_WWDT_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL0_CREG_RST_Field is Interfaces.Bit_Types.Bit;

   --------------------------
   -- RESET_CTRL0.RESERVED --
   --------------------------

   --  RESET_CTRL0_RESERVED array element
   subtype RESET_CTRL0_RESERVED_Element is Interfaces.Bit_Types.Bit;

   --  RESET_CTRL0_RESERVED array
   type RESET_CTRL0_RESERVED_Field_Array is array (1 .. 2)
     of RESET_CTRL0_RESERVED_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for RESET_CTRL0_RESERVED
   type RESET_CTRL0_RESERVED_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  RESERVED as an array
            Arr : RESET_CTRL0_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RESET_CTRL0_RESERVED_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype RESET_CTRL0_BUS_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL0_SCU_RST_Field is Interfaces.Bit_Types.Bit;

   --------------------------
   -- RESET_CTRL0.RESERVED --
   --------------------------

   subtype RESET_CTRL0_M0_SUB_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL0_M4_RST_Field is Interfaces.Bit_Types.Bit;

   --------------------------
   -- RESET_CTRL0.RESERVED --
   --------------------------

   subtype RESET_CTRL0_LCD_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL0_USB0_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL0_USB1_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL0_DMA_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL0_SDIO_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL0_EMC_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL0_ETHERNET_RST_Field is Interfaces.Bit_Types.Bit;

   --------------------------
   -- RESET_CTRL0.RESERVED --
   --------------------------

   subtype RESET_CTRL0_FLASHA_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL0_EEPROM_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL0_GPIO_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL0_FLASHB_RST_Field is Interfaces.Bit_Types.Bit;

   --------------------------
   -- RESET_CTRL0.RESERVED --
   --------------------------

   --  Reset control register 0
   type RESET_CTRL0_Register is record
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      CORE_RST     : RESET_CTRL0_CORE_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after three clock cycles.
      PERIPH_RST   : RESET_CTRL0_PERIPH_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after three clock cycles.
      MASTER_RST   : RESET_CTRL0_MASTER_RST_Field := 16#0#;
      --  Write-only. Reserved
      RESERVED     : RESET_CTRL0_RESERVED_Field := 16#0#;
      --  Write-only. Writing a one to this bit has no effect.
      WWDT_RST     : RESET_CTRL0_WWDT_RST_Field := 16#0#;
      --  Write-only. Writing a one to this bit has no effect.
      CREG_RST     : RESET_CTRL0_CREG_RST_Field := 16#0#;
      --  Write-only. Reserved
      RESERVED_1   : RESET_CTRL0_RESERVED_Field_1 :=
                      (As_Array => False, Val => 16#0#);
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle. Do not use during
      --  normal operation
      BUS_RST      : RESET_CTRL0_BUS_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      SCU_RST      : RESET_CTRL0_SCU_RST_Field := 16#0#;
      --  Write-only. Reserved
      RESERVED_2   : RESET_CTRL0_RESERVED_Field_1 :=
                      (As_Array => False, Val => 16#0#);
      --  Write-only. Writing a one activates the reset. Writing a 0 clears the
      --  reset. This bit must be cleared by software.
      M0_SUB_RST   : RESET_CTRL0_M0_SUB_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      M4_RST       : RESET_CTRL0_M4_RST_Field := 16#0#;
      --  Write-only. Reserved
      RESERVED_3   : RESET_CTRL0_RESERVED_Field_1 :=
                      (As_Array => False, Val => 16#0#);
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      LCD_RST      : RESET_CTRL0_LCD_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      USB0_RST     : RESET_CTRL0_USB0_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      USB1_RST     : RESET_CTRL0_USB1_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      DMA_RST      : RESET_CTRL0_DMA_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      SDIO_RST     : RESET_CTRL0_SDIO_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      EMC_RST      : RESET_CTRL0_EMC_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      ETHERNET_RST : RESET_CTRL0_ETHERNET_RST_Field := 16#0#;
      --  Write-only. Reserved
      RESERVED_4   : RESET_CTRL0_RESERVED_Field_1 :=
                      (As_Array => False, Val => 16#0#);
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      FLASHA_RST   : RESET_CTRL0_FLASHA_RST_Field := 16#0#;
      --  Write-only. Reserved
      RESERVED_5   : RESET_CTRL0_RESERVED_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      EEPROM_RST   : RESET_CTRL0_EEPROM_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      GPIO_RST     : RESET_CTRL0_GPIO_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      FLASHB_RST   : RESET_CTRL0_FLASHB_RST_Field := 16#0#;
      --  Write-only. Reserved
      RESERVED_6   : RESET_CTRL0_RESERVED_Field_1 :=
                      (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESET_CTRL0_Register use record
      CORE_RST     at 0 range 0 .. 0;
      PERIPH_RST   at 0 range 1 .. 1;
      MASTER_RST   at 0 range 2 .. 2;
      RESERVED     at 0 range 3 .. 3;
      WWDT_RST     at 0 range 4 .. 4;
      CREG_RST     at 0 range 5 .. 5;
      RESERVED_1   at 0 range 6 .. 7;
      BUS_RST      at 0 range 8 .. 8;
      SCU_RST      at 0 range 9 .. 9;
      RESERVED_2   at 0 range 10 .. 11;
      M0_SUB_RST   at 0 range 12 .. 12;
      M4_RST       at 0 range 13 .. 13;
      RESERVED_3   at 0 range 14 .. 15;
      LCD_RST      at 0 range 16 .. 16;
      USB0_RST     at 0 range 17 .. 17;
      USB1_RST     at 0 range 18 .. 18;
      DMA_RST      at 0 range 19 .. 19;
      SDIO_RST     at 0 range 20 .. 20;
      EMC_RST      at 0 range 21 .. 21;
      ETHERNET_RST at 0 range 22 .. 22;
      RESERVED_4   at 0 range 23 .. 24;
      FLASHA_RST   at 0 range 25 .. 25;
      RESERVED_5   at 0 range 26 .. 26;
      EEPROM_RST   at 0 range 27 .. 27;
      GPIO_RST     at 0 range 28 .. 28;
      FLASHB_RST   at 0 range 29 .. 29;
      RESERVED_6   at 0 range 30 .. 31;
   end record;

   --------------------------
   -- RESET_CTRL1_Register --
   --------------------------

   subtype RESET_CTRL1_TIMER0_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_TIMER1_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_TIMER2_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_TIMER3_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_RITIMER_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_SCT_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_MOTOCONPWM_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_QEI_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_ADC0_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_ADC1_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_DAC_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_UART0_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_UART1_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_UART2_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_UART3_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_I2C0_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_I2C1_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_SSP0_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_SSP1_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_I2S_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_SPIFI_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_CAN1_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_CAN0_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_M0APP_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_SGPIO_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_SPI_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_CTRL1_ADCHS_RST_Field is Interfaces.Bit_Types.Bit;

   --------------------------
   -- RESET_CTRL1.RESERVED --
   --------------------------

   --  RESET_CTRL1_RESERVED array element
   subtype RESET_CTRL1_RESERVED_Element is Interfaces.Bit_Types.Bit;

   --  RESET_CTRL1_RESERVED array
   type RESET_CTRL1_RESERVED_Field_Array is array (1 .. 3)
     of RESET_CTRL1_RESERVED_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RESET_CTRL1_RESERVED
   type RESET_CTRL1_RESERVED_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  RESERVED as an array
            Arr : RESET_CTRL1_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RESET_CTRL1_RESERVED_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Reset control register 1
   type RESET_CTRL1_Register is record
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      TIMER0_RST     : RESET_CTRL1_TIMER0_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      TIMER1_RST     : RESET_CTRL1_TIMER1_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      TIMER2_RST     : RESET_CTRL1_TIMER2_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      TIMER3_RST     : RESET_CTRL1_TIMER3_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      RITIMER_RST    : RESET_CTRL1_RITIMER_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      SCT_RST        : RESET_CTRL1_SCT_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      MOTOCONPWM_RST : RESET_CTRL1_MOTOCONPWM_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      QEI_RST        : RESET_CTRL1_QEI_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      ADC0_RST       : RESET_CTRL1_ADC0_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      ADC1_RST       : RESET_CTRL1_ADC1_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      DAC_RST        : RESET_CTRL1_DAC_RST_Field := 16#0#;
      --  Write-only. Reserved
      RESERVED       : RESET_CTRL1_RESERVED_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      UART0_RST      : RESET_CTRL1_UART0_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      UART1_RST      : RESET_CTRL1_UART1_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      UART2_RST      : RESET_CTRL1_UART2_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      UART3_RST      : RESET_CTRL1_UART3_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      I2C0_RST       : RESET_CTRL1_I2C0_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      I2C1_RST       : RESET_CTRL1_I2C1_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      SSP0_RST       : RESET_CTRL1_SSP0_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      SSP1_RST       : RESET_CTRL1_SSP1_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      I2S_RST        : RESET_CTRL1_I2S_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      SPIFI_RST      : RESET_CTRL1_SPIFI_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      CAN1_RST       : RESET_CTRL1_CAN1_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      CAN0_RST       : RESET_CTRL1_CAN0_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. Writing a 0 clears the
      --  reset. This bit must be cleared by software.
      M0APP_RST      : RESET_CTRL1_M0APP_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      SGPIO_RST      : RESET_CTRL1_SGPIO_RST_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      SPI_RST        : RESET_CTRL1_SPI_RST_Field := 16#0#;
      --  Write-only. Reserved
      RESERVED_1     : RESET_CTRL1_RESERVED_Field := 16#0#;
      --  Write-only. Writing a one activates the reset. This bit is
      --  automatically cleared to 0 after one clock cycle.
      ADCHS_RST      : RESET_CTRL1_ADCHS_RST_Field := 16#0#;
      --  Write-only. Reserved
      RESERVED_2     : RESET_CTRL1_RESERVED_Field_1 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESET_CTRL1_Register use record
      TIMER0_RST     at 0 range 0 .. 0;
      TIMER1_RST     at 0 range 1 .. 1;
      TIMER2_RST     at 0 range 2 .. 2;
      TIMER3_RST     at 0 range 3 .. 3;
      RITIMER_RST    at 0 range 4 .. 4;
      SCT_RST        at 0 range 5 .. 5;
      MOTOCONPWM_RST at 0 range 6 .. 6;
      QEI_RST        at 0 range 7 .. 7;
      ADC0_RST       at 0 range 8 .. 8;
      ADC1_RST       at 0 range 9 .. 9;
      DAC_RST        at 0 range 10 .. 10;
      RESERVED       at 0 range 11 .. 11;
      UART0_RST      at 0 range 12 .. 12;
      UART1_RST      at 0 range 13 .. 13;
      UART2_RST      at 0 range 14 .. 14;
      UART3_RST      at 0 range 15 .. 15;
      I2C0_RST       at 0 range 16 .. 16;
      I2C1_RST       at 0 range 17 .. 17;
      SSP0_RST       at 0 range 18 .. 18;
      SSP1_RST       at 0 range 19 .. 19;
      I2S_RST        at 0 range 20 .. 20;
      SPIFI_RST      at 0 range 21 .. 21;
      CAN1_RST       at 0 range 22 .. 22;
      CAN0_RST       at 0 range 23 .. 23;
      M0APP_RST      at 0 range 24 .. 24;
      SGPIO_RST      at 0 range 25 .. 25;
      SPI_RST        at 0 range 26 .. 26;
      RESERVED_1     at 0 range 27 .. 27;
      ADCHS_RST      at 0 range 28 .. 28;
      RESERVED_2     at 0 range 29 .. 31;
   end record;

   ----------------------------
   -- RESET_STATUS0_Register --
   ----------------------------

   subtype RESET_STATUS0_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS0_PERIPH_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS0_MASTER_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS0_WWDT_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS0_CREG_RST_Field is Interfaces.Bit_Types.UInt2;

   ----------------------------
   -- RESET_STATUS0.RESERVED --
   ----------------------------

   --  RESET_STATUS0_RESERVED array element
   subtype RESET_STATUS0_RESERVED_Element is Interfaces.Bit_Types.UInt2;

   --  RESET_STATUS0_RESERVED array
   type RESET_STATUS0_RESERVED_Field_Array is array (1 .. 2)
     of RESET_STATUS0_RESERVED_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for RESET_STATUS0_RESERVED
   type RESET_STATUS0_RESERVED_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  RESERVED as an array
            Arr : RESET_STATUS0_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RESET_STATUS0_RESERVED_Field_1 use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype RESET_STATUS0_BUS_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS0_SCU_RST_Field is Interfaces.Bit_Types.UInt2;

   ----------------------------
   -- RESET_STATUS0.RESERVED --
   ----------------------------

   subtype RESET_STATUS0_M0SUB_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS0_M4_RST_Field is Interfaces.Bit_Types.UInt2;

   ----------------------------
   -- RESET_STATUS0.RESERVED --
   ----------------------------

   --  Reset status register 0
   type RESET_STATUS0_Register is record
      --  Reserved
      RESERVED   : RESET_STATUS0_RESERVED_Field := 16#0#;
      --  Status of the PERIPH_RST reset generator output 00 = No reset
      --  activated 01 = Reset output activated by input to the reset generator
      --  - this reset is self-clearing 10 = Reserved 11 = Reset output
      --  activated by software write to RESET_CTRL register
      PERIPH_RST : RESET_STATUS0_PERIPH_RST_Field := 16#0#;
      --  Status of the MASTER_RST reset generator output 00 = No reset
      --  activated 01 = Reset output activated by input to the reset generator
      --  - this reset is self-clearing 10 = Reserved 11 = Reset output
      --  activated by software write to RESET_CTRL register
      MASTER_RST : RESET_STATUS0_MASTER_RST_Field := 16#1#;
      --  Reserved
      RESERVED_1 : RESET_STATUS0_RESERVED_Field := 16#1#;
      --  Status of the WWDT_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reserved
      WWDT_RST   : RESET_STATUS0_WWDT_RST_Field := 16#0#;
      --  Status of the CREG_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reserved
      CREG_RST   : RESET_STATUS0_CREG_RST_Field := 16#0#;
      --  Reserved
      RESERVED_2 : RESET_STATUS0_RESERVED_Field_1 :=
                    (As_Array => False, Val => 16#0#);
      --  Status of the BUS_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      BUS_RST    : RESET_STATUS0_BUS_RST_Field := 16#1#;
      --  Status of the SCU_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      SCU_RST    : RESET_STATUS0_SCU_RST_Field := 16#1#;
      --  Reserved
      RESERVED_3 : RESET_STATUS0_RESERVED_Field_1 :=
                    (As_Array => False, Val => 16#1#);
      --  Status of the M0SUB_RST reset generator output 00 = No reset
      --  activated 01 = Reset output activated by input to the reset generator
      --  10 = Reserved 11 = Reset output activated by software write to
      --  RESET_CTRL register
      M0SUB_RST  : RESET_STATUS0_M0SUB_RST_Field := 16#1#;
      --  Status of the M4_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      M4_RST     : RESET_STATUS0_M4_RST_Field := 16#1#;
      --  Reserved
      RESERVED_4 : RESET_STATUS0_RESERVED_Field_1 :=
                    (As_Array => False, Val => 16#1#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESET_STATUS0_Register use record
      RESERVED   at 0 range 0 .. 1;
      PERIPH_RST at 0 range 2 .. 3;
      MASTER_RST at 0 range 4 .. 5;
      RESERVED_1 at 0 range 6 .. 7;
      WWDT_RST   at 0 range 8 .. 9;
      CREG_RST   at 0 range 10 .. 11;
      RESERVED_2 at 0 range 12 .. 15;
      BUS_RST    at 0 range 16 .. 17;
      SCU_RST    at 0 range 18 .. 19;
      RESERVED_3 at 0 range 20 .. 23;
      M0SUB_RST  at 0 range 24 .. 25;
      M4_RST     at 0 range 26 .. 27;
      RESERVED_4 at 0 range 28 .. 31;
   end record;

   ----------------------------
   -- RESET_STATUS1_Register --
   ----------------------------

   subtype RESET_STATUS1_LCD_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS1_USB0_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS1_USB1_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS1_DMA_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS1_SDIO_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS1_EMC_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS1_ETHERNET_RST_Field is Interfaces.Bit_Types.UInt2;

   ----------------------------
   -- RESET_STATUS1.RESERVED --
   ----------------------------

   --  RESET_STATUS1_RESERVED array element
   subtype RESET_STATUS1_RESERVED_Element is Interfaces.Bit_Types.UInt2;

   --  RESET_STATUS1_RESERVED array
   type RESET_STATUS1_RESERVED_Field_Array is array (1 .. 2)
     of RESET_STATUS1_RESERVED_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for RESET_STATUS1_RESERVED
   type RESET_STATUS1_RESERVED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  RESERVED as an array
            Arr : RESET_STATUS1_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RESET_STATUS1_RESERVED_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype RESET_STATUS1_FLASHA_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS1_RESERVED_Field_1 is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS1_EEPROM_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS1_GPIO_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS1_FLASHB_RST_Field is Interfaces.Bit_Types.UInt2;

   ----------------------------
   -- RESET_STATUS1.RESERVED --
   ----------------------------

   --  Reset status register 1
   type RESET_STATUS1_Register is record
      --  Status of the LCD_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      LCD_RST      : RESET_STATUS1_LCD_RST_Field := 16#1#;
      --  Status of the USB0_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      USB0_RST     : RESET_STATUS1_USB0_RST_Field := 16#1#;
      --  Status of the USB1_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      USB1_RST     : RESET_STATUS1_USB1_RST_Field := 16#1#;
      --  Status of the DMA_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      DMA_RST      : RESET_STATUS1_DMA_RST_Field := 16#1#;
      --  Status of the SDIO_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      SDIO_RST     : RESET_STATUS1_SDIO_RST_Field := 16#1#;
      --  Status of the EMC_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      EMC_RST      : RESET_STATUS1_EMC_RST_Field := 16#1#;
      --  Status of the ETHERNET_RST reset generator output 00 = No reset
      --  activated 01 = Reset output activated by input to the reset generator
      --  10 = Reserved 11 = Reset output activated by software write to
      --  RESET_CTRL register
      ETHERNET_RST : RESET_STATUS1_ETHERNET_RST_Field := 16#1#;
      --  Reserved
      RESERVED     : RESET_STATUS1_RESERVED_Field :=
                      (As_Array => False, Val => 16#1#);
      --  Status of the FLASHA_RST reset generator output 00 = No reset
      --  activated 01 = Reset output activated by input to the reset generator
      --  10 = Reserved 11 = Reset output activated by software write to
      --  RESET_CTRL register
      FLASHA_RST   : RESET_STATUS1_FLASHA_RST_Field := 16#1#;
      --  Reserved
      RESERVED_1   : RESET_STATUS1_RESERVED_Field_1 := 16#1#;
      --  Status of the EEPROM_RST reset generator output 00 = No reset
      --  activated 01 = Reset output activated by input to the reset generator
      --  10 = Reserved 11 = Reset output activated by software write to
      --  RESET_CTRL register
      EEPROM_RST   : RESET_STATUS1_EEPROM_RST_Field := 16#1#;
      --  Status of the GPIO_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      GPIO_RST     : RESET_STATUS1_GPIO_RST_Field := 16#1#;
      --  Status of the FLASHB_RST reset generator output 00 = No reset
      --  activated 01 = Reset output activated by input to the reset generator
      --  10 = Reserved 11 = Reset output activated by software write to
      --  RESET_CTRL register
      FLASHB_RST   : RESET_STATUS1_FLASHB_RST_Field := 16#1#;
      --  Reserved
      RESERVED_2   : RESET_STATUS1_RESERVED_Field :=
                      (As_Array => False, Val => 16#1#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESET_STATUS1_Register use record
      LCD_RST      at 0 range 0 .. 1;
      USB0_RST     at 0 range 2 .. 3;
      USB1_RST     at 0 range 4 .. 5;
      DMA_RST      at 0 range 6 .. 7;
      SDIO_RST     at 0 range 8 .. 9;
      EMC_RST      at 0 range 10 .. 11;
      ETHERNET_RST at 0 range 12 .. 13;
      RESERVED     at 0 range 14 .. 17;
      FLASHA_RST   at 0 range 18 .. 19;
      RESERVED_1   at 0 range 20 .. 21;
      EEPROM_RST   at 0 range 22 .. 23;
      GPIO_RST     at 0 range 24 .. 25;
      FLASHB_RST   at 0 range 26 .. 27;
      RESERVED_2   at 0 range 28 .. 31;
   end record;

   ----------------------------
   -- RESET_STATUS2_Register --
   ----------------------------

   subtype RESET_STATUS2_TIMER0_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS2_TIMER1_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS2_TIMER2_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS2_TIMER3_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS2_RITIMER_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS2_SCT_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS2_MOTOCONPWM_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS2_QEI_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS2_ADC0_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS2_ADC1_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS2_DAC_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS2_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS2_UART0_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS2_UART1_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS2_UART2_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS2_UART3_RST_Field is Interfaces.Bit_Types.UInt2;

   --  Reset status register 2
   type RESET_STATUS2_Register is record
      --  Status of the TIMER0_RST reset generator output 00 = No reset
      --  activated 01 = Reset output activated by input to the reset generator
      --  10 = Reserved 11 = Reset output activated by software write to
      --  RESET_CTRL register
      TIMER0_RST     : RESET_STATUS2_TIMER0_RST_Field := 16#1#;
      --  Status of the TIMER1_RST reset generator output 00 = No reset
      --  activated 01 = Reset output activated by input to the reset generator
      --  10 = Reserved 11 = Reset output activated by software write to
      --  RESET_CTRL register
      TIMER1_RST     : RESET_STATUS2_TIMER1_RST_Field := 16#1#;
      --  Status of the TIMER2_RST reset generator output 00 = No reset
      --  activated 01 = Reset output activated by input to the reset generator
      --  10 = Reserved 11 = Reset output activated by software write to
      --  RESET_CTRL register
      TIMER2_RST     : RESET_STATUS2_TIMER2_RST_Field := 16#1#;
      --  Status of the TIMER3_RST reset generator output 00 = No reset
      --  activated 01 = Reset output activated by input to the reset generator
      --  10 = Reserved 11 = Reset output activated by software write to
      --  RESET_CTRL register
      TIMER3_RST     : RESET_STATUS2_TIMER3_RST_Field := 16#1#;
      --  Status of the RITIMER_RST reset generator output 00 = No reset
      --  activated 01 = Reset output activated by input to the reset generator
      --  10 = Reserved 11 = Reset output activated by software write to
      --  RESET_CTRL register
      RITIMER_RST    : RESET_STATUS2_RITIMER_RST_Field := 16#1#;
      --  Status of the SCT_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      SCT_RST        : RESET_STATUS2_SCT_RST_Field := 16#1#;
      --  Status of the MOTOCONPWM_RST reset generator output 00 = No reset
      --  activated 01 = Reset output activated by input to the reset generator
      --  10 = Reserved 11 = Reset output activated by software write to
      --  RESET_CTRL register
      MOTOCONPWM_RST : RESET_STATUS2_MOTOCONPWM_RST_Field := 16#1#;
      --  Status of the QEI_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      QEI_RST        : RESET_STATUS2_QEI_RST_Field := 16#1#;
      --  Status of the ADC0_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      ADC0_RST       : RESET_STATUS2_ADC0_RST_Field := 16#1#;
      --  Status of the ADC1_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      ADC1_RST       : RESET_STATUS2_ADC1_RST_Field := 16#1#;
      --  Status of the DAC_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      DAC_RST        : RESET_STATUS2_DAC_RST_Field := 16#1#;
      --  Reserved
      RESERVED       : RESET_STATUS2_RESERVED_Field := 16#1#;
      --  Status of the UART0_RST reset generator output 00 = No reset
      --  activated 01 = Reset output activated by input to the reset generator
      --  10 = Reserved 11 = Reset output activated by software write to
      --  RESET_CTRL register
      UART0_RST      : RESET_STATUS2_UART0_RST_Field := 16#1#;
      --  Status of the UART1_RST reset generator output 00 = No reset
      --  activated 01 = Reset output activated by input to the reset generator
      --  10 = Reserved 11 = Reset output activated by software write to
      --  RESET_CTRL register
      UART1_RST      : RESET_STATUS2_UART1_RST_Field := 16#1#;
      --  Status of the UART2_RST reset generator output 00 = No reset
      --  activated 01 = Reset output activated by input to the reset generator
      --  10 = Reserved 11 = Reset output activated by software write to
      --  RESET_CTRL register
      UART2_RST      : RESET_STATUS2_UART2_RST_Field := 16#1#;
      --  Status of the UART3_RST reset generator output 00 = No reset
      --  activated 01 = Reset output activated by input to the reset generator
      --  10 = Reserved 11 = Reset output activated by software write to
      --  RESET_CTRL register
      UART3_RST      : RESET_STATUS2_UART3_RST_Field := 16#1#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESET_STATUS2_Register use record
      TIMER0_RST     at 0 range 0 .. 1;
      TIMER1_RST     at 0 range 2 .. 3;
      TIMER2_RST     at 0 range 4 .. 5;
      TIMER3_RST     at 0 range 6 .. 7;
      RITIMER_RST    at 0 range 8 .. 9;
      SCT_RST        at 0 range 10 .. 11;
      MOTOCONPWM_RST at 0 range 12 .. 13;
      QEI_RST        at 0 range 14 .. 15;
      ADC0_RST       at 0 range 16 .. 17;
      ADC1_RST       at 0 range 18 .. 19;
      DAC_RST        at 0 range 20 .. 21;
      RESERVED       at 0 range 22 .. 23;
      UART0_RST      at 0 range 24 .. 25;
      UART1_RST      at 0 range 26 .. 27;
      UART2_RST      at 0 range 28 .. 29;
      UART3_RST      at 0 range 30 .. 31;
   end record;

   ----------------------------
   -- RESET_STATUS3_Register --
   ----------------------------

   subtype RESET_STATUS3_I2C0_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS3_I2C1_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS3_SSP0_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS3_SSP1_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS3_I2S_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS3_SPIFI_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS3_CAN1_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS3_CAN0_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS3_M0APP_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS3_SGPIO_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS3_SPI_RST_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS3_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_STATUS3_ADCHS_RST_Field is Interfaces.Bit_Types.UInt2;

   ----------------------------
   -- RESET_STATUS3.RESERVED --
   ----------------------------

   --  RESET_STATUS3_RESERVED array element
   subtype RESET_STATUS3_RESERVED_Element is Interfaces.Bit_Types.UInt2;

   --  RESET_STATUS3_RESERVED array
   type RESET_STATUS3_RESERVED_Field_Array is array (1 .. 3)
     of RESET_STATUS3_RESERVED_Element
     with Component_Size => 2, Size => 6;

   --  Type definition for RESET_STATUS3_RESERVED
   type RESET_STATUS3_RESERVED_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  RESERVED as an array
            Arr : RESET_STATUS3_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for RESET_STATUS3_RESERVED_Field_1 use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Reset status register 3
   type RESET_STATUS3_Register is record
      --  Status of the I2C0_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      I2C0_RST   : RESET_STATUS3_I2C0_RST_Field := 16#1#;
      --  Status of the I2C1_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      I2C1_RST   : RESET_STATUS3_I2C1_RST_Field := 16#1#;
      --  Status of the SSP0_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      SSP0_RST   : RESET_STATUS3_SSP0_RST_Field := 16#1#;
      --  Status of the SSP1_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      SSP1_RST   : RESET_STATUS3_SSP1_RST_Field := 16#1#;
      --  Status of the I2S_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      I2S_RST    : RESET_STATUS3_I2S_RST_Field := 16#1#;
      --  Status of the SPIFI_RST reset generator output 00 = No reset
      --  activated 01 = Reset output activated by input to the reset generator
      --  10 = Reserved 11 = Reset output activated by software write to
      --  RESET_CTRL register
      SPIFI_RST  : RESET_STATUS3_SPIFI_RST_Field := 16#1#;
      --  Status of the CAN1_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      CAN1_RST   : RESET_STATUS3_CAN1_RST_Field := 16#1#;
      --  Status of the CAN0_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      CAN0_RST   : RESET_STATUS3_CAN0_RST_Field := 16#1#;
      --  Status of the M0APP_RST reset generator output 00 = No reset
      --  activated 01 = Reset output activated by input to the reset generator
      --  10 = Reserved 11 = Reset output activated by software write to
      --  RESET_CTRL register
      M0APP_RST  : RESET_STATUS3_M0APP_RST_Field := 16#1#;
      --  Status of the SGPIO_RST reset generator output 00 = No reset
      --  activated 01 = Reset output activated by input to the reset generator
      --  10 = Reserved 11 = Reset output activated by software write to
      --  RESET_CTRL register
      SGPIO_RST  : RESET_STATUS3_SGPIO_RST_Field := 16#1#;
      --  Status of the SPI_RST reset generator output 00 = No reset activated
      --  01 = Reset output activated by input to the reset generator 10 =
      --  Reserved 11 = Reset output activated by software write to RESET_CTRL
      --  register
      SPI_RST    : RESET_STATUS3_SPI_RST_Field := 16#1#;
      --  Reserved
      RESERVED   : RESET_STATUS3_RESERVED_Field := 16#1#;
      --  Status of the ADCHS_RST reset generator output 00 = No reset
      --  activated 01 = Reset output activated by input to the reset generator
      --  10 = Reserved 11 = Reset output activated by software write to
      --  RESET_CTRL register
      ADCHS_RST  : RESET_STATUS3_ADCHS_RST_Field := 16#1#;
      --  Reserved
      RESERVED_1 : RESET_STATUS3_RESERVED_Field_1 :=
                    (As_Array => False, Val => 16#1#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESET_STATUS3_Register use record
      I2C0_RST   at 0 range 0 .. 1;
      I2C1_RST   at 0 range 2 .. 3;
      SSP0_RST   at 0 range 4 .. 5;
      SSP1_RST   at 0 range 6 .. 7;
      I2S_RST    at 0 range 8 .. 9;
      SPIFI_RST  at 0 range 10 .. 11;
      CAN1_RST   at 0 range 12 .. 13;
      CAN0_RST   at 0 range 14 .. 15;
      M0APP_RST  at 0 range 16 .. 17;
      SGPIO_RST  at 0 range 18 .. 19;
      SPI_RST    at 0 range 20 .. 21;
      RESERVED   at 0 range 22 .. 23;
      ADCHS_RST  at 0 range 24 .. 25;
      RESERVED_1 at 0 range 26 .. 31;
   end record;

   -----------------------------------
   -- RESET_ACTIVE_STATUS0_Register --
   -----------------------------------

   subtype RESET_ACTIVE_STATUS0_CORE_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS0_PERIPH_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS0_MASTER_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS0_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS0_WWDT_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS0_CREG_RST_Field is Interfaces.Bit_Types.Bit;

   -----------------------------------
   -- RESET_ACTIVE_STATUS0.RESERVED --
   -----------------------------------

   --  RESET_ACTIVE_STATUS0_RESERVED array element
   subtype RESET_ACTIVE_STATUS0_RESERVED_Element is Interfaces.Bit_Types.Bit;

   --  RESET_ACTIVE_STATUS0_RESERVED array
   type RESET_ACTIVE_STATUS0_RESERVED_Field_Array is array (1 .. 2)
     of RESET_ACTIVE_STATUS0_RESERVED_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for RESET_ACTIVE_STATUS0_RESERVED
   type RESET_ACTIVE_STATUS0_RESERVED_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  RESERVED as an array
            Arr : RESET_ACTIVE_STATUS0_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RESET_ACTIVE_STATUS0_RESERVED_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype RESET_ACTIVE_STATUS0_BUS_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS0_SCU_RST_Field is Interfaces.Bit_Types.Bit;

   -----------------------------------
   -- RESET_ACTIVE_STATUS0.RESERVED --
   -----------------------------------

   subtype RESET_ACTIVE_STATUS0_M0SUB_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS0_M4_RST_Field is Interfaces.Bit_Types.Bit;

   -----------------------------------
   -- RESET_ACTIVE_STATUS0.RESERVED --
   -----------------------------------

   subtype RESET_ACTIVE_STATUS0_LCD_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS0_USB0_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS0_USB1_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS0_DMA_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS0_SDIO_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS0_EMC_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS0_ETHERNET_RST_Field is Interfaces.Bit_Types.Bit;

   -----------------------------------
   -- RESET_ACTIVE_STATUS0.RESERVED --
   -----------------------------------

   subtype RESET_ACTIVE_STATUS0_FLASHA_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS0_EEPROM_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS0_GPIO_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS0_FLASHB_RST_Field is Interfaces.Bit_Types.Bit;

   -----------------------------------
   -- RESET_ACTIVE_STATUS0.RESERVED --
   -----------------------------------

   --  Reset active status register 0
   type RESET_ACTIVE_STATUS0_Register is record
      --  Read-only. Current status of the CORE_RST 0 = Reset asserted 1 = No
      --  reset
      CORE_RST     : RESET_ACTIVE_STATUS0_CORE_RST_Field;
      --  Read-only. Current status of the PERIPH_RST 0 = Reset asserted 1 = No
      --  reset
      PERIPH_RST   : RESET_ACTIVE_STATUS0_PERIPH_RST_Field;
      --  Read-only. Current status of the MASTER_RST 0 = Reset asserted 1 = No
      --  reset
      MASTER_RST   : RESET_ACTIVE_STATUS0_MASTER_RST_Field;
      --  Read-only. Reserved
      RESERVED     : RESET_ACTIVE_STATUS0_RESERVED_Field;
      --  Read-only. Current status of the WWDT_RS 0 = Reset asserted 1 = No
      --  reset
      WWDT_RST     : RESET_ACTIVE_STATUS0_WWDT_RST_Field;
      --  Read-only. Current status of the CREG_RST 0 = Reset asserted 1 = No
      --  reset
      CREG_RST     : RESET_ACTIVE_STATUS0_CREG_RST_Field;
      --  Read-only. Reserved
      RESERVED_1   : RESET_ACTIVE_STATUS0_RESERVED_Field_1;
      --  Read-only. Current status of the BUS_RST 0 = Reset asserted 1 = No
      --  reset
      BUS_RST      : RESET_ACTIVE_STATUS0_BUS_RST_Field;
      --  Read-only. Current status of the SCU_RST 0 = Reset asserted 1 = No
      --  reset
      SCU_RST      : RESET_ACTIVE_STATUS0_SCU_RST_Field;
      --  Read-only. Reserved
      RESERVED_2   : RESET_ACTIVE_STATUS0_RESERVED_Field_1;
      --  Read-only. Current status of the M0SUB_RST 0 = Reset asserted 1 = No
      --  reset
      M0SUB_RST    : RESET_ACTIVE_STATUS0_M0SUB_RST_Field;
      --  Read-only. Current status of the M4_RST 0 = Reset asserted 1 = No
      --  reset
      M4_RST       : RESET_ACTIVE_STATUS0_M4_RST_Field;
      --  Read-only. Reserved
      RESERVED_3   : RESET_ACTIVE_STATUS0_RESERVED_Field_1;
      --  Read-only. Current status of the LCD_RST 0 = Reset asserted 1 = No
      --  reset
      LCD_RST      : RESET_ACTIVE_STATUS0_LCD_RST_Field;
      --  Read-only. Current status of the USB0_RST 0 = Reset asserted 1 = No
      --  reset
      USB0_RST     : RESET_ACTIVE_STATUS0_USB0_RST_Field;
      --  Read-only. Current status of the USB1_RST 0 = Reset asserted 1 = No
      --  reset
      USB1_RST     : RESET_ACTIVE_STATUS0_USB1_RST_Field;
      --  Read-only. Current status of the DMA_RST 0 = Reset asserted 1 = No
      --  reset
      DMA_RST      : RESET_ACTIVE_STATUS0_DMA_RST_Field;
      --  Read-only. Current status of the SDIO_RST 0 = Reset asserted 1 = No
      --  reset
      SDIO_RST     : RESET_ACTIVE_STATUS0_SDIO_RST_Field;
      --  Read-only. Current status of the EMC_RST 0 = Reset asserted 1 = No
      --  reset
      EMC_RST      : RESET_ACTIVE_STATUS0_EMC_RST_Field;
      --  Read-only. Current status of the ETHERNET_RST 0 = Reset asserted 1 =
      --  No reset
      ETHERNET_RST : RESET_ACTIVE_STATUS0_ETHERNET_RST_Field;
      --  Read-only. Reserved
      RESERVED_4   : RESET_ACTIVE_STATUS0_RESERVED_Field_1;
      --  Read-only. Current status of the FLASHA_RST 0 = Reset asserted 1 = No
      --  reset
      FLASHA_RST   : RESET_ACTIVE_STATUS0_FLASHA_RST_Field;
      --  Read-only. Reserved
      RESERVED_5   : RESET_ACTIVE_STATUS0_RESERVED_Field;
      --  Read-only. Current status of the EEPROM_RST 0 = Reset asserted 1 = No
      --  reset
      EEPROM_RST   : RESET_ACTIVE_STATUS0_EEPROM_RST_Field;
      --  Read-only. Current status of the GPIO_RST 0 = Reset asserted 1 = No
      --  reset
      GPIO_RST     : RESET_ACTIVE_STATUS0_GPIO_RST_Field;
      --  Read-only. Current status of the FLASHB_RST 0 = Reset asserted 1 = No
      --  reset
      FLASHB_RST   : RESET_ACTIVE_STATUS0_FLASHB_RST_Field;
      --  Read-only. Reserved
      RESERVED_6   : RESET_ACTIVE_STATUS0_RESERVED_Field_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESET_ACTIVE_STATUS0_Register use record
      CORE_RST     at 0 range 0 .. 0;
      PERIPH_RST   at 0 range 1 .. 1;
      MASTER_RST   at 0 range 2 .. 2;
      RESERVED     at 0 range 3 .. 3;
      WWDT_RST     at 0 range 4 .. 4;
      CREG_RST     at 0 range 5 .. 5;
      RESERVED_1   at 0 range 6 .. 7;
      BUS_RST      at 0 range 8 .. 8;
      SCU_RST      at 0 range 9 .. 9;
      RESERVED_2   at 0 range 10 .. 11;
      M0SUB_RST    at 0 range 12 .. 12;
      M4_RST       at 0 range 13 .. 13;
      RESERVED_3   at 0 range 14 .. 15;
      LCD_RST      at 0 range 16 .. 16;
      USB0_RST     at 0 range 17 .. 17;
      USB1_RST     at 0 range 18 .. 18;
      DMA_RST      at 0 range 19 .. 19;
      SDIO_RST     at 0 range 20 .. 20;
      EMC_RST      at 0 range 21 .. 21;
      ETHERNET_RST at 0 range 22 .. 22;
      RESERVED_4   at 0 range 23 .. 24;
      FLASHA_RST   at 0 range 25 .. 25;
      RESERVED_5   at 0 range 26 .. 26;
      EEPROM_RST   at 0 range 27 .. 27;
      GPIO_RST     at 0 range 28 .. 28;
      FLASHB_RST   at 0 range 29 .. 29;
      RESERVED_6   at 0 range 30 .. 31;
   end record;

   -----------------------------------
   -- RESET_ACTIVE_STATUS1_Register --
   -----------------------------------

   subtype RESET_ACTIVE_STATUS1_TIMER0_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_TIMER1_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_TIMER2_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_TIMER3_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_RITIMER_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_SCT_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_MOTOCONPWM_RST_Field is
     Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_QEI_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_ADC0_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_ADC1_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_DAC_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_UART0_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_UART1_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_UART2_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_UART3_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_I2C0_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_I2C1_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_SSP0_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_SSP1_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_I2S_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_SPIFI_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_CAN1_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_CAN0_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_M0APP_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_SGPIO_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_SPI_RST_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_ACTIVE_STATUS1_ADCHS_RST_Field is Interfaces.Bit_Types.Bit;

   -----------------------------------
   -- RESET_ACTIVE_STATUS1.RESERVED --
   -----------------------------------

   --  RESET_ACTIVE_STATUS1_RESERVED array element
   subtype RESET_ACTIVE_STATUS1_RESERVED_Element is Interfaces.Bit_Types.Bit;

   --  RESET_ACTIVE_STATUS1_RESERVED array
   type RESET_ACTIVE_STATUS1_RESERVED_Field_Array is array (1 .. 3)
     of RESET_ACTIVE_STATUS1_RESERVED_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for RESET_ACTIVE_STATUS1_RESERVED
   type RESET_ACTIVE_STATUS1_RESERVED_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  RESERVED as an array
            Arr : RESET_ACTIVE_STATUS1_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RESET_ACTIVE_STATUS1_RESERVED_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Reset active status register 1
   type RESET_ACTIVE_STATUS1_Register is record
      --  Read-only. Current status of the TIMER0_RST 0 = Reset asserted 1 = No
      --  reset
      TIMER0_RST     : RESET_ACTIVE_STATUS1_TIMER0_RST_Field;
      --  Read-only. Current status of the TIMER1_RST 0 = Reset asserted 1 = No
      --  reset
      TIMER1_RST     : RESET_ACTIVE_STATUS1_TIMER1_RST_Field;
      --  Read-only. Current status of the TIMER2_RST 0 = Reset asserted 1 = No
      --  reset
      TIMER2_RST     : RESET_ACTIVE_STATUS1_TIMER2_RST_Field;
      --  Read-only. Current status of the TIMER3_RST 0 = Reset asserted 1 = No
      --  reset
      TIMER3_RST     : RESET_ACTIVE_STATUS1_TIMER3_RST_Field;
      --  Read-only. Current status of the RITIMER_RST 0 = Reset asserted 1 =
      --  No reset
      RITIMER_RST    : RESET_ACTIVE_STATUS1_RITIMER_RST_Field;
      --  Read-only. Current status of the SCT_RST 0 = Reset asserted 1 = No
      --  reset
      SCT_RST        : RESET_ACTIVE_STATUS1_SCT_RST_Field;
      --  Read-only. Current status of the MOTOCONPWM_RST 0 = Reset asserted 1
      --  = No reset
      MOTOCONPWM_RST : RESET_ACTIVE_STATUS1_MOTOCONPWM_RST_Field;
      --  Read-only. Current status of the QEI_RST 0 = Reset asserted 1 = No
      --  reset
      QEI_RST        : RESET_ACTIVE_STATUS1_QEI_RST_Field;
      --  Read-only. Current status of the ADC0_RST 0 = Reset asserted 1 = No
      --  reset
      ADC0_RST       : RESET_ACTIVE_STATUS1_ADC0_RST_Field;
      --  Read-only. Current status of the ADC1_RST 0 = Reset asserted 1 = No
      --  reset
      ADC1_RST       : RESET_ACTIVE_STATUS1_ADC1_RST_Field;
      --  Read-only. Current status of the DAC_RST 0 = Reset asserted 1 = No
      --  reset
      DAC_RST        : RESET_ACTIVE_STATUS1_DAC_RST_Field;
      --  Read-only. Reserved.
      RESERVED       : RESET_ACTIVE_STATUS1_RESERVED_Field;
      --  Read-only. Current status of the UART0_RST 0 = Reset asserted 1 = No
      --  reset
      UART0_RST      : RESET_ACTIVE_STATUS1_UART0_RST_Field;
      --  Read-only. Current status of the UART1_RST 0 = Reset asserted 1 = No
      --  reset
      UART1_RST      : RESET_ACTIVE_STATUS1_UART1_RST_Field;
      --  Read-only. Current status of the UART2_RST 0 = Reset asserted 1 = No
      --  reset
      UART2_RST      : RESET_ACTIVE_STATUS1_UART2_RST_Field;
      --  Read-only. Current status of the UART3_RST 0 = Reset asserted 1 = No
      --  reset
      UART3_RST      : RESET_ACTIVE_STATUS1_UART3_RST_Field;
      --  Read-only. Current status of the I2C0_RST 0 = Reset asserted 1 = No
      --  reset
      I2C0_RST       : RESET_ACTIVE_STATUS1_I2C0_RST_Field;
      --  Read-only. Current status of the I2C1_RST 0 = Reset asserted 1 = No
      --  reset
      I2C1_RST       : RESET_ACTIVE_STATUS1_I2C1_RST_Field;
      --  Read-only. Current status of the SSP0_RST 0 = Reset asserted 1 = No
      --  reset
      SSP0_RST       : RESET_ACTIVE_STATUS1_SSP0_RST_Field;
      --  Read-only. Current status of the SSP1_RST 0 = Reset asserted 1 = No
      --  reset
      SSP1_RST       : RESET_ACTIVE_STATUS1_SSP1_RST_Field;
      --  Read-only. Current status of the I2S_RST 0 = Reset asserted 1 = No
      --  reset
      I2S_RST        : RESET_ACTIVE_STATUS1_I2S_RST_Field;
      --  Read-only. Current status of the SPIFI_RST 0 = Reset asserted 1 = No
      --  reset
      SPIFI_RST      : RESET_ACTIVE_STATUS1_SPIFI_RST_Field;
      --  Read-only. Current status of the CAN1_RST 0 = Reset asserted 1 = No
      --  reset
      CAN1_RST       : RESET_ACTIVE_STATUS1_CAN1_RST_Field;
      --  Read-only. Current status of the CAN0_RST 0 = Reset asserted 1 = No
      --  reset
      CAN0_RST       : RESET_ACTIVE_STATUS1_CAN0_RST_Field;
      --  Read-only. Current status of the M0APP_RST 0 = Reset asserted 1 = No
      --  reset
      M0APP_RST      : RESET_ACTIVE_STATUS1_M0APP_RST_Field;
      --  Read-only. Current status of the SGPIO_RST 0 = Reset asserted 1 = No
      --  reset
      SGPIO_RST      : RESET_ACTIVE_STATUS1_SGPIO_RST_Field;
      --  Read-only. Current status of the SPI_RST 0 = Reset asserted 1 = No
      --  reset
      SPI_RST        : RESET_ACTIVE_STATUS1_SPI_RST_Field;
      --  Read-only. Reserved.
      RESERVED_1     : RESET_ACTIVE_STATUS1_RESERVED_Field;
      --  Read-only. Current status of the ADCHS_RST 0 = Reset asserted 1 = No
      --  reset
      ADCHS_RST      : RESET_ACTIVE_STATUS1_ADCHS_RST_Field;
      --  Read-only. Reserved.
      RESERVED_2     : RESET_ACTIVE_STATUS1_RESERVED_Field_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESET_ACTIVE_STATUS1_Register use record
      TIMER0_RST     at 0 range 0 .. 0;
      TIMER1_RST     at 0 range 1 .. 1;
      TIMER2_RST     at 0 range 2 .. 2;
      TIMER3_RST     at 0 range 3 .. 3;
      RITIMER_RST    at 0 range 4 .. 4;
      SCT_RST        at 0 range 5 .. 5;
      MOTOCONPWM_RST at 0 range 6 .. 6;
      QEI_RST        at 0 range 7 .. 7;
      ADC0_RST       at 0 range 8 .. 8;
      ADC1_RST       at 0 range 9 .. 9;
      DAC_RST        at 0 range 10 .. 10;
      RESERVED       at 0 range 11 .. 11;
      UART0_RST      at 0 range 12 .. 12;
      UART1_RST      at 0 range 13 .. 13;
      UART2_RST      at 0 range 14 .. 14;
      UART3_RST      at 0 range 15 .. 15;
      I2C0_RST       at 0 range 16 .. 16;
      I2C1_RST       at 0 range 17 .. 17;
      SSP0_RST       at 0 range 18 .. 18;
      SSP1_RST       at 0 range 19 .. 19;
      I2S_RST        at 0 range 20 .. 20;
      SPIFI_RST      at 0 range 21 .. 21;
      CAN1_RST       at 0 range 22 .. 22;
      CAN0_RST       at 0 range 23 .. 23;
      M0APP_RST      at 0 range 24 .. 24;
      SGPIO_RST      at 0 range 25 .. 25;
      SPI_RST        at 0 range 26 .. 26;
      RESERVED_1     at 0 range 27 .. 27;
      ADCHS_RST      at 0 range 28 .. 28;
      RESERVED_2     at 0 range 29 .. 31;
   end record;

   -----------------------------
   -- RESET_EXT_STAT_Register --
   -----------------------------

   subtype RESET_EXT_STAT1_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_EXT_STAT1_CORE_RESET_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_EXT_STAT1_RESERVED_Field_1 is Interfaces.Bit_Types.UInt30;

   --  Reset external status register 1 for PERIPH_RST
   type RESET_EXT_STAT_Register is record
      --  Reserved. Do not modify; read as logic 0.
      RESERVED   : RESET_EXT_STAT1_RESERVED_Field := 16#0#;
      --  Reset activated by CORE_RST output. Write 0 to clear. 0 = Reset not
      --  activated 1 = Reset activated
      CORE_RESET : RESET_EXT_STAT1_CORE_RESET_Field := 16#0#;
      --  Reserved. Do not modify; read as logic 0.
      RESERVED_1 : RESET_EXT_STAT1_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESET_EXT_STAT_Register use record
      RESERVED   at 0 range 0 .. 0;
      CORE_RESET at 0 range 1 .. 1;
      RESERVED_1 at 0 range 2 .. 31;
   end record;

   -----------------------------
   -- RESET_EXT_STAT_Register --
   -----------------------------

   subtype RESET_EXT_STAT2_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype RESET_EXT_STAT2_PERIPHERAL_RESET_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_EXT_STAT2_RESERVED_Field_1 is Interfaces.Bit_Types.UInt29;

   --  Reset external status register 2 for MASTER_RST
   type RESET_EXT_STAT_Register_1 is record
      --  Reserved. Do not modify; read as logic 0.
      RESERVED         : RESET_EXT_STAT2_RESERVED_Field := 16#0#;
      --  Reset activated by PERIPHERAL_RST output. Write 0 to clear. 0 = Reset
      --  not activated 1 = Reset activated
      PERIPHERAL_RESET : RESET_EXT_STAT2_PERIPHERAL_RESET_Field := 16#1#;
      --  Reserved. Do not modify; read as logic 0.
      RESERVED_1       : RESET_EXT_STAT2_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESET_EXT_STAT_Register_1 use record
      RESERVED         at 0 range 0 .. 1;
      PERIPHERAL_RESET at 0 range 2 .. 2;
      RESERVED_1       at 0 range 3 .. 31;
   end record;

   -----------------------------
   -- RESET_EXT_STAT_Register --
   -----------------------------

   subtype RESET_EXT_STAT12_RESERVED_Field is Interfaces.Bit_Types.UInt3;
   subtype RESET_EXT_STAT12_MASTER_RESET_Field is Interfaces.Bit_Types.Bit;
   subtype RESET_EXT_STAT12_RESERVED_Field_1 is Interfaces.Bit_Types.UInt28;

   --  Reset external status register
   type RESET_EXT_STAT_Register_2 is record
      --  Reserved. Do not modify; read as logic 0.
      RESERVED     : RESET_EXT_STAT12_RESERVED_Field := 16#0#;
      --  Reset activated by MASTER_RST output. Write 0 to clear. 0 = Reset not
      --  activated 1 = Reset activated
      MASTER_RESET : RESET_EXT_STAT12_MASTER_RESET_Field := 16#1#;
      --  Reserved. Do not modify; read as logic 0.
      RESERVED_1   : RESET_EXT_STAT12_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESET_EXT_STAT_Register_2 use record
      RESERVED     at 0 range 0 .. 2;
      MASTER_RESET at 0 range 3 .. 3;
      RESERVED_1   at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Reset Generation Unit (RGU)
   type RGU_Peripheral is record
      --  Reset control register 0
      RESET_CTRL0          : RESET_CTRL0_Register;
      --  Reset control register 1
      RESET_CTRL1          : RESET_CTRL1_Register;
      --  Reset status register 0
      RESET_STATUS0        : RESET_STATUS0_Register;
      --  Reset status register 1
      RESET_STATUS1        : RESET_STATUS1_Register;
      --  Reset status register 2
      RESET_STATUS2        : RESET_STATUS2_Register;
      --  Reset status register 3
      RESET_STATUS3        : RESET_STATUS3_Register;
      --  Reset active status register 0
      RESET_ACTIVE_STATUS0 : RESET_ACTIVE_STATUS0_Register;
      --  Reset active status register 1
      RESET_ACTIVE_STATUS1 : RESET_ACTIVE_STATUS1_Register;
      --  Reset external status register 1 for PERIPH_RST
      RESET_EXT_STAT1      : RESET_EXT_STAT_Register;
      --  Reset external status register 2 for MASTER_RST
      RESET_EXT_STAT2      : RESET_EXT_STAT_Register_1;
      --  Reset external status register 5 for CREG_RST
      RESET_EXT_STAT5      : RESET_EXT_STAT_Register;
      --  Reset external status register
      RESET_EXT_STAT8      : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT9      : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT12     : RESET_EXT_STAT_Register_2;
      --  Reset external status register
      RESET_EXT_STAT13     : RESET_EXT_STAT_Register_2;
      --  Reset external status register
      RESET_EXT_STAT16     : RESET_EXT_STAT_Register_2;
      --  Reset external status register
      RESET_EXT_STAT17     : RESET_EXT_STAT_Register_2;
      --  Reset external status register
      RESET_EXT_STAT18     : RESET_EXT_STAT_Register_2;
      --  Reset external status register
      RESET_EXT_STAT19     : RESET_EXT_STAT_Register_2;
      --  Reset external status register
      RESET_EXT_STAT20     : RESET_EXT_STAT_Register_2;
      --  Reset external status register
      RESET_EXT_STAT21     : RESET_EXT_STAT_Register_2;
      --  Reset external status register
      RESET_EXT_STAT22     : RESET_EXT_STAT_Register_2;
      --  Reset external status register
      RESET_EXT_STAT25     : RESET_EXT_STAT_Register_2;
      --  Reset external status register
      RESET_EXT_STAT27     : RESET_EXT_STAT_Register_2;
      --  Reset external status register
      RESET_EXT_STAT28     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT29     : RESET_EXT_STAT_Register_2;
      --  Reset external status register
      RESET_EXT_STAT32     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT33     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT34     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT35     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT36     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT37     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT38     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT39     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT40     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT41     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT42     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT44     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT45     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT46     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT47     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT48     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT49     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT50     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT51     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT52     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT53     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT54     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT55     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT56     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT57     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT58     : RESET_EXT_STAT_Register_1;
      --  Reset external status register
      RESET_EXT_STAT60     : RESET_EXT_STAT_Register_1;
   end record
     with Volatile;

   for RGU_Peripheral use record
      RESET_CTRL0          at 256 range 0 .. 31;
      RESET_CTRL1          at 260 range 0 .. 31;
      RESET_STATUS0        at 272 range 0 .. 31;
      RESET_STATUS1        at 276 range 0 .. 31;
      RESET_STATUS2        at 280 range 0 .. 31;
      RESET_STATUS3        at 284 range 0 .. 31;
      RESET_ACTIVE_STATUS0 at 336 range 0 .. 31;
      RESET_ACTIVE_STATUS1 at 340 range 0 .. 31;
      RESET_EXT_STAT1      at 1028 range 0 .. 31;
      RESET_EXT_STAT2      at 1032 range 0 .. 31;
      RESET_EXT_STAT5      at 1044 range 0 .. 31;
      RESET_EXT_STAT8      at 1056 range 0 .. 31;
      RESET_EXT_STAT9      at 1060 range 0 .. 31;
      RESET_EXT_STAT12     at 1072 range 0 .. 31;
      RESET_EXT_STAT13     at 1076 range 0 .. 31;
      RESET_EXT_STAT16     at 1088 range 0 .. 31;
      RESET_EXT_STAT17     at 1092 range 0 .. 31;
      RESET_EXT_STAT18     at 1096 range 0 .. 31;
      RESET_EXT_STAT19     at 1100 range 0 .. 31;
      RESET_EXT_STAT20     at 1104 range 0 .. 31;
      RESET_EXT_STAT21     at 1108 range 0 .. 31;
      RESET_EXT_STAT22     at 1112 range 0 .. 31;
      RESET_EXT_STAT25     at 1124 range 0 .. 31;
      RESET_EXT_STAT27     at 1132 range 0 .. 31;
      RESET_EXT_STAT28     at 1136 range 0 .. 31;
      RESET_EXT_STAT29     at 1140 range 0 .. 31;
      RESET_EXT_STAT32     at 1152 range 0 .. 31;
      RESET_EXT_STAT33     at 1156 range 0 .. 31;
      RESET_EXT_STAT34     at 1160 range 0 .. 31;
      RESET_EXT_STAT35     at 1164 range 0 .. 31;
      RESET_EXT_STAT36     at 1168 range 0 .. 31;
      RESET_EXT_STAT37     at 1172 range 0 .. 31;
      RESET_EXT_STAT38     at 1176 range 0 .. 31;
      RESET_EXT_STAT39     at 1180 range 0 .. 31;
      RESET_EXT_STAT40     at 1184 range 0 .. 31;
      RESET_EXT_STAT41     at 1188 range 0 .. 31;
      RESET_EXT_STAT42     at 1192 range 0 .. 31;
      RESET_EXT_STAT44     at 1200 range 0 .. 31;
      RESET_EXT_STAT45     at 1204 range 0 .. 31;
      RESET_EXT_STAT46     at 1208 range 0 .. 31;
      RESET_EXT_STAT47     at 1212 range 0 .. 31;
      RESET_EXT_STAT48     at 1216 range 0 .. 31;
      RESET_EXT_STAT49     at 1220 range 0 .. 31;
      RESET_EXT_STAT50     at 1224 range 0 .. 31;
      RESET_EXT_STAT51     at 1228 range 0 .. 31;
      RESET_EXT_STAT52     at 1232 range 0 .. 31;
      RESET_EXT_STAT53     at 1236 range 0 .. 31;
      RESET_EXT_STAT54     at 1240 range 0 .. 31;
      RESET_EXT_STAT55     at 1244 range 0 .. 31;
      RESET_EXT_STAT56     at 1248 range 0 .. 31;
      RESET_EXT_STAT57     at 1252 range 0 .. 31;
      RESET_EXT_STAT58     at 1256 range 0 .. 31;
      RESET_EXT_STAT60     at 1264 range 0 .. 31;
   end record;

   --  Reset Generation Unit (RGU)
   RGU_Periph : aliased RGU_Peripheral
     with Import, Address => RGU_Base;

end Interfaces.LPC43.RGU;
