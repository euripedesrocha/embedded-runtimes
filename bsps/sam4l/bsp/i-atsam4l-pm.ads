--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.PM is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ------------------------
   -- PM_MCCTRL_Register --
   ------------------------

   subtype MCCTRL_MCSEL_Field is Interfaces.Bit_Types.UInt3;

   --  Main Clock Control
   type PM_MCCTRL_Register is record
      --  Main Clock Select
      MCSEL         : MCCTRL_MCSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_MCCTRL_Register use record
      MCSEL         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   ------------------------
   -- PM_CPUSEL_Register --
   ------------------------

   --  CPU Clock Select
   type CPUSELSelect is Interfaces.Bit_Types.UInt3;

   subtype CPUSEL_CPUDIV_Field is Interfaces.Bit_Types.Bit;

   --  CPU Clock Select
   type PM_CPUSEL_Register is record
      --  CPU Clock Select
      CPUSEL        : CPUSELSelect := Interfaces.ATSAM4L.PM.CPUSELSelect_0;
      --  unspecified
      Reserved_3_6  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  CPU Division
      CPUDIV        : CPUSEL_CPUDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_CPUSEL_Register use record
      CPUSEL        at 0 range 0 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      CPUDIV        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ------------------------
   -- PM_PBASEL_Register --
   ------------------------

   subtype PBASEL_PBSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype PBASEL_PBDIV_Field is Interfaces.Bit_Types.Bit;

   --  PBA Clock Select
   type PM_PBASEL_Register is record
      --  PBA Clock Select
      PBSEL         : PBASEL_PBSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_6  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  PBA Division Select
      PBDIV         : PBASEL_PBDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_PBASEL_Register use record
      PBSEL         at 0 range 0 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      PBDIV         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ------------------------
   -- PM_PBBSEL_Register --
   ------------------------

   subtype PBBSEL_PBSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype PBBSEL_PBDIV_Field is Interfaces.Bit_Types.Bit;

   --  PBB Clock Select
   type PM_PBBSEL_Register is record
      --  PBB Clock Select
      PBSEL         : PBBSEL_PBSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_6  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  PBB Division Select
      PBDIV         : PBBSEL_PBDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_PBBSEL_Register use record
      PBSEL         at 0 range 0 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      PBDIV         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ------------------------
   -- PM_PBCSEL_Register --
   ------------------------

   subtype PBCSEL_PBSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype PBCSEL_PBDIV_Field is Interfaces.Bit_Types.Bit;

   --  PBC Clock Select
   type PM_PBCSEL_Register is record
      --  PBC Clock Select
      PBSEL         : PBCSEL_PBSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_6  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  PBC Division Select
      PBDIV         : PBCSEL_PBDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_PBCSEL_Register use record
      PBSEL         at 0 range 0 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      PBDIV         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ------------------------
   -- PM_PBDSEL_Register --
   ------------------------

   subtype PBDSEL_PBSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype PBDSEL_PBDIV_Field is Interfaces.Bit_Types.Bit;

   --  PBD Clock Select
   type PM_PBDSEL_Register is record
      --  PBD Clock Select
      PBSEL         : PBDSEL_PBSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_6  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  PBD Division Select
      PBDIV         : PBDSEL_PBDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_PBDSEL_Register use record
      PBSEL         at 0 range 0 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      PBDIV         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -------------------------
   -- PM_CPUMASK_Register --
   -------------------------

   subtype CPUMASK_OCD_Field is Interfaces.Bit_Types.Bit;

   --  CPU Mask
   type PM_CPUMASK_Register is record
      --  OCD CPU Clock Mask
      OCD           : CPUMASK_OCD_Field := 16#1#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_CPUMASK_Register use record
      OCD           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -------------------------
   -- PM_HSBMASK_Register --
   -------------------------

   subtype HSBMASK_PDCA_Field is Interfaces.Bit_Types.Bit;
   subtype HSBMASK_HFLASHC_Field is Interfaces.Bit_Types.Bit;
   subtype HSBMASK_HRAMC1_Field is Interfaces.Bit_Types.Bit;
   subtype HSBMASK_USBC_Field is Interfaces.Bit_Types.Bit;
   subtype HSBMASK_CRCCU_Field is Interfaces.Bit_Types.Bit;
   subtype HSBMASK_HTOP0_Field is Interfaces.Bit_Types.Bit;
   subtype HSBMASK_HTOP1_Field is Interfaces.Bit_Types.Bit;
   subtype HSBMASK_HTOP2_Field is Interfaces.Bit_Types.Bit;
   subtype HSBMASK_HTOP3_Field is Interfaces.Bit_Types.Bit;
   subtype HSBMASK_AESA_Field is Interfaces.Bit_Types.Bit;

   --  HSB Mask
   type PM_HSBMASK_Register is record
      --  PDCA HSB Clock Mask
      PDCA           : HSBMASK_PDCA_Field := 16#0#;
      --  HFLASHC HSB Clock Mask
      HFLASHC        : HSBMASK_HFLASHC_Field := 16#1#;
      --  HRAMC1 HSB Clock Mask
      HRAMC1         : HSBMASK_HRAMC1_Field := 16#0#;
      --  USBC HSB Clock Mask
      USBC           : HSBMASK_USBC_Field := 16#0#;
      --  CRCCU HSB Clock Mask
      CRCCU          : HSBMASK_CRCCU_Field := 16#0#;
      --  HTOP0 HSB Clock Mask
      HTOP0          : HSBMASK_HTOP0_Field := 16#1#;
      --  HTOP1 HSB Clock Mask
      HTOP1          : HSBMASK_HTOP1_Field := 16#1#;
      --  HTOP2 HSB Clock Mask
      HTOP2          : HSBMASK_HTOP2_Field := 16#1#;
      --  HTOP3 HSB Clock Mask
      HTOP3          : HSBMASK_HTOP3_Field := 16#1#;
      --  AESA HSB Clock Mask
      AESA           : HSBMASK_AESA_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_HSBMASK_Register use record
      PDCA           at 0 range 0 .. 0;
      HFLASHC        at 0 range 1 .. 1;
      HRAMC1         at 0 range 2 .. 2;
      USBC           at 0 range 3 .. 3;
      CRCCU          at 0 range 4 .. 4;
      HTOP0          at 0 range 5 .. 5;
      HTOP1          at 0 range 6 .. 6;
      HTOP2          at 0 range 7 .. 7;
      HTOP3          at 0 range 8 .. 8;
      AESA           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   -------------------------
   -- PM_PBAMASK_Register --
   -------------------------

   subtype PBAMASK_IISC_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_SPI_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_TC0_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_TC1_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_TWIM0_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_TWIS0_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_TWIM1_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_TWIS1_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_USART0_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_USART1_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_USART2_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_USART3_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_ADCIFE_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_DACC_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_ACIFC_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_GLOC_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_ABDACB_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_TRNG_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_PARC_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_CATB_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_TWIM2_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_TWIM3_Field is Interfaces.Bit_Types.Bit;
   subtype PBAMASK_LCDCA_Field is Interfaces.Bit_Types.Bit;

   --  PBA Mask
   type PM_PBAMASK_Register is record
      --  IISC APB Clock Enable
      IISC           : PBAMASK_IISC_Field := 16#0#;
      --  SPI APB Clock Enable
      SPI            : PBAMASK_SPI_Field := 16#0#;
      --  TC0 APB Clock Enable
      TC0            : PBAMASK_TC0_Field := 16#0#;
      --  TC1 APB Clock Enable
      TC1            : PBAMASK_TC1_Field := 16#0#;
      --  TWIM0 APB Clock Enable
      TWIM0          : PBAMASK_TWIM0_Field := 16#0#;
      --  TWIS0 APB Clock Enable
      TWIS0          : PBAMASK_TWIS0_Field := 16#0#;
      --  TWIM1 APB Clock Enable
      TWIM1          : PBAMASK_TWIM1_Field := 16#0#;
      --  TWIS1 APB Clock Enable
      TWIS1          : PBAMASK_TWIS1_Field := 16#0#;
      --  USART0 APB Clock Enable
      USART0         : PBAMASK_USART0_Field := 16#0#;
      --  USART1 APB Clock Enable
      USART1         : PBAMASK_USART1_Field := 16#0#;
      --  USART2 APB Clock Enable
      USART2         : PBAMASK_USART2_Field := 16#0#;
      --  USART3 APB Clock Enable
      USART3         : PBAMASK_USART3_Field := 16#0#;
      --  ADCIFE APB Clock Enable
      ADCIFE         : PBAMASK_ADCIFE_Field := 16#0#;
      --  DACC APB Clock Enable
      DACC           : PBAMASK_DACC_Field := 16#0#;
      --  ACIFC APB Clock Enable
      ACIFC          : PBAMASK_ACIFC_Field := 16#0#;
      --  GLOC APB Clock Enable
      GLOC           : PBAMASK_GLOC_Field := 16#0#;
      --  ABDACB APB Clock Enable
      ABDACB         : PBAMASK_ABDACB_Field := 16#0#;
      --  TRNG APB Clock Enable
      TRNG           : PBAMASK_TRNG_Field := 16#0#;
      --  PARC APB Clock Enable
      PARC           : PBAMASK_PARC_Field := 16#0#;
      --  CATB APB Clock Enable
      CATB           : PBAMASK_CATB_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : Interfaces.Bit_Types.Bit := 16#0#;
      --  TWIM2 APB Clock Enable
      TWIM2          : PBAMASK_TWIM2_Field := 16#0#;
      --  TWIM3 APB Clock Enable
      TWIM3          : PBAMASK_TWIM3_Field := 16#0#;
      --  LCDCA APB Clock Enable
      LCDCA          : PBAMASK_LCDCA_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_PBAMASK_Register use record
      IISC           at 0 range 0 .. 0;
      SPI            at 0 range 1 .. 1;
      TC0            at 0 range 2 .. 2;
      TC1            at 0 range 3 .. 3;
      TWIM0          at 0 range 4 .. 4;
      TWIS0          at 0 range 5 .. 5;
      TWIM1          at 0 range 6 .. 6;
      TWIS1          at 0 range 7 .. 7;
      USART0         at 0 range 8 .. 8;
      USART1         at 0 range 9 .. 9;
      USART2         at 0 range 10 .. 10;
      USART3         at 0 range 11 .. 11;
      ADCIFE         at 0 range 12 .. 12;
      DACC           at 0 range 13 .. 13;
      ACIFC          at 0 range 14 .. 14;
      GLOC           at 0 range 15 .. 15;
      ABDACB         at 0 range 16 .. 16;
      TRNG           at 0 range 17 .. 17;
      PARC           at 0 range 18 .. 18;
      CATB           at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      TWIM2          at 0 range 21 .. 21;
      TWIM3          at 0 range 22 .. 22;
      LCDCA          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -------------------------
   -- PM_PBBMASK_Register --
   -------------------------

   subtype PBBMASK_HFLASHC_Field is Interfaces.Bit_Types.Bit;
   subtype PBBMASK_HCACHE_Field is Interfaces.Bit_Types.Bit;
   subtype PBBMASK_HMATRIX_Field is Interfaces.Bit_Types.Bit;
   subtype PBBMASK_PDCA_Field is Interfaces.Bit_Types.Bit;
   subtype PBBMASK_CRCCU_Field is Interfaces.Bit_Types.Bit;
   subtype PBBMASK_USBC_Field is Interfaces.Bit_Types.Bit;
   subtype PBBMASK_PEVC_Field is Interfaces.Bit_Types.Bit;

   --  PBB Mask
   type PM_PBBMASK_Register is record
      --  HFLASHC APB Clock Enable
      HFLASHC       : PBBMASK_HFLASHC_Field := 16#1#;
      --  HCACHE APB Clock Enable
      HCACHE        : PBBMASK_HCACHE_Field := 16#0#;
      --  HMATRIX APB Clock Enable
      HMATRIX       : PBBMASK_HMATRIX_Field := 16#0#;
      --  PDCA APB Clock Enable
      PDCA          : PBBMASK_PDCA_Field := 16#0#;
      --  CRCCU APB Clock Enable
      CRCCU         : PBBMASK_CRCCU_Field := 16#0#;
      --  USBC APB Clock Enable
      USBC          : PBBMASK_USBC_Field := 16#0#;
      --  PEVC APB Clock Enable
      PEVC          : PBBMASK_PEVC_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_PBBMASK_Register use record
      HFLASHC       at 0 range 0 .. 0;
      HCACHE        at 0 range 1 .. 1;
      HMATRIX       at 0 range 2 .. 2;
      PDCA          at 0 range 3 .. 3;
      CRCCU         at 0 range 4 .. 4;
      USBC          at 0 range 5 .. 5;
      PEVC          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   -------------------------
   -- PM_PBCMASK_Register --
   -------------------------

   subtype PBCMASK_PM_Field is Interfaces.Bit_Types.Bit;
   subtype PBCMASK_CHIPID_Field is Interfaces.Bit_Types.Bit;
   subtype PBCMASK_SCIF_Field is Interfaces.Bit_Types.Bit;
   subtype PBCMASK_FREQM_Field is Interfaces.Bit_Types.Bit;
   subtype PBCMASK_GPIO_Field is Interfaces.Bit_Types.Bit;

   --  PBC Mask
   type PM_PBCMASK_Register is record
      --  PM APB Clock Enable
      PM            : PBCMASK_PM_Field := 16#1#;
      --  CHIPID APB Clock Enable
      CHIPID        : PBCMASK_CHIPID_Field := 16#1#;
      --  SCIF APB Clock Enable
      SCIF          : PBCMASK_SCIF_Field := 16#1#;
      --  FREQM APB Clock Enable
      FREQM         : PBCMASK_FREQM_Field := 16#1#;
      --  GPIO APB Clock Enable
      GPIO          : PBCMASK_GPIO_Field := 16#1#;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_PBCMASK_Register use record
      PM            at 0 range 0 .. 0;
      CHIPID        at 0 range 1 .. 1;
      SCIF          at 0 range 2 .. 2;
      FREQM         at 0 range 3 .. 3;
      GPIO          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   -------------------------
   -- PM_PBDMASK_Register --
   -------------------------

   subtype PBDMASK_BPM_Field is Interfaces.Bit_Types.Bit;
   subtype PBDMASK_BSCIF_Field is Interfaces.Bit_Types.Bit;
   subtype PBDMASK_AST_Field is Interfaces.Bit_Types.Bit;
   subtype PBDMASK_WDT_Field is Interfaces.Bit_Types.Bit;
   subtype PBDMASK_EIC_Field is Interfaces.Bit_Types.Bit;
   subtype PBDMASK_PICOUART_Field is Interfaces.Bit_Types.Bit;

   --  PBD Mask
   type PM_PBDMASK_Register is record
      --  BPM APB Clock Enable
      BPM           : PBDMASK_BPM_Field := 16#1#;
      --  BSCIF APB Clock Enable
      BSCIF         : PBDMASK_BSCIF_Field := 16#1#;
      --  AST APB Clock Enable
      AST           : PBDMASK_AST_Field := 16#1#;
      --  WDT APB Clock Enable
      WDT           : PBDMASK_WDT_Field := 16#1#;
      --  EIC APB Clock Enable
      EIC           : PBDMASK_EIC_Field := 16#1#;
      --  PICOUART APB Clock Enable
      PICOUART      : PBDMASK_PICOUART_Field := 16#1#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_PBDMASK_Register use record
      BPM           at 0 range 0 .. 0;
      BSCIF         at 0 range 1 .. 1;
      AST           at 0 range 2 .. 2;
      WDT           at 0 range 3 .. 3;
      EIC           at 0 range 4 .. 4;
      PICOUART      at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -------------------------
   -- PM_CFDCTRL_Register --
   -------------------------

   subtype CFDCTRL_CFDEN_Field is Interfaces.Bit_Types.Bit;
   subtype CFDCTRL_SFV_Field is Interfaces.Bit_Types.Bit;

   --  Clock Failure Detector Control
   type PM_CFDCTRL_Register is record
      --  Clock Failure Detection Enable
      CFDEN         : CFDCTRL_CFDEN_Field := 16#0#;
      --  unspecified
      Reserved_1_30 : Interfaces.Bit_Types.UInt30 := 16#0#;
      --  Store Final Value
      SFV           : CFDCTRL_SFV_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_CFDCTRL_Register use record
      CFDEN         at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      SFV           at 0 range 31 .. 31;
   end record;

   ------------------------
   -- PM_UNLOCK_Register --
   ------------------------

   subtype UNLOCK_ADDR_Field is Interfaces.Bit_Types.UInt10;
   subtype UNLOCK_KEY_Field is Interfaces.Bit_Types.Byte;

   --  Unlock Register
   type PM_UNLOCK_Register is record
      --  Write-only. Unlock Address
      ADDR           : UNLOCK_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_10_23 : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  Write-only. Unlock Key
      KEY            : UNLOCK_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_UNLOCK_Register use record
      ADDR           at 0 range 0 .. 9;
      Reserved_10_23 at 0 range 10 .. 23;
      KEY            at 0 range 24 .. 31;
   end record;

   ---------------------
   -- PM_IER_Register --
   ---------------------

   subtype IER_CFD_Field is Interfaces.Bit_Types.Bit;
   subtype IER_CKRDY_Field is Interfaces.Bit_Types.Bit;

   --  Wake up Interrupt Enable
   type WAKESelect is
     (
      --  No effect
      WAKESelect_0,
      --  Disable Interrupt.
      WAKESelect_1)
     with Size => 1;
   for WAKESelect use
     (WAKESelect_0 => 0,
      WAKESelect_1 => 1);

   subtype IER_AE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Enable Register
   type PM_IER_Register is record
      --  Write-only. Clock Failure Detected Interrupt Enable
      CFD           : IER_CFD_Field := 16#0#;
      --  unspecified
      Reserved_1_4  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. Clock Ready Interrupt Enable
      CKRDY         : IER_CKRDY_Field := 16#0#;
      --  unspecified
      Reserved_6_7  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Wake up Interrupt Enable
      WAKE          : WAKESelect := Interfaces.ATSAM4L.PM.WAKESelect_0;
      --  unspecified
      Reserved_9_30 : Interfaces.Bit_Types.UInt22 := 16#0#;
      --  Write-only. Access Error Interrupt Enable
      AE            : IER_AE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_IER_Register use record
      CFD           at 0 range 0 .. 0;
      Reserved_1_4  at 0 range 1 .. 4;
      CKRDY         at 0 range 5 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      WAKE          at 0 range 8 .. 8;
      Reserved_9_30 at 0 range 9 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   ---------------------
   -- PM_IDR_Register --
   ---------------------

   subtype IDR_CFD_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_CKRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_AE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Disable Register
   type PM_IDR_Register is record
      --  Write-only. Clock Failure Detected Interrupt Disable
      CFD           : IDR_CFD_Field := 16#0#;
      --  unspecified
      Reserved_1_4  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. Clock Ready Interrupt Disable
      CKRDY         : IDR_CKRDY_Field := 16#0#;
      --  unspecified
      Reserved_6_7  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Wake up Interrupt Disable
      WAKE          : WAKESelect := Interfaces.ATSAM4L.PM.WAKESelect_0;
      --  unspecified
      Reserved_9_30 : Interfaces.Bit_Types.UInt22 := 16#0#;
      --  Write-only. Access Error Interrupt Disable
      AE            : IDR_AE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_IDR_Register use record
      CFD           at 0 range 0 .. 0;
      Reserved_1_4  at 0 range 1 .. 4;
      CKRDY         at 0 range 5 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      WAKE          at 0 range 8 .. 8;
      Reserved_9_30 at 0 range 9 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   ---------------------
   -- PM_IMR_Register --
   ---------------------

   subtype IMR_CFD_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_CKRDY_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_AE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Mask Register
   type PM_IMR_Register is record
      --  Read-only. Clock Failure Detected Interrupt Mask
      CFD           : IMR_CFD_Field;
      --  unspecified
      Reserved_1_4  : Interfaces.Bit_Types.UInt4;
      --  Read-only. Clock Ready Interrupt Mask
      CKRDY         : IMR_CKRDY_Field;
      --  unspecified
      Reserved_6_7  : Interfaces.Bit_Types.UInt2;
      --  Read-only. Wake up Interrupt Mask
      WAKE          : WAKESelect;
      --  unspecified
      Reserved_9_30 : Interfaces.Bit_Types.UInt22;
      --  Read-only. Access Error Interrupt Mask
      AE            : IMR_AE_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_IMR_Register use record
      CFD           at 0 range 0 .. 0;
      Reserved_1_4  at 0 range 1 .. 4;
      CKRDY         at 0 range 5 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      WAKE          at 0 range 8 .. 8;
      Reserved_9_30 at 0 range 9 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   ---------------------
   -- PM_ISR_Register --
   ---------------------

   subtype ISR_CFD_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_CKRDY_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_AE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Status Register
   type PM_ISR_Register is record
      --  Read-only. Clock Failure Detected Interrupt Status
      CFD           : ISR_CFD_Field;
      --  unspecified
      Reserved_1_4  : Interfaces.Bit_Types.UInt4;
      --  Read-only. Clock Ready Interrupt Status
      CKRDY         : ISR_CKRDY_Field;
      --  unspecified
      Reserved_6_7  : Interfaces.Bit_Types.UInt2;
      --  Read-only. Wake up Interrupt Status
      WAKE          : WAKESelect;
      --  unspecified
      Reserved_9_30 : Interfaces.Bit_Types.UInt22;
      --  Read-only. Access Error Interrupt Status
      AE            : ISR_AE_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_ISR_Register use record
      CFD           at 0 range 0 .. 0;
      Reserved_1_4  at 0 range 1 .. 4;
      CKRDY         at 0 range 5 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      WAKE          at 0 range 8 .. 8;
      Reserved_9_30 at 0 range 9 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   ---------------------
   -- PM_ICR_Register --
   ---------------------

   subtype ICR_CFD_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_CKRDY_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_WAKE_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_AE_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Clear Register
   type PM_ICR_Register is record
      --  Write-only. Clock Failure Detected Interrupt Status Clear
      CFD           : ICR_CFD_Field := 16#0#;
      --  unspecified
      Reserved_1_4  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. Clock Ready Interrupt Status Clear
      CKRDY         : ICR_CKRDY_Field := 16#0#;
      --  unspecified
      Reserved_6_7  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Wake up Interrupt Status Clear
      WAKE          : ICR_WAKE_Field := 16#0#;
      --  unspecified
      Reserved_9_30 : Interfaces.Bit_Types.UInt22 := 16#0#;
      --  Write-only. Access Error Interrupt Status Clear
      AE            : ICR_AE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_ICR_Register use record
      CFD           at 0 range 0 .. 0;
      Reserved_1_4  at 0 range 1 .. 4;
      CKRDY         at 0 range 5 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      WAKE          at 0 range 8 .. 8;
      Reserved_9_30 at 0 range 9 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   --------------------
   -- PM_SR_Register --
   --------------------

   subtype SR_CFD_Field is Interfaces.Bit_Types.Bit;
   subtype SR_OCP_Field is Interfaces.Bit_Types.Bit;
   subtype SR_CKRDY_Field is Interfaces.Bit_Types.Bit;
   subtype SR_PERRDY_Field is Interfaces.Bit_Types.Bit;
   subtype SR_AE_Field is Interfaces.Bit_Types.Bit;

   --  Status Register
   type PM_SR_Register is record
      --  Read-only. Clock Failure Detected
      CFD            : SR_CFD_Field;
      --  Read-only. Over Clock Detected
      OCP            : SR_OCP_Field;
      --  unspecified
      Reserved_2_4   : Interfaces.Bit_Types.UInt3;
      --  Read-only. Clock Ready
      CKRDY          : SR_CKRDY_Field;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2;
      --  Read-only. Wake up
      WAKE           : WAKESelect;
      --  unspecified
      Reserved_9_27  : Interfaces.Bit_Types.UInt19;
      --  Read-only. Peripheral Ready
      PERRDY         : SR_PERRDY_Field;
      --  unspecified
      Reserved_29_30 : Interfaces.Bit_Types.UInt2;
      --  Read-only. Access Error
      AE             : SR_AE_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_SR_Register use record
      CFD            at 0 range 0 .. 0;
      OCP            at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      CKRDY          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      WAKE           at 0 range 8 .. 8;
      Reserved_9_27  at 0 range 9 .. 27;
      PERRDY         at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   ----------------------
   -- PM_PPCR_Register --
   ----------------------

   subtype PPCR_RSTPUN_Field is Interfaces.Bit_Types.Bit;
   subtype PPCR_CATBRCMASK_Field is Interfaces.Bit_Types.Bit;
   subtype PPCR_ACIFCRCMASK_Field is Interfaces.Bit_Types.Bit;
   subtype PPCR_ASTRCMASK_Field is Interfaces.Bit_Types.Bit;
   subtype PPCR_TWIS0RCMASK_Field is Interfaces.Bit_Types.Bit;
   subtype PPCR_TWIS1RCMASK_Field is Interfaces.Bit_Types.Bit;
   subtype PPCR_PEVCRCMASK_Field is Interfaces.Bit_Types.Bit;
   subtype PPCR_ADCIFERCMASK_Field is Interfaces.Bit_Types.Bit;
   subtype PPCR_VREGRCMASK_Field is Interfaces.Bit_Types.Bit;
   subtype PPCR_FWBGREF_Field is Interfaces.Bit_Types.Bit;
   subtype PPCR_FWBOD18_Field is Interfaces.Bit_Types.Bit;

   --  Peripheral Power Control Register
   type PM_PPCR_Register is record
      --  Reset Pullup
      RSTPUN         : PPCR_RSTPUN_Field := 16#0#;
      --  CAT Request Clock Mask
      CATBRCMASK     : PPCR_CATBRCMASK_Field := 16#1#;
      --  ACIFC Request Clock Mask
      ACIFCRCMASK    : PPCR_ACIFCRCMASK_Field := 16#1#;
      --  AST Request Clock Mask
      ASTRCMASK      : PPCR_ASTRCMASK_Field := 16#1#;
      --  TWIS0 Request Clock Mask
      TWIS0RCMASK    : PPCR_TWIS0RCMASK_Field := 16#1#;
      --  TWIS1 Request Clock Mask
      TWIS1RCMASK    : PPCR_TWIS1RCMASK_Field := 16#1#;
      --  PEVC Request Clock Mask
      PEVCRCMASK     : PPCR_PEVCRCMASK_Field := 16#1#;
      --  ADCIFE Request Clock Mask
      ADCIFERCMASK   : PPCR_ADCIFERCMASK_Field := 16#1#;
      --  VREG Request Clock Mask
      VREGRCMASK     : PPCR_VREGRCMASK_Field := 16#1#;
      --  Flash Wait BGREF
      FWBGREF        : PPCR_FWBGREF_Field := 16#0#;
      --  Flash Wait BOD18
      FWBOD18        : PPCR_FWBOD18_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_PPCR_Register use record
      RSTPUN         at 0 range 0 .. 0;
      CATBRCMASK     at 0 range 1 .. 1;
      ACIFCRCMASK    at 0 range 2 .. 2;
      ASTRCMASK      at 0 range 3 .. 3;
      TWIS0RCMASK    at 0 range 4 .. 4;
      TWIS1RCMASK    at 0 range 5 .. 5;
      PEVCRCMASK     at 0 range 6 .. 6;
      ADCIFERCMASK   at 0 range 7 .. 7;
      VREGRCMASK     at 0 range 8 .. 8;
      FWBGREF        at 0 range 9 .. 9;
      FWBOD18        at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   ------------------------
   -- PM_RCAUSE_Register --
   ------------------------

   subtype RCAUSE_POR_Field is Interfaces.Bit_Types.Bit;
   subtype RCAUSE_BOD_Field is Interfaces.Bit_Types.Bit;
   subtype RCAUSE_EXT_Field is Interfaces.Bit_Types.Bit;
   subtype RCAUSE_WDT_Field is Interfaces.Bit_Types.Bit;
   subtype RCAUSE_OCDRST_Field is Interfaces.Bit_Types.Bit;
   subtype RCAUSE_POR33_Field is Interfaces.Bit_Types.Bit;
   subtype RCAUSE_BOD33_Field is Interfaces.Bit_Types.Bit;

   --  Reset Cause Register
   type PM_RCAUSE_Register is record
      --  Read-only. Power-on Reset
      POR            : RCAUSE_POR_Field;
      --  Read-only. Brown-out Reset
      BOD            : RCAUSE_BOD_Field;
      --  Read-only. External Reset Pin
      EXT            : RCAUSE_EXT_Field;
      --  Read-only. Watchdog Reset
      WDT            : RCAUSE_WDT_Field;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4;
      --  Read-only. OCD Reset
      OCDRST         : RCAUSE_OCDRST_Field;
      --  unspecified
      Reserved_9_9   : Interfaces.Bit_Types.Bit;
      --  Read-only. Power-on Reset
      POR33          : RCAUSE_POR33_Field;
      --  unspecified
      Reserved_11_12 : Interfaces.Bit_Types.UInt2;
      --  Read-only. Brown-out 3.3V Reset
      BOD33          : RCAUSE_BOD33_Field;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_RCAUSE_Register use record
      POR            at 0 range 0 .. 0;
      BOD            at 0 range 1 .. 1;
      EXT            at 0 range 2 .. 2;
      WDT            at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      OCDRST         at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      POR33          at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      BOD33          at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   ------------------------
   -- PM_WCAUSE_Register --
   ------------------------

   subtype WCAUSE_TWI_SLAVE_0_Field is Interfaces.Bit_Types.Bit;
   subtype WCAUSE_TWI_SLAVE_1_Field is Interfaces.Bit_Types.Bit;
   subtype WCAUSE_USBC_Field is Interfaces.Bit_Types.Bit;
   subtype WCAUSE_PSOK_Field is Interfaces.Bit_Types.Bit;
   subtype WCAUSE_BOD18_IRQ_Field is Interfaces.Bit_Types.Bit;
   subtype WCAUSE_BOD33_IRQ_Field is Interfaces.Bit_Types.Bit;
   subtype WCAUSE_PICOUART_Field is Interfaces.Bit_Types.Bit;
   subtype WCAUSE_LCDCA_Field is Interfaces.Bit_Types.Bit;
   subtype WCAUSE_EIC_Field is Interfaces.Bit_Types.Bit;
   subtype WCAUSE_AST_Field is Interfaces.Bit_Types.Bit;

   --  Wake Cause Register
   type PM_WCAUSE_Register is record
      --  Read-only. Two-wire Slave Interface 0
      TWI_SLAVE_0    : WCAUSE_TWI_SLAVE_0_Field;
      --  Read-only. Two-wire Slave Interface 1
      TWI_SLAVE_1    : WCAUSE_TWI_SLAVE_1_Field;
      --  Read-only. USB Device and Embedded Host Interface
      USBC           : WCAUSE_USBC_Field;
      --  Read-only. Power Scaling OK
      PSOK           : WCAUSE_PSOK_Field;
      --  Read-only. BOD18 Interrupt
      BOD18_IRQ      : WCAUSE_BOD18_IRQ_Field;
      --  Read-only. BOD33 Interrupt
      BOD33_IRQ      : WCAUSE_BOD33_IRQ_Field;
      --  Read-only. Picopower UART
      PICOUART       : WCAUSE_PICOUART_Field;
      --  Read-only. LCD Controller
      LCDCA          : WCAUSE_LCDCA_Field;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte;
      --  Read-only. External Interrupt Controller
      EIC            : WCAUSE_EIC_Field;
      --  Read-only. Asynchronous Timer
      AST            : WCAUSE_AST_Field;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_WCAUSE_Register use record
      TWI_SLAVE_0    at 0 range 0 .. 0;
      TWI_SLAVE_1    at 0 range 1 .. 1;
      USBC           at 0 range 2 .. 2;
      PSOK           at 0 range 3 .. 3;
      BOD18_IRQ      at 0 range 4 .. 4;
      BOD33_IRQ      at 0 range 5 .. 5;
      PICOUART       at 0 range 6 .. 6;
      LCDCA          at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      EIC            at 0 range 16 .. 16;
      AST            at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   ---------------------------
   -- PM_FASTSLEEP_Register --
   ---------------------------

   subtype FASTSLEEP_OSC_Field is Interfaces.Bit_Types.Bit;
   subtype FASTSLEEP_PLL_Field is Interfaces.Bit_Types.Bit;
   subtype FASTSLEEP_FASTRCOSC_Field is Interfaces.Bit_Types.UInt5;
   subtype FASTSLEEP_DFLL_Field is Interfaces.Bit_Types.Bit;

   --  Fast Sleep Register
   type PM_FASTSLEEP_Register is record
      --  Oscillator
      OSC            : FASTSLEEP_OSC_Field := 16#0#;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  PLL
      PLL            : FASTSLEEP_PLL_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  RC80 or FLO
      FASTRCOSC      : FASTSLEEP_FASTRCOSC_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  DFLL
      DFLL           : FASTSLEEP_DFLL_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_FASTSLEEP_Register use record
      OSC            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      PLL            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      FASTRCOSC      at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      DFLL           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   ------------------------
   -- PM_CONFIG_Register --
   ------------------------

   subtype CONFIG_PBA_Field is Interfaces.Bit_Types.Bit;
   subtype CONFIG_PBB_Field is Interfaces.Bit_Types.Bit;
   subtype CONFIG_PBC_Field is Interfaces.Bit_Types.Bit;
   subtype CONFIG_PBD_Field is Interfaces.Bit_Types.Bit;
   subtype CONFIG_HSBPEVC_Field is Interfaces.Bit_Types.Bit;

   --  Configuration Register
   type PM_CONFIG_Register is record
      --  Read-only. APBA Implemented
      PBA           : CONFIG_PBA_Field;
      --  Read-only. APBB Implemented
      PBB           : CONFIG_PBB_Field;
      --  Read-only. APBC Implemented
      PBC           : CONFIG_PBC_Field;
      --  Read-only. APBD Implemented
      PBD           : CONFIG_PBD_Field;
      --  unspecified
      Reserved_4_6  : Interfaces.Bit_Types.UInt3;
      --  Read-only. HSB PEVC Clock Implemented
      HSBPEVC       : CONFIG_HSBPEVC_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_CONFIG_Register use record
      PBA           at 0 range 0 .. 0;
      PBB           at 0 range 1 .. 1;
      PBC           at 0 range 2 .. 2;
      PBD           at 0 range 3 .. 3;
      Reserved_4_6  at 0 range 4 .. 6;
      HSBPEVC       at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -------------------------
   -- PM_VERSION_Register --
   -------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type PM_VERSION_Register is record
      --  Read-only. Version number
      VERSION        : VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant number
      VARIANT        : VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power Manager
   type PM_Peripheral is record
      --  Main Clock Control
      MCCTRL     : PM_MCCTRL_Register;
      --  CPU Clock Select
      CPUSEL     : PM_CPUSEL_Register;
      --  PBA Clock Select
      PBASEL     : PM_PBASEL_Register;
      --  PBB Clock Select
      PBBSEL     : PM_PBBSEL_Register;
      --  PBC Clock Select
      PBCSEL     : PM_PBCSEL_Register;
      --  PBD Clock Select
      PBDSEL     : PM_PBDSEL_Register;
      --  CPU Mask
      CPUMASK    : PM_CPUMASK_Register;
      --  HSB Mask
      HSBMASK    : PM_HSBMASK_Register;
      --  PBA Mask
      PBAMASK    : PM_PBAMASK_Register;
      --  PBB Mask
      PBBMASK    : PM_PBBMASK_Register;
      --  PBC Mask
      PBCMASK    : PM_PBCMASK_Register;
      --  PBD Mask
      PBDMASK    : PM_PBDMASK_Register;
      --  PBA Divided Clock Mask
      PBADIVMASK : Interfaces.Bit_Types.Word;
      --  Clock Failure Detector Control
      CFDCTRL    : PM_CFDCTRL_Register;
      --  Unlock Register
      UNLOCK     : PM_UNLOCK_Register;
      --  Interrupt Enable Register
      IER        : PM_IER_Register;
      --  Interrupt Disable Register
      IDR        : PM_IDR_Register;
      --  Interrupt Mask Register
      IMR        : PM_IMR_Register;
      --  Interrupt Status Register
      ISR        : PM_ISR_Register;
      --  Interrupt Clear Register
      ICR        : PM_ICR_Register;
      --  Status Register
      SR         : PM_SR_Register;
      --  Peripheral Power Control Register
      PPCR       : PM_PPCR_Register;
      --  Reset Cause Register
      RCAUSE     : PM_RCAUSE_Register;
      --  Wake Cause Register
      WCAUSE     : PM_WCAUSE_Register;
      --  Asynchronous Wake Enable
      AWEN       : Interfaces.Bit_Types.Word;
      --  Obsvervability
      OBS        : Interfaces.Bit_Types.Word;
      --  Fast Sleep Register
      FASTSLEEP  : PM_FASTSLEEP_Register;
      --  Configuration Register
      CONFIG     : PM_CONFIG_Register;
      --  Version Register
      VERSION    : PM_VERSION_Register;
   end record
     with Volatile;

   for PM_Peripheral use record
      MCCTRL     at 0 range 0 .. 31;
      CPUSEL     at 4 range 0 .. 31;
      PBASEL     at 12 range 0 .. 31;
      PBBSEL     at 16 range 0 .. 31;
      PBCSEL     at 20 range 0 .. 31;
      PBDSEL     at 24 range 0 .. 31;
      CPUMASK    at 32 range 0 .. 31;
      HSBMASK    at 36 range 0 .. 31;
      PBAMASK    at 40 range 0 .. 31;
      PBBMASK    at 44 range 0 .. 31;
      PBCMASK    at 48 range 0 .. 31;
      PBDMASK    at 52 range 0 .. 31;
      PBADIVMASK at 64 range 0 .. 31;
      CFDCTRL    at 84 range 0 .. 31;
      UNLOCK     at 88 range 0 .. 31;
      IER        at 192 range 0 .. 31;
      IDR        at 196 range 0 .. 31;
      IMR        at 200 range 0 .. 31;
      ISR        at 204 range 0 .. 31;
      ICR        at 208 range 0 .. 31;
      SR         at 212 range 0 .. 31;
      PPCR       at 352 range 0 .. 31;
      RCAUSE     at 384 range 0 .. 31;
      WCAUSE     at 388 range 0 .. 31;
      AWEN       at 392 range 0 .. 31;
      OBS        at 400 range 0 .. 31;
      FASTSLEEP  at 404 range 0 .. 31;
      CONFIG     at 1016 range 0 .. 31;
      VERSION    at 1020 range 0 .. 31;
   end record;

   --  Power Manager
   PM_Periph : aliased PM_Peripheral
     with Import, Address => PM_Base;

end Interfaces.ATSAM4L.PM;
