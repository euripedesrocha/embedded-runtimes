
with Interfaces.Bit_Types;

package System.BB.MCU_Parameters is
   pragma No_Elaboration_Code_All;
   pragma Preelaborate;
   use type Interfaces.Bit_Types.Bit;

   Number_Of_Interrupts : constant := 54;

   IRC_Clock_Frequency : constant := 12_000_000;

end System.BB.MCU_Parameters;
