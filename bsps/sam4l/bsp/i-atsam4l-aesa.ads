--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.AESA is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ------------------------
   -- AESA_CTRL_Register --
   ------------------------

   subtype CTRL_ENABLE_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_DKEYGEN_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_NEWMSG_Field is Interfaces.Bit_Types.Bit;
   subtype CTRL_SWRST_Field is Interfaces.Bit_Types.Bit;

   --  Control Register
   type AESA_CTRL_Register is record
      --  Enable Module
      ENABLE        : CTRL_ENABLE_Field := 16#0#;
      --  Write-only. Decryption Key Generate
      DKEYGEN       : CTRL_DKEYGEN_Field := 16#0#;
      --  Write-only. New Message
      NEWMSG        : CTRL_NEWMSG_Field := 16#0#;
      --  unspecified
      Reserved_3_7  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. Software Reset
      SWRST         : CTRL_SWRST_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AESA_CTRL_Register use record
      ENABLE        at 0 range 0 .. 0;
      DKEYGEN       at 0 range 1 .. 1;
      NEWMSG        at 0 range 2 .. 2;
      Reserved_3_7  at 0 range 3 .. 7;
      SWRST         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   ------------------------
   -- AESA_MODE_Register --
   ------------------------

   subtype MODE_ENCRYPT_Field is Interfaces.Bit_Types.Bit;
   subtype MODE_KEYSIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype MODE_DMA_Field is Interfaces.Bit_Types.Bit;
   subtype MODE_OPMODE_Field is Interfaces.Bit_Types.UInt3;
   subtype MODE_CFBS_Field is Interfaces.Bit_Types.UInt3;
   subtype MODE_CTYPE_Field is Interfaces.Bit_Types.UInt4;

   --  Mode Register
   type AESA_MODE_Register is record
      --  Encryption
      ENCRYPT        : MODE_ENCRYPT_Field := 16#0#;
      --  Key Size
      KEYSIZE        : MODE_KEYSIZE_Field := 16#0#;
      --  DMA Mode
      DMA            : MODE_DMA_Field := 16#0#;
      --  Confidentiality Mode of Operation
      OPMODE         : MODE_OPMODE_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Cipher Feedback Data Segment Size
      CFBS           : MODE_CFBS_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Countermeasure Type
      CTYPE          : MODE_CTYPE_Field := 16#F#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AESA_MODE_Register use record
      ENCRYPT        at 0 range 0 .. 0;
      KEYSIZE        at 0 range 1 .. 2;
      DMA            at 0 range 3 .. 3;
      OPMODE         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CFBS           at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      CTYPE          at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ------------------------------
   -- AESA_DATABUFPTR_Register --
   ------------------------------

   subtype DATABUFPTR_IDATAW_Field is Interfaces.Bit_Types.UInt2;
   subtype DATABUFPTR_ODATAW_Field is Interfaces.Bit_Types.UInt2;

   --  Data Buffer Pointer Register
   type AESA_DATABUFPTR_Register is record
      --  Input Data Word
      IDATAW        : DATABUFPTR_IDATAW_Field := 16#0#;
      --  unspecified
      Reserved_2_3  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Output Data Word
      ODATAW        : DATABUFPTR_ODATAW_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AESA_DATABUFPTR_Register use record
      IDATAW        at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      ODATAW        at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   ----------------------
   -- AESA_SR_Register --
   ----------------------

   subtype SR_ODATARDY_Field is Interfaces.Bit_Types.Bit;
   subtype SR_IBUFRDY_Field is Interfaces.Bit_Types.Bit;

   --  Status Register
   type AESA_SR_Register is record
      --  Read-only. Output Data Ready
      ODATARDY       : SR_ODATARDY_Field;
      --  unspecified
      Reserved_1_15  : Interfaces.Bit_Types.UInt15;
      --  Read-only. Input Buffer Ready
      IBUFRDY        : SR_IBUFRDY_Field;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AESA_SR_Register use record
      ODATARDY       at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      IBUFRDY        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   -----------------------
   -- AESA_IER_Register --
   -----------------------

   subtype IER_ODATARDY_Field is Interfaces.Bit_Types.Bit;
   subtype IER_IBUFRDY_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Enable Register
   type AESA_IER_Register is record
      --  Write-only. Output Data Ready Interrupt Enable
      ODATARDY       : IER_ODATARDY_Field := 16#0#;
      --  unspecified
      Reserved_1_15  : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  Write-only. Input Buffer Ready Interrupt Enable
      IBUFRDY        : IER_IBUFRDY_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AESA_IER_Register use record
      ODATARDY       at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      IBUFRDY        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   -----------------------
   -- AESA_IDR_Register --
   -----------------------

   subtype IDR_ODATARDY_Field is Interfaces.Bit_Types.Bit;
   subtype IDR_IBUFRDY_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Disable Register
   type AESA_IDR_Register is record
      --  Write-only. Output Data Ready Interrupt Disable
      ODATARDY       : IDR_ODATARDY_Field := 16#0#;
      --  unspecified
      Reserved_1_15  : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  Write-only. Input Buffer Ready Interrupt Disable
      IBUFRDY        : IDR_IBUFRDY_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AESA_IDR_Register use record
      ODATARDY       at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      IBUFRDY        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   -----------------------
   -- AESA_IMR_Register --
   -----------------------

   subtype IMR_ODATARDY_Field is Interfaces.Bit_Types.Bit;
   subtype IMR_IBUFRDY_Field is Interfaces.Bit_Types.Bit;

   --  Interrupt Mask Register
   type AESA_IMR_Register is record
      --  Read-only. Output Data Ready Interrupt Mask
      ODATARDY       : IMR_ODATARDY_Field;
      --  unspecified
      Reserved_1_15  : Interfaces.Bit_Types.UInt15;
      --  Read-only. Input Buffer Ready Interrupt Mask
      IBUFRDY        : IMR_IBUFRDY_Field;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AESA_IMR_Register use record
      ODATARDY       at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      IBUFRDY        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Key Register

   --  Key Register
   type AESA_KEY_Registers is array (0 .. 7) of Interfaces.Bit_Types.Word;

   --  Initialization Vector Register

   --  Initialization Vector Register
   type AESA_INITVECT_Registers is array (0 .. 3)
     of Interfaces.Bit_Types.Word;

   -----------------------------
   -- AESA_PARAMETER_Register --
   -----------------------------

   subtype PARAMETER_KEYSIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype PARAMETER_OPMODE_Field is Interfaces.Bit_Types.UInt3;
   subtype PARAMETER_CTRMEAS_Field is Interfaces.Bit_Types.Bit;

   --  Parameter Register
   type AESA_PARAMETER_Register is record
      --  Read-only. Maximum Key Size
      KEYSIZE       : PARAMETER_KEYSIZE_Field;
      --  Read-only. Maximum Number of Confidentiality Modes of Operation
      OPMODE        : PARAMETER_OPMODE_Field;
      --  unspecified
      Reserved_5_7  : Interfaces.Bit_Types.UInt3;
      --  Read-only. Countermeasures
      CTRMEAS       : PARAMETER_CTRMEAS_Field;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AESA_PARAMETER_Register use record
      KEYSIZE       at 0 range 0 .. 1;
      OPMODE        at 0 range 2 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      CTRMEAS       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   ---------------------------
   -- AESA_VERSION_Register --
   ---------------------------

   subtype VERSION_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype VERSION_VARIANT_Field is Interfaces.Bit_Types.UInt4;

   --  Version Register
   type AESA_VERSION_Register is record
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

   for AESA_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Advanced Encryption Standard
   type AESA_Peripheral is record
      --  Control Register
      CTRL       : AESA_CTRL_Register;
      --  Mode Register
      MODE       : AESA_MODE_Register;
      --  Data Buffer Pointer Register
      DATABUFPTR : AESA_DATABUFPTR_Register;
      --  Status Register
      SR         : AESA_SR_Register;
      --  Interrupt Enable Register
      IER        : AESA_IER_Register;
      --  Interrupt Disable Register
      IDR        : AESA_IDR_Register;
      --  Interrupt Mask Register
      IMR        : AESA_IMR_Register;
      --  Key Register
      KEY        : AESA_KEY_Registers;
      --  Initialization Vector Register
      INITVECT   : AESA_INITVECT_Registers;
      --  Input Data Register
      IDATA      : Interfaces.Bit_Types.Word;
      --  Output Data Register
      ODATA      : Interfaces.Bit_Types.Word;
      --  DRNG Seed Register
      DRNGSEED   : Interfaces.Bit_Types.Word;
      --  Parameter Register
      PARAMETER  : AESA_PARAMETER_Register;
      --  Version Register
      VERSION    : AESA_VERSION_Register;
   end record
     with Volatile;

   for AESA_Peripheral use record
      CTRL       at 0 range 0 .. 31;
      MODE       at 4 range 0 .. 31;
      DATABUFPTR at 8 range 0 .. 31;
      SR         at 12 range 0 .. 31;
      IER        at 16 range 0 .. 31;
      IDR        at 20 range 0 .. 31;
      IMR        at 24 range 0 .. 31;
      KEY        at 32 range 0 .. 255;
      INITVECT   at 64 range 0 .. 127;
      IDATA      at 80 range 0 .. 31;
      ODATA      at 96 range 0 .. 31;
      DRNGSEED   at 112 range 0 .. 31;
      PARAMETER  at 248 range 0 .. 31;
      VERSION    at 252 range 0 .. 31;
   end record;

   --  Advanced Encryption Standard
   AESA_Periph : aliased AESA_Peripheral
     with Import, Address => AESA_Base;

end Interfaces.ATSAM4L.AESA;
