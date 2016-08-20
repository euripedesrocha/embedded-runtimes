--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.EIC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ----------------------
   -- EIC_IER_Register --
   ----------------------

   subtype IER_NMI_Field is Interfaces.Bit_Types.Bit;

   --  External Interrupt 1
   type INT1Select is
     (
      --  No effect
      INT1Select_0,
      --  Enable Interrupt.
      INT1Select_1)
     with Size => 1;
   for INT1Select use
     (INT1Select_0 => 0,
      INT1Select_1 => 1);

   --  External Interrupt 2
   type INT2Select is
     (
      --  No effect
      INT2Select_0,
      --  Enable Interrupt.
      INT2Select_1)
     with Size => 1;
   for INT2Select use
     (INT2Select_0 => 0,
      INT2Select_1 => 1);

   --  External Interrupt 3
   type INT3Select is
     (
      --  No effect
      INT3Select_0,
      --  Enable Interrupt.
      INT3Select_1)
     with Size => 1;
   for INT3Select use
     (INT3Select_0 => 0,
      INT3Select_1 => 1);

   --  External Interrupt 4
   type INT4Select is
     (
      --  No effect
      INT4Select_0,
      --  Enable Interrupt.
      INT4Select_1)
     with Size => 1;
   for INT4Select use
     (INT4Select_0 => 0,
      INT4Select_1 => 1);

   -------------
   -- IER.INT --
   -------------

   --  IER_INT array element
   subtype IER_INT_Element is Interfaces.Bit_Types.Bit;

   --  IER_INT array
   type IER_INT_Field_Array is array (5 .. 15) of IER_INT_Element
     with Component_Size => 1, Size => 11;

   --  Type definition for IER_INT
   type IER_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : Interfaces.Bit_Types.UInt11;
         when True =>
            --  INT as an array
            Arr : IER_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for IER_INT_Field use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  Interrupt Enable Register
   type EIC_IER_Register is record
      --  Write-only. External Non Maskable CPU interrupt
      NMI            : IER_NMI_Field := 16#0#;
      --  Write-only. External Interrupt 1
      INT1           : INT1Select := Interfaces.ATSAM4L.EIC.INT1Select_0;
      --  Write-only. External Interrupt 2
      INT2           : INT2Select := Interfaces.ATSAM4L.EIC.INT2Select_0;
      --  Write-only. External Interrupt 3
      INT3           : INT3Select := Interfaces.ATSAM4L.EIC.INT3Select_0;
      --  Write-only. External Interrupt 4
      INT4           : INT4Select := Interfaces.ATSAM4L.EIC.INT4Select_0;
      --  Write-only. External Interrupt 5
      INT            : IER_INT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_IER_Register use record
      NMI            at 0 range 0 .. 0;
      INT1           at 0 range 1 .. 1;
      INT2           at 0 range 2 .. 2;
      INT3           at 0 range 3 .. 3;
      INT4           at 0 range 4 .. 4;
      INT            at 0 range 5 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   ----------------------
   -- EIC_IDR_Register --
   ----------------------

   subtype IDR_NMI_Field is Interfaces.Bit_Types.Bit;

   -------------
   -- IDR.INT --
   -------------

   --  IDR_INT array element
   subtype IDR_INT_Element is Interfaces.Bit_Types.Bit;

   --  IDR_INT array
   type IDR_INT_Field_Array is array (5 .. 15) of IDR_INT_Element
     with Component_Size => 1, Size => 11;

   --  Type definition for IDR_INT
   type IDR_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : Interfaces.Bit_Types.UInt11;
         when True =>
            --  INT as an array
            Arr : IDR_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for IDR_INT_Field use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  Interrupt Disable Register
   type EIC_IDR_Register is record
      --  Write-only. External Non Maskable CPU interrupt
      NMI            : IDR_NMI_Field := 16#0#;
      --  Write-only. External Interrupt 1
      INT1           : INT1Select := Interfaces.ATSAM4L.EIC.INT1Select_0;
      --  Write-only. External Interrupt 2
      INT2           : INT2Select := Interfaces.ATSAM4L.EIC.INT2Select_0;
      --  Write-only. External Interrupt 3
      INT3           : INT3Select := Interfaces.ATSAM4L.EIC.INT3Select_0;
      --  Write-only. External Interrupt 4
      INT4           : INT4Select := Interfaces.ATSAM4L.EIC.INT4Select_0;
      --  Write-only. External Interrupt 5
      INT            : IDR_INT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_IDR_Register use record
      NMI            at 0 range 0 .. 0;
      INT1           at 0 range 1 .. 1;
      INT2           at 0 range 2 .. 2;
      INT3           at 0 range 3 .. 3;
      INT4           at 0 range 4 .. 4;
      INT            at 0 range 5 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   ----------------------
   -- EIC_IMR_Register --
   ----------------------

   subtype IMR_NMI_Field is Interfaces.Bit_Types.Bit;

   -------------
   -- IMR.INT --
   -------------

   --  IMR_INT array element
   subtype IMR_INT_Element is Interfaces.Bit_Types.Bit;

   --  IMR_INT array
   type IMR_INT_Field_Array is array (5 .. 15) of IMR_INT_Element
     with Component_Size => 1, Size => 11;

   --  Type definition for IMR_INT
   type IMR_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : Interfaces.Bit_Types.UInt11;
         when True =>
            --  INT as an array
            Arr : IMR_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for IMR_INT_Field use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  Interrupt Mask Register
   type EIC_IMR_Register is record
      --  Read-only. External Non Maskable CPU interrupt
      NMI            : IMR_NMI_Field;
      --  Read-only. External Interrupt 1
      INT1           : INT1Select;
      --  Read-only. External Interrupt 2
      INT2           : INT2Select;
      --  Read-only. External Interrupt 3
      INT3           : INT3Select;
      --  Read-only. External Interrupt 4
      INT4           : INT4Select;
      --  Read-only. External Interrupt 5
      INT            : IMR_INT_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_IMR_Register use record
      NMI            at 0 range 0 .. 0;
      INT1           at 0 range 1 .. 1;
      INT2           at 0 range 2 .. 2;
      INT3           at 0 range 3 .. 3;
      INT4           at 0 range 4 .. 4;
      INT            at 0 range 5 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   ----------------------
   -- EIC_ISR_Register --
   ----------------------

   subtype ISR_NMI_Field is Interfaces.Bit_Types.Bit;

   -------------
   -- ISR.INT --
   -------------

   --  ISR_INT array element
   subtype ISR_INT_Element is Interfaces.Bit_Types.Bit;

   --  ISR_INT array
   type ISR_INT_Field_Array is array (5 .. 15) of ISR_INT_Element
     with Component_Size => 1, Size => 11;

   --  Type definition for ISR_INT
   type ISR_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : Interfaces.Bit_Types.UInt11;
         when True =>
            --  INT as an array
            Arr : ISR_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for ISR_INT_Field use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  Interrupt Status Register
   type EIC_ISR_Register is record
      --  Read-only. External Non Maskable CPU interrupt
      NMI            : ISR_NMI_Field;
      --  Read-only. External Interrupt 1
      INT1           : INT1Select;
      --  Read-only. External Interrupt 2
      INT2           : INT2Select;
      --  Read-only. External Interrupt 3
      INT3           : INT3Select;
      --  Read-only. External Interrupt 4
      INT4           : INT4Select;
      --  Read-only. External Interrupt 5
      INT            : ISR_INT_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_ISR_Register use record
      NMI            at 0 range 0 .. 0;
      INT1           at 0 range 1 .. 1;
      INT2           at 0 range 2 .. 2;
      INT3           at 0 range 3 .. 3;
      INT4           at 0 range 4 .. 4;
      INT            at 0 range 5 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   ----------------------
   -- EIC_ICR_Register --
   ----------------------

   subtype ICR_NMI_Field is Interfaces.Bit_Types.Bit;

   -------------
   -- ICR.INT --
   -------------

   --  ICR_INT array element
   subtype ICR_INT_Element is Interfaces.Bit_Types.Bit;

   --  ICR_INT array
   type ICR_INT_Field_Array is array (5 .. 15) of ICR_INT_Element
     with Component_Size => 1, Size => 11;

   --  Type definition for ICR_INT
   type ICR_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : Interfaces.Bit_Types.UInt11;
         when True =>
            --  INT as an array
            Arr : ICR_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for ICR_INT_Field use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  Interrupt Clear Register
   type EIC_ICR_Register is record
      --  Write-only. External Non Maskable CPU interrupt
      NMI            : ICR_NMI_Field := 16#0#;
      --  Write-only. External Interrupt 1
      INT1           : INT1Select := Interfaces.ATSAM4L.EIC.INT1Select_0;
      --  Write-only. External Interrupt 2
      INT2           : INT2Select := Interfaces.ATSAM4L.EIC.INT2Select_0;
      --  Write-only. External Interrupt 3
      INT3           : INT3Select := Interfaces.ATSAM4L.EIC.INT3Select_0;
      --  Write-only. External Interrupt 4
      INT4           : INT4Select := Interfaces.ATSAM4L.EIC.INT4Select_0;
      --  Write-only. External Interrupt 5
      INT            : ICR_INT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_ICR_Register use record
      NMI            at 0 range 0 .. 0;
      INT1           at 0 range 1 .. 1;
      INT2           at 0 range 2 .. 2;
      INT3           at 0 range 3 .. 3;
      INT4           at 0 range 4 .. 4;
      INT            at 0 range 5 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------------
   -- EIC_MODE_Register --
   -----------------------

   subtype MODE_NMI_Field is Interfaces.Bit_Types.Bit;

   --------------
   -- MODE.INT --
   --------------

   --  MODE_INT array element
   subtype MODE_INT_Element is Interfaces.Bit_Types.Bit;

   --  MODE_INT array
   type MODE_INT_Field_Array is array (5 .. 15) of MODE_INT_Element
     with Component_Size => 1, Size => 11;

   --  Type definition for MODE_INT
   type MODE_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : Interfaces.Bit_Types.UInt11;
         when True =>
            --  INT as an array
            Arr : MODE_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for MODE_INT_Field use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  Mode Register
   type EIC_MODE_Register is record
      --  External Non Maskable CPU interrupt
      NMI            : MODE_NMI_Field := 16#0#;
      --  External Interrupt 1
      INT1           : INT1Select := Interfaces.ATSAM4L.EIC.INT1Select_0;
      --  External Interrupt 2
      INT2           : INT2Select := Interfaces.ATSAM4L.EIC.INT2Select_0;
      --  External Interrupt 3
      INT3           : INT3Select := Interfaces.ATSAM4L.EIC.INT3Select_0;
      --  External Interrupt 4
      INT4           : INT4Select := Interfaces.ATSAM4L.EIC.INT4Select_0;
      --  External Interrupt 5
      INT            : MODE_INT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_MODE_Register use record
      NMI            at 0 range 0 .. 0;
      INT1           at 0 range 1 .. 1;
      INT2           at 0 range 2 .. 2;
      INT3           at 0 range 3 .. 3;
      INT4           at 0 range 4 .. 4;
      INT            at 0 range 5 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------------
   -- EIC_EDGE_Register --
   -----------------------

   subtype EDGE_NMI_Field is Interfaces.Bit_Types.Bit;

   --------------
   -- EDGE.INT --
   --------------

   --  EDGE_INT array element
   subtype EDGE_INT_Element is Interfaces.Bit_Types.Bit;

   --  EDGE_INT array
   type EDGE_INT_Field_Array is array (5 .. 15) of EDGE_INT_Element
     with Component_Size => 1, Size => 11;

   --  Type definition for EDGE_INT
   type EDGE_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : Interfaces.Bit_Types.UInt11;
         when True =>
            --  INT as an array
            Arr : EDGE_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for EDGE_INT_Field use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  Edge Register
   type EIC_EDGE_Register is record
      --  External Non Maskable CPU interrupt
      NMI            : EDGE_NMI_Field := 16#0#;
      --  External Interrupt 1
      INT1           : INT1Select := Interfaces.ATSAM4L.EIC.INT1Select_0;
      --  External Interrupt 2
      INT2           : INT2Select := Interfaces.ATSAM4L.EIC.INT2Select_0;
      --  External Interrupt 3
      INT3           : INT3Select := Interfaces.ATSAM4L.EIC.INT3Select_0;
      --  External Interrupt 4
      INT4           : INT4Select := Interfaces.ATSAM4L.EIC.INT4Select_0;
      --  External Interrupt 5
      INT            : EDGE_INT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_EDGE_Register use record
      NMI            at 0 range 0 .. 0;
      INT1           at 0 range 1 .. 1;
      INT2           at 0 range 2 .. 2;
      INT3           at 0 range 3 .. 3;
      INT4           at 0 range 4 .. 4;
      INT            at 0 range 5 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   ------------------------
   -- EIC_LEVEL_Register --
   ------------------------

   subtype LEVEL_NMI_Field is Interfaces.Bit_Types.Bit;

   ---------------
   -- LEVEL.INT --
   ---------------

   --  LEVEL_INT array element
   subtype LEVEL_INT_Element is Interfaces.Bit_Types.Bit;

   --  LEVEL_INT array
   type LEVEL_INT_Field_Array is array (1 .. 15) of LEVEL_INT_Element
     with Component_Size => 1, Size => 15;

   --  Type definition for LEVEL_INT
   type LEVEL_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : Interfaces.Bit_Types.UInt15;
         when True =>
            --  INT as an array
            Arr : LEVEL_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for LEVEL_INT_Field use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  Level Register
   type EIC_LEVEL_Register is record
      --  External Non Maskable CPU interrupt
      NMI            : LEVEL_NMI_Field := 16#0#;
      --  External Interrupt 1
      INT            : LEVEL_INT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_LEVEL_Register use record
      NMI            at 0 range 0 .. 0;
      INT            at 0 range 1 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -------------------------
   -- EIC_FILTER_Register --
   -------------------------

   subtype FILTER_NMI_Field is Interfaces.Bit_Types.Bit;

   ----------------
   -- FILTER.INT --
   ----------------

   --  FILTER_INT array element
   subtype FILTER_INT_Element is Interfaces.Bit_Types.Bit;

   --  FILTER_INT array
   type FILTER_INT_Field_Array is array (1 .. 15) of FILTER_INT_Element
     with Component_Size => 1, Size => 15;

   --  Type definition for FILTER_INT
   type FILTER_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : Interfaces.Bit_Types.UInt15;
         when True =>
            --  INT as an array
            Arr : FILTER_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for FILTER_INT_Field use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  Filter Register
   type EIC_FILTER_Register is record
      --  External Non Maskable CPU interrupt
      NMI            : FILTER_NMI_Field := 16#0#;
      --  External Interrupt 1
      INT            : FILTER_INT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_FILTER_Register use record
      NMI            at 0 range 0 .. 0;
      INT            at 0 range 1 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   ------------------------
   -- EIC_ASYNC_Register --
   ------------------------

   subtype ASYNC_NMI_Field is Interfaces.Bit_Types.Bit;

   ---------------
   -- ASYNC.INT --
   ---------------

   --  ASYNC_INT array element
   subtype ASYNC_INT_Element is Interfaces.Bit_Types.Bit;

   --  ASYNC_INT array
   type ASYNC_INT_Field_Array is array (1 .. 15) of ASYNC_INT_Element
     with Component_Size => 1, Size => 15;

   --  Type definition for ASYNC_INT
   type ASYNC_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : Interfaces.Bit_Types.UInt15;
         when True =>
            --  INT as an array
            Arr : ASYNC_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for ASYNC_INT_Field use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  Asynchronous Register
   type EIC_ASYNC_Register is record
      --  External Non Maskable CPU interrupt
      NMI            : ASYNC_NMI_Field := 16#0#;
      --  External Interrupt 1
      INT            : ASYNC_INT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_ASYNC_Register use record
      NMI            at 0 range 0 .. 0;
      INT            at 0 range 1 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   ---------------------
   -- EIC_EN_Register --
   ---------------------

   subtype EN_NMI_Field is Interfaces.Bit_Types.Bit;

   ------------
   -- EN.INT --
   ------------

   --  EN_INT array element
   subtype EN_INT_Element is Interfaces.Bit_Types.Bit;

   --  EN_INT array
   type EN_INT_Field_Array is array (1 .. 15) of EN_INT_Element
     with Component_Size => 1, Size => 15;

   --  Type definition for EN_INT
   type EN_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : Interfaces.Bit_Types.UInt15;
         when True =>
            --  INT as an array
            Arr : EN_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for EN_INT_Field use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  Enable Register
   type EIC_EN_Register is record
      --  Write-only. External Non Maskable CPU interrupt
      NMI            : EN_NMI_Field := 16#0#;
      --  Write-only. External Interrupt 1
      INT            : EN_INT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_EN_Register use record
      NMI            at 0 range 0 .. 0;
      INT            at 0 range 1 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   ----------------------
   -- EIC_DIS_Register --
   ----------------------

   subtype DIS_NMI_Field is Interfaces.Bit_Types.Bit;

   -------------
   -- DIS.INT --
   -------------

   --  DIS_INT array element
   subtype DIS_INT_Element is Interfaces.Bit_Types.Bit;

   --  DIS_INT array
   type DIS_INT_Field_Array is array (1 .. 15) of DIS_INT_Element
     with Component_Size => 1, Size => 15;

   --  Type definition for DIS_INT
   type DIS_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : Interfaces.Bit_Types.UInt15;
         when True =>
            --  INT as an array
            Arr : DIS_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for DIS_INT_Field use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  Disable Register
   type EIC_DIS_Register is record
      --  Write-only. External Non Maskable CPU interrupt
      NMI            : DIS_NMI_Field := 16#0#;
      --  Write-only. External Interrupt 1
      INT            : DIS_INT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_DIS_Register use record
      NMI            at 0 range 0 .. 0;
      INT            at 0 range 1 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------------
   -- EIC_CTRL_Register --
   -----------------------

   subtype CTRL_NMI_Field is Interfaces.Bit_Types.Bit;

   --------------
   -- CTRL.INT --
   --------------

   --  CTRL_INT array element
   subtype CTRL_INT_Element is Interfaces.Bit_Types.Bit;

   --  CTRL_INT array
   type CTRL_INT_Field_Array is array (1 .. 15) of CTRL_INT_Element
     with Component_Size => 1, Size => 15;

   --  Type definition for CTRL_INT
   type CTRL_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : Interfaces.Bit_Types.UInt15;
         when True =>
            --  INT as an array
            Arr : CTRL_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for CTRL_INT_Field use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  Control Register
   type EIC_CTRL_Register is record
      --  Read-only. External Non Maskable CPU interrupt
      NMI            : CTRL_NMI_Field;
      --  Read-only. External Interrupt 1
      INT            : CTRL_INT_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_CTRL_Register use record
      NMI            at 0 range 0 .. 0;
      INT            at 0 range 1 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --------------------------
   -- EIC_VERSION_Register --
   --------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;

   --  Version Register
   type EIC_VERSION_Register is record
      --  Read-only. Version bits
      VERSION        : VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  External Interrupt Controller
   type EIC_Peripheral is record
      --  Interrupt Enable Register
      IER     : EIC_IER_Register;
      --  Interrupt Disable Register
      IDR     : EIC_IDR_Register;
      --  Interrupt Mask Register
      IMR     : EIC_IMR_Register;
      --  Interrupt Status Register
      ISR     : EIC_ISR_Register;
      --  Interrupt Clear Register
      ICR     : EIC_ICR_Register;
      --  Mode Register
      MODE    : EIC_MODE_Register;
      --  Edge Register
      EDGE    : EIC_EDGE_Register;
      --  Level Register
      LEVEL   : EIC_LEVEL_Register;
      --  Filter Register
      FILTER  : EIC_FILTER_Register;
      --  Asynchronous Register
      ASYNC   : EIC_ASYNC_Register;
      --  Enable Register
      EN      : EIC_EN_Register;
      --  Disable Register
      DIS     : EIC_DIS_Register;
      --  Control Register
      CTRL    : EIC_CTRL_Register;
      --  Version Register
      VERSION : EIC_VERSION_Register;
   end record
     with Volatile;

   for EIC_Peripheral use record
      IER     at 0 range 0 .. 31;
      IDR     at 4 range 0 .. 31;
      IMR     at 8 range 0 .. 31;
      ISR     at 12 range 0 .. 31;
      ICR     at 16 range 0 .. 31;
      MODE    at 20 range 0 .. 31;
      EDGE    at 24 range 0 .. 31;
      LEVEL   at 28 range 0 .. 31;
      FILTER  at 32 range 0 .. 31;
      ASYNC   at 40 range 0 .. 31;
      EN      at 48 range 0 .. 31;
      DIS     at 52 range 0 .. 31;
      CTRL    at 56 range 0 .. 31;
      VERSION at 1020 range 0 .. 31;
   end record;

   --  External Interrupt Controller
   EIC_Periph : aliased EIC_Peripheral
     with Import, Address => EIC_Base;

end Interfaces.ATSAM4L.EIC;
