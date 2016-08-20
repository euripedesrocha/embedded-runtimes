--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.HMATRIXB is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ----------------------------
   -- HMATRIXB_MCFG_Register --
   ----------------------------

   --  Undefined Length Burst Type
   type ULBTSelect is
     (
      --  Infinite Length
      Infinite,
      --  Single Access
      Single,
      --  Four Beat Burst
      Four_Beat,
      --  Eight Beat Burst
      Eight_Beat,
      --  Sixteen Beat Burst
      Sixteen_Beat)
     with Size => 3;
   for ULBTSelect use
     (Infinite => 0,
      Single => 1,
      Four_Beat => 2,
      Eight_Beat => 3,
      Sixteen_Beat => 4);

   --  Master Configuration Register
   type HMATRIXB_MCFG_Register is record
      --  Undefined Length Burst Type
      ULBT          : ULBTSelect := Interfaces.ATSAM4L.HMATRIXB.Four_Beat;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HMATRIXB_MCFG_Register use record
      ULBT          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Master Configuration Register
   type HMATRIXB_MCFG_Registers is array (0 .. 15) of HMATRIXB_MCFG_Register;

   ----------------------------
   -- HMATRIXB_SCFG_Register --
   ----------------------------

   subtype SCFG_SLOT_CYCLE_Field is Interfaces.Bit_Types.Byte;

   --  Default Master Type
   type DEFMSTR_TYPESelect is
     (
      --  No Default Master. At the end of current slave access, if no other
      --  master request is pending, the slave is deconnected from all masters.
      --  This resusts in having a one cycle latency for the first transfer of
      --  a burst.
      No_Default,
      --  Last Default Master At the end of current slave access, if no other
      --  master request is pending, the slave stay connected with the last
      --  master havingaccessed it.This resusts in not having the one cycle
      --  latency when the last master re-trying access on the slave.
      Last_Default,
      --  Fixed Default Master At the end of current slave access, if no other
      --  master request is pending, the slave connects with fixed master which
      --  numberis in FIXED_DEFMSTR register.This resusts in not having the one
      --  cycle latency when the fixed master re-trying access on the slave.
      Fixed_Default)
     with Size => 2;
   for DEFMSTR_TYPESelect use
     (No_Default => 0,
      Last_Default => 1,
      Fixed_Default => 2);

   subtype SCFG_FIXED_DEFMSTR_Field is Interfaces.Bit_Types.UInt4;

   --  Arbitration Type
   type ARBTSelect is
     (
      --  Round-Robin Arbitration
      Round_Robin,
      --  Fixed Priority Arbitration
      Fixed_Priority)
     with Size => 1;
   for ARBTSelect use
     (Round_Robin => 0,
      Fixed_Priority => 1);

   --  Slave Configuration Register
   type HMATRIXB_SCFG_Register is record
      --  Maximum Number of Allowed Cycles for a Burst
      SLOT_CYCLE     : SCFG_SLOT_CYCLE_Field := 16#10#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Default Master Type
      DEFMSTR_TYPE   : DEFMSTR_TYPESelect :=
                        Interfaces.ATSAM4L.HMATRIXB.No_Default;
      --  Fixed Index of Default Master
      FIXED_DEFMSTR  : SCFG_FIXED_DEFMSTR_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Arbitration Type
      ARBT           : ARBTSelect := Interfaces.ATSAM4L.HMATRIXB.Round_Robin;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HMATRIXB_SCFG_Register use record
      SLOT_CYCLE     at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DEFMSTR_TYPE   at 0 range 16 .. 17;
      FIXED_DEFMSTR  at 0 range 18 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      ARBT           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Slave Configuration Register
   type HMATRIXB_SCFG_Registers is array (0 .. 15) of HMATRIXB_SCFG_Register;

   -------------------
   -- PRAS_Register --
   -------------------

   subtype PRAS0_M0PR_Field is Interfaces.Bit_Types.UInt4;
   subtype PRAS0_M1PR_Field is Interfaces.Bit_Types.UInt4;
   subtype PRAS0_M2PR_Field is Interfaces.Bit_Types.UInt4;
   subtype PRAS0_M3PR_Field is Interfaces.Bit_Types.UInt4;
   subtype PRAS0_M4PR_Field is Interfaces.Bit_Types.UInt4;
   subtype PRAS0_M5PR_Field is Interfaces.Bit_Types.UInt4;
   subtype PRAS0_M6PR_Field is Interfaces.Bit_Types.UInt4;
   subtype PRAS0_M7PR_Field is Interfaces.Bit_Types.UInt4;

   --  Priority Register A for Slave
   type PRAS_Register is record
      --  Master 0 Priority
      M0PR : PRAS0_M0PR_Field := 16#0#;
      --  Master 1 Priority
      M1PR : PRAS0_M1PR_Field := 16#0#;
      --  Master 2 Priority
      M2PR : PRAS0_M2PR_Field := 16#0#;
      --  Master 3 Priority
      M3PR : PRAS0_M3PR_Field := 16#0#;
      --  Master 4 Priority
      M4PR : PRAS0_M4PR_Field := 16#0#;
      --  Master 5 Priority
      M5PR : PRAS0_M5PR_Field := 16#0#;
      --  Master 6 Priority
      M6PR : PRAS0_M6PR_Field := 16#0#;
      --  Master 7 Priority
      M7PR : PRAS0_M7PR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRAS_Register use record
      M0PR at 0 range 0 .. 3;
      M1PR at 0 range 4 .. 7;
      M2PR at 0 range 8 .. 11;
      M3PR at 0 range 12 .. 15;
      M4PR at 0 range 16 .. 19;
      M5PR at 0 range 20 .. 23;
      M6PR at 0 range 24 .. 27;
      M7PR at 0 range 28 .. 31;
   end record;

   -------------------
   -- PRBS_Register --
   -------------------

   subtype PRBS0_M8PR_Field is Interfaces.Bit_Types.UInt4;
   subtype PRBS0_M9PR_Field is Interfaces.Bit_Types.UInt4;
   subtype PRBS0_M10PR_Field is Interfaces.Bit_Types.UInt4;
   subtype PRBS0_M11PR_Field is Interfaces.Bit_Types.UInt4;
   subtype PRBS0_M12PR_Field is Interfaces.Bit_Types.UInt4;
   subtype PRBS0_M13PR_Field is Interfaces.Bit_Types.UInt4;
   subtype PRBS0_M14PR_Field is Interfaces.Bit_Types.UInt4;
   subtype PRBS0_M15PR_Field is Interfaces.Bit_Types.UInt4;

   --  Priority Register B for Slave
   type PRBS_Register is record
      --  Master 8 Priority
      M8PR  : PRBS0_M8PR_Field := 16#0#;
      --  Master 9 Priority
      M9PR  : PRBS0_M9PR_Field := 16#0#;
      --  Master 10 Priority
      M10PR : PRBS0_M10PR_Field := 16#0#;
      --  Master 11 Priority
      M11PR : PRBS0_M11PR_Field := 16#0#;
      --  Master 12 Priority
      M12PR : PRBS0_M12PR_Field := 16#0#;
      --  Master 13 Priority
      M13PR : PRBS0_M13PR_Field := 16#0#;
      --  Master 14 Priority
      M14PR : PRBS0_M14PR_Field := 16#0#;
      --  Master 15 Priority
      M15PR : PRBS0_M15PR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRBS_Register use record
      M8PR  at 0 range 0 .. 3;
      M9PR  at 0 range 4 .. 7;
      M10PR at 0 range 8 .. 11;
      M11PR at 0 range 12 .. 15;
      M12PR at 0 range 16 .. 19;
      M13PR at 0 range 20 .. 23;
      M14PR at 0 range 24 .. 27;
      M15PR at 0 range 28 .. 31;
   end record;

   ----------------------------
   -- HMATRIXB_MRCR_Register --
   ----------------------------

   --  Remap Command bit for Master 0
   type RCB0Select is
     (
      --  Disable remapped address decoding for master
      RCB0Select_0,
      --  Enable remapped address decoding for master
      RCB0Select_1)
     with Size => 1;
   for RCB0Select use
     (RCB0Select_0 => 0,
      RCB0Select_1 => 1);

   --  Remap Command bit for Master 1
   type RCB1Select is
     (
      --  Disable remapped address decoding for master
      RCB1Select_0,
      --  Enable remapped address decoding for master
      RCB1Select_1)
     with Size => 1;
   for RCB1Select use
     (RCB1Select_0 => 0,
      RCB1Select_1 => 1);

   --  Remap Command bit for Master 2
   type RCB2Select is
     (
      --  Disable remapped address decoding for master
      RCB2Select_0,
      --  Enable remapped address decoding for master
      RCB2Select_1)
     with Size => 1;
   for RCB2Select use
     (RCB2Select_0 => 0,
      RCB2Select_1 => 1);

   --  Remap Command bit for Master 3
   type RCB3Select is
     (
      --  Disable remapped address decoding for master
      RCB3Select_0,
      --  Enable remapped address decoding for master
      RCB3Select_1)
     with Size => 1;
   for RCB3Select use
     (RCB3Select_0 => 0,
      RCB3Select_1 => 1);

   --  Remap Command bit for Master 4
   type RCB4Select is
     (
      --  Disable remapped address decoding for master
      RCB4Select_0,
      --  Enable remapped address decoding for master
      RCB4Select_1)
     with Size => 1;
   for RCB4Select use
     (RCB4Select_0 => 0,
      RCB4Select_1 => 1);

   --  Remap Command bit for Master 5
   type RCB5Select is
     (
      --  Disable remapped address decoding for master
      RCB5Select_0,
      --  Enable remapped address decoding for master
      RCB5Select_1)
     with Size => 1;
   for RCB5Select use
     (RCB5Select_0 => 0,
      RCB5Select_1 => 1);

   --  Remap Command bit for Master 6
   type RCB6Select is
     (
      --  Disable remapped address decoding for master
      RCB6Select_0,
      --  Enable remapped address decoding for master
      RCB6Select_1)
     with Size => 1;
   for RCB6Select use
     (RCB6Select_0 => 0,
      RCB6Select_1 => 1);

   --  Remap Command bit for Master 7
   type RCB7Select is
     (
      --  Disable remapped address decoding for master
      RCB7Select_0,
      --  Enable remapped address decoding for master
      RCB7Select_1)
     with Size => 1;
   for RCB7Select use
     (RCB7Select_0 => 0,
      RCB7Select_1 => 1);

   --  Remap Command bit for Master 8
   type RCB8Select is
     (
      --  Disable remapped address decoding for master
      RCB8Select_0,
      --  Enable remapped address decoding for master
      RCB8Select_1)
     with Size => 1;
   for RCB8Select use
     (RCB8Select_0 => 0,
      RCB8Select_1 => 1);

   --  Remap Command bit for Master 9
   type RCB9Select is
     (
      --  Disable remapped address decoding for master
      RCB9Select_0,
      --  Enable remapped address decoding for master
      RCB9Select_1)
     with Size => 1;
   for RCB9Select use
     (RCB9Select_0 => 0,
      RCB9Select_1 => 1);

   --  Remap Command bit for Master 10
   type RCB10Select is
     (
      --  Disable remapped address decoding for master
      RCB10Select_0,
      --  Enable remapped address decoding for master
      RCB10Select_1)
     with Size => 1;
   for RCB10Select use
     (RCB10Select_0 => 0,
      RCB10Select_1 => 1);

   --  Remap Command bit for Master 11
   type RCB11Select is
     (
      --  Disable remapped address decoding for master
      RCB11Select_0,
      --  Enable remapped address decoding for master
      RCB11Select_1)
     with Size => 1;
   for RCB11Select use
     (RCB11Select_0 => 0,
      RCB11Select_1 => 1);

   --  Remap Command bit for Master 12
   type RCB12Select is
     (
      --  Disable remapped address decoding for master
      RCB12Select_0,
      --  Enable remapped address decoding for master
      RCB12Select_1)
     with Size => 1;
   for RCB12Select use
     (RCB12Select_0 => 0,
      RCB12Select_1 => 1);

   --  Remap Command bit for Master 13
   type RCB13Select is
     (
      --  Disable remapped address decoding for master
      RCB13Select_0,
      --  Enable remapped address decoding for master
      RCB13Select_1)
     with Size => 1;
   for RCB13Select use
     (RCB13Select_0 => 0,
      RCB13Select_1 => 1);

   --  Remap Command bit for Master 14
   type RCB14Select is
     (
      --  Disable remapped address decoding for master
      RCB14Select_0,
      --  Enable remapped address decoding for master
      RCB14Select_1)
     with Size => 1;
   for RCB14Select use
     (RCB14Select_0 => 0,
      RCB14Select_1 => 1);

   --  Remap Command bit for Master 15
   type RCB15Select is
     (
      --  Disable remapped address decoding for master
      RCB15Select_0,
      --  Enable remapped address decoding for master
      RCB15Select_1)
     with Size => 1;
   for RCB15Select use
     (RCB15Select_0 => 0,
      RCB15Select_1 => 1);

   --  Master Remap Control Register
   type HMATRIXB_MRCR_Register is record
      --  Remap Command bit for Master 0
      RCB0           : RCB0Select := Interfaces.ATSAM4L.HMATRIXB.RCB0Select_0;
      --  Remap Command bit for Master 1
      RCB1           : RCB1Select := Interfaces.ATSAM4L.HMATRIXB.RCB1Select_0;
      --  Remap Command bit for Master 2
      RCB2           : RCB2Select := Interfaces.ATSAM4L.HMATRIXB.RCB2Select_0;
      --  Remap Command bit for Master 3
      RCB3           : RCB3Select := Interfaces.ATSAM4L.HMATRIXB.RCB3Select_0;
      --  Remap Command bit for Master 4
      RCB4           : RCB4Select := Interfaces.ATSAM4L.HMATRIXB.RCB4Select_0;
      --  Remap Command bit for Master 5
      RCB5           : RCB5Select := Interfaces.ATSAM4L.HMATRIXB.RCB5Select_0;
      --  Remap Command bit for Master 6
      RCB6           : RCB6Select := Interfaces.ATSAM4L.HMATRIXB.RCB6Select_0;
      --  Remap Command bit for Master 7
      RCB7           : RCB7Select := Interfaces.ATSAM4L.HMATRIXB.RCB7Select_0;
      --  Remap Command bit for Master 8
      RCB8           : RCB8Select := Interfaces.ATSAM4L.HMATRIXB.RCB8Select_0;
      --  Remap Command bit for Master 9
      RCB9           : RCB9Select := Interfaces.ATSAM4L.HMATRIXB.RCB9Select_0;
      --  Remap Command bit for Master 10
      RCB10          : RCB10Select :=
                        Interfaces.ATSAM4L.HMATRIXB.RCB10Select_0;
      --  Remap Command bit for Master 11
      RCB11          : RCB11Select :=
                        Interfaces.ATSAM4L.HMATRIXB.RCB11Select_0;
      --  Remap Command bit for Master 12
      RCB12          : RCB12Select :=
                        Interfaces.ATSAM4L.HMATRIXB.RCB12Select_0;
      --  Remap Command bit for Master 13
      RCB13          : RCB13Select :=
                        Interfaces.ATSAM4L.HMATRIXB.RCB13Select_0;
      --  Remap Command bit for Master 14
      RCB14          : RCB14Select :=
                        Interfaces.ATSAM4L.HMATRIXB.RCB14Select_0;
      --  Remap Command bit for Master 15
      RCB15          : RCB15Select :=
                        Interfaces.ATSAM4L.HMATRIXB.RCB15Select_0;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HMATRIXB_MRCR_Register use record
      RCB0           at 0 range 0 .. 0;
      RCB1           at 0 range 1 .. 1;
      RCB2           at 0 range 2 .. 2;
      RCB3           at 0 range 3 .. 3;
      RCB4           at 0 range 4 .. 4;
      RCB5           at 0 range 5 .. 5;
      RCB6           at 0 range 6 .. 6;
      RCB7           at 0 range 7 .. 7;
      RCB8           at 0 range 8 .. 8;
      RCB9           at 0 range 9 .. 9;
      RCB10          at 0 range 10 .. 10;
      RCB11          at 0 range 11 .. 11;
      RCB12          at 0 range 12 .. 12;
      RCB13          at 0 range 13 .. 13;
      RCB14          at 0 range 14 .. 14;
      RCB15          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Special Function Register

   --  Special Function Register
   type HMATRIXB_SFR_Registers is array (0 .. 15)
     of Interfaces.Bit_Types.Word;

   -----------------
   -- Peripherals --
   -----------------

   --  HSB Matrix
   type HMATRIX_Peripheral is record
      --  Master Configuration Register
      MCFG   : HMATRIXB_MCFG_Registers;
      --  Slave Configuration Register
      SCFG   : HMATRIXB_SCFG_Registers;
      --  Priority Register A for Slave
      PRAS0  : PRAS_Register;
      --  Priority Register B for Slave
      PRBS0  : PRBS_Register;
      --  Priority Register A for Slave
      PRAS1  : PRAS_Register;
      --  Priority Register B for Slave
      PRBS1  : PRBS_Register;
      --  Priority Register A for Slave
      PRAS2  : PRAS_Register;
      --  Priority Register B for Slave
      PRBS2  : PRBS_Register;
      --  Priority Register A for Slave
      PRAS3  : PRAS_Register;
      --  Priority Register B for Slave
      PRBS3  : PRBS_Register;
      --  Priority Register A for Slave
      PRAS4  : PRAS_Register;
      --  Priority Register B for Slave
      PRBS4  : PRBS_Register;
      --  Priority Register A for Slave
      PRAS5  : PRAS_Register;
      --  Priority Register B for Slave
      PRBS5  : PRBS_Register;
      --  Priority Register A for Slave
      PRAS6  : PRAS_Register;
      --  Priority Register B for Slave
      PRBS6  : PRBS_Register;
      --  Priority Register A for Slave
      PRAS7  : PRAS_Register;
      --  Priority Register B for Slave
      PRBS7  : PRBS_Register;
      --  Priority Register A for Slave
      PRAS8  : PRAS_Register;
      --  Priority Register B for Slave
      PRBS8  : PRBS_Register;
      --  Priority Register A for Slave
      PRAS9  : PRAS_Register;
      --  Priority Register B for Slave
      PRBS9  : PRBS_Register;
      --  Priority Register A for Slave
      PRAS10 : PRAS_Register;
      --  Priority Register B for Slave
      PRBS10 : PRBS_Register;
      --  Priority Register A for Slave
      PRAS11 : PRAS_Register;
      --  Priority Register B for Slave
      PRBS11 : PRBS_Register;
      --  Priority Register A for Slave
      PRAS12 : PRAS_Register;
      --  Priority Register B for Slave
      PRBS12 : PRBS_Register;
      --  Priority Register A for Slave
      PRAS13 : PRAS_Register;
      --  Priority Register B for Slave
      PRBS13 : PRBS_Register;
      --  Priority Register A for Slave
      PRAS14 : PRAS_Register;
      --  Priority Register B for Slave
      PRBS14 : PRBS_Register;
      --  Priority Register A for Slave
      PRAS15 : PRAS_Register;
      --  Priority Register B for Slave
      PRBS15 : PRBS_Register;
      --  Master Remap Control Register
      MRCR   : HMATRIXB_MRCR_Register;
      --  Special Function Register
      SFR    : HMATRIXB_SFR_Registers;
   end record
     with Volatile;

   for HMATRIX_Peripheral use record
      MCFG   at 0 range 0 .. 511;
      SCFG   at 64 range 0 .. 511;
      PRAS0  at 128 range 0 .. 31;
      PRBS0  at 132 range 0 .. 31;
      PRAS1  at 136 range 0 .. 31;
      PRBS1  at 140 range 0 .. 31;
      PRAS2  at 144 range 0 .. 31;
      PRBS2  at 148 range 0 .. 31;
      PRAS3  at 152 range 0 .. 31;
      PRBS3  at 156 range 0 .. 31;
      PRAS4  at 160 range 0 .. 31;
      PRBS4  at 164 range 0 .. 31;
      PRAS5  at 168 range 0 .. 31;
      PRBS5  at 172 range 0 .. 31;
      PRAS6  at 176 range 0 .. 31;
      PRBS6  at 180 range 0 .. 31;
      PRAS7  at 184 range 0 .. 31;
      PRBS7  at 188 range 0 .. 31;
      PRAS8  at 192 range 0 .. 31;
      PRBS8  at 196 range 0 .. 31;
      PRAS9  at 200 range 0 .. 31;
      PRBS9  at 204 range 0 .. 31;
      PRAS10 at 208 range 0 .. 31;
      PRBS10 at 212 range 0 .. 31;
      PRAS11 at 216 range 0 .. 31;
      PRBS11 at 220 range 0 .. 31;
      PRAS12 at 224 range 0 .. 31;
      PRBS12 at 228 range 0 .. 31;
      PRAS13 at 232 range 0 .. 31;
      PRBS13 at 236 range 0 .. 31;
      PRAS14 at 240 range 0 .. 31;
      PRBS14 at 244 range 0 .. 31;
      PRAS15 at 248 range 0 .. 31;
      PRBS15 at 252 range 0 .. 31;
      MRCR   at 256 range 0 .. 31;
      SFR    at 272 range 0 .. 511;
   end record;

   --  HSB Matrix
   HMATRIX_Periph : aliased HMATRIX_Peripheral
     with Import, Address => HMATRIX_Base;

end Interfaces.ATSAM4L.HMATRIXB;
