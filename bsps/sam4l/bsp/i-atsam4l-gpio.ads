--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.GPIO is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -------------------
   -- GPER_Register --
   -------------------

   --  GPER0_P array element
   subtype GPER0_P_Element is Interfaces.Bit_Types.Bit;

   --  GPER0_P array
   type GPER0_P_Field_Array is array (0 .. 31) of GPER0_P_Element
     with Component_Size => 1, Size => 32;

   --  GPIO Enable Register
   type GPER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : GPER0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GPER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- GPERS_Register --
   --------------------

   --  GPERS0_P array element
   subtype GPERS0_P_Element is Interfaces.Bit_Types.Bit;

   --  GPERS0_P array
   type GPERS0_P_Field_Array is array (0 .. 31) of GPERS0_P_Element
     with Component_Size => 1, Size => 32;

   --  GPIO Enable Register - Set
   type GPERS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : GPERS0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GPERS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- GPERC_Register --
   --------------------

   --  GPERC0_P array element
   subtype GPERC0_P_Element is Interfaces.Bit_Types.Bit;

   --  GPERC0_P array
   type GPERC0_P_Field_Array is array (0 .. 31) of GPERC0_P_Element
     with Component_Size => 1, Size => 32;

   --  GPIO Enable Register - Clear
   type GPERC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : GPERC0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GPERC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- GPERT_Register --
   --------------------

   --  GPERT0_P array element
   subtype GPERT0_P_Element is Interfaces.Bit_Types.Bit;

   --  GPERT0_P array
   type GPERT0_P_Field_Array is array (0 .. 31) of GPERT0_P_Element
     with Component_Size => 1, Size => 32;

   --  GPIO Enable Register - Toggle
   type GPERT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : GPERT0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GPERT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ------------------
   -- PMR_Register --
   ------------------

   --  PMR00_P array element
   subtype PMR00_P_Element is Interfaces.Bit_Types.Bit;

   --  PMR00_P array
   type PMR00_P_Field_Array is array (0 .. 31) of PMR00_P_Element
     with Component_Size => 1, Size => 32;

   --  Peripheral Mux Register 0
   type PMR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : PMR00_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PMR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- PMR0S_Register --
   --------------------

   --  PMR0S0_P array element
   subtype PMR0S0_P_Element is Interfaces.Bit_Types.Bit;

   --  PMR0S0_P array
   type PMR0S0_P_Field_Array is array (0 .. 31) of PMR0S0_P_Element
     with Component_Size => 1, Size => 32;

   --  Peripheral Mux Register 0 - Set
   type PMR0S_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : PMR0S0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PMR0S_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- PMR0C_Register --
   --------------------

   --  PMR0C0_P array element
   subtype PMR0C0_P_Element is Interfaces.Bit_Types.Bit;

   --  PMR0C0_P array
   type PMR0C0_P_Field_Array is array (0 .. 31) of PMR0C0_P_Element
     with Component_Size => 1, Size => 32;

   --  Peripheral Mux Register 0 - Clear
   type PMR0C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : PMR0C0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PMR0C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- PMR0T_Register --
   --------------------

   --  PMR0T0_P array element
   subtype PMR0T0_P_Element is Interfaces.Bit_Types.Bit;

   --  PMR0T0_P array
   type PMR0T0_P_Field_Array is array (0 .. 31) of PMR0T0_P_Element
     with Component_Size => 1, Size => 32;

   --  Peripheral Mux Register 0 - Toggle
   type PMR0T_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : PMR0T0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PMR0T_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- PMR1S_Register --
   --------------------

   --  PMR1S0_P array element
   subtype PMR1S0_P_Element is Interfaces.Bit_Types.Bit;

   --  PMR1S0_P array
   type PMR1S0_P_Field_Array is array (0 .. 31) of PMR1S0_P_Element
     with Component_Size => 1, Size => 32;

   --  Peripheral Mux Register 1 - Set
   type PMR1S_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : PMR1S0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PMR1S_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- PMR1C_Register --
   --------------------

   --  PMR1C0_P array element
   subtype PMR1C0_P_Element is Interfaces.Bit_Types.Bit;

   --  PMR1C0_P array
   type PMR1C0_P_Field_Array is array (0 .. 31) of PMR1C0_P_Element
     with Component_Size => 1, Size => 32;

   --  Peripheral Mux Register 1 - Clear
   type PMR1C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : PMR1C0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PMR1C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- PMR1T_Register --
   --------------------

   --  PMR1T0_P array element
   subtype PMR1T0_P_Element is Interfaces.Bit_Types.Bit;

   --  PMR1T0_P array
   type PMR1T0_P_Field_Array is array (0 .. 31) of PMR1T0_P_Element
     with Component_Size => 1, Size => 32;

   --  Peripheral Mux Register 1 - Toggle
   type PMR1T_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : PMR1T0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PMR1T_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- PMR2S_Register --
   --------------------

   --  PMR2S0_P array element
   subtype PMR2S0_P_Element is Interfaces.Bit_Types.Bit;

   --  PMR2S0_P array
   type PMR2S0_P_Field_Array is array (0 .. 31) of PMR2S0_P_Element
     with Component_Size => 1, Size => 32;

   --  Peripheral Mux Register 2 - Set
   type PMR2S_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : PMR2S0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PMR2S_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- PMR2C_Register --
   --------------------

   --  PMR2C0_P array element
   subtype PMR2C0_P_Element is Interfaces.Bit_Types.Bit;

   --  PMR2C0_P array
   type PMR2C0_P_Field_Array is array (0 .. 31) of PMR2C0_P_Element
     with Component_Size => 1, Size => 32;

   --  Peripheral Mux Register 2 - Clear
   type PMR2C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : PMR2C0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PMR2C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- PMR2T_Register --
   --------------------

   --  PMR2T0_P array element
   subtype PMR2T0_P_Element is Interfaces.Bit_Types.Bit;

   --  PMR2T0_P array
   type PMR2T0_P_Field_Array is array (0 .. 31) of PMR2T0_P_Element
     with Component_Size => 1, Size => 32;

   --  Peripheral Mux Register 2 - Toggle
   type PMR2T_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : PMR2T0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PMR2T_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -------------------
   -- ODER_Register --
   -------------------

   --  ODER0_P array element
   subtype ODER0_P_Element is Interfaces.Bit_Types.Bit;

   --  ODER0_P array
   type ODER0_P_Field_Array is array (0 .. 31) of ODER0_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Driver Enable Register
   type ODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : ODER0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- ODERS_Register --
   --------------------

   --  ODERS0_P array element
   subtype ODERS0_P_Element is Interfaces.Bit_Types.Bit;

   --  ODERS0_P array
   type ODERS0_P_Field_Array is array (0 .. 31) of ODERS0_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Driver Enable Register - Set
   type ODERS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : ODERS0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODERS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- ODERC_Register --
   --------------------

   --  ODERC0_P array element
   subtype ODERC0_P_Element is Interfaces.Bit_Types.Bit;

   --  ODERC0_P array
   type ODERC0_P_Field_Array is array (0 .. 31) of ODERC0_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Driver Enable Register - Clear
   type ODERC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : ODERC0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODERC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- ODERT_Register --
   --------------------

   --  ODERT0_P array element
   subtype ODERT0_P_Element is Interfaces.Bit_Types.Bit;

   --  ODERT0_P array
   type ODERT0_P_Field_Array is array (0 .. 31) of ODERT0_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Driver Enable Register - Toggle
   type ODERT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : ODERT0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODERT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ------------------
   -- OVR_Register --
   ------------------

   --  OVR0_P array element
   subtype OVR0_P_Element is Interfaces.Bit_Types.Bit;

   --  OVR0_P array
   type OVR0_P_Field_Array is array (0 .. 31) of OVR0_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Value Register
   type OVR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : OVR0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for OVR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -------------------
   -- OVRS_Register --
   -------------------

   --  OVRS0_P array element
   subtype OVRS0_P_Element is Interfaces.Bit_Types.Bit;

   --  OVRS0_P array
   type OVRS0_P_Field_Array is array (0 .. 31) of OVRS0_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Value Register - Set
   type OVRS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : OVRS0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for OVRS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -------------------
   -- OVRC_Register --
   -------------------

   --  OVRC0_P array element
   subtype OVRC0_P_Element is Interfaces.Bit_Types.Bit;

   --  OVRC0_P array
   type OVRC0_P_Field_Array is array (0 .. 31) of OVRC0_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Value Register - Clear
   type OVRC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : OVRC0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for OVRC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -------------------
   -- OVRT_Register --
   -------------------

   --  OVRT0_P array element
   subtype OVRT0_P_Element is Interfaces.Bit_Types.Bit;

   --  OVRT0_P array
   type OVRT0_P_Field_Array is array (0 .. 31) of OVRT0_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Value Register - Toggle
   type OVRT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : OVRT0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for OVRT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ------------------
   -- PVR_Register --
   ------------------

   --  PVR0_P array element
   subtype PVR0_P_Element is Interfaces.Bit_Types.Bit;

   --  PVR0_P array
   type PVR0_P_Field_Array is array (0 .. 31) of PVR0_P_Element
     with Component_Size => 1, Size => 32;

   --  Pin Value Register
   type PVR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : PVR0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PVR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -------------------
   -- PUER_Register --
   -------------------

   --  PUER0_P array element
   subtype PUER0_P_Element is Interfaces.Bit_Types.Bit;

   --  PUER0_P array
   type PUER0_P_Field_Array is array (0 .. 31) of PUER0_P_Element
     with Component_Size => 1, Size => 32;

   --  Pull-up Enable Register
   type PUER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : PUER0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PUER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- PUERS_Register --
   --------------------

   --  PUERS0_P array element
   subtype PUERS0_P_Element is Interfaces.Bit_Types.Bit;

   --  PUERS0_P array
   type PUERS0_P_Field_Array is array (0 .. 31) of PUERS0_P_Element
     with Component_Size => 1, Size => 32;

   --  Pull-up Enable Register - Set
   type PUERS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : PUERS0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PUERS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- PUERC_Register --
   --------------------

   --  PUERC0_P array element
   subtype PUERC0_P_Element is Interfaces.Bit_Types.Bit;

   --  PUERC0_P array
   type PUERC0_P_Field_Array is array (0 .. 31) of PUERC0_P_Element
     with Component_Size => 1, Size => 32;

   --  Pull-up Enable Register - Clear
   type PUERC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : PUERC0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PUERC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- PUERT_Register --
   --------------------

   --  PUERT0_P array element
   subtype PUERT0_P_Element is Interfaces.Bit_Types.Bit;

   --  PUERT0_P array
   type PUERT0_P_Field_Array is array (0 .. 31) of PUERT0_P_Element
     with Component_Size => 1, Size => 32;

   --  Pull-up Enable Register - Toggle
   type PUERT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : PUERT0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PUERT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -------------------
   -- PDER_Register --
   -------------------

   --  PDER0_P array element
   subtype PDER0_P_Element is Interfaces.Bit_Types.Bit;

   --  PDER0_P array
   type PDER0_P_Field_Array is array (0 .. 31) of PDER0_P_Element
     with Component_Size => 1, Size => 32;

   --  Pull-down Enable Register
   type PDER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : PDER0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PDER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- PDERS_Register --
   --------------------

   --  PDERS0_P array element
   subtype PDERS0_P_Element is Interfaces.Bit_Types.Bit;

   --  PDERS0_P array
   type PDERS0_P_Field_Array is array (0 .. 31) of PDERS0_P_Element
     with Component_Size => 1, Size => 32;

   --  Pull-down Enable Register - Set
   type PDERS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : PDERS0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PDERS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- PDERC_Register --
   --------------------

   --  PDERC0_P array element
   subtype PDERC0_P_Element is Interfaces.Bit_Types.Bit;

   --  PDERC0_P array
   type PDERC0_P_Field_Array is array (0 .. 31) of PDERC0_P_Element
     with Component_Size => 1, Size => 32;

   --  Pull-down Enable Register - Clear
   type PDERC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : PDERC0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PDERC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- PDERT_Register --
   --------------------

   --  PDERT0_P array element
   subtype PDERT0_P_Element is Interfaces.Bit_Types.Bit;

   --  PDERT0_P array
   type PDERT0_P_Field_Array is array (0 .. 31) of PDERT0_P_Element
     with Component_Size => 1, Size => 32;

   --  Pull-down Enable Register - Toggle
   type PDERT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : PDERT0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PDERT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ------------------
   -- IER_Register --
   ------------------

   --  IER0_P array element
   subtype IER0_P_Element is Interfaces.Bit_Types.Bit;

   --  IER0_P array
   type IER0_P_Field_Array is array (0 .. 31) of IER0_P_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Enable Register
   type IER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : IER0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -------------------
   -- IERS_Register --
   -------------------

   --  IERS0_P array element
   subtype IERS0_P_Element is Interfaces.Bit_Types.Bit;

   --  IERS0_P array
   type IERS0_P_Field_Array is array (0 .. 31) of IERS0_P_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Enable Register - Set
   type IERS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : IERS0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IERS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -------------------
   -- IERC_Register --
   -------------------

   --  IERC0_P array element
   subtype IERC0_P_Element is Interfaces.Bit_Types.Bit;

   --  IERC0_P array
   type IERC0_P_Field_Array is array (0 .. 31) of IERC0_P_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Enable Register - Clear
   type IERC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : IERC0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IERC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -------------------
   -- IERT_Register --
   -------------------

   --  IERT0_P array element
   subtype IERT0_P_Element is Interfaces.Bit_Types.Bit;

   --  IERT0_P array
   type IERT0_P_Field_Array is array (0 .. 31) of IERT0_P_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Enable Register - Toggle
   type IERT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : IERT0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IERT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ------------------
   -- IMR_Register --
   ------------------

   --  IMR00_P array element
   subtype IMR00_P_Element is Interfaces.Bit_Types.Bit;

   --  IMR00_P array
   type IMR00_P_Field_Array is array (0 .. 31) of IMR00_P_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Mode Register 0
   type IMR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : IMR00_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IMR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- IMR0S_Register --
   --------------------

   --  IMR0S0_P array element
   subtype IMR0S0_P_Element is Interfaces.Bit_Types.Bit;

   --  IMR0S0_P array
   type IMR0S0_P_Field_Array is array (0 .. 31) of IMR0S0_P_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Mode Register 0 - Set
   type IMR0S_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : IMR0S0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IMR0S_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- IMR0C_Register --
   --------------------

   --  IMR0C0_P array element
   subtype IMR0C0_P_Element is Interfaces.Bit_Types.Bit;

   --  IMR0C0_P array
   type IMR0C0_P_Field_Array is array (0 .. 31) of IMR0C0_P_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Mode Register 0 - Clear
   type IMR0C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : IMR0C0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IMR0C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- IMR0T_Register --
   --------------------

   --  IMR0T0_P array element
   subtype IMR0T0_P_Element is Interfaces.Bit_Types.Bit;

   --  IMR0T0_P array
   type IMR0T0_P_Field_Array is array (0 .. 31) of IMR0T0_P_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Mode Register 0 - Toggle
   type IMR0T_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : IMR0T0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IMR0T_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- IMR1S_Register --
   --------------------

   --  IMR1S0_P array element
   subtype IMR1S0_P_Element is Interfaces.Bit_Types.Bit;

   --  IMR1S0_P array
   type IMR1S0_P_Field_Array is array (0 .. 31) of IMR1S0_P_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Mode Register 1 - Set
   type IMR1S_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : IMR1S0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IMR1S_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- IMR1C_Register --
   --------------------

   --  IMR1C0_P array element
   subtype IMR1C0_P_Element is Interfaces.Bit_Types.Bit;

   --  IMR1C0_P array
   type IMR1C0_P_Field_Array is array (0 .. 31) of IMR1C0_P_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Mode Register 1 - Clear
   type IMR1C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : IMR1C0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IMR1C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- IMR1T_Register --
   --------------------

   --  IMR1T0_P array element
   subtype IMR1T0_P_Element is Interfaces.Bit_Types.Bit;

   --  IMR1T0_P array
   type IMR1T0_P_Field_Array is array (0 .. 31) of IMR1T0_P_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Mode Register 1 - Toggle
   type IMR1T_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : IMR1T0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IMR1T_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -------------------
   -- GFER_Register --
   -------------------

   --  GFER0_P array element
   subtype GFER0_P_Element is Interfaces.Bit_Types.Bit;

   --  GFER0_P array
   type GFER0_P_Field_Array is array (0 .. 31) of GFER0_P_Element
     with Component_Size => 1, Size => 32;

   --  Glitch Filter Enable Register
   type GFER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : GFER0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GFER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- GFERS_Register --
   --------------------

   --  GFERS0_P array element
   subtype GFERS0_P_Element is Interfaces.Bit_Types.Bit;

   --  GFERS0_P array
   type GFERS0_P_Field_Array is array (0 .. 31) of GFERS0_P_Element
     with Component_Size => 1, Size => 32;

   --  Glitch Filter Enable Register - Set
   type GFERS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : GFERS0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GFERS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- GFERC_Register --
   --------------------

   --  GFERC0_P array element
   subtype GFERC0_P_Element is Interfaces.Bit_Types.Bit;

   --  GFERC0_P array
   type GFERC0_P_Field_Array is array (0 .. 31) of GFERC0_P_Element
     with Component_Size => 1, Size => 32;

   --  Glitch Filter Enable Register - Clear
   type GFERC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : GFERC0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GFERC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- GFERT_Register --
   --------------------

   --  GFERT0_P array element
   subtype GFERT0_P_Element is Interfaces.Bit_Types.Bit;

   --  GFERT0_P array
   type GFERT0_P_Field_Array is array (0 .. 31) of GFERT0_P_Element
     with Component_Size => 1, Size => 32;

   --  Glitch Filter Enable Register - Toggle
   type GFERT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : GFERT0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GFERT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ------------------
   -- IFR_Register --
   ------------------

   --  IFR0_P array element
   subtype IFR0_P_Element is Interfaces.Bit_Types.Bit;

   --  IFR0_P array
   type IFR0_P_Field_Array is array (0 .. 31) of IFR0_P_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Flag Register
   type IFR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : IFR0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IFR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -------------------
   -- IFRC_Register --
   -------------------

   --  IFRC0_P array element
   subtype IFRC0_P_Element is Interfaces.Bit_Types.Bit;

   --  IFRC0_P array
   type IFRC0_P_Field_Array is array (0 .. 31) of IFRC0_P_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Flag Register - Clear
   type IFRC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : IFRC0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IFRC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- ODMER_Register --
   --------------------

   --  ODMER0_P array element
   subtype ODMER0_P_Element is Interfaces.Bit_Types.Bit;

   --  ODMER0_P array
   type ODMER0_P_Field_Array is array (0 .. 31) of ODMER0_P_Element
     with Component_Size => 1, Size => 32;

   --  Open Drain Mode Register
   type ODMER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : ODMER0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODMER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ---------------------
   -- ODMERS_Register --
   ---------------------

   --  ODMERS0_P array element
   subtype ODMERS0_P_Element is Interfaces.Bit_Types.Bit;

   --  ODMERS0_P array
   type ODMERS0_P_Field_Array is array (0 .. 31) of ODMERS0_P_Element
     with Component_Size => 1, Size => 32;

   --  Open Drain Mode Register - Set
   type ODMERS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : ODMERS0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODMERS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ---------------------
   -- ODMERC_Register --
   ---------------------

   --  ODMERC0_P array element
   subtype ODMERC0_P_Element is Interfaces.Bit_Types.Bit;

   --  ODMERC0_P array
   type ODMERC0_P_Field_Array is array (0 .. 31) of ODMERC0_P_Element
     with Component_Size => 1, Size => 32;

   --  Open Drain Mode Register - Clear
   type ODMERC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : ODMERC0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODMERC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ---------------------
   -- ODMERT_Register --
   ---------------------

   --  ODMERT0_P array element
   subtype ODMERT0_P_Element is Interfaces.Bit_Types.Bit;

   --  ODMERT0_P array
   type ODMERT0_P_Field_Array is array (0 .. 31) of ODMERT0_P_Element
     with Component_Size => 1, Size => 32;

   --  Open Drain Mode Register - Toggle
   type ODMERT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : ODMERT0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODMERT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -------------------
   -- ODCR_Register --
   -------------------

   --  ODCR00_P array element
   subtype ODCR00_P_Element is Interfaces.Bit_Types.Bit;

   --  ODCR00_P array
   type ODCR00_P_Field_Array is array (0 .. 31) of ODCR00_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Driving Capability Register 0
   type ODCR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : ODCR00_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODCR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ---------------------
   -- ODCR0S_Register --
   ---------------------

   --  ODCR0S0_P array element
   subtype ODCR0S0_P_Element is Interfaces.Bit_Types.Bit;

   --  ODCR0S0_P array
   type ODCR0S0_P_Field_Array is array (0 .. 31) of ODCR0S0_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Driving Capability Register 0 - Set
   type ODCR0S_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : ODCR0S0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODCR0S_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ---------------------
   -- ODCR0C_Register --
   ---------------------

   --  ODCR0C0_P array element
   subtype ODCR0C0_P_Element is Interfaces.Bit_Types.Bit;

   --  ODCR0C0_P array
   type ODCR0C0_P_Field_Array is array (0 .. 31) of ODCR0C0_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Driving Capability Register 0 - Clear
   type ODCR0C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : ODCR0C0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODCR0C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ---------------------
   -- ODCR0T_Register --
   ---------------------

   --  ODCR0T0_P array element
   subtype ODCR0T0_P_Element is Interfaces.Bit_Types.Bit;

   --  ODCR0T0_P array
   type ODCR0T0_P_Field_Array is array (0 .. 31) of ODCR0T0_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Driving Capability Register 0 - Toggle
   type ODCR0T_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : ODCR0T0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODCR0T_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ---------------------
   -- ODCR1S_Register --
   ---------------------

   --  ODCR1S0_P array element
   subtype ODCR1S0_P_Element is Interfaces.Bit_Types.Bit;

   --  ODCR1S0_P array
   type ODCR1S0_P_Field_Array is array (0 .. 31) of ODCR1S0_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Driving Capability Register 1 - Set
   type ODCR1S_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : ODCR1S0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODCR1S_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ---------------------
   -- ODCR1C_Register --
   ---------------------

   --  ODCR1C0_P array element
   subtype ODCR1C0_P_Element is Interfaces.Bit_Types.Bit;

   --  ODCR1C0_P array
   type ODCR1C0_P_Field_Array is array (0 .. 31) of ODCR1C0_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Driving Capability Register 1 - Clear
   type ODCR1C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : ODCR1C0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODCR1C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ---------------------
   -- ODCR1T_Register --
   ---------------------

   --  ODCR1T0_P array element
   subtype ODCR1T0_P_Element is Interfaces.Bit_Types.Bit;

   --  ODCR1T0_P array
   type ODCR1T0_P_Field_Array is array (0 .. 31) of ODCR1T0_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Driving Capability Register 1 - Toggle
   type ODCR1T_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : ODCR1T0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODCR1T_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -------------------
   -- OSRR_Register --
   -------------------

   --  OSRR00_P array element
   subtype OSRR00_P_Element is Interfaces.Bit_Types.Bit;

   --  OSRR00_P array
   type OSRR00_P_Field_Array is array (0 .. 31) of OSRR00_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Slew Rate Register 0
   type OSRR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : OSRR00_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for OSRR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ---------------------
   -- OSRR0S_Register --
   ---------------------

   --  OSRR0S0_P array element
   subtype OSRR0S0_P_Element is Interfaces.Bit_Types.Bit;

   --  OSRR0S0_P array
   type OSRR0S0_P_Field_Array is array (0 .. 31) of OSRR0S0_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Slew Rate Register 0 - Set
   type OSRR0S_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : OSRR0S0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for OSRR0S_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ---------------------
   -- OSRR0C_Register --
   ---------------------

   --  OSRR0C0_P array element
   subtype OSRR0C0_P_Element is Interfaces.Bit_Types.Bit;

   --  OSRR0C0_P array
   type OSRR0C0_P_Field_Array is array (0 .. 31) of OSRR0C0_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Slew Rate Register 0 - Clear
   type OSRR0C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : OSRR0C0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for OSRR0C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ---------------------
   -- OSRR0T_Register --
   ---------------------

   --  OSRR0T0_P array element
   subtype OSRR0T0_P_Element is Interfaces.Bit_Types.Bit;

   --  OSRR0T0_P array
   type OSRR0T0_P_Field_Array is array (0 .. 31) of OSRR0T0_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Slew Rate Register 0 - Toggle
   type OSRR0T_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : OSRR0T0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for OSRR0T_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -------------------
   -- STER_Register --
   -------------------

   --  STER0_P array element
   subtype STER0_P_Element is Interfaces.Bit_Types.Bit;

   --  STER0_P array
   type STER0_P_Field_Array is array (0 .. 31) of STER0_P_Element
     with Component_Size => 1, Size => 32;

   --  Schmitt Trigger Enable Register
   type STER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : STER0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for STER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- STERS_Register --
   --------------------

   --  STERS0_P array element
   subtype STERS0_P_Element is Interfaces.Bit_Types.Bit;

   --  STERS0_P array
   type STERS0_P_Field_Array is array (0 .. 31) of STERS0_P_Element
     with Component_Size => 1, Size => 32;

   --  Schmitt Trigger Enable Register - Set
   type STERS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : STERS0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for STERS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- STERC_Register --
   --------------------

   --  STERC0_P array element
   subtype STERC0_P_Element is Interfaces.Bit_Types.Bit;

   --  STERC0_P array
   type STERC0_P_Field_Array is array (0 .. 31) of STERC0_P_Element
     with Component_Size => 1, Size => 32;

   --  Schmitt Trigger Enable Register - Clear
   type STERC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : STERC0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for STERC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- STERT_Register --
   --------------------

   --  STERT0_P array element
   subtype STERT0_P_Element is Interfaces.Bit_Types.Bit;

   --  STERT0_P array
   type STERT0_P_Field_Array is array (0 .. 31) of STERT0_P_Element
     with Component_Size => 1, Size => 32;

   --  Schmitt Trigger Enable Register - Toggle
   type STERT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : STERT0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for STERT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -------------------
   -- EVER_Register --
   -------------------

   --  EVER0_P array element
   subtype EVER0_P_Element is Interfaces.Bit_Types.Bit;

   --  EVER0_P array
   type EVER0_P_Field_Array is array (0 .. 31) of EVER0_P_Element
     with Component_Size => 1, Size => 32;

   --  Event Enable Register
   type EVER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : EVER0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for EVER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- EVERS_Register --
   --------------------

   --  EVERS0_P array element
   subtype EVERS0_P_Element is Interfaces.Bit_Types.Bit;

   --  EVERS0_P array
   type EVERS0_P_Field_Array is array (0 .. 31) of EVERS0_P_Element
     with Component_Size => 1, Size => 32;

   --  Event Enable Register - Set
   type EVERS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : EVERS0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for EVERS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- EVERC_Register --
   --------------------

   --  EVERC0_P array element
   subtype EVERC0_P_Element is Interfaces.Bit_Types.Bit;

   --  EVERC0_P array
   type EVERC0_P_Field_Array is array (0 .. 31) of EVERC0_P_Element
     with Component_Size => 1, Size => 32;

   --  Event Enable Register - Clear
   type EVERC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : EVERC0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for EVERC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- EVERT_Register --
   --------------------

   --  EVERT0_P array element
   subtype EVERT0_P_Element is Interfaces.Bit_Types.Bit;

   --  EVERT0_P array
   type EVERT0_P_Field_Array is array (0 .. 31) of EVERT0_P_Element
     with Component_Size => 1, Size => 32;

   --  Event Enable Register - Toggle
   type EVERT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : EVERT0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for EVERT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -------------------
   -- LOCK_Register --
   -------------------

   --  LOCK0_P array element
   subtype LOCK0_P_Element is Interfaces.Bit_Types.Bit;

   --  LOCK0_P array
   type LOCK0_P_Field_Array is array (0 .. 31) of LOCK0_P_Element
     with Component_Size => 1, Size => 32;

   --  Lock Register
   type LOCK_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : LOCK0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LOCK_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- LOCKS_Register --
   --------------------

   --  LOCKS0_P array element
   subtype LOCKS0_P_Element is Interfaces.Bit_Types.Bit;

   --  LOCKS0_P array
   type LOCKS0_P_Field_Array is array (0 .. 31) of LOCKS0_P_Element
     with Component_Size => 1, Size => 32;

   --  Lock Register - Set
   type LOCKS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : LOCKS0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LOCKS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- LOCKC_Register --
   --------------------

   --  LOCKC0_P array element
   subtype LOCKC0_P_Element is Interfaces.Bit_Types.Bit;

   --  LOCKC0_P array
   type LOCKC0_P_Field_Array is array (0 .. 31) of LOCKC0_P_Element
     with Component_Size => 1, Size => 32;

   --  Lock Register - Clear
   type LOCKC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : LOCKC0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LOCKC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------
   -- LOCKT_Register --
   --------------------

   --  LOCKT0_P array element
   subtype LOCKT0_P_Element is Interfaces.Bit_Types.Bit;

   --  LOCKT0_P array
   type LOCKT0_P_Field_Array is array (0 .. 31) of LOCKT0_P_Element
     with Component_Size => 1, Size => 32;

   --  Lock Register - Toggle
   type LOCKT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  P as an array
            Arr : LOCKT0_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LOCKT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ---------------------
   -- UNLOCK_Register --
   ---------------------

   subtype UNLOCK0_ADDR_Field is Interfaces.Bit_Types.UInt10;
   subtype UNLOCK0_KEY_Field is Interfaces.Bit_Types.Byte;

   --  Unlock Register
   type UNLOCK_Register is record
      --  Write-only. Offset Register
      ADDR           : UNLOCK0_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_10_23 : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  Write-only. Unlocking Key
      KEY            : UNLOCK0_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UNLOCK_Register use record
      ADDR           at 0 range 0 .. 9;
      Reserved_10_23 at 0 range 10 .. 23;
      KEY            at 0 range 24 .. 31;
   end record;

   ------------------
   -- ASR_Register --
   ------------------

   subtype ASR0_AR_Field is Interfaces.Bit_Types.Bit;

   --  Access Status Register
   type ASR_Register is record
      --  Access Error
      AR            : ASR0_AR_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASR_Register use record
      AR            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ----------------------
   -- VERSION_Register --
   ----------------------

   subtype VERSION0_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION0_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : VERSION0_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant Number
      VARIANT        : VERSION0_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General-Purpose Input/Output Controller
   type GPIO_Peripheral is record
      --  GPIO Enable Register
      GPER0      : GPER_Register;
      --  GPIO Enable Register - Set
      GPERS0     : GPERS_Register;
      --  GPIO Enable Register - Clear
      GPERC0     : GPERC_Register;
      --  GPIO Enable Register - Toggle
      GPERT0     : GPERT_Register;
      --  Peripheral Mux Register 0
      PMR00      : PMR_Register;
      --  Peripheral Mux Register 0 - Set
      PMR0S0     : PMR0S_Register;
      --  Peripheral Mux Register 0 - Clear
      PMR0C0     : PMR0C_Register;
      --  Peripheral Mux Register 0 - Toggle
      PMR0T0     : PMR0T_Register;
      --  Peripheral Mux Register 1
      PMR10      : PMR_Register;
      --  Peripheral Mux Register 1 - Set
      PMR1S0     : PMR1S_Register;
      --  Peripheral Mux Register 1 - Clear
      PMR1C0     : PMR1C_Register;
      --  Peripheral Mux Register 1 - Toggle
      PMR1T0     : PMR1T_Register;
      --  Peripheral Mux Register 2
      PMR20      : PMR_Register;
      --  Peripheral Mux Register 2 - Set
      PMR2S0     : PMR2S_Register;
      --  Peripheral Mux Register 2 - Clear
      PMR2C0     : PMR2C_Register;
      --  Peripheral Mux Register 2 - Toggle
      PMR2T0     : PMR2T_Register;
      --  Output Driver Enable Register
      ODER0      : ODER_Register;
      --  Output Driver Enable Register - Set
      ODERS0     : ODERS_Register;
      --  Output Driver Enable Register - Clear
      ODERC0     : ODERC_Register;
      --  Output Driver Enable Register - Toggle
      ODERT0     : ODERT_Register;
      --  Output Value Register
      OVR0       : OVR_Register;
      --  Output Value Register - Set
      OVRS0      : OVRS_Register;
      --  Output Value Register - Clear
      OVRC0      : OVRC_Register;
      --  Output Value Register - Toggle
      OVRT0      : OVRT_Register;
      --  Pin Value Register
      PVR0       : PVR_Register;
      --  Pull-up Enable Register
      PUER0      : PUER_Register;
      --  Pull-up Enable Register - Set
      PUERS0     : PUERS_Register;
      --  Pull-up Enable Register - Clear
      PUERC0     : PUERC_Register;
      --  Pull-up Enable Register - Toggle
      PUERT0     : PUERT_Register;
      --  Pull-down Enable Register
      PDER0      : PDER_Register;
      --  Pull-down Enable Register - Set
      PDERS0     : PDERS_Register;
      --  Pull-down Enable Register - Clear
      PDERC0     : PDERC_Register;
      --  Pull-down Enable Register - Toggle
      PDERT0     : PDERT_Register;
      --  Interrupt Enable Register
      IER0       : IER_Register;
      --  Interrupt Enable Register - Set
      IERS0      : IERS_Register;
      --  Interrupt Enable Register - Clear
      IERC0      : IERC_Register;
      --  Interrupt Enable Register - Toggle
      IERT0      : IERT_Register;
      --  Interrupt Mode Register 0
      IMR00      : IMR_Register;
      --  Interrupt Mode Register 0 - Set
      IMR0S0     : IMR0S_Register;
      --  Interrupt Mode Register 0 - Clear
      IMR0C0     : IMR0C_Register;
      --  Interrupt Mode Register 0 - Toggle
      IMR0T0     : IMR0T_Register;
      --  Interrupt Mode Register 1
      IMR10      : IMR_Register;
      --  Interrupt Mode Register 1 - Set
      IMR1S0     : IMR1S_Register;
      --  Interrupt Mode Register 1 - Clear
      IMR1C0     : IMR1C_Register;
      --  Interrupt Mode Register 1 - Toggle
      IMR1T0     : IMR1T_Register;
      --  Glitch Filter Enable Register
      GFER0      : GFER_Register;
      --  Glitch Filter Enable Register - Set
      GFERS0     : GFERS_Register;
      --  Glitch Filter Enable Register - Clear
      GFERC0     : GFERC_Register;
      --  Glitch Filter Enable Register - Toggle
      GFERT0     : GFERT_Register;
      --  Interrupt Flag Register
      IFR0       : IFR_Register;
      --  Interrupt Flag Register - Clear
      IFRC0      : IFRC_Register;
      --  Open Drain Mode Register
      ODMER0     : ODMER_Register;
      --  Open Drain Mode Register - Set
      ODMERS0    : ODMERS_Register;
      --  Open Drain Mode Register - Clear
      ODMERC0    : ODMERC_Register;
      --  Open Drain Mode Register - Toggle
      ODMERT0    : ODMERT_Register;
      --  Output Driving Capability Register 0
      ODCR00     : ODCR_Register;
      --  Output Driving Capability Register 0 - Set
      ODCR0S0    : ODCR0S_Register;
      --  Output Driving Capability Register 0 - Clear
      ODCR0C0    : ODCR0C_Register;
      --  Output Driving Capability Register 0 - Toggle
      ODCR0T0    : ODCR0T_Register;
      --  Output Driving Capability Register 1
      ODCR10     : ODCR_Register;
      --  Output Driving Capability Register 1 - Set
      ODCR1S0    : ODCR1S_Register;
      --  Output Driving Capability Register 1 - Clear
      ODCR1C0    : ODCR1C_Register;
      --  Output Driving Capability Register 1 - Toggle
      ODCR1T0    : ODCR1T_Register;
      --  Output Slew Rate Register 0
      OSRR00     : OSRR_Register;
      --  Output Slew Rate Register 0 - Set
      OSRR0S0    : OSRR0S_Register;
      --  Output Slew Rate Register 0 - Clear
      OSRR0C0    : OSRR0C_Register;
      --  Output Slew Rate Register 0 - Toggle
      OSRR0T0    : OSRR0T_Register;
      --  Schmitt Trigger Enable Register
      STER0      : STER_Register;
      --  Schmitt Trigger Enable Register - Set
      STERS0     : STERS_Register;
      --  Schmitt Trigger Enable Register - Clear
      STERC0     : STERC_Register;
      --  Schmitt Trigger Enable Register - Toggle
      STERT0     : STERT_Register;
      --  Event Enable Register
      EVER0      : EVER_Register;
      --  Event Enable Register - Set
      EVERS0     : EVERS_Register;
      --  Event Enable Register - Clear
      EVERC0     : EVERC_Register;
      --  Event Enable Register - Toggle
      EVERT0     : EVERT_Register;
      --  Lock Register
      LOCK0      : LOCK_Register;
      --  Lock Register - Set
      LOCKS0     : LOCKS_Register;
      --  Lock Register - Clear
      LOCKC0     : LOCKC_Register;
      --  Lock Register - Toggle
      LOCKT0     : LOCKT_Register;
      --  Unlock Register
      UNLOCK0    : UNLOCK_Register;
      --  Access Status Register
      ASR0       : ASR_Register;
      --  Parameter Register
      PARAMETER0 : Interfaces.Bit_Types.Word;
      --  Version Register
      VERSION0   : VERSION_Register;
      --  GPIO Enable Register
      GPER1      : GPER_Register;
      --  GPIO Enable Register - Set
      GPERS1     : GPERS_Register;
      --  GPIO Enable Register - Clear
      GPERC1     : GPERC_Register;
      --  GPIO Enable Register - Toggle
      GPERT1     : GPERT_Register;
      --  Peripheral Mux Register 0
      PMR01      : PMR_Register;
      --  Peripheral Mux Register 0 - Set
      PMR0S1     : PMR0S_Register;
      --  Peripheral Mux Register 0 - Clear
      PMR0C1     : PMR0C_Register;
      --  Peripheral Mux Register 0 - Toggle
      PMR0T1     : PMR0T_Register;
      --  Peripheral Mux Register 1
      PMR11      : PMR_Register;
      --  Peripheral Mux Register 1 - Set
      PMR1S1     : PMR1S_Register;
      --  Peripheral Mux Register 1 - Clear
      PMR1C1     : PMR1C_Register;
      --  Peripheral Mux Register 1 - Toggle
      PMR1T1     : PMR1T_Register;
      --  Peripheral Mux Register 2
      PMR21      : PMR_Register;
      --  Peripheral Mux Register 2 - Set
      PMR2S1     : PMR2S_Register;
      --  Peripheral Mux Register 2 - Clear
      PMR2C1     : PMR2C_Register;
      --  Peripheral Mux Register 2 - Toggle
      PMR2T1     : PMR2T_Register;
      --  Output Driver Enable Register
      ODER1      : ODER_Register;
      --  Output Driver Enable Register - Set
      ODERS1     : ODERS_Register;
      --  Output Driver Enable Register - Clear
      ODERC1     : ODERC_Register;
      --  Output Driver Enable Register - Toggle
      ODERT1     : ODERT_Register;
      --  Output Value Register
      OVR1       : OVR_Register;
      --  Output Value Register - Set
      OVRS1      : OVRS_Register;
      --  Output Value Register - Clear
      OVRC1      : OVRC_Register;
      --  Output Value Register - Toggle
      OVRT1      : OVRT_Register;
      --  Pin Value Register
      PVR1       : PVR_Register;
      --  Pull-up Enable Register
      PUER1      : PUER_Register;
      --  Pull-up Enable Register - Set
      PUERS1     : PUERS_Register;
      --  Pull-up Enable Register - Clear
      PUERC1     : PUERC_Register;
      --  Pull-up Enable Register - Toggle
      PUERT1     : PUERT_Register;
      --  Pull-down Enable Register
      PDER1      : PDER_Register;
      --  Pull-down Enable Register - Set
      PDERS1     : PDERS_Register;
      --  Pull-down Enable Register - Clear
      PDERC1     : PDERC_Register;
      --  Pull-down Enable Register - Toggle
      PDERT1     : PDERT_Register;
      --  Interrupt Enable Register
      IER1       : IER_Register;
      --  Interrupt Enable Register - Set
      IERS1      : IERS_Register;
      --  Interrupt Enable Register - Clear
      IERC1      : IERC_Register;
      --  Interrupt Enable Register - Toggle
      IERT1      : IERT_Register;
      --  Interrupt Mode Register 0
      IMR01      : IMR_Register;
      --  Interrupt Mode Register 0 - Set
      IMR0S1     : IMR0S_Register;
      --  Interrupt Mode Register 0 - Clear
      IMR0C1     : IMR0C_Register;
      --  Interrupt Mode Register 0 - Toggle
      IMR0T1     : IMR0T_Register;
      --  Interrupt Mode Register 1
      IMR11      : IMR_Register;
      --  Interrupt Mode Register 1 - Set
      IMR1S1     : IMR1S_Register;
      --  Interrupt Mode Register 1 - Clear
      IMR1C1     : IMR1C_Register;
      --  Interrupt Mode Register 1 - Toggle
      IMR1T1     : IMR1T_Register;
      --  Glitch Filter Enable Register
      GFER1      : GFER_Register;
      --  Glitch Filter Enable Register - Set
      GFERS1     : GFERS_Register;
      --  Glitch Filter Enable Register - Clear
      GFERC1     : GFERC_Register;
      --  Glitch Filter Enable Register - Toggle
      GFERT1     : GFERT_Register;
      --  Interrupt Flag Register
      IFR1       : IFR_Register;
      --  Interrupt Flag Register - Clear
      IFRC1      : IFRC_Register;
      --  Open Drain Mode Register
      ODMER1     : ODMER_Register;
      --  Open Drain Mode Register - Set
      ODMERS1    : ODMERS_Register;
      --  Open Drain Mode Register - Clear
      ODMERC1    : ODMERC_Register;
      --  Open Drain Mode Register - Toggle
      ODMERT1    : ODMERT_Register;
      --  Output Driving Capability Register 0
      ODCR01     : ODCR_Register;
      --  Output Driving Capability Register 0 - Set
      ODCR0S1    : ODCR0S_Register;
      --  Output Driving Capability Register 0 - Clear
      ODCR0C1    : ODCR0C_Register;
      --  Output Driving Capability Register 0 - Toggle
      ODCR0T1    : ODCR0T_Register;
      --  Output Driving Capability Register 1
      ODCR11     : ODCR_Register;
      --  Output Driving Capability Register 1 - Set
      ODCR1S1    : ODCR1S_Register;
      --  Output Driving Capability Register 1 - Clear
      ODCR1C1    : ODCR1C_Register;
      --  Output Driving Capability Register 1 - Toggle
      ODCR1T1    : ODCR1T_Register;
      --  Output Slew Rate Register 0
      OSRR01     : OSRR_Register;
      --  Output Slew Rate Register 0 - Set
      OSRR0S1    : OSRR0S_Register;
      --  Output Slew Rate Register 0 - Clear
      OSRR0C1    : OSRR0C_Register;
      --  Output Slew Rate Register 0 - Toggle
      OSRR0T1    : OSRR0T_Register;
      --  Schmitt Trigger Enable Register
      STER1      : STER_Register;
      --  Schmitt Trigger Enable Register - Set
      STERS1     : STERS_Register;
      --  Schmitt Trigger Enable Register - Clear
      STERC1     : STERC_Register;
      --  Schmitt Trigger Enable Register - Toggle
      STERT1     : STERT_Register;
      --  Event Enable Register
      EVER1      : EVER_Register;
      --  Event Enable Register - Set
      EVERS1     : EVERS_Register;
      --  Event Enable Register - Clear
      EVERC1     : EVERC_Register;
      --  Event Enable Register - Toggle
      EVERT1     : EVERT_Register;
      --  Lock Register
      LOCK1      : LOCK_Register;
      --  Lock Register - Set
      LOCKS1     : LOCKS_Register;
      --  Lock Register - Clear
      LOCKC1     : LOCKC_Register;
      --  Lock Register - Toggle
      LOCKT1     : LOCKT_Register;
      --  Unlock Register
      UNLOCK1    : UNLOCK_Register;
      --  Access Status Register
      ASR1       : ASR_Register;
      --  Parameter Register
      PARAMETER1 : Interfaces.Bit_Types.Word;
      --  Version Register
      VERSION1   : VERSION_Register;
      --  GPIO Enable Register
      GPER2      : GPER_Register;
      --  GPIO Enable Register - Set
      GPERS2     : GPERS_Register;
      --  GPIO Enable Register - Clear
      GPERC2     : GPERC_Register;
      --  GPIO Enable Register - Toggle
      GPERT2     : GPERT_Register;
      --  Peripheral Mux Register 0
      PMR02      : PMR_Register;
      --  Peripheral Mux Register 0 - Set
      PMR0S2     : PMR0S_Register;
      --  Peripheral Mux Register 0 - Clear
      PMR0C2     : PMR0C_Register;
      --  Peripheral Mux Register 0 - Toggle
      PMR0T2     : PMR0T_Register;
      --  Peripheral Mux Register 1
      PMR12      : PMR_Register;
      --  Peripheral Mux Register 1 - Set
      PMR1S2     : PMR1S_Register;
      --  Peripheral Mux Register 1 - Clear
      PMR1C2     : PMR1C_Register;
      --  Peripheral Mux Register 1 - Toggle
      PMR1T2     : PMR1T_Register;
      --  Peripheral Mux Register 2
      PMR22      : PMR_Register;
      --  Peripheral Mux Register 2 - Set
      PMR2S2     : PMR2S_Register;
      --  Peripheral Mux Register 2 - Clear
      PMR2C2     : PMR2C_Register;
      --  Peripheral Mux Register 2 - Toggle
      PMR2T2     : PMR2T_Register;
      --  Output Driver Enable Register
      ODER2      : ODER_Register;
      --  Output Driver Enable Register - Set
      ODERS2     : ODERS_Register;
      --  Output Driver Enable Register - Clear
      ODERC2     : ODERC_Register;
      --  Output Driver Enable Register - Toggle
      ODERT2     : ODERT_Register;
      --  Output Value Register
      OVR2       : OVR_Register;
      --  Output Value Register - Set
      OVRS2      : OVRS_Register;
      --  Output Value Register - Clear
      OVRC2      : OVRC_Register;
      --  Output Value Register - Toggle
      OVRT2      : OVRT_Register;
      --  Pin Value Register
      PVR2       : PVR_Register;
      --  Pull-up Enable Register
      PUER2      : PUER_Register;
      --  Pull-up Enable Register - Set
      PUERS2     : PUERS_Register;
      --  Pull-up Enable Register - Clear
      PUERC2     : PUERC_Register;
      --  Pull-up Enable Register - Toggle
      PUERT2     : PUERT_Register;
      --  Pull-down Enable Register
      PDER2      : PDER_Register;
      --  Pull-down Enable Register - Set
      PDERS2     : PDERS_Register;
      --  Pull-down Enable Register - Clear
      PDERC2     : PDERC_Register;
      --  Pull-down Enable Register - Toggle
      PDERT2     : PDERT_Register;
      --  Interrupt Enable Register
      IER2       : IER_Register;
      --  Interrupt Enable Register - Set
      IERS2      : IERS_Register;
      --  Interrupt Enable Register - Clear
      IERC2      : IERC_Register;
      --  Interrupt Enable Register - Toggle
      IERT2      : IERT_Register;
      --  Interrupt Mode Register 0
      IMR02      : IMR_Register;
      --  Interrupt Mode Register 0 - Set
      IMR0S2     : IMR0S_Register;
      --  Interrupt Mode Register 0 - Clear
      IMR0C2     : IMR0C_Register;
      --  Interrupt Mode Register 0 - Toggle
      IMR0T2     : IMR0T_Register;
      --  Interrupt Mode Register 1
      IMR12      : IMR_Register;
      --  Interrupt Mode Register 1 - Set
      IMR1S2     : IMR1S_Register;
      --  Interrupt Mode Register 1 - Clear
      IMR1C2     : IMR1C_Register;
      --  Interrupt Mode Register 1 - Toggle
      IMR1T2     : IMR1T_Register;
      --  Glitch Filter Enable Register
      GFER2      : GFER_Register;
      --  Glitch Filter Enable Register - Set
      GFERS2     : GFERS_Register;
      --  Glitch Filter Enable Register - Clear
      GFERC2     : GFERC_Register;
      --  Glitch Filter Enable Register - Toggle
      GFERT2     : GFERT_Register;
      --  Interrupt Flag Register
      IFR2       : IFR_Register;
      --  Interrupt Flag Register - Clear
      IFRC2      : IFRC_Register;
      --  Open Drain Mode Register
      ODMER2     : ODMER_Register;
      --  Open Drain Mode Register - Set
      ODMERS2    : ODMERS_Register;
      --  Open Drain Mode Register - Clear
      ODMERC2    : ODMERC_Register;
      --  Open Drain Mode Register - Toggle
      ODMERT2    : ODMERT_Register;
      --  Output Driving Capability Register 0
      ODCR02     : ODCR_Register;
      --  Output Driving Capability Register 0 - Set
      ODCR0S2    : ODCR0S_Register;
      --  Output Driving Capability Register 0 - Clear
      ODCR0C2    : ODCR0C_Register;
      --  Output Driving Capability Register 0 - Toggle
      ODCR0T2    : ODCR0T_Register;
      --  Output Driving Capability Register 1
      ODCR12     : ODCR_Register;
      --  Output Driving Capability Register 1 - Set
      ODCR1S2    : ODCR1S_Register;
      --  Output Driving Capability Register 1 - Clear
      ODCR1C2    : ODCR1C_Register;
      --  Output Driving Capability Register 1 - Toggle
      ODCR1T2    : ODCR1T_Register;
      --  Output Slew Rate Register 0
      OSRR02     : OSRR_Register;
      --  Output Slew Rate Register 0 - Set
      OSRR0S2    : OSRR0S_Register;
      --  Output Slew Rate Register 0 - Clear
      OSRR0C2    : OSRR0C_Register;
      --  Output Slew Rate Register 0 - Toggle
      OSRR0T2    : OSRR0T_Register;
      --  Schmitt Trigger Enable Register
      STER2      : STER_Register;
      --  Schmitt Trigger Enable Register - Set
      STERS2     : STERS_Register;
      --  Schmitt Trigger Enable Register - Clear
      STERC2     : STERC_Register;
      --  Schmitt Trigger Enable Register - Toggle
      STERT2     : STERT_Register;
      --  Event Enable Register
      EVER2      : EVER_Register;
      --  Event Enable Register - Set
      EVERS2     : EVERS_Register;
      --  Event Enable Register - Clear
      EVERC2     : EVERC_Register;
      --  Event Enable Register - Toggle
      EVERT2     : EVERT_Register;
      --  Lock Register
      LOCK2      : LOCK_Register;
      --  Lock Register - Set
      LOCKS2     : LOCKS_Register;
      --  Lock Register - Clear
      LOCKC2     : LOCKC_Register;
      --  Lock Register - Toggle
      LOCKT2     : LOCKT_Register;
      --  Unlock Register
      UNLOCK2    : UNLOCK_Register;
      --  Access Status Register
      ASR2       : ASR_Register;
      --  Parameter Register
      PARAMETER2 : Interfaces.Bit_Types.Word;
      --  Version Register
      VERSION2   : VERSION_Register;
   end record
     with Volatile;

   for GPIO_Peripheral use record
      GPER0      at 0 range 0 .. 31;
      GPERS0     at 4 range 0 .. 31;
      GPERC0     at 8 range 0 .. 31;
      GPERT0     at 12 range 0 .. 31;
      PMR00      at 16 range 0 .. 31;
      PMR0S0     at 20 range 0 .. 31;
      PMR0C0     at 24 range 0 .. 31;
      PMR0T0     at 28 range 0 .. 31;
      PMR10      at 32 range 0 .. 31;
      PMR1S0     at 36 range 0 .. 31;
      PMR1C0     at 40 range 0 .. 31;
      PMR1T0     at 44 range 0 .. 31;
      PMR20      at 48 range 0 .. 31;
      PMR2S0     at 52 range 0 .. 31;
      PMR2C0     at 56 range 0 .. 31;
      PMR2T0     at 60 range 0 .. 31;
      ODER0      at 64 range 0 .. 31;
      ODERS0     at 68 range 0 .. 31;
      ODERC0     at 72 range 0 .. 31;
      ODERT0     at 76 range 0 .. 31;
      OVR0       at 80 range 0 .. 31;
      OVRS0      at 84 range 0 .. 31;
      OVRC0      at 88 range 0 .. 31;
      OVRT0      at 92 range 0 .. 31;
      PVR0       at 96 range 0 .. 31;
      PUER0      at 112 range 0 .. 31;
      PUERS0     at 116 range 0 .. 31;
      PUERC0     at 120 range 0 .. 31;
      PUERT0     at 124 range 0 .. 31;
      PDER0      at 128 range 0 .. 31;
      PDERS0     at 132 range 0 .. 31;
      PDERC0     at 136 range 0 .. 31;
      PDERT0     at 140 range 0 .. 31;
      IER0       at 144 range 0 .. 31;
      IERS0      at 148 range 0 .. 31;
      IERC0      at 152 range 0 .. 31;
      IERT0      at 156 range 0 .. 31;
      IMR00      at 160 range 0 .. 31;
      IMR0S0     at 164 range 0 .. 31;
      IMR0C0     at 168 range 0 .. 31;
      IMR0T0     at 172 range 0 .. 31;
      IMR10      at 176 range 0 .. 31;
      IMR1S0     at 180 range 0 .. 31;
      IMR1C0     at 184 range 0 .. 31;
      IMR1T0     at 188 range 0 .. 31;
      GFER0      at 192 range 0 .. 31;
      GFERS0     at 196 range 0 .. 31;
      GFERC0     at 200 range 0 .. 31;
      GFERT0     at 204 range 0 .. 31;
      IFR0       at 208 range 0 .. 31;
      IFRC0      at 216 range 0 .. 31;
      ODMER0     at 224 range 0 .. 31;
      ODMERS0    at 228 range 0 .. 31;
      ODMERC0    at 232 range 0 .. 31;
      ODMERT0    at 236 range 0 .. 31;
      ODCR00     at 256 range 0 .. 31;
      ODCR0S0    at 260 range 0 .. 31;
      ODCR0C0    at 264 range 0 .. 31;
      ODCR0T0    at 268 range 0 .. 31;
      ODCR10     at 272 range 0 .. 31;
      ODCR1S0    at 276 range 0 .. 31;
      ODCR1C0    at 280 range 0 .. 31;
      ODCR1T0    at 284 range 0 .. 31;
      OSRR00     at 304 range 0 .. 31;
      OSRR0S0    at 308 range 0 .. 31;
      OSRR0C0    at 312 range 0 .. 31;
      OSRR0T0    at 316 range 0 .. 31;
      STER0      at 352 range 0 .. 31;
      STERS0     at 356 range 0 .. 31;
      STERC0     at 360 range 0 .. 31;
      STERT0     at 364 range 0 .. 31;
      EVER0      at 384 range 0 .. 31;
      EVERS0     at 388 range 0 .. 31;
      EVERC0     at 392 range 0 .. 31;
      EVERT0     at 396 range 0 .. 31;
      LOCK0      at 416 range 0 .. 31;
      LOCKS0     at 420 range 0 .. 31;
      LOCKC0     at 424 range 0 .. 31;
      LOCKT0     at 428 range 0 .. 31;
      UNLOCK0    at 480 range 0 .. 31;
      ASR0       at 484 range 0 .. 31;
      PARAMETER0 at 504 range 0 .. 31;
      VERSION0   at 508 range 0 .. 31;
      GPER1      at 512 range 0 .. 31;
      GPERS1     at 516 range 0 .. 31;
      GPERC1     at 520 range 0 .. 31;
      GPERT1     at 524 range 0 .. 31;
      PMR01      at 528 range 0 .. 31;
      PMR0S1     at 532 range 0 .. 31;
      PMR0C1     at 536 range 0 .. 31;
      PMR0T1     at 540 range 0 .. 31;
      PMR11      at 544 range 0 .. 31;
      PMR1S1     at 548 range 0 .. 31;
      PMR1C1     at 552 range 0 .. 31;
      PMR1T1     at 556 range 0 .. 31;
      PMR21      at 560 range 0 .. 31;
      PMR2S1     at 564 range 0 .. 31;
      PMR2C1     at 568 range 0 .. 31;
      PMR2T1     at 572 range 0 .. 31;
      ODER1      at 576 range 0 .. 31;
      ODERS1     at 580 range 0 .. 31;
      ODERC1     at 584 range 0 .. 31;
      ODERT1     at 588 range 0 .. 31;
      OVR1       at 592 range 0 .. 31;
      OVRS1      at 596 range 0 .. 31;
      OVRC1      at 600 range 0 .. 31;
      OVRT1      at 604 range 0 .. 31;
      PVR1       at 608 range 0 .. 31;
      PUER1      at 624 range 0 .. 31;
      PUERS1     at 628 range 0 .. 31;
      PUERC1     at 632 range 0 .. 31;
      PUERT1     at 636 range 0 .. 31;
      PDER1      at 640 range 0 .. 31;
      PDERS1     at 644 range 0 .. 31;
      PDERC1     at 648 range 0 .. 31;
      PDERT1     at 652 range 0 .. 31;
      IER1       at 656 range 0 .. 31;
      IERS1      at 660 range 0 .. 31;
      IERC1      at 664 range 0 .. 31;
      IERT1      at 668 range 0 .. 31;
      IMR01      at 672 range 0 .. 31;
      IMR0S1     at 676 range 0 .. 31;
      IMR0C1     at 680 range 0 .. 31;
      IMR0T1     at 684 range 0 .. 31;
      IMR11      at 688 range 0 .. 31;
      IMR1S1     at 692 range 0 .. 31;
      IMR1C1     at 696 range 0 .. 31;
      IMR1T1     at 700 range 0 .. 31;
      GFER1      at 704 range 0 .. 31;
      GFERS1     at 708 range 0 .. 31;
      GFERC1     at 712 range 0 .. 31;
      GFERT1     at 716 range 0 .. 31;
      IFR1       at 720 range 0 .. 31;
      IFRC1      at 728 range 0 .. 31;
      ODMER1     at 736 range 0 .. 31;
      ODMERS1    at 740 range 0 .. 31;
      ODMERC1    at 744 range 0 .. 31;
      ODMERT1    at 748 range 0 .. 31;
      ODCR01     at 768 range 0 .. 31;
      ODCR0S1    at 772 range 0 .. 31;
      ODCR0C1    at 776 range 0 .. 31;
      ODCR0T1    at 780 range 0 .. 31;
      ODCR11     at 784 range 0 .. 31;
      ODCR1S1    at 788 range 0 .. 31;
      ODCR1C1    at 792 range 0 .. 31;
      ODCR1T1    at 796 range 0 .. 31;
      OSRR01     at 816 range 0 .. 31;
      OSRR0S1    at 820 range 0 .. 31;
      OSRR0C1    at 824 range 0 .. 31;
      OSRR0T1    at 828 range 0 .. 31;
      STER1      at 864 range 0 .. 31;
      STERS1     at 868 range 0 .. 31;
      STERC1     at 872 range 0 .. 31;
      STERT1     at 876 range 0 .. 31;
      EVER1      at 896 range 0 .. 31;
      EVERS1     at 900 range 0 .. 31;
      EVERC1     at 904 range 0 .. 31;
      EVERT1     at 908 range 0 .. 31;
      LOCK1      at 928 range 0 .. 31;
      LOCKS1     at 932 range 0 .. 31;
      LOCKC1     at 936 range 0 .. 31;
      LOCKT1     at 940 range 0 .. 31;
      UNLOCK1    at 992 range 0 .. 31;
      ASR1       at 996 range 0 .. 31;
      PARAMETER1 at 1016 range 0 .. 31;
      VERSION1   at 1020 range 0 .. 31;
      GPER2      at 1024 range 0 .. 31;
      GPERS2     at 1028 range 0 .. 31;
      GPERC2     at 1032 range 0 .. 31;
      GPERT2     at 1036 range 0 .. 31;
      PMR02      at 1040 range 0 .. 31;
      PMR0S2     at 1044 range 0 .. 31;
      PMR0C2     at 1048 range 0 .. 31;
      PMR0T2     at 1052 range 0 .. 31;
      PMR12      at 1056 range 0 .. 31;
      PMR1S2     at 1060 range 0 .. 31;
      PMR1C2     at 1064 range 0 .. 31;
      PMR1T2     at 1068 range 0 .. 31;
      PMR22      at 1072 range 0 .. 31;
      PMR2S2     at 1076 range 0 .. 31;
      PMR2C2     at 1080 range 0 .. 31;
      PMR2T2     at 1084 range 0 .. 31;
      ODER2      at 1088 range 0 .. 31;
      ODERS2     at 1092 range 0 .. 31;
      ODERC2     at 1096 range 0 .. 31;
      ODERT2     at 1100 range 0 .. 31;
      OVR2       at 1104 range 0 .. 31;
      OVRS2      at 1108 range 0 .. 31;
      OVRC2      at 1112 range 0 .. 31;
      OVRT2      at 1116 range 0 .. 31;
      PVR2       at 1120 range 0 .. 31;
      PUER2      at 1136 range 0 .. 31;
      PUERS2     at 1140 range 0 .. 31;
      PUERC2     at 1144 range 0 .. 31;
      PUERT2     at 1148 range 0 .. 31;
      PDER2      at 1152 range 0 .. 31;
      PDERS2     at 1156 range 0 .. 31;
      PDERC2     at 1160 range 0 .. 31;
      PDERT2     at 1164 range 0 .. 31;
      IER2       at 1168 range 0 .. 31;
      IERS2      at 1172 range 0 .. 31;
      IERC2      at 1176 range 0 .. 31;
      IERT2      at 1180 range 0 .. 31;
      IMR02      at 1184 range 0 .. 31;
      IMR0S2     at 1188 range 0 .. 31;
      IMR0C2     at 1192 range 0 .. 31;
      IMR0T2     at 1196 range 0 .. 31;
      IMR12      at 1200 range 0 .. 31;
      IMR1S2     at 1204 range 0 .. 31;
      IMR1C2     at 1208 range 0 .. 31;
      IMR1T2     at 1212 range 0 .. 31;
      GFER2      at 1216 range 0 .. 31;
      GFERS2     at 1220 range 0 .. 31;
      GFERC2     at 1224 range 0 .. 31;
      GFERT2     at 1228 range 0 .. 31;
      IFR2       at 1232 range 0 .. 31;
      IFRC2      at 1240 range 0 .. 31;
      ODMER2     at 1248 range 0 .. 31;
      ODMERS2    at 1252 range 0 .. 31;
      ODMERC2    at 1256 range 0 .. 31;
      ODMERT2    at 1260 range 0 .. 31;
      ODCR02     at 1280 range 0 .. 31;
      ODCR0S2    at 1284 range 0 .. 31;
      ODCR0C2    at 1288 range 0 .. 31;
      ODCR0T2    at 1292 range 0 .. 31;
      ODCR12     at 1296 range 0 .. 31;
      ODCR1S2    at 1300 range 0 .. 31;
      ODCR1C2    at 1304 range 0 .. 31;
      ODCR1T2    at 1308 range 0 .. 31;
      OSRR02     at 1328 range 0 .. 31;
      OSRR0S2    at 1332 range 0 .. 31;
      OSRR0C2    at 1336 range 0 .. 31;
      OSRR0T2    at 1340 range 0 .. 31;
      STER2      at 1376 range 0 .. 31;
      STERS2     at 1380 range 0 .. 31;
      STERC2     at 1384 range 0 .. 31;
      STERT2     at 1388 range 0 .. 31;
      EVER2      at 1408 range 0 .. 31;
      EVERS2     at 1412 range 0 .. 31;
      EVERC2     at 1416 range 0 .. 31;
      EVERT2     at 1420 range 0 .. 31;
      LOCK2      at 1440 range 0 .. 31;
      LOCKS2     at 1444 range 0 .. 31;
      LOCKC2     at 1448 range 0 .. 31;
      LOCKT2     at 1452 range 0 .. 31;
      UNLOCK2    at 1504 range 0 .. 31;
      ASR2       at 1508 range 0 .. 31;
      PARAMETER2 at 1528 range 0 .. 31;
      VERSION2   at 1532 range 0 .. 31;
   end record;

   --  General-Purpose Input/Output Controller
   GPIO_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIO_Base;

end Interfaces.ATSAM4L.GPIO;
