------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--          Copyright (C) 2012-2016, Free Software Foundation, Inc.         --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.                                     --
--                                                                          --
-- You should have received a copy of the GNU General Public License along  --
-- with this library; see the file COPYING3. If not, see:                   --
-- <http://www.gnu.org/licenses/>.                                          --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

--  pragma Ada_2012; -- To work around pre-commit check?
--  pragma Suppress (All_Checks);

--  This initialization procedure mainly initializes the PLLs and
--  all derived clocks.

--  with Ada.Unchecked_Conversion;

with Interfaces.Bit_Types;       use Interfaces, Interfaces.Bit_Types;
with Interfaces.LPC43.CGU;       use Interfaces.LPC43.CGU;
--  with System.BB.Parameters;       use System.BB.Parameters;
with System.BB.MCU_Parameters;   use System.BB.MCU_Parameters;
with System.BB.Board_Parameters; use System.BB.Board_Parameters;
--  with System.LPC43;               use System.LPC43;

procedure Setup_Pll is

   procedure Initialize_Clocks;
   procedure Reset_Clocks;

   ------------------------------
   -- Clock Tree Configuration --
   ------------------------------

   --  ClockSource : constant ENUM_27 := Crystal_Oscillator;
   --  HSE_Enabled : constant Boolean := True;  -- use high-speed ext. clock
   --  HSE_Bypass  : constant Boolean := False; -- don't bypass ext. resonator
   --  LSI_Enabled : constant Boolean := True;  -- use low-speed internal clock

   --  Activate_PLL       : constant Boolean := True;
   --  Activate_Overdrive : constant Boolean := True;
   --  Activate_PLLI2S    : constant Boolean := False;

   --  pragma Compile_Time_Error (not (if Activate_PLL then HSE_Enabled),
   --                             "PLL only supported with external clock");

   --  pragma Compile_Time_Error (Activate_PLLI2S, "not yet implemented");

   -----------------------
   -- Initialize_Clocks --
   -----------------------

   procedure Initialize_Clocks
   is
      -------------------------------
      -- Compute Clock Frequencies --
      -------------------------------
      TwoStageSetup : constant Boolean :=
         (if Main_Clock_Frequency > 110_000_000 then True
         else False);
      First_Stage_MSEL : constant := 110_000_000 / IRC_Clock_Frequency;
      Second_Stage_MSEL : constant :=
                             Main_Clock_Frequency / XTAL_Clock_Frequency;

   begin

      --  PLL1 Power Down
      CGU_Periph.PLL1_CTRL.PD := Pll1_Powered_Down;

      if TwoStageSetup then
         CGU_Periph.PLL1_CTRL.NSEL := ENUM_1_1;
         CGU_Periph.PLL1_CTRL.PSEL := ENUM_1_1;
         CGU_Periph.PLL1_CTRL.MSEL := First_Stage_MSEL;
         loop
            exit when CGU_Periph.PLL1_STAT.LOCK = 1;
         end loop;
      end if;

      CGU_Periph.BASE_M4_CLK.CLK_SEL := Crystal_Oscillator;
      CGU_Periph.PLL1_CTRL.MSEL := Second_Stage_MSEL;
      loop
         exit when CGU_Periph.PLL1_STAT.LOCK = 1;
      end loop;

   end Initialize_Clocks;

   ------------------
   -- Reset_Clocks --
   ------------------

   procedure Reset_Clocks is
   begin
      CGU_Periph.BASE_M4_CLK.AUTOBLOCK := Enabled;
      CGU_Periph.BASE_M4_CLK.PD := Output_Stage_Enabled;
      CGU_Periph.BASE_M4_CLK.CLK_SEL := Irc_Default;
   end Reset_Clocks;

begin
   Reset_Clocks;
   Initialize_Clocks;
end Setup_Pll;
