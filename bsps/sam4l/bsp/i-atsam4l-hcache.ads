--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.HCACHE is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --------------------------
   -- HCACHE_CTRL_Register --
   --------------------------

   --  Cache Enable
   type CENSelect is
     (
      --  Disable Cache Controller
      No,
      --  Enable Cache Controller
      Yes)
     with Size => 1;
   for CENSelect use
     (No => 0,
      Yes => 1);

   --  Control Register
   type HCACHE_CTRL_Register is record
      --  Write-only. Cache Enable
      CEN           : CENSelect := Interfaces.ATSAM4L.HCACHE.No;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCACHE_CTRL_Register use record
      CEN           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ------------------------
   -- HCACHE_SR_Register --
   ------------------------

   --  Cache Controller Status
   type CSTSSelect is
     (
      --  Cache Controller Disabled
      Dis,
      --  Cache Controller Enabled
      En)
     with Size => 1;
   for CSTSSelect use
     (Dis => 0,
      En => 1);

   --  Status Register
   type HCACHE_SR_Register is record
      --  Read-only. Cache Controller Status
      CSTS          : CSTSSelect;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCACHE_SR_Register use record
      CSTS          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ----------------------------
   -- HCACHE_MAINT0_Register --
   ----------------------------

   --  Cache Controller Invalidate All
   type INVALLSelect is
     (
      --  No effect
      No,
      --  Invalidate all cache entries
      Yes)
     with Size => 1;
   for INVALLSelect use
     (No => 0,
      Yes => 1);

   --  Maintenance Register 0
   type HCACHE_MAINT0_Register is record
      --  Write-only. Cache Controller Invalidate All
      INVALL        : INVALLSelect := Interfaces.ATSAM4L.HCACHE.No;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCACHE_MAINT0_Register use record
      INVALL        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ----------------------------
   -- HCACHE_MAINT1_Register --
   ----------------------------

   subtype MAINT1_INDEX_Field is Interfaces.Bit_Types.UInt4;

   --  Maintenance Register 1
   type HCACHE_MAINT1_Register is record
      --  unspecified
      Reserved_0_3  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. Invalidate Index
      INDEX         : MAINT1_INDEX_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCACHE_MAINT1_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      INDEX         at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --------------------------
   -- HCACHE_MCFG_Register --
   --------------------------

   --  Cache Controller Monitor Counter Mode
   type MODESelect is
     (
      --  Cycle Counter
      Cycle,
      --  Instruction Hit Counter
      Ihit,
      --  Data Hit Counter
      Dhit)
     with Size => 2;
   for MODESelect use
     (Cycle => 0,
      Ihit => 1,
      Dhit => 2);

   --  Monitor Configuration Register
   type HCACHE_MCFG_Register is record
      --  Cache Controller Monitor Counter Mode
      MODE          : MODESelect := Interfaces.ATSAM4L.HCACHE.Cycle;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCACHE_MCFG_Register use record
      MODE          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -------------------------
   -- HCACHE_MEN_Register --
   -------------------------

   --  Monitor Enable
   type MENABLESelect is
     (
      --  Disable Monitor Counter
      Dis,
      --  Enable Monitor Counter
      En)
     with Size => 1;
   for MENABLESelect use
     (Dis => 0,
      En => 1);

   --  Monitor Enable Register
   type HCACHE_MEN_Register is record
      --  Write-only. Monitor Enable
      MENABLE       : MENABLESelect := Interfaces.ATSAM4L.HCACHE.Dis;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCACHE_MEN_Register use record
      MENABLE       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ---------------------------
   -- HCACHE_MCTRL_Register --
   ---------------------------

   --  Monitor Software Reset
   type SWRSTSelect is
     (
      --  No effect
      No,
      --  Reset event counter register
      Yes)
     with Size => 1;
   for SWRSTSelect use
     (No => 0,
      Yes => 1);

   --  Monitor Control Register
   type HCACHE_MCTRL_Register is record
      --  Write-only. Monitor Software Reset
      SWRST         : SWRSTSelect := Interfaces.ATSAM4L.HCACHE.No;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCACHE_MCTRL_Register use record
      SWRST         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------------------
   -- HCACHE_VERSION_Register --
   -----------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_MFN_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type HCACHE_VERSION_Register is record
      --  Read-only. VERSION
      VERSION        : VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. MFN
      MFN            : VERSION_MFN_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCACHE_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MFN            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Cortex M I&D Cache Controller
   type HCACHE_Peripheral is record
      --  Control Register
      CTRL    : HCACHE_CTRL_Register;
      --  Status Register
      SR      : HCACHE_SR_Register;
      --  Maintenance Register 0
      MAINT0  : HCACHE_MAINT0_Register;
      --  Maintenance Register 1
      MAINT1  : HCACHE_MAINT1_Register;
      --  Monitor Configuration Register
      MCFG    : HCACHE_MCFG_Register;
      --  Monitor Enable Register
      MEN     : HCACHE_MEN_Register;
      --  Monitor Control Register
      MCTRL   : HCACHE_MCTRL_Register;
      --  Monitor Status Register
      MSR     : Interfaces.Bit_Types.Word;
      --  Version Register
      VERSION : HCACHE_VERSION_Register;
   end record
     with Volatile;

   for HCACHE_Peripheral use record
      CTRL    at 8 range 0 .. 31;
      SR      at 12 range 0 .. 31;
      MAINT0  at 32 range 0 .. 31;
      MAINT1  at 36 range 0 .. 31;
      MCFG    at 40 range 0 .. 31;
      MEN     at 44 range 0 .. 31;
      MCTRL   at 48 range 0 .. 31;
      MSR     at 52 range 0 .. 31;
      VERSION at 252 range 0 .. 31;
   end record;

   --  Cortex M I&D Cache Controller
   HCACHE_Periph : aliased HCACHE_Peripheral
     with Import, Address => HCACHE_Base;

end Interfaces.ATSAM4L.HCACHE;
