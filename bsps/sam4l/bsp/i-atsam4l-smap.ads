--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.SMAP is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ----------------------
   -- SMAP_CR_Register --
   ----------------------

   subtype CR_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_DIS_Field is Interfaces.Bit_Types.Bit;
   subtype CR_CRC_Field is Interfaces.Bit_Types.Bit;
   subtype CR_FSPR_Field is Interfaces.Bit_Types.Bit;
   subtype CR_CE_Field is Interfaces.Bit_Types.Bit;

   --  Control Register
   type SMAP_CR_Register is record
      --  Write-only. Enable
      EN            : CR_EN_Field := 16#0#;
      --  Write-only. Disable
      DIS           : CR_DIS_Field := 16#0#;
      --  Write-only. User Page Read
      CRC           : CR_CRC_Field := 16#0#;
      --  Write-only. Flash Supplementary Page Read
      FSPR          : CR_FSPR_Field := 16#0#;
      --  Write-only. Chip Erase
      CE            : CR_CE_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMAP_CR_Register use record
      EN            at 0 range 0 .. 0;
      DIS           at 0 range 1 .. 1;
      CRC           at 0 range 2 .. 2;
      FSPR          at 0 range 3 .. 3;
      CE            at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   ----------------------
   -- SMAP_SR_Register --
   ----------------------

   subtype SR_DONE_Field is Interfaces.Bit_Types.Bit;
   subtype SR_HCR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_BERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_FAIL_Field is Interfaces.Bit_Types.Bit;
   subtype SR_LCK_Field is Interfaces.Bit_Types.Bit;
   subtype SR_EN_Field is Interfaces.Bit_Types.Bit;
   subtype SR_PROT_Field is Interfaces.Bit_Types.Bit;
   subtype SR_DBGP_Field is Interfaces.Bit_Types.Bit;
   subtype SR_STATE_Field is Interfaces.Bit_Types.UInt3;

   --  Status Register
   type SMAP_SR_Register is record
      --  Read-only. Operation done
      DONE           : SR_DONE_Field;
      --  Read-only. Hold Core reset
      HCR            : SR_HCR_Field;
      --  Read-only. Bus error
      BERR           : SR_BERR_Field;
      --  Read-only. Failure
      FAIL           : SR_FAIL_Field;
      --  Read-only. Lock
      LCK            : SR_LCK_Field;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3;
      --  Read-only. Enabled
      EN             : SR_EN_Field;
      --  Read-only. Protected
      PROT           : SR_PROT_Field;
      --  Read-only. Debugger Present
      DBGP           : SR_DBGP_Field;
      --  unspecified
      Reserved_11_23 : Interfaces.Bit_Types.UInt13;
      --  Read-only. State
      STATE          : SR_STATE_Field;
      --  unspecified
      Reserved_27_31 : Interfaces.Bit_Types.UInt5;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMAP_SR_Register use record
      DONE           at 0 range 0 .. 0;
      HCR            at 0 range 1 .. 1;
      BERR           at 0 range 2 .. 2;
      FAIL           at 0 range 3 .. 3;
      LCK            at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      EN             at 0 range 8 .. 8;
      PROT           at 0 range 9 .. 9;
      DBGP           at 0 range 10 .. 10;
      Reserved_11_23 at 0 range 11 .. 23;
      STATE          at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   -----------------------
   -- SMAP_SCR_Register --
   -----------------------

   subtype SCR_DONE_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_HCR_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_BERR_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_FAIL_Field is Interfaces.Bit_Types.Bit;
   subtype SCR_LCK_Field is Interfaces.Bit_Types.Bit;

   --  Status Clear Register
   type SMAP_SCR_Register is record
      --  Write-only. Done
      DONE          : SCR_DONE_Field := 16#0#;
      --  Write-only. Hold Core Register
      HCR           : SCR_HCR_Field := 16#0#;
      --  Write-only. Bus error
      BERR          : SCR_BERR_Field := 16#0#;
      --  Write-only. Failure
      FAIL          : SCR_FAIL_Field := 16#0#;
      --  Write-only. Lock error
      LCK           : SCR_LCK_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMAP_SCR_Register use record
      DONE          at 0 range 0 .. 0;
      HCR           at 0 range 1 .. 1;
      BERR          at 0 range 2 .. 2;
      FAIL          at 0 range 3 .. 3;
      LCK           at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   ------------------------
   -- SMAP_ADDR_Register --
   ------------------------

   subtype ADDR_ADDR_Field is Interfaces.Bit_Types.UInt30;

   --  Address Register
   type SMAP_ADDR_Register is record
      --  unspecified
      Reserved_0_1 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Address Value
      ADDR         : ADDR_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMAP_ADDR_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      ADDR         at 0 range 2 .. 31;
   end record;

   --------------------------
   -- SMAP_LENGTH_Register --
   --------------------------

   subtype LENGTH_LENGTH_Field is Interfaces.Bit_Types.UInt30;

   --  Length Register
   type SMAP_LENGTH_Register is record
      --  unspecified
      Reserved_0_1 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Length Register
      LENGTH       : LENGTH_LENGTH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMAP_LENGTH_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      LENGTH       at 0 range 2 .. 31;
   end record;

   ---------------------------
   -- SMAP_VERSION_Register --
   ---------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  VERSION register
   type SMAP_VERSION_Register is record
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

   for SMAP_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ------------------------
   -- SMAP_CIDR_Register --
   ------------------------

   subtype CIDR_VERSION_Field is Interfaces.Bit_Types.UInt5;
   subtype CIDR_EPROC_Field is Interfaces.Bit_Types.UInt3;

   -----------------
   -- CIDR.NVPSIZ --
   -----------------

   --  CIDR_NVPSIZ array element
   subtype CIDR_NVPSIZ_Element is Interfaces.Bit_Types.UInt4;

   --  CIDR_NVPSIZ array
   type CIDR_NVPSIZ_Field_Array is array (1 .. 2) of CIDR_NVPSIZ_Element
     with Component_Size => 4, Size => 8;

   --  Type definition for CIDR_NVPSIZ
   type CIDR_NVPSIZ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  NVPSIZ as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  NVPSIZ as an array
            Arr : CIDR_NVPSIZ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for CIDR_NVPSIZ_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype CIDR_SRAMSIZ_Field is Interfaces.Bit_Types.UInt5;
   subtype CIDR_ARCH_Field is Interfaces.Bit_Types.UInt7;
   subtype CIDR_NVPTYP_Field is Interfaces.Bit_Types.UInt3;
   subtype CIDR_EXT_Field is Interfaces.Bit_Types.Bit;

   --  Chip ID Register
   type SMAP_CIDR_Register is record
      --  Read-only. Version of the Device
      VERSION : CIDR_VERSION_Field;
      --  Read-only. Embedded Processor
      EPROC   : CIDR_EPROC_Field;
      --  Read-only. Nonvolatile Program Memory Size
      NVPSIZ  : CIDR_NVPSIZ_Field;
      --  Read-only. Internal SRAM Size
      SRAMSIZ : CIDR_SRAMSIZ_Field;
      --  Read-only. Architecture Identifier
      ARCH    : CIDR_ARCH_Field;
      --  Read-only. Nonvolatile Program Memory Type
      NVPTYP  : CIDR_NVPTYP_Field;
      --  Read-only. Extension Flag
      EXT     : CIDR_EXT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMAP_CIDR_Register use record
      VERSION at 0 range 0 .. 4;
      EPROC   at 0 range 5 .. 7;
      NVPSIZ  at 0 range 8 .. 15;
      SRAMSIZ at 0 range 16 .. 20;
      ARCH    at 0 range 21 .. 27;
      NVPTYP  at 0 range 28 .. 30;
      EXT     at 0 range 31 .. 31;
   end record;

   -----------------------
   -- SMAP_IDR_Register --
   -----------------------

   subtype IDR_APIDV_Field is Interfaces.Bit_Types.UInt4;
   subtype IDR_APID_Field is Interfaces.Bit_Types.UInt4;
   subtype IDR_CLSS_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_IC_Field is Interfaces.Bit_Types.UInt7;
   subtype IDR_CC_Field is Interfaces.Bit_Types.UInt4;
   subtype IDR_REVISION_Field is Interfaces.Bit_Types.UInt4;

   --  AP Identification register
   type SMAP_IDR_Register is record
      --  Read-only. AP Identification Variant
      APIDV         : IDR_APIDV_Field;
      --  Read-only. AP Identification
      APID          : IDR_APID_Field;
      --  unspecified
      Reserved_8_15 : Interfaces.Bit_Types.Byte;
      --  Read-only. Class
      CLSS          : IDR_CLSS_Field;
      --  Read-only. JEP-106 Identity Code
      IC            : IDR_IC_Field;
      --  Read-only. JEP-106 Continuation Code
      CC            : IDR_CC_Field;
      --  Read-only. Revision
      REVISION      : IDR_REVISION_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMAP_IDR_Register use record
      APIDV         at 0 range 0 .. 3;
      APID          at 0 range 4 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
      CLSS          at 0 range 16 .. 16;
      IC            at 0 range 17 .. 23;
      CC            at 0 range 24 .. 27;
      REVISION      at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Manager Access Port
   type SMAP_Peripheral is record
      --  Control Register
      CR      : SMAP_CR_Register;
      --  Status Register
      SR      : SMAP_SR_Register;
      --  Status Clear Register
      SCR     : SMAP_SCR_Register;
      --  Address Register
      ADDR    : SMAP_ADDR_Register;
      --  Length Register
      LENGTH  : SMAP_LENGTH_Register;
      --  Data Register
      DATA    : Interfaces.Bit_Types.Word;
      --  VERSION register
      VERSION : SMAP_VERSION_Register;
      --  Chip ID Register
      CIDR    : SMAP_CIDR_Register;
      --  Chip ID Extension Register
      EXID    : Interfaces.Bit_Types.Word;
      --  AP Identification register
      IDR     : SMAP_IDR_Register;
   end record
     with Volatile;

   for SMAP_Peripheral use record
      CR      at 0 range 0 .. 31;
      SR      at 4 range 0 .. 31;
      SCR     at 8 range 0 .. 31;
      ADDR    at 12 range 0 .. 31;
      LENGTH  at 16 range 0 .. 31;
      DATA    at 20 range 0 .. 31;
      VERSION at 40 range 0 .. 31;
      CIDR    at 240 range 0 .. 31;
      EXID    at 244 range 0 .. 31;
      IDR     at 252 range 0 .. 31;
   end record;

   --  System Manager Access Port
   SMAP_Periph : aliased SMAP_Peripheral
     with Import, Address => SMAP_Base;

end Interfaces.ATSAM4L.SMAP;
