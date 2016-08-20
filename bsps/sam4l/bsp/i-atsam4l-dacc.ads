--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.DACC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ----------------------
   -- DACC_CR_Register --
   ----------------------

   subtype CR_SWRST_Field is Interfaces.Bit_Types.Bit;

   --  Control Register
   type DACC_CR_Register is record
      --  Write-only. Software Reset
      SWRST         : CR_SWRST_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_CR_Register use record
      SWRST         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ----------------------
   -- DACC_MR_Register --
   ----------------------

   subtype MR_TRGEN_Field is Interfaces.Bit_Types.Bit;
   subtype MR_TRGSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype MR_DACEN_Field is Interfaces.Bit_Types.Bit;
   subtype MR_WORD_Field is Interfaces.Bit_Types.Bit;
   subtype MR_STARTUP_Field is Interfaces.Bit_Types.Byte;
   subtype MR_CLKDIV_Field is Interfaces.Bit_Types.Short;

   --  Mode Register
   type DACC_MR_Register is record
      --  Trigger Enable
      TRGEN        : MR_TRGEN_Field := 16#0#;
      --  Trigger Selection
      TRGSEL       : MR_TRGSEL_Field := 16#0#;
      --  DAC Enable
      DACEN        : MR_DACEN_Field := 16#0#;
      --  Word Transfer
      WORD         : MR_WORD_Field := 16#0#;
      --  unspecified
      Reserved_6_7 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Startup Time Selection
      STARTUP      : MR_STARTUP_Field := 16#0#;
      --  Clock Divider for Internal Trigger
      CLKDIV       : MR_CLKDIV_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_MR_Register use record
      TRGEN        at 0 range 0 .. 0;
      TRGSEL       at 0 range 1 .. 3;
      DACEN        at 0 range 4 .. 4;
      WORD         at 0 range 5 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
      STARTUP      at 0 range 8 .. 15;
      CLKDIV       at 0 range 16 .. 31;
   end record;

   -----------------------
   -- DACC_IER_Register --
   -----------------------

   subtype IER_TXRDY_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Enable Register
   type DACC_IER_Register is record
      --  Write-only. Transmit Ready Interrupt Enable
      TXRDY         : IER_TXRDY_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_IER_Register use record
      TXRDY         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------------
   -- DACC_IDR_Register --
   -----------------------

   subtype IDR_TXRDY_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Disable Register
   type DACC_IDR_Register is record
      --  Write-only. Transmit Ready Interrupt Disable
      TXRDY         : IDR_TXRDY_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_IDR_Register use record
      TXRDY         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------------
   -- DACC_IMR_Register --
   -----------------------

   subtype IMR_TXRDY_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Mask Register
   type DACC_IMR_Register is record
      --  Read-only. Transmit Ready Interrupt Mask
      TXRDY         : IMR_TXRDY_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_IMR_Register use record
      TXRDY         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------------
   -- DACC_ISR_Register --
   -----------------------

   subtype ISR_TXRDY_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Status Register
   type DACC_ISR_Register is record
      --  Read-only. Transmit Ready Interrupt Status
      TXRDY         : ISR_TXRDY_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_ISR_Register use record
      TXRDY         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ------------------------
   -- DACC_WPMR_Register --
   ------------------------

   subtype WPMR_WPEN_Field is Interfaces.Bit_Types.Bit;
   subtype WPMR_WPKEY_Field is Interfaces.Bit_Types.UInt24;

   --  Write Protect Mode Register
   type DACC_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write Protect Key
      WPKEY        : WPMR_WPKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   ------------------------
   -- DACC_WPSR_Register --
   ------------------------

   subtype WPSR_WPROTERR_Field is Interfaces.Bit_Types.Bit;
   subtype WPSR_WPROTADDR_Field is Interfaces.Bit_Types.Byte;

   --  Write Protect Status Register
   type DACC_WPSR_Register is record
      --  Read-only. Write Protection Error
      WPROTERR       : WPSR_WPROTERR_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7;
      --  Read-only. Write Protection Error Address
      WPROTADDR      : WPSR_WPROTADDR_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_WPSR_Register use record
      WPROTERR       at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPROTADDR      at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   ---------------------------
   -- DACC_VERSION_Register --
   ---------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt3;

   --  Version Register
   type DACC_VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant Number
      VARIANT        : VERSION_VARIANT_Field;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DAC Controller
   type DACC_Peripheral is record
      --  Control Register
      CR      : DACC_CR_Register;
      --  Mode Register
      MR      : DACC_MR_Register;
      --  Conversion Data Register
      CDR     : Interfaces.Bit_Types.Word;
      --  Interrupt Enable Register
      IER     : DACC_IER_Register;
      --  Interrupt Disable Register
      IDR     : DACC_IDR_Register;
      --  Interrupt Mask Register
      IMR     : DACC_IMR_Register;
      --  Interrupt Status Register
      ISR     : DACC_ISR_Register;
      --  Write Protect Mode Register
      WPMR    : DACC_WPMR_Register;
      --  Write Protect Status Register
      WPSR    : DACC_WPSR_Register;
      --  Version Register
      VERSION : DACC_VERSION_Register;
   end record
     with Volatile;

   for DACC_Peripheral use record
      CR      at 0 range 0 .. 31;
      MR      at 4 range 0 .. 31;
      CDR     at 8 range 0 .. 31;
      IER     at 12 range 0 .. 31;
      IDR     at 16 range 0 .. 31;
      IMR     at 20 range 0 .. 31;
      ISR     at 24 range 0 .. 31;
      WPMR    at 228 range 0 .. 31;
      WPSR    at 232 range 0 .. 31;
      VERSION at 252 range 0 .. 31;
   end record;

   --  DAC Controller
   DACC_Periph : aliased DACC_Peripheral
     with Import, Address => DACC_Base;

end Interfaces.ATSAM4L.DACC;
