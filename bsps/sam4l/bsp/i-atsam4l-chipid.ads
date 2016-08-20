--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.CHIPID is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Chip ID Registers
   type CHIPID_Peripheral is record
      --  Chip ID Register
      CIDR : Interfaces.Bit_Types.Word;
      --  Chip ID Extension Register
      EXID : Interfaces.Bit_Types.Word;
   end record
     with Volatile;

   for CHIPID_Peripheral use record
      CIDR at 832 range 0 .. 31;
      EXID at 836 range 0 .. 31;
   end record;

   --  Chip ID Registers
   CHIPID_Periph : aliased CHIPID_Peripheral
     with Import, Address => CHIPID_Base;

end Interfaces.ATSAM4L.CHIPID;
