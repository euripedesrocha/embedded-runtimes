------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                       S Y S T E M . T E X T _ I O                        --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--          Copyright (C) 1992-2016, Free Software Foundation, Inc.         --
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

--  Minimal version of Text_IO body for use on STM32F4xxx, using USART1

with Interfaces; use Interfaces;

with Interfaces.Bit_Types;   use Interfaces.Bit_Types;
with Interfaces.LPC43.SCU;   use Interfaces.LPC43.SCU;
with Interfaces.LPC43.USART; use Interfaces.LPC43.USART;
with System.LPC43; --          use System.LPC43;
with System.BB.Parameters;

package body System.Text_IO is

   --  Baudrate : constant := 115_200;
   --  Bitrate to use

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
      use System.BB.Parameters;

      --  Base_Clock   : constant Positive :=
      --   Positive (LPC43.System_Clocks.BASE_UART1_CLK);

   begin
      Initialized := True;

      SCU_Periph.SFSP2 (1).MODE := Function_1;
      SCU_Periph.SFSP6 (4).MODE  := Function_2;

      --  USART0_Periph.BRR :=
      --  (DIV_Fraction => UInt4  (((Frac_Divider * 16 + 50) / 100) mod 16),
      --  DIV_Mantissa => UInt12 (Int_Divider / 100),
      --  others => <>);
      --  USART1_Periph.CR1 :=
      --  (UE => 1,
      --  RE => 1,
      --  TE => 1,
      --  others => <>);
      --  USART1_Periph.CR2 := (others => <>);
      --  USART1_Periph.CR3 := (others => <>);
   end Initialize;

   -----------------
   -- Is_Tx_Ready --
   -----------------

   function Is_Tx_Ready return Boolean is
      (True);
      --  (USART1_Periph.SR.TC = 1);

   -----------------
   -- Is_Rx_Ready --
   -----------------

   function Is_Rx_Ready return Boolean is
      (True);
   --  (USART1_Periph.SR.RXNE = 1);

   ---------
   -- Get --
   ---------

   function Get return Character is (Character'Val (USART0_Periph.RBR.RBR));

   ---------
   -- Put --
   ---------

   procedure Put (C : Character) is
   begin
      USART0_Periph.THR.THR := Character'Pos (C);
   end Put;

   ----------------------------
   -- Use_Cr_Lf_For_New_Line --
   ----------------------------

   function Use_Cr_Lf_For_New_Line return Boolean is (True);
end System.Text_IO;
