--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with System;

--  Atmel ATSAM4LC4A device: Cortex-M4 Microcontroller with 256KB Flash, 32KB
--  SRAM, 48-pin package (refer to http://www.atmel.com/devices/SAM4LC4A.aspx
--  for more)
package Interfaces.ATSAM4L is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   --------------------
   -- Base addresses --
   --------------------

   ABDACB_Base : constant System.Address :=
     System'To_Address (16#40064000#);
   ACIFC_Base : constant System.Address :=
     System'To_Address (16#40040000#);
   ADCIFE_Base : constant System.Address :=
     System'To_Address (16#40038000#);
   AESA_Base : constant System.Address :=
     System'To_Address (16#400B0000#);
   AST_Base : constant System.Address :=
     System'To_Address (16#400F0800#);
   BPM_Base : constant System.Address :=
     System'To_Address (16#400F0000#);
   BSCIF_Base : constant System.Address :=
     System'To_Address (16#400F0400#);
   CATB_Base : constant System.Address :=
     System'To_Address (16#40070000#);
   CHIPID_Base : constant System.Address :=
     System'To_Address (16#400E0400#);
   CRCCU_Base : constant System.Address :=
     System'To_Address (16#400A4000#);
   DACC_Base : constant System.Address :=
     System'To_Address (16#4003C000#);
   EIC_Base : constant System.Address :=
     System'To_Address (16#400F1000#);
   HFLASHC_Base : constant System.Address :=
     System'To_Address (16#400A0000#);
   FREQM_Base : constant System.Address :=
     System'To_Address (16#400E0C00#);
   GLOC_Base : constant System.Address :=
     System'To_Address (16#40060000#);
   GPIO_Base : constant System.Address :=
     System'To_Address (16#400E1000#);
   HCACHE_Base : constant System.Address :=
     System'To_Address (16#400A0400#);
   HMATRIX_Base : constant System.Address :=
     System'To_Address (16#400A1000#);
   IISC_Base : constant System.Address :=
     System'To_Address (16#40004000#);
   LCDCA_Base : constant System.Address :=
     System'To_Address (16#40080000#);
   PARC_Base : constant System.Address :=
     System'To_Address (16#4006C000#);
   PDCA_Base : constant System.Address :=
     System'To_Address (16#400A2000#);
   PEVC_Base : constant System.Address :=
     System'To_Address (16#400A6000#);
   PICOUART_Base : constant System.Address :=
     System'To_Address (16#400F1400#);
   PM_Base : constant System.Address :=
     System'To_Address (16#400E0000#);
   SCIF_Base : constant System.Address :=
     System'To_Address (16#400E0800#);
   SMAP_Base : constant System.Address :=
     System'To_Address (16#400A3000#);
   SPI_Base : constant System.Address :=
     System'To_Address (16#40008000#);
   TC0_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   TC1_Base : constant System.Address :=
     System'To_Address (16#40014000#);
   TRNG_Base : constant System.Address :=
     System'To_Address (16#40068000#);
   TWIM0_Base : constant System.Address :=
     System'To_Address (16#40018000#);
   TWIM1_Base : constant System.Address :=
     System'To_Address (16#4001C000#);
   TWIM2_Base : constant System.Address :=
     System'To_Address (16#40078000#);
   TWIM3_Base : constant System.Address :=
     System'To_Address (16#4007C000#);
   TWIS0_Base : constant System.Address :=
     System'To_Address (16#40018400#);
   TWIS1_Base : constant System.Address :=
     System'To_Address (16#4001C400#);
   USART0_Base : constant System.Address :=
     System'To_Address (16#40024000#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#40028000#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#4002C000#);
   USART3_Base : constant System.Address :=
     System'To_Address (16#40030000#);
   USBC_Base : constant System.Address :=
     System'To_Address (16#400A5000#);
   WDT_Base : constant System.Address :=
     System'To_Address (16#400F0C00#);

end Interfaces.ATSAM4L;
