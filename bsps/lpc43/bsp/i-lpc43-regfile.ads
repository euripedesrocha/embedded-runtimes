--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43.REGFILE is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  General purpose storage register

   --  General purpose storage register
   type REGFILE_Registers is array (0 .. 63) of Interfaces.Bit_Types.Word;

   -----------------
   -- Peripherals --
   -----------------

   --  RTC REGFILE
   type REGFILE_Peripheral is record
      --  General purpose storage register
      REGFILE : REGFILE_Registers;
   end record
     with Volatile;

   for REGFILE_Peripheral use record
      REGFILE at 0 range 0 .. 2047;
   end record;

   --  RTC REGFILE
   REGFILE_Periph : aliased REGFILE_Peripheral
     with Import, Address => REGFILE_Base;

end Interfaces.LPC43.REGFILE;
