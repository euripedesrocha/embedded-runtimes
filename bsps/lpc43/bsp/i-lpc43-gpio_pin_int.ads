--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43.GPIO_PIN_INT is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -------------------
   -- ISEL_Register --
   -------------------

   ----------------
   -- ISEL.PMODE --
   ----------------

   --  ISEL_PMODE array element
   subtype ISEL_PMODE_Element is Interfaces.Bit_Types.Bit;

   --  ISEL_PMODE array
   type ISEL_PMODE_Field_Array is array (0 .. 7) of ISEL_PMODE_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for ISEL_PMODE
   type ISEL_PMODE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PMODE as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  PMODE as an array
            Arr : ISEL_PMODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ISEL_PMODE_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype ISEL_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin Interrupt Mode register
   type ISEL_Register is record
      --  Selects the interrupt mode for each pin interrupt. Bit n configures
      --  the pin interrupt selected in PINTSELn. 0 = Edge sensitive 1 = Level
      --  sensitive
      PMODE    : ISEL_PMODE_Field := (As_Array => False, Val => 16#0#);
      --  Reserved.
      RESERVED : ISEL_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISEL_Register use record
      PMODE    at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   -------------------
   -- IENR_Register --
   -------------------

   ---------------
   -- IENR.ENRL --
   ---------------

   --  IENR_ENRL array element
   subtype IENR_ENRL_Element is Interfaces.Bit_Types.Bit;

   --  IENR_ENRL array
   type IENR_ENRL_Field_Array is array (0 .. 7) of IENR_ENRL_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for IENR_ENRL
   type IENR_ENRL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENRL as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  ENRL as an array
            Arr : IENR_ENRL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for IENR_ENRL_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype IENR_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin Interrupt Enable (Rising) register
   type IENR_Register is record
      --  Enables the rising edge or level interrupt for each pin interrupt.
      --  Bit n configures the pin interrupt selected in PINTSELn. 0 = Disable
      --  rising edge or level interrupt. 1 = Enable rising edge or level
      --  interrupt.
      ENRL     : IENR_ENRL_Field := (As_Array => False, Val => 16#0#);
      --  Reserved.
      RESERVED : IENR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IENR_Register use record
      ENRL     at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --------------------
   -- SIENR_Register --
   --------------------

   -------------------
   -- SIENR.SETENRL --
   -------------------

   --  SIENR_SETENRL array element
   subtype SIENR_SETENRL_Element is Interfaces.Bit_Types.Bit;

   --  SIENR_SETENRL array
   type SIENR_SETENRL_Field_Array is array (0 .. 7) of SIENR_SETENRL_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for SIENR_SETENRL
   type SIENR_SETENRL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SETENRL as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  SETENRL as an array
            Arr : SIENR_SETENRL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for SIENR_SETENRL_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype SIENR_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Set Pin Interrupt Enable (Rising) register
   type SIENR_Register is record
      --  Write-only. Ones written to this address set bits in the PINTEN_R,
      --  thus enabling interrupts. Bit n sets bit n in the PINTEN_R register.
      --  0 = No operation. 1 = Enable rising edge or level interrupt.
      SETENRL  : SIENR_SETENRL_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Reserved.
      RESERVED : SIENR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIENR_Register use record
      SETENRL  at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --------------------
   -- CIENR_Register --
   --------------------

   -----------------
   -- CIENR.CENRL --
   -----------------

   --  CIENR_CENRL array element
   subtype CIENR_CENRL_Element is Interfaces.Bit_Types.Bit;

   --  CIENR_CENRL array
   type CIENR_CENRL_Field_Array is array (0 .. 7) of CIENR_CENRL_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for CIENR_CENRL
   type CIENR_CENRL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CENRL as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  CENRL as an array
            Arr : CIENR_CENRL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for CIENR_CENRL_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype CIENR_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Clear Pin Interrupt Enable (Rising) register
   type CIENR_Register is record
      --  Write-only. Ones written to this address clear bits in the IENR, thus
      --  disabling the interrupts. Bit n clears bit n in the IENR register. 0
      --  = No operation. 1 = Disable rising edge or level interrupt.
      CENRL    : CIENR_CENRL_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Reserved.
      RESERVED : CIENR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CIENR_Register use record
      CENRL    at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   -------------------
   -- IENF_Register --
   -------------------

   ---------------
   -- IENF.ENAF --
   ---------------

   --  IENF_ENAF array element
   subtype IENF_ENAF_Element is Interfaces.Bit_Types.Bit;

   --  IENF_ENAF array
   type IENF_ENAF_Field_Array is array (0 .. 7) of IENF_ENAF_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for IENF_ENAF
   type IENF_ENAF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENAF as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  ENAF as an array
            Arr : IENF_ENAF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for IENF_ENAF_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype IENF_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin Interrupt Enable Falling Edge / Active Level register
   type IENF_Register is record
      --  Enables the falling edge or configures the active level interrupt for
      --  each pin interrupt. Bit n configures the pin interrupt selected in
      --  PINTSELn. 0 = Disable falling edge interrupt or set active interrupt
      --  level LOW. 1 = Enable falling edge interrupt enabled or set active
      --  interrupt level HIGH.
      ENAF     : IENF_ENAF_Field := (As_Array => False, Val => 16#0#);
      --  Reserved.
      RESERVED : IENF_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IENF_Register use record
      ENAF     at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --------------------
   -- SIENF_Register --
   --------------------

   -------------------
   -- SIENF.SETENAF --
   -------------------

   --  SIENF_SETENAF array element
   subtype SIENF_SETENAF_Element is Interfaces.Bit_Types.Bit;

   --  SIENF_SETENAF array
   type SIENF_SETENAF_Field_Array is array (0 .. 7) of SIENF_SETENAF_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for SIENF_SETENAF
   type SIENF_SETENAF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SETENAF as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  SETENAF as an array
            Arr : SIENF_SETENAF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for SIENF_SETENAF_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype SIENF_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Set Pin Interrupt Enable Falling Edge / Active Level register
   type SIENF_Register is record
      --  Write-only. Ones written to this address set bits in the IENF, thus
      --  enabling interrupts. Bit n sets bit n in the IENF register. 0 = No
      --  operation. 1 = Select HIGH-active interrupt or enable falling edge
      --  interrupt.
      SETENAF  : SIENF_SETENAF_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Reserved.
      RESERVED : SIENF_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIENF_Register use record
      SETENAF  at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --------------------
   -- CIENF_Register --
   --------------------

   -----------------
   -- CIENF.CENAF --
   -----------------

   --  CIENF_CENAF array element
   subtype CIENF_CENAF_Element is Interfaces.Bit_Types.Bit;

   --  CIENF_CENAF array
   type CIENF_CENAF_Field_Array is array (0 .. 7) of CIENF_CENAF_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for CIENF_CENAF
   type CIENF_CENAF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CENAF as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  CENAF as an array
            Arr : CIENF_CENAF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for CIENF_CENAF_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype CIENF_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Clear Pin Interrupt Enable Falling Edge / Active Level address
   type CIENF_Register is record
      --  Write-only. Ones written to this address clears bits in the IENF,
      --  thus disabling interrupts. Bit n clears bit n in the IENF register. 0
      --  = No operation. 1 = LOW-active interrupt selected or falling edge
      --  interrupt disabled.
      CENAF    : CIENF_CENAF_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Reserved.
      RESERVED : CIENF_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CIENF_Register use record
      CENAF    at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   -------------------
   -- RISE_Register --
   -------------------

   ---------------
   -- RISE.RDET --
   ---------------

   --  RISE_RDET array element
   subtype RISE_RDET_Element is Interfaces.Bit_Types.Bit;

   --  RISE_RDET array
   type RISE_RDET_Field_Array is array (0 .. 7) of RISE_RDET_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for RISE_RDET
   type RISE_RDET_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDET as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  RDET as an array
            Arr : RISE_RDET_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISE_RDET_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype RISE_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin Interrupt Rising Edge register
   type RISE_Register is record
      --  Rising edge detect. Bit n detects the rising edge of the pin selected
      --  in PINTSELn. Read 0: No rising edge has been detected on this pin
      --  since Reset or the last time a one was written to this bit. Write 0:
      --  no operation. Read 1: a rising edge has been detected since Reset or
      --  the last time a one was written to this bit. Write 1: clear rising
      --  edge detection for this pin.
      RDET     : RISE_RDET_Field := (As_Array => False, Val => 16#0#);
      --  Reserved.
      RESERVED : RISE_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISE_Register use record
      RDET     at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   -------------------
   -- FALL_Register --
   -------------------

   ---------------
   -- FALL.FDET --
   ---------------

   --  FALL_FDET array element
   subtype FALL_FDET_Element is Interfaces.Bit_Types.Bit;

   --  FALL_FDET array
   type FALL_FDET_Field_Array is array (0 .. 7) of FALL_FDET_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for FALL_FDET
   type FALL_FDET_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FDET as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  FDET as an array
            Arr : FALL_FDET_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for FALL_FDET_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype FALL_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin Interrupt Falling Edge register
   type FALL_Register is record
      --  Falling edge detect. Bit n detects the falling edge of the pin
      --  selected in PINTSELn. Read 0: No falling edge has been detected on
      --  this pin since Reset or the last time a one was written to this bit.
      --  Write 0: no operation. Read 1: a falling edge has been detected since
      --  Reset or the last time a one was written to this bit. Write 1: clear
      --  falling edge detection for this pin.
      FDET     : FALL_FDET_Field := (As_Array => False, Val => 16#0#);
      --  Reserved.
      RESERVED : FALL_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FALL_Register use record
      FDET     at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------
   -- IST_Register --
   ------------------

   ---------------
   -- IST.PSTAT --
   ---------------

   --  IST_PSTAT array element
   subtype IST_PSTAT_Element is Interfaces.Bit_Types.Bit;

   --  IST_PSTAT array
   type IST_PSTAT_Field_Array is array (0 .. 7) of IST_PSTAT_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for IST_PSTAT
   type IST_PSTAT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PSTAT as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  PSTAT as an array
            Arr : IST_PSTAT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for IST_PSTAT_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype IST_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Pin Interrupt Status register
   type IST_Register is record
      --  Pin interrupt status. Bit n returns the status, clears the edge
      --  interrupt, or inverts the active level of the pin selected in
      --  PINTSELn. Read 0: interrupt is not being requested for this interrupt
      --  pin. Write 0: no operation. Read 1: interrupt is being requested for
      --  this interrupt pin. Write 1 (edge-sensitive): clear rising- and
      --  falling-edge detection for this pin. Write 1 (level-sensitive):
      --  switch the active level for this pin (in the PINTENT_F register).
      PSTAT    : IST_PSTAT_Field := (As_Array => False, Val => 16#0#);
      --  Reserved.
      RESERVED : IST_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IST_Register use record
      PSTAT    at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  GPIO pin interrupt
   type GPIO_PIN_INT_Peripheral is record
      --  Pin Interrupt Mode register
      ISEL  : ISEL_Register;
      --  Pin Interrupt Enable (Rising) register
      IENR  : IENR_Register;
      --  Set Pin Interrupt Enable (Rising) register
      SIENR : SIENR_Register;
      --  Clear Pin Interrupt Enable (Rising) register
      CIENR : CIENR_Register;
      --  Pin Interrupt Enable Falling Edge / Active Level register
      IENF  : IENF_Register;
      --  Set Pin Interrupt Enable Falling Edge / Active Level register
      SIENF : SIENF_Register;
      --  Clear Pin Interrupt Enable Falling Edge / Active Level address
      CIENF : CIENF_Register;
      --  Pin Interrupt Rising Edge register
      RISE  : RISE_Register;
      --  Pin Interrupt Falling Edge register
      FALL  : FALL_Register;
      --  Pin Interrupt Status register
      IST   : IST_Register;
   end record
     with Volatile;

   for GPIO_PIN_INT_Peripheral use record
      ISEL  at 0 range 0 .. 31;
      IENR  at 4 range 0 .. 31;
      SIENR at 8 range 0 .. 31;
      CIENR at 12 range 0 .. 31;
      IENF  at 16 range 0 .. 31;
      SIENF at 20 range 0 .. 31;
      CIENF at 24 range 0 .. 31;
      RISE  at 28 range 0 .. 31;
      FALL  at 32 range 0 .. 31;
      IST   at 36 range 0 .. 31;
   end record;

   --  GPIO pin interrupt
   GPIO_PIN_INT_Periph : aliased GPIO_PIN_INT_Peripheral
     with Import, Address => GPIO_PIN_INT_Base;

end Interfaces.LPC43.GPIO_PIN_INT;
