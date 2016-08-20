--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.ACIFC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -------------------------
   -- ACIFC_CTRL_Register --
   -------------------------

   subtype CTRL_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_EVENTEN_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_USTART_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_ESTART_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_ACTEST_Field is Interfaces.Bit_Types.Bit;

   --  Control Register
   type ACIFC_CTRL_Register is record
      --  ACIFC Enable
      EN            : CTRL_EN_Field := 16#0#;
      --  Peripheral Event Trigger Enable
      EVENTEN       : CTRL_EVENTEN_Field := 16#0#;
      --  unspecified
      Reserved_2_3  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  User Start Single Comparison
      USTART        : CTRL_USTART_Field := 16#0#;
      --  Peripheral Event Start Single Comparison
      ESTART        : CTRL_ESTART_Field := 16#0#;
      --  unspecified
      Reserved_6_6  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Analog Comparator Test Mode
      ACTEST        : CTRL_ACTEST_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_CTRL_Register use record
      EN            at 0 range 0 .. 0;
      EVENTEN       at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      USTART        at 0 range 4 .. 4;
      ESTART        at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      ACTEST        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------------
   -- ACIFC_SR_Register --
   -----------------------

   subtype SR_ACCS0_Field is Interfaces.Bit_Types.Bit;
   subtype SR_ACRDY0_Field is Interfaces.Bit_Types.Bit;
   subtype SR_ACCS1_Field is Interfaces.Bit_Types.Bit;
   subtype SR_ACRDY1_Field is Interfaces.Bit_Types.Bit;
   subtype SR_ACCS2_Field is Interfaces.Bit_Types.Bit;
   subtype SR_ACRDY2_Field is Interfaces.Bit_Types.Bit;
   subtype SR_ACCS3_Field is Interfaces.Bit_Types.Bit;
   subtype SR_ACRDY3_Field is Interfaces.Bit_Types.Bit;
   subtype SR_ACCS4_Field is Interfaces.Bit_Types.Bit;
   subtype SR_ACRDY4_Field is Interfaces.Bit_Types.Bit;
   subtype SR_ACCS5_Field is Interfaces.Bit_Types.Bit;
   subtype SR_ACRDY5_Field is Interfaces.Bit_Types.Bit;
   subtype SR_ACCS6_Field is Interfaces.Bit_Types.Bit;
   subtype SR_ACRDY6_Field is Interfaces.Bit_Types.Bit;
   subtype SR_ACCS7_Field is Interfaces.Bit_Types.Bit;
   subtype SR_ACRDY7_Field is Interfaces.Bit_Types.Bit;

   -------------
   -- SR.WFCS --
   -------------

   --  SR_WFCS array element
   subtype SR_WFCS_Element is Interfaces.Bit_Types.Bit;

   --  SR_WFCS array
   type SR_WFCS_Field_Array is array (0 .. 3) of SR_WFCS_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SR_WFCS
   type SR_WFCS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WFCS as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  WFCS as an array
            Arr : SR_WFCS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SR_WFCS_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Status Register
   type ACIFC_SR_Register is record
      --  Read-only. AC0 Current Comparison Status
      ACCS0          : SR_ACCS0_Field;
      --  Read-only. AC0 Ready
      ACRDY0         : SR_ACRDY0_Field;
      --  Read-only. AC1 Current Comparison Status
      ACCS1          : SR_ACCS1_Field;
      --  Read-only. AC1 Ready
      ACRDY1         : SR_ACRDY1_Field;
      --  Read-only. AC2 Current Comparison Status
      ACCS2          : SR_ACCS2_Field;
      --  Read-only. AC2 Ready
      ACRDY2         : SR_ACRDY2_Field;
      --  Read-only. AC3 Current Comparison Status
      ACCS3          : SR_ACCS3_Field;
      --  Read-only. AC3 Ready
      ACRDY3         : SR_ACRDY3_Field;
      --  Read-only. AC4 Current Comparison Status
      ACCS4          : SR_ACCS4_Field;
      --  Read-only. AC4 Ready
      ACRDY4         : SR_ACRDY4_Field;
      --  Read-only. AC5 Current Comparison Status
      ACCS5          : SR_ACCS5_Field;
      --  Read-only. AC5 Ready
      ACRDY5         : SR_ACRDY5_Field;
      --  Read-only. AC6 Current Comparison Status
      ACCS6          : SR_ACCS6_Field;
      --  Read-only. AC6 Ready
      ACRDY6         : SR_ACRDY6_Field;
      --  Read-only. AC7 Current Comparison Status
      ACCS7          : SR_ACCS7_Field;
      --  Read-only. AC7 Ready
      ACRDY7         : SR_ACRDY7_Field;
      --  unspecified
      Reserved_16_23 : Interfaces.Bit_Types.Byte;
      --  Read-only. Window0 Mode Current Status
      WFCS           : SR_WFCS_Field;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_SR_Register use record
      ACCS0          at 0 range 0 .. 0;
      ACRDY0         at 0 range 1 .. 1;
      ACCS1          at 0 range 2 .. 2;
      ACRDY1         at 0 range 3 .. 3;
      ACCS2          at 0 range 4 .. 4;
      ACRDY2         at 0 range 5 .. 5;
      ACCS3          at 0 range 6 .. 6;
      ACRDY3         at 0 range 7 .. 7;
      ACCS4          at 0 range 8 .. 8;
      ACRDY4         at 0 range 9 .. 9;
      ACCS5          at 0 range 10 .. 10;
      ACRDY5         at 0 range 11 .. 11;
      ACCS6          at 0 range 12 .. 12;
      ACRDY6         at 0 range 13 .. 13;
      ACCS7          at 0 range 14 .. 14;
      ACRDY7         at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      WFCS           at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   ------------------------
   -- ACIFC_IER_Register --
   ------------------------

   subtype IER_ACINT0_Field is Interfaces.Bit_Types.Bit;
   subtype IER_SUTINT0_Field is Interfaces.Bit_Types.Bit;
   subtype IER_ACINT1_Field is Interfaces.Bit_Types.Bit;
   subtype IER_SUTINT1_Field is Interfaces.Bit_Types.Bit;
   subtype IER_ACINT2_Field is Interfaces.Bit_Types.Bit;
   subtype IER_SUTINT2_Field is Interfaces.Bit_Types.Bit;
   subtype IER_ACINT3_Field is Interfaces.Bit_Types.Bit;
   subtype IER_SUTINT3_Field is Interfaces.Bit_Types.Bit;
   subtype IER_ACINT4_Field is Interfaces.Bit_Types.Bit;
   subtype IER_SUTINT4_Field is Interfaces.Bit_Types.Bit;
   subtype IER_ACINT5_Field is Interfaces.Bit_Types.Bit;
   subtype IER_SUTINT5_Field is Interfaces.Bit_Types.Bit;
   subtype IER_ACINT6_Field is Interfaces.Bit_Types.Bit;
   subtype IER_SUTINT6_Field is Interfaces.Bit_Types.Bit;
   subtype IER_ACINT7_Field is Interfaces.Bit_Types.Bit;
   subtype IER_SUTINT7_Field is Interfaces.Bit_Types.Bit;

   ---------------
   -- IER.WFINT --
   ---------------

   --  IER_WFINT array element
   subtype IER_WFINT_Element is Interfaces.Bit_Types.Bit;

   --  IER_WFINT array
   type IER_WFINT_Field_Array is array (0 .. 3) of IER_WFINT_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for IER_WFINT
   type IER_WFINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WFINT as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  WFINT as an array
            Arr : IER_WFINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for IER_WFINT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt Enable Register
   type ACIFC_IER_Register is record
      --  Write-only. AC0 Interrupt Enable
      ACINT0         : IER_ACINT0_Field := 16#0#;
      --  Write-only. AC0 Startup Time Interrupt Enable
      SUTINT0        : IER_SUTINT0_Field := 16#0#;
      --  Write-only. AC1 Interrupt Enable
      ACINT1         : IER_ACINT1_Field := 16#0#;
      --  Write-only. AC1 Startup Time Interrupt Enable
      SUTINT1        : IER_SUTINT1_Field := 16#0#;
      --  Write-only. AC2 Interrupt Enable
      ACINT2         : IER_ACINT2_Field := 16#0#;
      --  Write-only. AC2 Startup Time Interrupt Enable
      SUTINT2        : IER_SUTINT2_Field := 16#0#;
      --  Write-only. AC3 Interrupt Enable
      ACINT3         : IER_ACINT3_Field := 16#0#;
      --  Write-only. AC3 Startup Time Interrupt Enable
      SUTINT3        : IER_SUTINT3_Field := 16#0#;
      --  Write-only. AC4 Interrupt Enable
      ACINT4         : IER_ACINT4_Field := 16#0#;
      --  Write-only. AC4 Startup Time Interrupt Enable
      SUTINT4        : IER_SUTINT4_Field := 16#0#;
      --  Write-only. AC5 Interrupt Enable
      ACINT5         : IER_ACINT5_Field := 16#0#;
      --  Write-only. AC5 Startup Time Interrupt Enable
      SUTINT5        : IER_SUTINT5_Field := 16#0#;
      --  Write-only. AC6 Interrupt Enable
      ACINT6         : IER_ACINT6_Field := 16#0#;
      --  Write-only. AC6 Startup Time Interrupt Enable
      SUTINT6        : IER_SUTINT6_Field := 16#0#;
      --  Write-only. AC7 Interrupt Enable
      ACINT7         : IER_ACINT7_Field := 16#0#;
      --  Write-only. AC7 Startup Time Interrupt Enable
      SUTINT7        : IER_SUTINT7_Field := 16#0#;
      --  unspecified
      Reserved_16_23 : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Window0 Mode Interrupt Enable
      WFINT          : IER_WFINT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_IER_Register use record
      ACINT0         at 0 range 0 .. 0;
      SUTINT0        at 0 range 1 .. 1;
      ACINT1         at 0 range 2 .. 2;
      SUTINT1        at 0 range 3 .. 3;
      ACINT2         at 0 range 4 .. 4;
      SUTINT2        at 0 range 5 .. 5;
      ACINT3         at 0 range 6 .. 6;
      SUTINT3        at 0 range 7 .. 7;
      ACINT4         at 0 range 8 .. 8;
      SUTINT4        at 0 range 9 .. 9;
      ACINT5         at 0 range 10 .. 10;
      SUTINT5        at 0 range 11 .. 11;
      ACINT6         at 0 range 12 .. 12;
      SUTINT6        at 0 range 13 .. 13;
      ACINT7         at 0 range 14 .. 14;
      SUTINT7        at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      WFINT          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   ------------------------
   -- ACIFC_IDR_Register --
   ------------------------

   subtype IDR_ACINT0_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_SUTINT0_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_ACINT1_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_SUTINT1_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_ACINT2_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_SUTINT2_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_ACINT3_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_SUTINT3_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_ACINT4_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_SUTINT4_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_ACINT5_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_SUTINT5_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_ACINT6_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_SUTINT6_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_ACINT7_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_SUTINT7_Field is Interfaces.Bit_Types.Bit;

   ---------------
   -- IDR.WFINT --
   ---------------

   --  IDR_WFINT array element
   subtype IDR_WFINT_Element is Interfaces.Bit_Types.Bit;

   --  IDR_WFINT array
   type IDR_WFINT_Field_Array is array (0 .. 3) of IDR_WFINT_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for IDR_WFINT
   type IDR_WFINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WFINT as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  WFINT as an array
            Arr : IDR_WFINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for IDR_WFINT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt Disable Register
   type ACIFC_IDR_Register is record
      --  Write-only. AC0 Interrupt Disable
      ACINT0         : IDR_ACINT0_Field := 16#0#;
      --  Write-only. AC0 Startup Time Interrupt Disable
      SUTINT0        : IDR_SUTINT0_Field := 16#0#;
      --  Write-only. AC1 Interrupt Disable
      ACINT1         : IDR_ACINT1_Field := 16#0#;
      --  Write-only. AC1 Startup Time Interrupt Disable
      SUTINT1        : IDR_SUTINT1_Field := 16#0#;
      --  Write-only. AC2 Interrupt Disable
      ACINT2         : IDR_ACINT2_Field := 16#0#;
      --  Write-only. AC2 Startup Time Interrupt Disable
      SUTINT2        : IDR_SUTINT2_Field := 16#0#;
      --  Write-only. AC3 Interrupt Disable
      ACINT3         : IDR_ACINT3_Field := 16#0#;
      --  Write-only. AC3 Startup Time Interrupt Disable
      SUTINT3        : IDR_SUTINT3_Field := 16#0#;
      --  Write-only. AC4 Interrupt Disable
      ACINT4         : IDR_ACINT4_Field := 16#0#;
      --  Write-only. AC4 Startup Time Interrupt Disable
      SUTINT4        : IDR_SUTINT4_Field := 16#0#;
      --  Write-only. AC5 Interrupt Disable
      ACINT5         : IDR_ACINT5_Field := 16#0#;
      --  Write-only. AC5 Startup Time Interrupt Disable
      SUTINT5        : IDR_SUTINT5_Field := 16#0#;
      --  Write-only. AC6 Interrupt Disable
      ACINT6         : IDR_ACINT6_Field := 16#0#;
      --  Write-only. AC6 Startup Time Interrupt Disable
      SUTINT6        : IDR_SUTINT6_Field := 16#0#;
      --  Write-only. AC7 Interrupt Disable
      ACINT7         : IDR_ACINT7_Field := 16#0#;
      --  Write-only. AC7 Startup Time Interrupt Disable
      SUTINT7        : IDR_SUTINT7_Field := 16#0#;
      --  unspecified
      Reserved_16_23 : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Window0 Mode Interrupt Disable
      WFINT          : IDR_WFINT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_IDR_Register use record
      ACINT0         at 0 range 0 .. 0;
      SUTINT0        at 0 range 1 .. 1;
      ACINT1         at 0 range 2 .. 2;
      SUTINT1        at 0 range 3 .. 3;
      ACINT2         at 0 range 4 .. 4;
      SUTINT2        at 0 range 5 .. 5;
      ACINT3         at 0 range 6 .. 6;
      SUTINT3        at 0 range 7 .. 7;
      ACINT4         at 0 range 8 .. 8;
      SUTINT4        at 0 range 9 .. 9;
      ACINT5         at 0 range 10 .. 10;
      SUTINT5        at 0 range 11 .. 11;
      ACINT6         at 0 range 12 .. 12;
      SUTINT6        at 0 range 13 .. 13;
      ACINT7         at 0 range 14 .. 14;
      SUTINT7        at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      WFINT          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   ------------------------
   -- ACIFC_IMR_Register --
   ------------------------

   subtype IMR_ACINT0_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_SUTINT0_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_ACINT1_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_SUTINT1_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_ACINT2_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_SUTINT2_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_ACINT3_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_SUTINT3_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_ACINT4_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_SUTINT4_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_ACINT5_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_SUTINT5_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_ACINT6_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_SUTINT6_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_ACINT7_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_SUTINT7_Field is Interfaces.Bit_Types.Bit;

   ---------------
   -- IMR.WFINT --
   ---------------

   --  IMR_WFINT array element
   subtype IMR_WFINT_Element is Interfaces.Bit_Types.Bit;

   --  IMR_WFINT array
   type IMR_WFINT_Field_Array is array (0 .. 3) of IMR_WFINT_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for IMR_WFINT
   type IMR_WFINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WFINT as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  WFINT as an array
            Arr : IMR_WFINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for IMR_WFINT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt Mask Register
   type ACIFC_IMR_Register is record
      --  Read-only. AC0 Interrupt Mask
      ACINT0         : IMR_ACINT0_Field;
      --  Read-only. AC0 Startup Time Interrupt Mask
      SUTINT0        : IMR_SUTINT0_Field;
      --  Read-only. AC1 Interrupt Mask
      ACINT1         : IMR_ACINT1_Field;
      --  Read-only. AC1 Startup Time Interrupt Mask
      SUTINT1        : IMR_SUTINT1_Field;
      --  Read-only. AC2 Interrupt Mask
      ACINT2         : IMR_ACINT2_Field;
      --  Read-only. AC2 Startup Time Interrupt Mask
      SUTINT2        : IMR_SUTINT2_Field;
      --  Read-only. AC3 Interrupt Mask
      ACINT3         : IMR_ACINT3_Field;
      --  Read-only. AC3 Startup Time Interrupt Mask
      SUTINT3        : IMR_SUTINT3_Field;
      --  Read-only. AC4 Interrupt Mask
      ACINT4         : IMR_ACINT4_Field;
      --  Read-only. AC4 Startup Time Interrupt Mask
      SUTINT4        : IMR_SUTINT4_Field;
      --  Read-only. AC5 Interrupt Mask
      ACINT5         : IMR_ACINT5_Field;
      --  Read-only. AC5 Startup Time Interrupt Mask
      SUTINT5        : IMR_SUTINT5_Field;
      --  Read-only. AC6 Interrupt Mask
      ACINT6         : IMR_ACINT6_Field;
      --  Read-only. AC6 Startup Time Interrupt Mask
      SUTINT6        : IMR_SUTINT6_Field;
      --  Read-only. AC7 Interrupt Mask
      ACINT7         : IMR_ACINT7_Field;
      --  Read-only. AC7 Startup Time Interrupt Mask
      SUTINT7        : IMR_SUTINT7_Field;
      --  unspecified
      Reserved_16_23 : Interfaces.Bit_Types.Byte;
      --  Read-only. Window0 Mode Interrupt Mask
      WFINT          : IMR_WFINT_Field;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_IMR_Register use record
      ACINT0         at 0 range 0 .. 0;
      SUTINT0        at 0 range 1 .. 1;
      ACINT1         at 0 range 2 .. 2;
      SUTINT1        at 0 range 3 .. 3;
      ACINT2         at 0 range 4 .. 4;
      SUTINT2        at 0 range 5 .. 5;
      ACINT3         at 0 range 6 .. 6;
      SUTINT3        at 0 range 7 .. 7;
      ACINT4         at 0 range 8 .. 8;
      SUTINT4        at 0 range 9 .. 9;
      ACINT5         at 0 range 10 .. 10;
      SUTINT5        at 0 range 11 .. 11;
      ACINT6         at 0 range 12 .. 12;
      SUTINT6        at 0 range 13 .. 13;
      ACINT7         at 0 range 14 .. 14;
      SUTINT7        at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      WFINT          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   ------------------------
   -- ACIFC_ISR_Register --
   ------------------------

   subtype ISR_ACINT0_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_SUTINT0_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_ACINT1_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_SUTINT1_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_ACINT2_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_SUTINT2_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_ACINT3_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_SUTINT3_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_ACINT4_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_SUTINT4_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_ACINT5_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_SUTINT5_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_ACINT6_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_SUTINT6_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_ACINT7_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_SUTINT7_Field is Interfaces.Bit_Types.Bit;

   ---------------
   -- ISR.WFINT --
   ---------------

   --  ISR_WFINT array element
   subtype ISR_WFINT_Element is Interfaces.Bit_Types.Bit;

   --  ISR_WFINT array
   type ISR_WFINT_Field_Array is array (0 .. 3) of ISR_WFINT_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for ISR_WFINT
   type ISR_WFINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WFINT as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  WFINT as an array
            Arr : ISR_WFINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ISR_WFINT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt Status Register
   type ACIFC_ISR_Register is record
      --  Read-only. AC0 Interrupt Status
      ACINT0         : ISR_ACINT0_Field;
      --  Read-only. AC0 Startup Time Interrupt Status
      SUTINT0        : ISR_SUTINT0_Field;
      --  Read-only. AC1 Interrupt Status
      ACINT1         : ISR_ACINT1_Field;
      --  Read-only. AC1 Startup Time Interrupt Status
      SUTINT1        : ISR_SUTINT1_Field;
      --  Read-only. AC2 Interrupt Status
      ACINT2         : ISR_ACINT2_Field;
      --  Read-only. AC2 Startup Time Interrupt Status
      SUTINT2        : ISR_SUTINT2_Field;
      --  Read-only. AC3 Interrupt Status
      ACINT3         : ISR_ACINT3_Field;
      --  Read-only. AC3 Startup Time Interrupt Status
      SUTINT3        : ISR_SUTINT3_Field;
      --  Read-only. AC4 Interrupt Status
      ACINT4         : ISR_ACINT4_Field;
      --  Read-only. AC4 Startup Time Interrupt Status
      SUTINT4        : ISR_SUTINT4_Field;
      --  Read-only. AC5 Interrupt Status
      ACINT5         : ISR_ACINT5_Field;
      --  Read-only. AC5 Startup Time Interrupt Status
      SUTINT5        : ISR_SUTINT5_Field;
      --  Read-only. AC6 Interrupt Status
      ACINT6         : ISR_ACINT6_Field;
      --  Read-only. AC6 Startup Time Interrupt Status
      SUTINT6        : ISR_SUTINT6_Field;
      --  Read-only. AC7 Interrupt Status
      ACINT7         : ISR_ACINT7_Field;
      --  Read-only. AC7 Startup Time Interrupt Status
      SUTINT7        : ISR_SUTINT7_Field;
      --  unspecified
      Reserved_16_23 : Interfaces.Bit_Types.Byte;
      --  Read-only. Window0 Mode Interrupt Status
      WFINT          : ISR_WFINT_Field;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_ISR_Register use record
      ACINT0         at 0 range 0 .. 0;
      SUTINT0        at 0 range 1 .. 1;
      ACINT1         at 0 range 2 .. 2;
      SUTINT1        at 0 range 3 .. 3;
      ACINT2         at 0 range 4 .. 4;
      SUTINT2        at 0 range 5 .. 5;
      ACINT3         at 0 range 6 .. 6;
      SUTINT3        at 0 range 7 .. 7;
      ACINT4         at 0 range 8 .. 8;
      SUTINT4        at 0 range 9 .. 9;
      ACINT5         at 0 range 10 .. 10;
      SUTINT5        at 0 range 11 .. 11;
      ACINT6         at 0 range 12 .. 12;
      SUTINT6        at 0 range 13 .. 13;
      ACINT7         at 0 range 14 .. 14;
      SUTINT7        at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      WFINT          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   ------------------------
   -- ACIFC_ICR_Register --
   ------------------------

   subtype ICR_ACINT0_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_SUTINT0_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_ACINT1_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_SUTINT1_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_ACINT2_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_SUTINT2_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_ACINT3_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_SUTINT3_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_ACINT4_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_SUTINT4_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_ACINT5_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_SUTINT5_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_ACINT6_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_SUTINT6_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_ACINT7_Field is Interfaces.Bit_Types.Bit;
   subtype ICR_SUTINT7_Field is Interfaces.Bit_Types.Bit;

   ---------------
   -- ICR.WFINT --
   ---------------

   --  ICR_WFINT array element
   subtype ICR_WFINT_Element is Interfaces.Bit_Types.Bit;

   --  ICR_WFINT array
   type ICR_WFINT_Field_Array is array (0 .. 3) of ICR_WFINT_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for ICR_WFINT
   type ICR_WFINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WFINT as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  WFINT as an array
            Arr : ICR_WFINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ICR_WFINT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt Status Clear Register
   type ACIFC_ICR_Register is record
      --  Write-only. AC0 Interrupt Status Clear
      ACINT0         : ICR_ACINT0_Field := 16#0#;
      --  Write-only. AC0 Startup Time Interrupt Status Clear
      SUTINT0        : ICR_SUTINT0_Field := 16#0#;
      --  Write-only. AC1 Interrupt Status Clear
      ACINT1         : ICR_ACINT1_Field := 16#0#;
      --  Write-only. AC1 Startup Time Interrupt Status Clear
      SUTINT1        : ICR_SUTINT1_Field := 16#0#;
      --  Write-only. AC2 Interrupt Status Clear
      ACINT2         : ICR_ACINT2_Field := 16#0#;
      --  Write-only. AC2 Startup Time Interrupt Status Clear
      SUTINT2        : ICR_SUTINT2_Field := 16#0#;
      --  Write-only. AC3 Interrupt Status Clear
      ACINT3         : ICR_ACINT3_Field := 16#0#;
      --  Write-only. AC3 Startup Time Interrupt Status Clear
      SUTINT3        : ICR_SUTINT3_Field := 16#0#;
      --  Write-only. AC4 Interrupt Status Clear
      ACINT4         : ICR_ACINT4_Field := 16#0#;
      --  Write-only. AC4 Startup Time Interrupt Status Clear
      SUTINT4        : ICR_SUTINT4_Field := 16#0#;
      --  Write-only. AC5 Interrupt Status Clear
      ACINT5         : ICR_ACINT5_Field := 16#0#;
      --  Write-only. AC5 Startup Time Interrupt Status Clear
      SUTINT5        : ICR_SUTINT5_Field := 16#0#;
      --  Write-only. AC6 Interrupt Status Clear
      ACINT6         : ICR_ACINT6_Field := 16#0#;
      --  Write-only. AC6 Startup Time Interrupt Status Clear
      SUTINT6        : ICR_SUTINT6_Field := 16#0#;
      --  Write-only. AC7 Interrupt Status Clear
      ACINT7         : ICR_ACINT7_Field := 16#0#;
      --  Write-only. AC7 Startup Time Interrupt Status Clear
      SUTINT7        : ICR_SUTINT7_Field := 16#0#;
      --  unspecified
      Reserved_16_23 : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Window0 Mode Interrupt Status Clear
      WFINT          : ICR_WFINT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_ICR_Register use record
      ACINT0         at 0 range 0 .. 0;
      SUTINT0        at 0 range 1 .. 1;
      ACINT1         at 0 range 2 .. 2;
      SUTINT1        at 0 range 3 .. 3;
      ACINT2         at 0 range 4 .. 4;
      SUTINT2        at 0 range 5 .. 5;
      ACINT3         at 0 range 6 .. 6;
      SUTINT3        at 0 range 7 .. 7;
      ACINT4         at 0 range 8 .. 8;
      SUTINT4        at 0 range 9 .. 9;
      ACINT5         at 0 range 10 .. 10;
      SUTINT5        at 0 range 11 .. 11;
      ACINT6         at 0 range 12 .. 12;
      SUTINT6        at 0 range 13 .. 13;
      ACINT7         at 0 range 14 .. 14;
      SUTINT7        at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      WFINT          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -----------------------
   -- ACIFC_TR_Register --
   -----------------------

   ---------------
   -- TR.ACTEST --
   ---------------

   --  TR_ACTEST array element
   subtype TR_ACTEST_Element is Interfaces.Bit_Types.Bit;

   --  TR_ACTEST array
   type TR_ACTEST_Field_Array is array (0 .. 7) of TR_ACTEST_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for TR_ACTEST
   type TR_ACTEST_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ACTEST as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  ACTEST as an array
            Arr : TR_ACTEST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for TR_ACTEST_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Test Register
   type ACIFC_TR_Register is record
      --  AC0 Output Override Value
      ACTEST        : TR_ACTEST_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_TR_Register use record
      ACTEST        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ------------------------------
   -- ACIFC_PARAMETER_Register --
   ------------------------------

   ----------------------
   -- PARAMETER.ACIMPL --
   ----------------------

   --  PARAMETER_ACIMPL array element
   subtype PARAMETER_ACIMPL_Element is Interfaces.Bit_Types.Bit;

   --  PARAMETER_ACIMPL array
   type PARAMETER_ACIMPL_Field_Array is array (0 .. 7)
     of PARAMETER_ACIMPL_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for PARAMETER_ACIMPL
   type PARAMETER_ACIMPL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ACIMPL as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  ACIMPL as an array
            Arr : PARAMETER_ACIMPL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PARAMETER_ACIMPL_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   ---------------------
   -- PARAMETER.WIMPL --
   ---------------------

   --  PARAMETER_WIMPL array element
   subtype PARAMETER_WIMPL_Element is Interfaces.Bit_Types.Bit;

   --  PARAMETER_WIMPL array
   type PARAMETER_WIMPL_Field_Array is array (0 .. 3)
     of PARAMETER_WIMPL_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PARAMETER_WIMPL
   type PARAMETER_WIMPL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WIMPL as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  WIMPL as an array
            Arr : PARAMETER_WIMPL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PARAMETER_WIMPL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Parameter Register
   type ACIFC_PARAMETER_Register is record
      --  Read-only. Analog Comparator 0 Implemented
      ACIMPL         : PARAMETER_ACIMPL_Field;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte;
      --  Read-only. Window0 Mode Implemented
      WIMPL          : PARAMETER_WIMPL_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_PARAMETER_Register use record
      ACIMPL         at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WIMPL          at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ----------------------------
   -- ACIFC_VERSION_Register --
   ----------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type ACIFC_VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant Number
      VARIANT        : VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --------------------------
   -- ACIFC_CONFW_Register --
   --------------------------

   subtype CONFW_WIS_Field is Interfaces.Bit_Types.UInt3;
   subtype CONFW_WEVSRC_Field is Interfaces.Bit_Types.UInt3;
   subtype CONFW_WEVEN_Field is Interfaces.Bit_Types.Bit;
   subtype CONFW_WFEN_Field is Interfaces.Bit_Types.Bit;

   --  Window configuration Register
   type ACIFC_CONFW_Register is record
      --  Window Mode Interrupt Settings
      WIS            : CONFW_WIS_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Peripheral Event Sourse Selection for Window Mode
      WEVSRC         : CONFW_WEVSRC_Field := 16#0#;
      --  Window Peripheral Event Enable
      WEVEN          : CONFW_WEVEN_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Window Mode Enable
      WFEN           : CONFW_WFEN_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_CONFW_Register use record
      WIS            at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      WEVSRC         at 0 range 8 .. 10;
      WEVEN          at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      WFEN           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Window configuration Register
   type ACIFC_CONFW_Registers is array (0 .. 3) of ACIFC_CONFW_Register;

   -------------------------
   -- ACIFC_CONF_Register --
   -------------------------

   subtype CONF_IS_Field is Interfaces.Bit_Types.UInt2;
   subtype CONF_MODE_Field is Interfaces.Bit_Types.UInt2;
   subtype CONF_INSELN_Field is Interfaces.Bit_Types.UInt2;
   subtype CONF_EVENN_Field is Interfaces.Bit_Types.Bit;
   subtype CONF_EVENP_Field is Interfaces.Bit_Types.Bit;
   subtype CONF_HYS_Field is Interfaces.Bit_Types.UInt2;
   subtype CONF_FAST_Field is Interfaces.Bit_Types.Bit;
   subtype CONF_ALWAYSON_Field is Interfaces.Bit_Types.Bit;

   --  AC Configuration Register
   type ACIFC_CONF_Register is record
      --  Interupt Settings
      IS_k           : CONF_IS_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Analog Comparator Mode
      MODE           : CONF_MODE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Negative Input Select
      INSELN         : CONF_INSELN_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Peripheral Event Enable Negative
      EVENN          : CONF_EVENN_Field := 16#0#;
      --  Peripheral Event Enable Positive
      EVENP          : CONF_EVENP_Field := 16#0#;
      --  unspecified
      Reserved_18_23 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Hysteresis Voltage Value
      HYS            : CONF_HYS_Field := 16#0#;
      --  Fast Mode Enable
      FAST           : CONF_FAST_Field := 16#0#;
      --  Always On
      ALWAYSON       : CONF_ALWAYSON_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACIFC_CONF_Register use record
      IS_k           at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      MODE           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      INSELN         at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      EVENN          at 0 range 16 .. 16;
      EVENP          at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      HYS            at 0 range 24 .. 25;
      FAST           at 0 range 26 .. 26;
      ALWAYSON       at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  AC Configuration Register
   type ACIFC_CONF_Registers is array (0 .. 7) of ACIFC_CONF_Register;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog Comparator Interface
   type ACIFC_Peripheral is record
      --  Control Register
      CTRL      : ACIFC_CTRL_Register;
      --  Status Register
      SR        : ACIFC_SR_Register;
      --  Interrupt Enable Register
      IER       : ACIFC_IER_Register;
      --  Interrupt Disable Register
      IDR       : ACIFC_IDR_Register;
      --  Interrupt Mask Register
      IMR       : ACIFC_IMR_Register;
      --  Interrupt Status Register
      ISR       : ACIFC_ISR_Register;
      --  Interrupt Status Clear Register
      ICR       : ACIFC_ICR_Register;
      --  Test Register
      TR        : ACIFC_TR_Register;
      --  Parameter Register
      PARAMETER : ACIFC_PARAMETER_Register;
      --  Version Register
      VERSION   : ACIFC_VERSION_Register;
      --  Window configuration Register
      CONFW     : ACIFC_CONFW_Registers;
      --  AC Configuration Register
      CONF      : ACIFC_CONF_Registers;
   end record
     with Volatile;

   for ACIFC_Peripheral use record
      CTRL      at 0 range 0 .. 31;
      SR        at 4 range 0 .. 31;
      IER       at 16 range 0 .. 31;
      IDR       at 20 range 0 .. 31;
      IMR       at 24 range 0 .. 31;
      ISR       at 28 range 0 .. 31;
      ICR       at 32 range 0 .. 31;
      TR        at 36 range 0 .. 31;
      PARAMETER at 48 range 0 .. 31;
      VERSION   at 52 range 0 .. 31;
      CONFW     at 128 range 0 .. 127;
      CONF      at 208 range 0 .. 255;
   end record;

   --  Analog Comparator Interface
   ACIFC_Periph : aliased ACIFC_Peripheral
     with Import, Address => ACIFC_Base;

end Interfaces.ATSAM4L.ACIFC;
