--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.FLASHCALW is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ----------------------------
   -- FLASHCALW_FCR_Register --
   ----------------------------

   --  Flash Ready Interrupt Enable
   type FRDYSelect is
     (
      --  Flash Ready does not generate an interrupt
      FRDYSelect_0,
      --  Flash Ready generates an interrupt
      FRDYSelect_1)
     with Size => 1;
   for FRDYSelect use
     (FRDYSelect_0 => 0,
      FRDYSelect_1 => 1);

   --  Lock Error Interrupt Enable
   type LOCKESelect is
     (
      --  Lock Error does not generate an interrupt
      LOCKESelect_0,
      --  Lock Error generates an interrupt
      LOCKESelect_1)
     with Size => 1;
   for LOCKESelect use
     (LOCKESelect_0 => 0,
      LOCKESelect_1 => 1);

   --  Programming Error Interrupt Enable
   type PROGESelect is
     (
      --  Programming Error does not generate an interrupt
      PROGESelect_0,
      --  Programming Error generates an interrupt
      PROGESelect_1)
     with Size => 1;
   for PROGESelect use
     (PROGESelect_0 => 0,
      PROGESelect_1 => 1);

   --  Flash Wait State
   type FWSSelect is
     (
      --  The flash is read with 0 wait states
      FWSSelect_0,
      --  The flash is read with 1 wait states
      FWSSelect_1)
     with Size => 1;
   for FWSSelect use
     (FWSSelect_0 => 0,
      FWSSelect_1 => 1);

   subtype FCR_WS1OPT_Field is Interfaces.Bit_Types.Bit;

   --  Flash Controller Control Register
   type FLASHCALW_FCR_Register is record
      --  Flash Ready Interrupt Enable
      FRDY          : FRDYSelect := Interfaces.ATSAM4L.FLASHCALW.FRDYSelect_0;
      --  unspecified
      Reserved_1_1  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Lock Error Interrupt Enable
      LOCKE         : LOCKESelect :=
                       Interfaces.ATSAM4L.FLASHCALW.LOCKESelect_0;
      --  Programming Error Interrupt Enable
      PROGE         : PROGESelect :=
                       Interfaces.ATSAM4L.FLASHCALW.PROGESelect_0;
      --  unspecified
      Reserved_4_5  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Flash Wait State
      FWS           : FWSSelect := Interfaces.ATSAM4L.FLASHCALW.FWSSelect_0;
      --  Wait State 1 Optimization
      WS1OPT        : FCR_WS1OPT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCALW_FCR_Register use record
      FRDY          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      LOCKE         at 0 range 2 .. 2;
      PROGE         at 0 range 3 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      FWS           at 0 range 6 .. 6;
      WS1OPT        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------------------
   -- FLASHCALW_FCMD_Register --
   -----------------------------

   --  Command
   type CMDSelect is
     (
      --  No Operation
      Nop,
      --  Write Page
      Wp,
      --  Erase Page
      Ep,
      --  Clear Page Buffer
      Cpb,
      --  Lock Region containing page
      Lp,
      --  Unlock Region containing page
      Up,
      --  Erase All, including secuity and fuse bits
      Ea,
      --  Write General-Purpose fuse Bit
      Wgpb,
      --  Erase General-Purpose fuse Bit
      Egpb,
      --  Set Security Bit
      Ssb,
      --  Program GPFuse Byte
      Pgpfb,
      --  Erase All GP Fuses
      Eagpf,
      --  Quick Page Read
      Qpr,
      --  Write User Page
      Wup,
      --  Erase User Page
      Eup,
      --  Quick Page Read User Page
      Qprup,
      --  High Speed Mode Enable
      Hsen,
      --  High Speed Mode Disable
      Hsdis)
     with Size => 6;
   for CMDSelect use
     (Nop => 0,
      Wp => 1,
      Ep => 2,
      Cpb => 3,
      Lp => 4,
      Up => 5,
      Ea => 6,
      Wgpb => 7,
      Egpb => 8,
      Ssb => 9,
      Pgpfb => 10,
      Eagpf => 11,
      Qpr => 12,
      Wup => 13,
      Eup => 14,
      Qprup => 15,
      Hsen => 16,
      Hsdis => 17);

   subtype FCMD_PAGEN_Field is Interfaces.Bit_Types.Short;

   --  Write protection key
   type KEYSelect is
     (
      --  Reset value for the field
      Keyselect_Reset,
      Key)
     with Size => 8;
   for KEYSelect use
     (Keyselect_Reset => 0,
      Key => 165);

   --  Flash Controller Command Register
   type FLASHCALW_FCMD_Register is record
      --  Command
      CMD          : CMDSelect := Interfaces.ATSAM4L.FLASHCALW.Nop;
      --  unspecified
      Reserved_6_7 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Page number
      PAGEN        : FCMD_PAGEN_Field := 16#0#;
      --  Write protection key
      KEY          : KEYSelect := Keyselect_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCALW_FCMD_Register use record
      CMD          at 0 range 0 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
      PAGEN        at 0 range 8 .. 23;
      KEY          at 0 range 24 .. 31;
   end record;

   ----------------------------
   -- FLASHCALW_FSR_Register --
   ----------------------------

   subtype FSR_FRDY_Field is Interfaces.Bit_Types.Bit;
   subtype FSR_LOCKE_Field is Interfaces.Bit_Types.Bit;
   subtype FSR_PROGE_Field is Interfaces.Bit_Types.Bit;
   subtype FSR_SECURITY_Field is Interfaces.Bit_Types.Bit;
   subtype FSR_QPRR_Field is Interfaces.Bit_Types.Bit;
   subtype FSR_HSMODE_Field is Interfaces.Bit_Types.Bit;

   --  ECC Error Status
   type ECCERRSelect is
     (
      --  no error
      Noerror,
      --  one ECC error detected
      Oneeccerr,
      --  two ECC errors detected
      Twoeccerr)
     with Size => 2;
   for ECCERRSelect use
     (Noerror => 0,
      Oneeccerr => 1,
      Twoeccerr => 2);

   --------------
   -- FSR.LOCK --
   --------------

   --  FSR_LOCK array element
   subtype FSR_LOCK_Element is Interfaces.Bit_Types.Bit;

   --  FSR_LOCK array
   type FSR_LOCK_Field_Array is array (0 .. 15) of FSR_LOCK_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for FSR_LOCK
   type FSR_LOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LOCK as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  LOCK as an array
            Arr : FSR_LOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for FSR_LOCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Flash Controller Status Register
   type FLASHCALW_FSR_Register is record
      --  Read-only. Flash Ready Status
      FRDY           : FSR_FRDY_Field;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit;
      --  Read-only. Lock Error Status
      LOCKE          : FSR_LOCKE_Field;
      --  Read-only. Programming Error Status
      PROGE          : FSR_PROGE_Field;
      --  Read-only. Security Bit Status
      SECURITY       : FSR_SECURITY_Field;
      --  Read-only. Quick Page Read Result
      QPRR           : FSR_QPRR_Field;
      --  Read-only. High Speed Mode
      HSMODE         : FSR_HSMODE_Field;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit;
      --  Read-only. ECC Error Status
      ECCERR         : ECCERRSelect;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6;
      --  Read-only. Lock Region 0 Lock Status
      LOCK           : FSR_LOCK_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCALW_FSR_Register use record
      FRDY           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      LOCKE          at 0 range 2 .. 2;
      PROGE          at 0 range 3 .. 3;
      SECURITY       at 0 range 4 .. 4;
      QPRR           at 0 range 5 .. 5;
      HSMODE         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ECCERR         at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      LOCK           at 0 range 16 .. 31;
   end record;

   ----------------------------
   -- FLASHCALW_FPR_Register --
   ----------------------------

   subtype FPR_FSZ_Field is Interfaces.Bit_Types.UInt4;
   subtype FPR_PSZ_Field is Interfaces.Bit_Types.UInt3;

   --  Flash Controller Parameter Register
   type FLASHCALW_FPR_Register is record
      --  Read-only. Flash Size
      FSZ            : FPR_FSZ_Field;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4;
      --  Read-only. Page Size
      PSZ            : FPR_PSZ_Field;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCALW_FPR_Register use record
      FSZ            at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      PSZ            at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --------------------------------
   -- FLASHCALW_VERSION_Register --
   --------------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Flash Controller Version Register
   type FLASHCALW_VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant Number
      VARIANT        : VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCALW_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --------------------------------
   -- FLASHCALW_FGPFRHI_Register --
   --------------------------------

   --  FGPFRHI_GPF array element
   subtype FGPFRHI_GPF_Element is Interfaces.Bit_Types.Bit;

   --  FGPFRHI_GPF array
   type FGPFRHI_GPF_Field_Array is array (32 .. 63) of FGPFRHI_GPF_Element
     with Component_Size => 1, Size => 32;

   --  Flash Controller General Purpose Fuse Register High
   type FLASHCALW_FGPFRHI_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GPF as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  GPF as an array
            Arr : FGPFRHI_GPF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for FLASHCALW_FGPFRHI_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------------------
   -- FLASHCALW_FGPFRLO_Register --
   --------------------------------

   ------------------
   -- FGPFRLO.LOCK --
   ------------------

   --  FGPFRLO_LOCK array element
   subtype FGPFRLO_LOCK_Element is Interfaces.Bit_Types.Bit;

   --  FGPFRLO_LOCK array
   type FGPFRLO_LOCK_Field_Array is array (0 .. 15) of FGPFRLO_LOCK_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for FGPFRLO_LOCK
   type FGPFRLO_LOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LOCK as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  LOCK as an array
            Arr : FGPFRLO_LOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for FGPFRLO_LOCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   -----------------
   -- FGPFRLO.GPF --
   -----------------

   --  FGPFRLO_GPF array element
   subtype FGPFRLO_GPF_Element is Interfaces.Bit_Types.Bit;

   --  FGPFRLO_GPF array
   type FGPFRLO_GPF_Field_Array is array (16 .. 31) of FGPFRLO_GPF_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for FGPFRLO_GPF
   type FGPFRLO_GPF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GPF as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  GPF as an array
            Arr : FGPFRLO_GPF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for FGPFRLO_GPF_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Flash Controller General Purpose Fuse Register Low
   type FLASHCALW_FGPFRLO_Register is record
      --  Read-only. Lock Bit 0
      LOCK : FGPFRLO_LOCK_Field;
      --  Read-only. General Purpose Fuse 16
      GPF  : FGPFRLO_GPF_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCALW_FGPFRLO_Register use record
      LOCK at 0 range 0 .. 15;
      GPF  at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Flash Controller
   type HFLASHC_Peripheral is record
      --  Flash Controller Control Register
      FCR     : FLASHCALW_FCR_Register;
      --  Flash Controller Command Register
      FCMD    : FLASHCALW_FCMD_Register;
      --  Flash Controller Status Register
      FSR     : FLASHCALW_FSR_Register;
      --  Flash Controller Parameter Register
      FPR     : FLASHCALW_FPR_Register;
      --  Flash Controller Version Register
      VERSION : FLASHCALW_VERSION_Register;
      --  Flash Controller General Purpose Fuse Register High
      FGPFRHI : FLASHCALW_FGPFRHI_Register;
      --  Flash Controller General Purpose Fuse Register Low
      FGPFRLO : FLASHCALW_FGPFRLO_Register;
   end record
     with Volatile;

   for HFLASHC_Peripheral use record
      FCR     at 0 range 0 .. 31;
      FCMD    at 4 range 0 .. 31;
      FSR     at 8 range 0 .. 31;
      FPR     at 12 range 0 .. 31;
      VERSION at 16 range 0 .. 31;
      FGPFRHI at 20 range 0 .. 31;
      FGPFRLO at 24 range 0 .. 31;
   end record;

   --  Flash Controller
   HFLASHC_Periph : aliased HFLASHC_Peripheral
     with Import, Address => HFLASHC_Base;

end Interfaces.ATSAM4L.FLASHCALW;
