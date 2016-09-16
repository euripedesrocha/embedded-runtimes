--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43xxC.PMC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --------------------------------
   -- PD0_SLEEP0_HW_ENA_Register --
   --------------------------------

   ---------------------------------
   -- PD0_SLEEP0_HW_ENA.ENA_EVENT --
   ---------------------------------

   --  PD0_SLEEP0_HW_ENA_ENA_EVENT array element
   subtype PD0_SLEEP0_HW_ENA_ENA_EVENT_Element is Interfaces.Bit_Types.Bit;

   --  PD0_SLEEP0_HW_ENA_ENA_EVENT array
   type PD0_SLEEP0_HW_ENA_ENA_EVENT_Field_Array is array (0 .. 1)
      of PD0_SLEEP0_HW_ENA_ENA_EVENT_Element
      with Component_Size => 1, Size => 2;

      --  Type definition for PD0_SLEEP0_HW_ENA_ENA_EVENT
      type PD0_SLEEP0_HW_ENA_ENA_EVENT_Field
         (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENA_EVENT as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  ENA_EVENT as an array
            Arr : PD0_SLEEP0_HW_ENA_ENA_EVENT_Field_Array;
      end case;
   end record
   with Unchecked_Union, Size => 2;

   for PD0_SLEEP0_HW_ENA_ENA_EVENT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
      end record;

      subtype PD0_SLEEP0_HW_ENA_RESERVED_Field is Interfaces.Bit_Types.UInt30;

      --  Hardware sleep event enable register
      type PD0_SLEEP0_HW_ENA_Register is record
         --  Writing a 1 enables the Cortex-M4 core to put the part into
         --  any of the Power-down modes Deep-sleep, Power-down, or Deep
         --  power-down depending on the value in the PD0_SLEEP0_MODE
         --  register.
         ENA_EVENT : PD0_SLEEP0_HW_ENA_ENA_EVENT_Field :=
            (As_Array => False, Val => 16#1#);
         --  Reserved, user software should not write ones to reserved bits.
         --  The value read from a reserved bit is not defined.
         RESERVED  : PD0_SLEEP0_HW_ENA_RESERVED_Field := 16#0#;
      end record
      with Volatile_Full_Access, Size => 32,
      Bit_Order => System.Low_Order_First;

      for PD0_SLEEP0_HW_ENA_Register use record
         ENA_EVENT at 0 range 0 .. 1;
         RESERVED  at 0 range 2 .. 31;
      end record;

      -----------------
      -- Peripherals --
      -----------------

      --  Power Management Controller (PMC)
      type PMC_Peripheral is record
         --  Hardware sleep event enable register
         PD0_SLEEP0_HW_ENA : PD0_SLEEP0_HW_ENA_Register;
         --  Sleep power mode register
         PD0_SLEEP0_MODE   : Interfaces.Bit_Types.Word;
      end record
      with Volatile;

      for PMC_Peripheral use record
         PD0_SLEEP0_HW_ENA at 0 range 0 .. 31;
         PD0_SLEEP0_MODE   at 28 range 0 .. 31;
      end record;

      --  Power Management Controller (PMC)
      PMC_Periph : aliased PMC_Peripheral
      with Import, Address => PMC_Base;

end Interfaces.LPC43xxC.PMC;
