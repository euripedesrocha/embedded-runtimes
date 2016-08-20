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
--                                                                          --
--                                                                          --
--                                                                          --
--                                                                          --
-- You should have received a copy of the GNU General Public License and    --
-- a copy of the GCC Runtime Library Exception along with this program;     --
-- see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see    --
-- <http://www.gnu.org/licenses/>.                                          --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

--  Minimal version of Text_IO body for use on ATSAM4L, using USART

with Interfaces; use Interfaces;

with Interfaces.Bit_Types;   use Interfaces.Bit_Types;
with Interfaces.ATSAM4L.PM;   use Interfaces.ATSAM4L.PM;
with Interfaces.ATSAM4L.GPIO;  use Interfaces.ATSAM4L.GPIO;
with Interfaces.ATSAM4L.USART; use Interfaces.ATSAM4L.USART;
with System.ATSAM4;           use System.ATSAM4;
with System.BB.Parameters;

package body System.Text_IO is

   --  Baudrate : constant := 115_200;
   --  Bitrate to use

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
      use System.BB.Parameters;

     -- APB_Clock    : constant Positive :=
     --    Positive (ATSAM4.System_Clocks.PCLK2);
     -- Int_Divider  : constant Positive := (25 * APB_Clock) / (4 * Baudrate);
     -- Frac_Divider : constant Natural := Int_Divider rem 100;

   begin
      Initialized := True;

      -- Select pins
      -- Enable clock
      -- Select mode
      -- set baudrate
      PM_Periph.PBAMASK.USART1 := 1;

   end Initialize;

   -----------------
   -- Is_Tx_Ready --
   -----------------

   function Is_Tx_Ready return Boolean is
     (USART1_Periph.CR_USART_MODE.TXEN = TXENSelect_1);

   -----------------
   -- Is_Rx_Ready --
   -----------------

   function Is_Rx_Ready return Boolean is
     (USART1_Periph.CSR_USART_MODE.RXRDY = RXRDYSelect_1);

   ---------
   -- Get --
   ---------

   function Get return Character is
      (Character'Val (USART1_Periph.RHR.RXCHR));

   ---------
   -- Put --
   ---------

   procedure Put (C : Character) is
   begin
      USART1_Periph.THR.TXCHR := Character'Pos (C);
   end Put;

   ----------------------------
   -- Use_Cr_Lf_For_New_Line --
   ----------------------------

   function Use_Cr_Lf_For_New_Line return Boolean is (True);
end System.Text_IO;
