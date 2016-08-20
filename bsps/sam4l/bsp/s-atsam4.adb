------------------------------------------------------------------------------
--                                                                           --
--                          GNAT RUN-TIME COMPONENTS                         --
--                                                                           --
--           Copyright (C) 2012-2016, Free Software Foundation, Inc.         --
--                                                                          --
--  GNAT is free software;  you can  redistribute it  and/or modify it under --
--  terms of the  GNU General Public License as published  by the Free Soft- --
--  ware  Foundation;  either version 3,  or (at your option) any later ver- --
--  sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
--  OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
--  or FITNESS FOR A PARTICULAR PURPOSE.                                     --
--                                                                           --
--                                                                           --
--                                                                           --
--                                                                           --
--                                                                           --
--  You should have received a copy of the GNU General Public License and    --
--  a copy of the GCC Runtime Library Exception along with this program;     --
--  see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see    --
--  <http://www.gnu.org/licenses/>.                                          --
--                                                                           --
--  GNAT was originally developed  by the GNAT team at  New York University. --
--  Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                           --
------------------------------------------------------------------------------
--
--    This file provides register definitions for the ATSAM4 (ARM Cortex M4)
--    microcontrollers from Atmel.
--
--    The file is based on ATSAM4F version by Adacore

with System.BB.Parameters;

with Ada.Unchecked_Conversion;
with Interfaces;            use Interfaces;
with Interfaces.Bit_Types;  use Interfaces.Bit_Types;
with Interfaces.ATSAM4L.PM; use Interfaces.ATSAM4L.PM;

package body System.ATSAM4 is

   package Param renames System.BB.Parameters;

   CPUSEL_Presc_Table : constant array (CPUSEL_Prescaler_Enum) of Word :=
      (2, 4, 8, 16, 64, 128, 256, 512);

   --    PPRE_Presc_Table : constant array (APB_Prescaler_Enum) of Word :=
   --     (2, 4, 8, 16);

   --  --  --  --  --  --  --  --  --  -
   --   System_Clocks --
   --  --  --  --  --  --  --  --  --  -
   function System_Clocks return PM_System_Clocks
   is
      Source       : constant MAINCLK_Source :=
         MAINCLK_Source'Val (PM_Periph.MCCTRL.MCSEL);
      Result       : PM_System_Clocks;

   begin
      declare
         function To_CPUSELP is new Ada.Unchecked_Conversion
           (PBASEL_PBSEL_Field, CPUSEL_Prescaler_Enum);
         function To_Boolean is new Ada.Unchecked_Conversion
           (PBASEL_PBDIV_Field, Boolean);
         Prescaler_enabled : constant Boolean :=
           To_Boolean (PM_Periph.CPUSEL.CPUDIV);
         Div_val : constant CPUSEL_Prescaler_Enum :=
            To_CPUSELP (PM_Periph.CPUSEL.CPUSEL);
         CPUSEL_Div  : constant Word := (if Prescaler_enabled
         then CPUSEL_Presc_Table (Div_val)
         else 1);
      begin
         case Source is
               --      RCSYS as source
            when MAINCLK_SRC_RCSYS =>
               Result.MAINCLK := RCSYS_Clock / CPUSEL_Div;
               --      OSC0 as source
            when MAINCLK_SRC_OSC0 =>
               Result.MAINCLK := Param.OSC0_Clock;
               --      PLL as source
            when  MAINCLK_SRC_PLL =>
               null;
            when  MAINCLK_SRC_DLL =>
               null;
            when  MAINCLK_SRC_RC80M =>
               null;
            when  MAINCLK_SRC_RCFAST =>
               null;
            when  MAINCLK_SRC_RC1M =>
               null;

         end case;
      end;

      return Result;
   end System_Clocks;
end System.ATSAM4;
