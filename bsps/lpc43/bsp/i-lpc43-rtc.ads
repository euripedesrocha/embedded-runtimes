--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43.RTC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ------------------
   -- ILR_Register --
   ------------------

   subtype ILR_RTCCIF_Field is Interfaces.Bit_Types.Bit;
   subtype ILR_RTCALF_Field is Interfaces.Bit_Types.Bit;
   subtype ILR_RESERVED_Field is Interfaces.Bit_Types.UInt30;

   --  Interrupt Location Register
   type ILR_Register is record
      --  Write-only. When one, the Counter Increment Interrupt block generated
      --  an interrupt. Writing a one to this bit location clears the counter
      --  increment interrupt.
      RTCCIF   : ILR_RTCCIF_Field := 16#0#;
      --  Write-only. When one, the alarm registers generated an interrupt.
      --  Writing a one to this bit location clears the alarm interrupt.
      RTCALF   : ILR_RTCALF_Field := 16#0#;
      --  Write-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED : ILR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ILR_Register use record
      RTCCIF   at 0 range 0 .. 0;
      RTCALF   at 0 range 1 .. 1;
      RESERVED at 0 range 2 .. 31;
   end record;

   ------------------
   -- CCR_Register --
   ------------------

   --  Clock Enable.
   type ENUM is
     (
      --  The time counters are disabled so that they may be initialized.
      Disabled,
      --  The time counters are enabled.
      Enabled)
     with Size => 1;
   for ENUM use
     (Disabled => 0,
      Enabled => 1);

   --  CTC Reset.
   type ENUM_1 is
     (
      --  No effect.
      No_Effect,
      --  When one, the elements in the internal oscillator divider are reset,
      --  and remain reset until CCR[1] is changed to zero. This is the divider
      --  that generates the 1 Hz clock from the 32.768 kHz crystal. The state
      --  of the divider is not visible to software.
      Reset)
     with Size => 1;
   for ENUM_1 use
     (No_Effect => 0,
      Reset => 1);

   subtype CCR_RESERVED_Field is Interfaces.Bit_Types.UInt2;

   --  Calibration counter enable.
   type ENUM_2 is
     (
      --  The calibration counter is enabled and counting, using the 1 Hz
      --  clock. When the calibration counter is equal to the value of the
      --  CALIBRATION register, the counter resets and repeats counting up to
      --  the value of the CALIBRATION register. See Section 29.6.6.2 and
      --  Section 29.7.1.
      Enabled,
      --  The calibration counter is disabled and reset to zero.
      Disabled)
     with Size => 1;
   for ENUM_2 use
     (Enabled => 0,
      Disabled => 1);

   subtype CCR_RESERVED_Field_1 is Interfaces.Bit_Types.UInt27;

   --  Clock Control Register
   type CCR_Register is record
      --  Clock Enable.
      CLKEN      : ENUM := Interfaces.LPC43.RTC.Disabled;
      --  CTC Reset.
      CTCRST     : ENUM_1 := Interfaces.LPC43.RTC.No_Effect;
      --  Internal test mode controls. These bits must be 0 for normal RTC
      --  operation.
      RESERVED   : CCR_RESERVED_Field := 16#0#;
      --  Calibration counter enable.
      CCALEN     : ENUM_2 := Interfaces.LPC43.RTC.Enabled;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1 : CCR_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      CLKEN      at 0 range 0 .. 0;
      CTCRST     at 0 range 1 .. 1;
      RESERVED   at 0 range 2 .. 3;
      CCALEN     at 0 range 4 .. 4;
      RESERVED_1 at 0 range 5 .. 31;
   end record;

   -------------------
   -- CIIR_Register --
   -------------------

   subtype CIIR_IMSEC_Field is Interfaces.Bit_Types.Bit;
   subtype CIIR_IMMIN_Field is Interfaces.Bit_Types.Bit;
   subtype CIIR_IMHOUR_Field is Interfaces.Bit_Types.Bit;
   subtype CIIR_IMDOM_Field is Interfaces.Bit_Types.Bit;
   subtype CIIR_IMDOW_Field is Interfaces.Bit_Types.Bit;
   subtype CIIR_IMDOY_Field is Interfaces.Bit_Types.Bit;
   subtype CIIR_IMMON_Field is Interfaces.Bit_Types.Bit;
   subtype CIIR_IMYEAR_Field is Interfaces.Bit_Types.Bit;
   subtype CIIR_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Counter Increment Interrupt Register
   type CIIR_Register is record
      --  When 1, an increment of the Second value generates an interrupt.
      IMSEC    : CIIR_IMSEC_Field := 16#0#;
      --  When 1, an increment of the Minute value generates an interrupt.
      IMMIN    : CIIR_IMMIN_Field := 16#0#;
      --  When 1, an increment of the Hour value generates an interrupt.
      IMHOUR   : CIIR_IMHOUR_Field := 16#0#;
      --  When 1, an increment of the Day of Month value generates an
      --  interrupt.
      IMDOM    : CIIR_IMDOM_Field := 16#0#;
      --  When 1, an increment of the Day of Week value generates an interrupt.
      IMDOW    : CIIR_IMDOW_Field := 16#0#;
      --  When 1, an increment of the Day of Year value generates an interrupt.
      IMDOY    : CIIR_IMDOY_Field := 16#0#;
      --  When 1, an increment of the Month value generates an interrupt.
      IMMON    : CIIR_IMMON_Field := 16#0#;
      --  When 1, an increment of the Year value generates an interrupt.
      IMYEAR   : CIIR_IMYEAR_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : CIIR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CIIR_Register use record
      IMSEC    at 0 range 0 .. 0;
      IMMIN    at 0 range 1 .. 1;
      IMHOUR   at 0 range 2 .. 2;
      IMDOM    at 0 range 3 .. 3;
      IMDOW    at 0 range 4 .. 4;
      IMDOY    at 0 range 5 .. 5;
      IMMON    at 0 range 6 .. 6;
      IMYEAR   at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------
   -- AMR_Register --
   ------------------

   subtype AMR_AMRSEC_Field is Interfaces.Bit_Types.Bit;
   subtype AMR_AMRMIN_Field is Interfaces.Bit_Types.Bit;
   subtype AMR_AMRHOUR_Field is Interfaces.Bit_Types.Bit;
   subtype AMR_AMRDOM_Field is Interfaces.Bit_Types.Bit;
   subtype AMR_AMRDOW_Field is Interfaces.Bit_Types.Bit;
   subtype AMR_AMRDOY_Field is Interfaces.Bit_Types.Bit;
   subtype AMR_AMRMON_Field is Interfaces.Bit_Types.Bit;
   subtype AMR_AMRYEAR_Field is Interfaces.Bit_Types.Bit;
   subtype AMR_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Alarm Mask Register
   type AMR_Register is record
      --  When 1, the Second value is not compared for the alarm.
      AMRSEC   : AMR_AMRSEC_Field := 16#0#;
      --  When 1, the Minutes value is not compared for the alarm.
      AMRMIN   : AMR_AMRMIN_Field := 16#0#;
      --  When 1, the Hour value is not compared for the alarm.
      AMRHOUR  : AMR_AMRHOUR_Field := 16#0#;
      --  When 1, the Day of Month value is not compared for the alarm.
      AMRDOM   : AMR_AMRDOM_Field := 16#0#;
      --  When 1, the Day of Week value is not compared for the alarm.
      AMRDOW   : AMR_AMRDOW_Field := 16#0#;
      --  When 1, the Day of Year value is not compared for the alarm.
      AMRDOY   : AMR_AMRDOY_Field := 16#0#;
      --  When 1, the Month value is not compared for the alarm.
      AMRMON   : AMR_AMRMON_Field := 16#0#;
      --  When 1, the Year value is not compared for the alarm.
      AMRYEAR  : AMR_AMRYEAR_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : AMR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AMR_Register use record
      AMRSEC   at 0 range 0 .. 0;
      AMRMIN   at 0 range 1 .. 1;
      AMRHOUR  at 0 range 2 .. 2;
      AMRDOM   at 0 range 3 .. 3;
      AMRDOW   at 0 range 4 .. 4;
      AMRDOY   at 0 range 5 .. 5;
      AMRMON   at 0 range 6 .. 6;
      AMRYEAR  at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ---------------------
   -- CTIME0_Register --
   ---------------------

   subtype CTIME0_SECONDS_Field is Interfaces.Bit_Types.UInt6;
   subtype CTIME0_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype CTIME0_MINUTES_Field is Interfaces.Bit_Types.UInt6;
   subtype CTIME0_HOURS_Field is Interfaces.Bit_Types.UInt5;
   subtype CTIME0_RESERVED_Field_1 is Interfaces.Bit_Types.UInt3;
   subtype CTIME0_DOW_Field is Interfaces.Bit_Types.UInt3;
   subtype CTIME0_RESERVED_Field_2 is Interfaces.Bit_Types.UInt5;

   --  Consolidated Time Register 0
   type CTIME0_Register is record
      --  Read-only. Seconds value in the range of 0 to 59
      SECONDS    : CTIME0_SECONDS_Field;
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED   : CTIME0_RESERVED_Field;
      --  Read-only. Minutes value in the range of 0 to 59
      MINUTES    : CTIME0_MINUTES_Field;
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED_1 : CTIME0_RESERVED_Field;
      --  Read-only. Hours value in the range of 0 to 23
      HOURS      : CTIME0_HOURS_Field;
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED_2 : CTIME0_RESERVED_Field_1;
      --  Read-only. Day of week value in the range of 0 to 6
      DOW        : CTIME0_DOW_Field;
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED_3 : CTIME0_RESERVED_Field_2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTIME0_Register use record
      SECONDS    at 0 range 0 .. 5;
      RESERVED   at 0 range 6 .. 7;
      MINUTES    at 0 range 8 .. 13;
      RESERVED_1 at 0 range 14 .. 15;
      HOURS      at 0 range 16 .. 20;
      RESERVED_2 at 0 range 21 .. 23;
      DOW        at 0 range 24 .. 26;
      RESERVED_3 at 0 range 27 .. 31;
   end record;

   ---------------------
   -- CTIME1_Register --
   ---------------------

   subtype CTIME1_DOM_Field is Interfaces.Bit_Types.UInt5;
   subtype CTIME1_RESERVED_Field is Interfaces.Bit_Types.UInt3;
   subtype CTIME1_MONTH_Field is Interfaces.Bit_Types.UInt4;
   subtype CTIME1_RESERVED_Field_1 is Interfaces.Bit_Types.UInt4;
   subtype CTIME1_YEAR_Field is Interfaces.Bit_Types.UInt12;

   --  Consolidated Time Register 1
   type CTIME1_Register is record
      --  Read-only. Day of month value in the range of 1 to 28, 29, 30, or 31
      --  (depending on the month and whether it is a leap year).
      DOM        : CTIME1_DOM_Field;
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED   : CTIME1_RESERVED_Field;
      --  Read-only. Month value in the range of 1 to 12.
      MONTH      : CTIME1_MONTH_Field;
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED_1 : CTIME1_RESERVED_Field_1;
      --  Read-only. Year value in the range of 0 to 4095.
      YEAR       : CTIME1_YEAR_Field;
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED_2 : CTIME1_RESERVED_Field_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTIME1_Register use record
      DOM        at 0 range 0 .. 4;
      RESERVED   at 0 range 5 .. 7;
      MONTH      at 0 range 8 .. 11;
      RESERVED_1 at 0 range 12 .. 15;
      YEAR       at 0 range 16 .. 27;
      RESERVED_2 at 0 range 28 .. 31;
   end record;

   ---------------------
   -- CTIME2_Register --
   ---------------------

   subtype CTIME2_DOY_Field is Interfaces.Bit_Types.UInt12;
   subtype CTIME2_RESERVED_Field is Interfaces.Bit_Types.UInt20;

   --  Consolidated Time Register 2
   type CTIME2_Register is record
      --  Read-only. Day of year value in the range of 1 to 365 (366 for leap
      --  years).
      DOY      : CTIME2_DOY_Field;
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED : CTIME2_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTIME2_Register use record
      DOY      at 0 range 0 .. 11;
      RESERVED at 0 range 12 .. 31;
   end record;

   ------------------
   -- SEC_Register --
   ------------------

   subtype SEC_SECONDS_Field is Interfaces.Bit_Types.UInt6;
   subtype SEC_RESERVED_Field is Interfaces.Bit_Types.UInt26;

   --  Seconds Register
   type SEC_Register is record
      --  Seconds value in the range of 0 to 59
      SECONDS  : SEC_SECONDS_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : SEC_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEC_Register use record
      SECONDS  at 0 range 0 .. 5;
      RESERVED at 0 range 6 .. 31;
   end record;

   ------------------
   -- MIN_Register --
   ------------------

   subtype MIN_MINUTES_Field is Interfaces.Bit_Types.UInt6;
   subtype MIN_RESERVED_Field is Interfaces.Bit_Types.UInt26;

   --  Minutes Register
   type MIN_Register is record
      --  Minutes value in the range of 0 to 59
      MINUTES  : MIN_MINUTES_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : MIN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIN_Register use record
      MINUTES  at 0 range 0 .. 5;
      RESERVED at 0 range 6 .. 31;
   end record;

   ------------------
   -- HRS_Register --
   ------------------

   subtype HRS_HOURS_Field is Interfaces.Bit_Types.UInt5;
   subtype HRS_RESERVED_Field is Interfaces.Bit_Types.UInt27;

   --  Hours Register
   type HRS_Register is record
      --  Hours value in the range of 0 to 23
      HOURS    : HRS_HOURS_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : HRS_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HRS_Register use record
      HOURS    at 0 range 0 .. 4;
      RESERVED at 0 range 5 .. 31;
   end record;

   ------------------
   -- DOM_Register --
   ------------------

   subtype DOM_DOM_Field is Interfaces.Bit_Types.UInt5;
   subtype DOM_RESERVED_Field is Interfaces.Bit_Types.UInt27;

   --  Day of Month Register
   type DOM_Register is record
      --  Day of month value in the range of 1 to 28, 29, 30, or 31 (depending
      --  on the month and whether it is a leap year).
      DOM      : DOM_DOM_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : DOM_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOM_Register use record
      DOM      at 0 range 0 .. 4;
      RESERVED at 0 range 5 .. 31;
   end record;

   ------------------
   -- DOW_Register --
   ------------------

   subtype DOW_DOW_Field is Interfaces.Bit_Types.UInt3;
   subtype DOW_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  Day of Week Register
   type DOW_Register is record
      --  Day of week value in the range of 0 to 6.
      DOW      : DOW_DOW_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : DOW_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOW_Register use record
      DOW      at 0 range 0 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ------------------
   -- DOY_Register --
   ------------------

   subtype DOY_DOY_Field is Interfaces.Bit_Types.UInt9;
   subtype DOY_RESERVED_Field is Interfaces.Bit_Types.UInt23;

   --  Day of Year Register
   type DOY_Register is record
      --  Day of year value in the range of 1 to 365 (366 for leap years).
      DOY      : DOY_DOY_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : DOY_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOY_Register use record
      DOY      at 0 range 0 .. 8;
      RESERVED at 0 range 9 .. 31;
   end record;

   --------------------
   -- MONTH_Register --
   --------------------

   subtype MONTH_MONTH_Field is Interfaces.Bit_Types.UInt4;
   subtype MONTH_RESERVED_Field is Interfaces.Bit_Types.UInt28;

   --  Months Register
   type MONTH_Register is record
      --  Month value in the range of 1 to 12.
      MONTH    : MONTH_MONTH_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : MONTH_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MONTH_Register use record
      MONTH    at 0 range 0 .. 3;
      RESERVED at 0 range 4 .. 31;
   end record;

   -------------------
   -- YEAR_Register --
   -------------------

   subtype YEAR_YEAR_Field is Interfaces.Bit_Types.UInt12;
   subtype YEAR_RESERVED_Field is Interfaces.Bit_Types.UInt20;

   --  Years Register
   type YEAR_Register is record
      --  Year value in the range of 0 to 4095.
      YEAR     : YEAR_YEAR_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : YEAR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for YEAR_Register use record
      YEAR     at 0 range 0 .. 11;
      RESERVED at 0 range 12 .. 31;
   end record;

   --------------------------
   -- CALIBRATION_Register --
   --------------------------

   subtype CALIBRATION_CALVAL_Field is Interfaces.Bit_Types.UInt17;

   --  Calibration direction
   type ENUM_3 is
     (
      --  Forward calibration. When CALVAL is equal to the calibration counter,
      --  the RTC timers will jump by 2 seconds.
      Forward_Calibration,
      --  Backward calibration. When CALVAL is equal to the calibration
      --  counter, the RTC timers will stop incrementing for 1 second.
      Backward_Calibration)
     with Size => 1;
   for ENUM_3 use
     (Forward_Calibration => 0,
      Backward_Calibration => 1);

   --  Calibration Value Register
   type CALIBRATION_Register is record
      --  If enabled, the calibration counter counts up to this value. The
      --  maximum value is 131 072 corresponding to about 36.4 hours.
      --  Calibration is disabled if CALVAL = 0.
      CALVAL         : CALIBRATION_CALVAL_Field := 16#0#;
      --  Calibration direction
      CALDIR         : ENUM_3 := Interfaces.LPC43.RTC.Forward_Calibration;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CALIBRATION_Register use record
      CALVAL         at 0 range 0 .. 16;
      CALDIR         at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   -------------------
   -- ASEC_Register --
   -------------------

   subtype ASEC_SECONDS_Field is Interfaces.Bit_Types.UInt6;
   subtype ASEC_RESERVED_Field is Interfaces.Bit_Types.UInt26;

   --  Alarm value for Seconds
   type ASEC_Register is record
      --  Seconds value in the range of 0 to 59
      SECONDS  : ASEC_SECONDS_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : ASEC_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASEC_Register use record
      SECONDS  at 0 range 0 .. 5;
      RESERVED at 0 range 6 .. 31;
   end record;

   -------------------
   -- AMIN_Register --
   -------------------

   subtype AMIN_MINUTES_Field is Interfaces.Bit_Types.UInt6;
   subtype AMIN_RESERVED_Field is Interfaces.Bit_Types.UInt26;

   --  Alarm value for Minutes
   type AMIN_Register is record
      --  Minutes value in the range of 0 to 59
      MINUTES  : AMIN_MINUTES_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : AMIN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AMIN_Register use record
      MINUTES  at 0 range 0 .. 5;
      RESERVED at 0 range 6 .. 31;
   end record;

   -------------------
   -- AHRS_Register --
   -------------------

   subtype AHRS_HOURS_Field is Interfaces.Bit_Types.UInt5;
   subtype AHRS_RESERVED_Field is Interfaces.Bit_Types.UInt27;

   --  Alarm value for Hours
   type AHRS_Register is record
      --  Hours value in the range of 0 to 23
      HOURS    : AHRS_HOURS_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : AHRS_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHRS_Register use record
      HOURS    at 0 range 0 .. 4;
      RESERVED at 0 range 5 .. 31;
   end record;

   -------------------
   -- ADOM_Register --
   -------------------

   subtype ADOM_DOM_Field is Interfaces.Bit_Types.UInt5;
   subtype ADOM_RESERVED_Field is Interfaces.Bit_Types.UInt27;

   --  Alarm value for Day of Month
   type ADOM_Register is record
      --  Day of month value in the range of 1 to 28, 29, 30, or 31 (depending
      --  on the month and whether it is a leap year).
      DOM      : ADOM_DOM_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : ADOM_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADOM_Register use record
      DOM      at 0 range 0 .. 4;
      RESERVED at 0 range 5 .. 31;
   end record;

   -------------------
   -- ADOW_Register --
   -------------------

   subtype ADOW_DOW_Field is Interfaces.Bit_Types.UInt3;
   subtype ADOW_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  Alarm value for Day of Week
   type ADOW_Register is record
      --  Day of week value in the range of 0 to 6.
      DOW      : ADOW_DOW_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : ADOW_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADOW_Register use record
      DOW      at 0 range 0 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -------------------
   -- ADOY_Register --
   -------------------

   subtype ADOY_DOY_Field is Interfaces.Bit_Types.UInt9;
   subtype ADOY_RESERVED_Field is Interfaces.Bit_Types.UInt23;

   --  Alarm value for Day of Year
   type ADOY_Register is record
      --  Day of year value in the range of 1 to 365 (366 for leap years).
      DOY      : ADOY_DOY_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : ADOY_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADOY_Register use record
      DOY      at 0 range 0 .. 8;
      RESERVED at 0 range 9 .. 31;
   end record;

   -------------------
   -- AMON_Register --
   -------------------

   subtype AMON_MONTH_Field is Interfaces.Bit_Types.UInt4;
   subtype AMON_RESERVED_Field is Interfaces.Bit_Types.UInt28;

   --  Alarm value for Months
   type AMON_Register is record
      --  Month value in the range of 1 to 12.
      MONTH    : AMON_MONTH_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : AMON_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AMON_Register use record
      MONTH    at 0 range 0 .. 3;
      RESERVED at 0 range 4 .. 31;
   end record;

   -------------------
   -- AYRS_Register --
   -------------------

   subtype AYRS_YEAR_Field is Interfaces.Bit_Types.UInt12;
   subtype AYRS_RESERVED_Field is Interfaces.Bit_Types.UInt20;

   --  Alarm value for Year
   type AYRS_Register is record
      --  Year value in the range of 0 to 4095.
      YEAR     : AYRS_YEAR_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : AYRS_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AYRS_Register use record
      YEAR     at 0 range 0 .. 11;
      RESERVED at 0 range 12 .. 31;
   end record;

   -----------------------
   -- ERSTATUS_Register --
   -----------------------

   --  Channel0 event flag (WAKEUP0 pin). Set at the end of any second if there
   --  has been an event during the preceding second. This bit is cleared by
   --  writing a 1 to it. Writing 0 has no effect.
   type ENUM_4 is
     (
      --  No event change on channel 0.
      No_Change,
      --  At least one event has occurred on channel 0.
      Event)
     with Size => 1;
   for ENUM_4 use
     (No_Change => 0,
      Event => 1);

   subtype ERSTATUS_RESERVED_Field is Interfaces.Bit_Types.UInt27;

   --  Interrupt/wake-up request flag (Read-only). This bit is cleared by
   --  writing a 1 to it. Writing 0 has no effect.
   type ENUM_5 is
     (
      --  No interrupt/wake-up request is pending
      Nointerruptwakeup,
      --  An interrupt/wake-up request is pending.
      Interruptwakeup)
     with Size => 1;
   for ENUM_5 use
     (Nointerruptwakeup => 0,
      Interruptwakeup => 1);

   --  Event Monitor/Recorder Status register. Contains status flags for event
   --  channels and other Event Monitor/Recorder conditions.
   type ERSTATUS_Register is record
      --  Channel0 event flag (WAKEUP0 pin). Set at the end of any second if
      --  there has been an event during the preceding second. This bit is
      --  cleared by writing a 1 to it. Writing 0 has no effect.
      EV0        : ENUM_4 := Interfaces.LPC43.RTC.No_Change;
      --  Channel1 Event flag (WAKEUP1 pin). Set at the end of any second if
      --  there has been an event during the preceding second. This bit is
      --  cleared by writing a 1 to it. Writing 0 has no effect.
      EV1        : ENUM_4 := Interfaces.LPC43.RTC.No_Change;
      --  Channel2 Event flag (WAKEUP2 pin). Set at the end of any second if
      --  there has been an event during the preceding second. This bit is
      --  cleared by writing a 1 to it. Writing 0 has no effect.
      EV2        : ENUM_4 := Interfaces.LPC43.RTC.No_Change;
      --  General purpose register asynchronous clear flag. This bit is cleared
      --  by writing a 1 to it. Writing 0 has no effect.
      GP_CLEARED : ENUM_4 := Interfaces.LPC43.RTC.No_Change;
      --  Reserved. Read value is undefined, only zero should be written.
      RESERVED   : ERSTATUS_RESERVED_Field := 16#0#;
      --  Interrupt/wake-up request flag (Read-only). This bit is cleared by
      --  writing a 1 to it. Writing 0 has no effect.
      WAKEUP     : ENUM_5 := Interfaces.LPC43.RTC.Nointerruptwakeup;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERSTATUS_Register use record
      EV0        at 0 range 0 .. 0;
      EV1        at 0 range 1 .. 1;
      EV2        at 0 range 2 .. 2;
      GP_CLEARED at 0 range 3 .. 3;
      RESERVED   at 0 range 4 .. 30;
      WAKEUP     at 0 range 31 .. 31;
   end record;

   -----------------------
   -- ERCONTRO_Register --
   -----------------------

   --  Selects the polarity of an event on input pin WAKEUP0.
   type ENUM_6 is
     (
      --  A channel 0 event is defined as a negative edge on WAKEUP0.
      Negative,
      --  A channel 0 event is defined as a positive edge on WAKEUP0.
      Positive)
     with Size => 1;
   for ENUM_6 use
     (Negative => 0,
      Positive => 1);

   subtype ERCONTRO_RESERVED_Field is Interfaces.Bit_Types.UInt6;

   --  Controls enabling the Event Monitor/Recorder and selecting its operating
   --  frequency. Event Monitor/Recorder registers can always be written to
   --  regardless of the state of these bits. Events occurring during the 1-sec
   --  interval immediately following enabling of the clocks may not be
   --  recognized.
   type ENUM_7 is
     (
      --  Disable Event Monitor/Recorder clocks. Operation of the Event
      --  Monitor/Recorder is disabled except for asynchronous clearing of GP
      --  registers if selected.
      Disable_Event_Monito,
      --  16 Hz sample clock. Enable Event Monitor/Recorder and select a 16 Hz
      --  sample clock for event input edge detection and glitch suppression.
      --  Pulses (in either direction) shorter than 62.5 ms to 125 ms will be
      --  filtered out.
      ENUM_16_Hz_Sample_Clock,
      --  64 Hz sample clock. Enable Event Monitor/Recorder and select a 64 Hz
      --  sample clock for event input edge detection and glitch suppression.
      --  Pulses (in either direction) shorter than 15.6 ms to 31.2 ms will be
      --  filtered out.
      ENUM_64_Hz_Sample_Clock,
      --  1 kHz sample clock. Enable Event Monitor/Recorder and select a 1 kHz
      --  sample clock for event input edge detection and glitch suppression.
      --  Pulses (in either direction) shorter than 1 ms to 2 ms will be
      --  filtered out.
      ENUM_1_Khz_Sample_Clock)
     with Size => 2;
   for ENUM_7 use
     (Disable_Event_Monito => 0,
      ENUM_16_Hz_Sample_Clock => 1,
      ENUM_64_Hz_Sample_Clock => 2,
      ENUM_1_Khz_Sample_Clock => 3);

   --  Event Monitor/Recorder Control register. Contains bits that control
   --  actions for the event channels as well as for Event Monitor/Recorder
   --  setup.
   type ERCONTRO_Register is record
      --  Interrupt and wake-up enable for channel 0.
      INTWAKE_EN0  : ENUM := Interfaces.LPC43.RTC.Disabled;
      --  Enables automatically clearing the RTC general purpose registers when
      --  an event occurs on channel 0.
      GPCLEAR_EN0  : ENUM := Interfaces.LPC43.RTC.Disabled;
      --  Selects the polarity of an event on input pin WAKEUP0.
      POL0         : ENUM_6 := Interfaces.LPC43.RTC.Negative;
      --  Event enable control for channel 0. Event Inputs should remain
      --  DISABLED when not being used for event detection, particularly if the
      --  associated pin is being used for some other function.
      EV0_INPUT_EN : ENUM := Interfaces.LPC43.RTC.Disabled;
      --  Reserved. Read value is undefined, only zero should be written.
      RESERVED     : ERCONTRO_RESERVED_Field := 16#0#;
      --  Interrupt and wake-up enable for channel 1.
      INTWAKE_EN1  : ENUM := Interfaces.LPC43.RTC.Disabled;
      --  Enables automatically clearing the RTC general purpose registers when
      --  an event occurs on channel 1.
      GPCLEAR_EN1  : ENUM := Interfaces.LPC43.RTC.Disabled;
      --  Selects the polarity of an event on input pin WAKEUP1.
      POL1         : ENUM_6 := Interfaces.LPC43.RTC.Negative;
      --  Event enable control for channel 1. Event Inputs should remain
      --  DISABLED when not being used for event detection, particularly if the
      --  associated pin is being used for some other function.
      EV1_INPUT_EN : ENUM := Interfaces.LPC43.RTC.Disabled;
      --  Reserved. Read value is undefined, only zero should be written.
      RESERVED_1   : ERCONTRO_RESERVED_Field := 16#0#;
      --  Interrupt and wake-up enable for channel 2.
      INTWAKE_EN2  : ENUM := Interfaces.LPC43.RTC.Disabled;
      --  Enables automatically clearing the RTC general purpose registers when
      --  an event occurs on channel 2.
      GPCLEAR_EN2  : ENUM := Interfaces.LPC43.RTC.Disabled;
      --  Selects the polarity of an event on input pin WAKEUP2.
      POL2         : ENUM_6 := Interfaces.LPC43.RTC.Negative;
      --  Event enable control for channel 2. Event Inputs should remain
      --  DISABLED when not being used for event detection, particularly if the
      --  associated pin is being used for some other function.
      EV2_INPUT_EN : ENUM := Interfaces.LPC43.RTC.Disabled;
      --  Reserved. Read value is undefined, only zero should be written.
      RESERVED_2   : ERCONTRO_RESERVED_Field := 16#0#;
      --  Controls enabling the Event Monitor/Recorder and selecting its
      --  operating frequency. Event Monitor/Recorder registers can always be
      --  written to regardless of the state of these bits. Events occurring
      --  during the 1-sec interval immediately following enabling of the
      --  clocks may not be recognized.
      ERMODE       : ENUM_7 := Interfaces.LPC43.RTC.Disable_Event_Monito;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERCONTRO_Register use record
      INTWAKE_EN0  at 0 range 0 .. 0;
      GPCLEAR_EN0  at 0 range 1 .. 1;
      POL0         at 0 range 2 .. 2;
      EV0_INPUT_EN at 0 range 3 .. 3;
      RESERVED     at 0 range 4 .. 9;
      INTWAKE_EN1  at 0 range 10 .. 10;
      GPCLEAR_EN1  at 0 range 11 .. 11;
      POL1         at 0 range 12 .. 12;
      EV1_INPUT_EN at 0 range 13 .. 13;
      RESERVED_1   at 0 range 14 .. 19;
      INTWAKE_EN2  at 0 range 20 .. 20;
      GPCLEAR_EN2  at 0 range 21 .. 21;
      POL2         at 0 range 22 .. 22;
      EV2_INPUT_EN at 0 range 23 .. 23;
      RESERVED_2   at 0 range 24 .. 29;
      ERMODE       at 0 range 30 .. 31;
   end record;

   -------------------------
   -- ERCOUNTERS_Register --
   -------------------------

   subtype ERCOUNTERS_COUNTER0_Field is Interfaces.Bit_Types.UInt3;
   subtype ERCOUNTERS_RESERVED_Field is Interfaces.Bit_Types.UInt5;
   subtype ERCOUNTERS_COUNTER1_Field is Interfaces.Bit_Types.UInt3;
   subtype ERCOUNTERS_COUNTER2_Field is Interfaces.Bit_Types.UInt3;
   subtype ERCOUNTERS_RESERVED_Field_1 is Interfaces.Bit_Types.UInt13;

   --  Event Monitor/Recorder Counters register. Allows reading the counters
   --  associated with the event channels.
   type ERCOUNTERS_Register is record
      --  Read-only. Value of the counter for Event 0. If the counter reaches
      --  full count (the value 7), it remains there if additional events
      --  occur. This counter is cleared when the corresponding EVx bit in the
      --  ERSTATUS register is cleared by software.
      COUNTER0   : ERCOUNTERS_COUNTER0_Field;
      --  Read-only. Reserved. The value read from a reserved bit is not
      --  defined.
      RESERVED   : ERCOUNTERS_RESERVED_Field;
      --  Read-only. Value of the counter for event 1. See description for
      --  COUNTER0.
      COUNTER1   : ERCOUNTERS_COUNTER1_Field;
      --  Read-only. Reserved. The value read from a reserved bit is not
      --  defined.
      RESERVED_1 : ERCOUNTERS_RESERVED_Field;
      --  Read-only. Value of the counter for event 2. See description for
      --  COUNTER0.
      COUNTER2   : ERCOUNTERS_COUNTER2_Field;
      --  Read-only. Reserved. The value read from a reserved bit is not
      --  defined.
      RESERVED_2 : ERCOUNTERS_RESERVED_Field_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERCOUNTERS_Register use record
      COUNTER0   at 0 range 0 .. 2;
      RESERVED   at 0 range 3 .. 7;
      COUNTER1   at 0 range 8 .. 10;
      RESERVED_1 at 0 range 11 .. 15;
      COUNTER2   at 0 range 16 .. 18;
      RESERVED_2 at 0 range 19 .. 31;
   end record;

   ---------------------------
   -- ERFIRSTSTAMP_Register --
   ---------------------------

   subtype ERFIRSTSTAMP_SEC_Field is Interfaces.Bit_Types.UInt6;
   subtype ERFIRSTSTAMP_MIN_Field is Interfaces.Bit_Types.UInt6;
   subtype ERFIRSTSTAMP_HOUR_Field is Interfaces.Bit_Types.UInt5;
   subtype ERFIRSTSTAMP_DOY_Field is Interfaces.Bit_Types.UInt9;
   subtype ERFIRSTSTAMP_RESERVED_Field is Interfaces.Bit_Types.UInt6;

   --  Event Monitor/Recorder First Stamp register for channel 0. Retains the
   --  time stamp for the first event on channel 0.
   type ERFIRSTSTAMP_Register is record
      --  Read-only. Seconds value in the range of 0 to 59.
      SEC      : ERFIRSTSTAMP_SEC_Field;
      --  Read-only. Minutes value in the range of 0 to 59.
      MIN      : ERFIRSTSTAMP_MIN_Field;
      --  Read-only. Hours value in the range of 0 to 23.
      HOUR     : ERFIRSTSTAMP_HOUR_Field;
      --  Read-only. Day of Year value in the range of 1 to 366.
      DOY      : ERFIRSTSTAMP_DOY_Field;
      --  Read-only. Reserved. The value read from a reserved bit is not
      --  defined.
      RESERVED : ERFIRSTSTAMP_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERFIRSTSTAMP_Register use record
      SEC      at 0 range 0 .. 5;
      MIN      at 0 range 6 .. 11;
      HOUR     at 0 range 12 .. 16;
      DOY      at 0 range 17 .. 25;
      RESERVED at 0 range 26 .. 31;
   end record;

   --  Event Monitor/Recorder First Stamp register for channel 0. Retains the
   --  time stamp for the first event on channel 0.
   type ERFIRSTSTAMP_Registers is array (0 .. 2) of ERFIRSTSTAMP_Register;

   --------------------------
   -- ERLASTSTAMP_Register --
   --------------------------

   subtype ERLASTSTAMP_SEC_Field is Interfaces.Bit_Types.UInt6;
   subtype ERLASTSTAMP_MIN_Field is Interfaces.Bit_Types.UInt6;
   subtype ERLASTSTAMP_HOUR_Field is Interfaces.Bit_Types.UInt5;
   subtype ERLASTSTAMP_DOY_Field is Interfaces.Bit_Types.UInt9;
   subtype ERLASTSTAMP_RESERVED_Field is Interfaces.Bit_Types.UInt6;

   --  Event Monitor/Recorder Last Stamp register for channel 0. Retains the
   --  time stamp for the last (i.e. most recent) event on channel 0.
   type ERLASTSTAMP_Register is record
      --  Read-only. Seconds value in the range of 0 to 59.
      SEC      : ERLASTSTAMP_SEC_Field;
      --  Read-only. Minutes value in the range of 0 to 59.
      MIN      : ERLASTSTAMP_MIN_Field;
      --  Read-only. Hours value in the range of 0 to 23.
      HOUR     : ERLASTSTAMP_HOUR_Field;
      --  Read-only. Day of Year value in the range of 1 to 366.
      DOY      : ERLASTSTAMP_DOY_Field;
      --  Read-only. Reserved. The value read from a reserved bit is not
      --  defined.
      RESERVED : ERLASTSTAMP_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERLASTSTAMP_Register use record
      SEC      at 0 range 0 .. 5;
      MIN      at 0 range 6 .. 11;
      HOUR     at 0 range 12 .. 16;
      DOY      at 0 range 17 .. 25;
      RESERVED at 0 range 26 .. 31;
   end record;

   --  Event Monitor/Recorder Last Stamp register for channel 0. Retains the
   --  time stamp for the last (i.e. most recent) event on channel 0.
   type ERLASTSTAMP_Registers is array (0 .. 2) of ERLASTSTAMP_Register;

   -----------------
   -- Peripherals --
   -----------------

   --  Real-Time Clock (RTC) and event recorder
   type RTC_Peripheral is record
      --  Interrupt Location Register
      ILR          : ILR_Register;
      --  Clock Control Register
      CCR          : CCR_Register;
      --  Counter Increment Interrupt Register
      CIIR         : CIIR_Register;
      --  Alarm Mask Register
      AMR          : AMR_Register;
      --  Consolidated Time Register 0
      CTIME0       : CTIME0_Register;
      --  Consolidated Time Register 1
      CTIME1       : CTIME1_Register;
      --  Consolidated Time Register 2
      CTIME2       : CTIME2_Register;
      --  Seconds Register
      SEC          : SEC_Register;
      --  Minutes Register
      MIN          : MIN_Register;
      --  Hours Register
      HRS          : HRS_Register;
      --  Day of Month Register
      DOM          : DOM_Register;
      --  Day of Week Register
      DOW          : DOW_Register;
      --  Day of Year Register
      DOY          : DOY_Register;
      --  Months Register
      MONTH        : MONTH_Register;
      --  Years Register
      YEAR         : YEAR_Register;
      --  Calibration Value Register
      CALIBRATION  : CALIBRATION_Register;
      --  Alarm value for Seconds
      ASEC         : ASEC_Register;
      --  Alarm value for Minutes
      AMIN         : AMIN_Register;
      --  Alarm value for Hours
      AHRS         : AHRS_Register;
      --  Alarm value for Day of Month
      ADOM         : ADOM_Register;
      --  Alarm value for Day of Week
      ADOW         : ADOW_Register;
      --  Alarm value for Day of Year
      ADOY         : ADOY_Register;
      --  Alarm value for Months
      AMON         : AMON_Register;
      --  Alarm value for Year
      AYRS         : AYRS_Register;
      --  Event Monitor/Recorder Status register. Contains status flags for
      --  event channels and other Event Monitor/Recorder conditions.
      ERSTATUS     : ERSTATUS_Register;
      --  Event Monitor/Recorder Control register. Contains bits that control
      --  actions for the event channels as well as for Event Monitor/Recorder
      --  setup.
      ERCONTRO     : ERCONTRO_Register;
      --  Event Monitor/Recorder Counters register. Allows reading the counters
      --  associated with the event channels.
      ERCOUNTERS   : ERCOUNTERS_Register;
      --  Event Monitor/Recorder First Stamp register for channel 0. Retains
      --  the time stamp for the first event on channel 0.
      ERFIRSTSTAMP : ERFIRSTSTAMP_Registers;
      --  Event Monitor/Recorder Last Stamp register for channel 0. Retains the
      --  time stamp for the last (i.e. most recent) event on channel 0.
      ERLASTSTAMP  : ERLASTSTAMP_Registers;
   end record
     with Volatile;

   for RTC_Peripheral use record
      ILR          at 0 range 0 .. 31;
      CCR          at 8 range 0 .. 31;
      CIIR         at 12 range 0 .. 31;
      AMR          at 16 range 0 .. 31;
      CTIME0       at 20 range 0 .. 31;
      CTIME1       at 24 range 0 .. 31;
      CTIME2       at 28 range 0 .. 31;
      SEC          at 32 range 0 .. 31;
      MIN          at 36 range 0 .. 31;
      HRS          at 40 range 0 .. 31;
      DOM          at 44 range 0 .. 31;
      DOW          at 48 range 0 .. 31;
      DOY          at 52 range 0 .. 31;
      MONTH        at 56 range 0 .. 31;
      YEAR         at 60 range 0 .. 31;
      CALIBRATION  at 64 range 0 .. 31;
      ASEC         at 96 range 0 .. 31;
      AMIN         at 100 range 0 .. 31;
      AHRS         at 104 range 0 .. 31;
      ADOM         at 108 range 0 .. 31;
      ADOW         at 112 range 0 .. 31;
      ADOY         at 116 range 0 .. 31;
      AMON         at 120 range 0 .. 31;
      AYRS         at 124 range 0 .. 31;
      ERSTATUS     at 128 range 0 .. 31;
      ERCONTRO     at 132 range 0 .. 31;
      ERCOUNTERS   at 136 range 0 .. 31;
      ERFIRSTSTAMP at 144 range 0 .. 95;
      ERLASTSTAMP  at 160 range 0 .. 95;
   end record;

   --  Real-Time Clock (RTC) and event recorder
   RTC_Periph : aliased RTC_Peripheral
     with Import, Address => RTC_Base;

end Interfaces.LPC43.RTC;
