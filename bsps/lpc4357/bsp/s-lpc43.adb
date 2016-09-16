with Interfaces.LPC43xxC.CGU; use Interfaces.LPC43xxC.CGU;

package body System.LPC43 is

   function System_Clocks return CGU_System_Clocks is
      BASE_M4_Source : constant ENUM_27 :=
         CGU_Periph.BASE_M4_CLK.CLK_SEL;
      Result  : CGU_System_Clocks;
   begin
      --  BASE_M4
      case BASE_M4_Source is
         when ENUM_32_Khz_Oscillator =>
            Result.BASE_M4_CLK := 32_000;
         --  IRC (default)
         when Irc_Default =>
            null;
         --  ENET_RX_CLK
         when Enet_Rx_Clk =>
            null;
         --  ENET_TX_CLK
         when Enet_Tx_Clk =>
            null;
         --  GP_CLKIN
         when Gp_Clkin =>
            null;
         --  Crystal oscillator
         when Crystal_Oscillator =>
            null;
         --  PLL0 (for audio)
         when Pll0_For_Audio =>
            null;
         --  PLL1
         when Pll1 =>
            null;
         --  IDIVA
         when Idiva =>
            null;
         --  IDIVB
         when Idivb =>
            null;
         --  IDIVC
         when Idivc =>
            null;
         --  IDIVD
         when Idivd =>
            null;
         --  IDIVE
         when Idive =>
            null;
      end case;

      return Result;
   end System_Clocks;
end System.LPC43;
