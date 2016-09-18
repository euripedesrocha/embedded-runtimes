--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43.RITIMER is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -------------------
   -- CTRL_Register --
   -------------------

   --  Interrupt flag
   type ENUM is
     (
      --  The counter value does not equal the masked compare value.
      The_Counter_Value_Do,
      --  This bit is set to 1 by hardware whenever the counter value equals
      --  the masked compare value specified by the contents of RICOMPVAL and
      --  RIMASK registers. Writing a 1 to this bit will clear it to 0. Writing
      --  a 0 has no effect.
      This_Bit_Is_Set_To_1)
     with Size => 1;
   for ENUM use
     (The_Counter_Value_Do => 0,
      This_Bit_Is_Set_To_1 => 1);

   --  Timer enable clear
   type ENUM_1 is
     (
      --  The timer will not be cleared to 0.
      The_Timer_Will_Not_B,
      --  The timer will be cleared to 0 whenever the counter value equals the
      --  masked compare value specified by the contents of RICOMPVAL and
      --  RIMASK registers. This will occur on the same clock that sets the
      --  interrupt flag.
      The_Timer_Will_Be_Cl)
     with Size => 1;
   for ENUM_1 use
     (The_Timer_Will_Not_B => 0,
      The_Timer_Will_Be_Cl => 1);

   --  Timer enable for debug
   type ENUM_2 is
     (
      --  Debug has no effect on the timer operation.
      Debug_Has_No_Effect,
      --  The timer is halted when the processor is halted for debugging.
      The_Timer_Is_Halted)
     with Size => 1;
   for ENUM_2 use
     (Debug_Has_No_Effect => 0,
      The_Timer_Is_Halted => 1);

   --  Timer enable.
   type ENUM_3 is
     (
      --  Timer disabled.
      Timer_Disabled,
      --  Timer enabled. This can be overruled by a debug halt if enabled in
      --  bit 2.
      Timer_Enabled_This)
     with Size => 1;
   for ENUM_3 use
     (Timer_Disabled => 0,
      Timer_Enabled_This => 1);

   subtype CTRL_RESERVED_Field is Interfaces.Bit_Types.UInt28;

   --  Control register.
   type CTRL_Register is record
      --  Interrupt flag
      RITINT   : ENUM := Interfaces.LPC43.RITIMER.The_Counter_Value_Do;
      --  Timer enable clear
      RITENCLR : ENUM_1 := Interfaces.LPC43.RITIMER.The_Timer_Will_Not_B;
      --  Timer enable for debug
      RITENBR  : ENUM_2 := Interfaces.LPC43.RITIMER.The_Timer_Is_Halted;
      --  Timer enable.
      RITEN    : ENUM_3 := Interfaces.LPC43.RITIMER.Timer_Enabled_This;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : CTRL_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      RITINT   at 0 range 0 .. 0;
      RITENCLR at 0 range 1 .. 1;
      RITENBR  at 0 range 2 .. 2;
      RITEN    at 0 range 3 .. 3;
      RESERVED at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Repetitive Interrupt Timer (RIT)
   type RITIMER_Peripheral is record
      --  Compare register
      COMPVAL : Interfaces.Bit_Types.Word;
      --  Mask register. This register holds the 32-bit mask value. A 1 written
      --  to any bit will force a compare on the corresponding bit of the
      --  counter and compare register.
      MASK    : Interfaces.Bit_Types.Word;
      --  Control register.
      CTRL    : CTRL_Register;
      --  32-bit counter
      COUNTER : Interfaces.Bit_Types.Word;
   end record
     with Volatile;

   for RITIMER_Peripheral use record
      COMPVAL at 0 range 0 .. 31;
      MASK    at 4 range 0 .. 31;
      CTRL    at 8 range 0 .. 31;
      COUNTER at 12 range 0 .. 31;
   end record;

   --  Repetitive Interrupt Timer (RIT)
   RITIMER_Periph : aliased RITIMER_Peripheral
     with Import, Address => RITIMER_Base;

end Interfaces.LPC43.RITIMER;
