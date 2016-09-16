with Interfaces.Bit_Types;

package System.LPC43 is
   pragma No_Elaboration_Code_All;
   pragma Preelaborate (System.LPC43);

   subtype Frequency is Interfaces.Bit_Types.Word;

   type CGU_System_Clocks is record
      BASE_M4_CLK    : Frequency;
      BASE_UART1_CLK : Frequency;
   end record;

   function System_Clocks return CGU_System_Clocks;

end System.LPC43;
