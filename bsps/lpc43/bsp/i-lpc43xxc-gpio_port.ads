--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43xxC.GPIO_PORT is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ----------------
   -- B_Register --
   ----------------

   subtype B_PBYTE_Field is Interfaces.Bit_Types.Bit;

   --  Byte pin registers port 0 to 5; pins PIOn_0 to PIOn_31
   type B_Register is record
      --  Read: state of the GPIOm[n] pin, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. Write: loads the pin's output bit.
      PBYTE        : B_PBYTE_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers port 0 to 5; pins PIOn_0 to PIOn_31
   type B_Registers is array (0 .. 255) of B_Register;

   --  Word pin registers port 0 to 5

   --  Word pin registers port 0 to 5
   type W_Registers is array (0 .. 255) of Interfaces.Bit_Types.Word;

   ------------------
   -- DIR_Register --
   ------------------

   --  DIR_DIRP array element
   subtype DIR_DIRP_Element is Interfaces.Bit_Types.Bit;

   --  DIR_DIRP array
   type DIR_DIRP_Field_Array is array (0 .. 31) of DIR_DIRP_Element
     with Component_Size => 1, Size => 32;

   --  Direction registers port m
   type DIR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DIRP as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  DIRP as an array
            Arr : DIR_DIRP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for DIR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Direction registers port m
   type DIR_Registers is array (0 .. 7) of DIR_Register;

   -------------------
   -- MASK_Register --
   -------------------

   --  MASK_MASKP array element
   subtype MASK_MASKP_Element is Interfaces.Bit_Types.Bit;

   --  MASK_MASKP array
   type MASK_MASKP_Field_Array is array (0 .. 31) of MASK_MASKP_Element
     with Component_Size => 1, Size => 32;

   --  Mask register port m
   type MASK_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MASKP as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  MASKP as an array
            Arr : MASK_MASKP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MASK_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Mask register port m
   type MASK_Registers is array (0 .. 7) of MASK_Register;

   ------------------
   -- PIN_Register --
   ------------------

   --  PIN_PORT array element
   subtype PIN_PORT_Element is Interfaces.Bit_Types.Bit;

   --  PIN_PORT array
   type PIN_PORT_Field_Array is array (0 .. 31) of PIN_PORT_Element
     with Component_Size => 1, Size => 32;

   --  Port pin register port m
   type PIN_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PORT as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  PORT as an array
            Arr : PIN_PORT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIN_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Port pin register port m
   type PIN_Registers is array (0 .. 7) of PIN_Register;

   -------------------
   -- MPIN_Register --
   -------------------

   --  MPIN_MPORTP array element
   subtype MPIN_MPORTP_Element is Interfaces.Bit_Types.Bit;

   --  MPIN_MPORTP array
   type MPIN_MPORTP_Field_Array is array (0 .. 31) of MPIN_MPORTP_Element
     with Component_Size => 1, Size => 32;

   --  Masked port register port m
   type MPIN_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MPORTP as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  MPORTP as an array
            Arr : MPIN_MPORTP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MPIN_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Masked port register port m
   type MPIN_Registers is array (0 .. 7) of MPIN_Register;

   ------------------
   -- SET_Register --
   ------------------

   --  SET_SETP array element
   subtype SET_SETP_Element is Interfaces.Bit_Types.Bit;

   --  SET_SETP array
   type SET_SETP_Field_Array is array (0 .. 31) of SET_SETP_Element
     with Component_Size => 1, Size => 32;

   --  Write: Set register for port m Read: output bits for port m
   type SET_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SETP as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  SETP as an array
            Arr : SET_SETP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for SET_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Write: Set register for port m Read: output bits for port m
   type SET_Registers is array (0 .. 7) of SET_Register;

   ------------------
   -- CLR_Register --
   ------------------

   --  CLR_CLRP array element
   subtype CLR_CLRP_Element is Interfaces.Bit_Types.Bit;

   --  CLR_CLRP array
   type CLR_CLRP_Field_Array is array (0 .. 31) of CLR_CLRP_Element
     with Component_Size => 1, Size => 32;

   --  Clear port m
   type CLR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CLRP as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  CLRP as an array
            Arr : CLR_CLRP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CLR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Clear port m
   type CLR_Registers is array (0 .. 7) of CLR_Register;

   ------------------
   -- NOT_Register --
   ------------------

   --  NOT_NOTP array element
   subtype NOT_NOTP_Element is Interfaces.Bit_Types.Bit;

   --  NOT_NOTP array
   type NOT_NOTP_Field_Array is array (0 .. 31) of NOT_NOTP_Element
     with Component_Size => 1, Size => 32;

   --  Toggle port m
   type NOT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  NOTP as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  NOTP as an array
            Arr : NOT_NOTP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for NOT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Toggle port m
   type NOT_Registers is array (0 .. 7) of NOT_Register;

   -----------------
   -- Peripherals --
   -----------------

   --  GPIO port
   type GPIO_PORT_Peripheral is record
      --  Byte pin registers port 0 to 5; pins PIOn_0 to PIOn_31
      B     : B_Registers;
      --  Word pin registers port 0 to 5
      W     : W_Registers;
      --  Direction registers port m
      DIR   : DIR_Registers;
      --  Mask register port m
      MASK  : MASK_Registers;
      --  Port pin register port m
      PIN   : PIN_Registers;
      --  Masked port register port m
      MPIN  : MPIN_Registers;
      --  Write: Set register for port m Read: output bits for port m
      SET   : SET_Registers;
      --  Clear port m
      CLR   : CLR_Registers;
      --  Toggle port m
      NOT_k : NOT_Registers;
   end record
     with Volatile;

   for GPIO_PORT_Peripheral use record
      B     at 0 range 0 .. 2047;
      W     at 4096 range 0 .. 8191;
      DIR   at 8192 range 0 .. 255;
      MASK  at 8320 range 0 .. 255;
      PIN   at 8448 range 0 .. 255;
      MPIN  at 8576 range 0 .. 255;
      SET   at 8704 range 0 .. 255;
      CLR   at 8832 range 0 .. 255;
      NOT_k at 8960 range 0 .. 255;
   end record;

   --  GPIO port
   GPIO_PORT_Periph : aliased GPIO_PORT_Peripheral
     with Import, Address => GPIO_PORT_Base;

end Interfaces.LPC43xxC.GPIO_PORT;
