--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43.EMC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ----------------------
   -- CONTROL_Register --
   ----------------------

   --  EMC Enable. Indicates if the EMC is enabled or disabled.Disabling the
   --  EMC reduces power consumption. When the memory controller is disabled
   --  the memory is not refreshed. The memory controller is enabled by setting
   --  the enable bit, or by reset. This bit must only be modified when the EMC
   --  is in idle state.[1]
   type ENUM is
     (
      --  Disabled
      Disabled,
      --  Enabled. (POR and warm reset value).
      Enabled)
     with Size => 1;
   for ENUM use
     (Disabled => 0,
      Enabled => 1);

   --  Address mirror. Indicates normal or reset memory map. On POR, CS1 is
   --  mirrored to both CS0 and DYCS0 memory areas. Clearing the M bit enables
   --  CS0 and DYCS0 memory to be accessed.
   type ENUM_1 is
     (
      --  Normal. Normal memory map.
      Normal,
      --  Reset. Reset memory map. Static memory CS1 is mirrored onto CS0 and
      --  DYCS0 (POR reset value).
      Reset)
     with Size => 1;
   for ENUM_1 use
     (Normal => 0,
      Reset => 1);

   --  Low-power mode. Indicates normal, or low-power mode. Entering low-power
   --  mode reduces memory controller power consumption. Dynamic memory is
   --  refreshed as necessary. The memory controller returns to normal
   --  functional mode by clearing the low-power mode bit (L), or by POR. This
   --  bit must only be modified when the EMC is in idle state.[1]
   type ENUM_2 is
     (
      --  Normal. Normal mode (warm reset value).
      Normal,
      --  Low-power mode.
      Low_Power_Mode)
     with Size => 1;
   for ENUM_2 use
     (Normal => 0,
      Low_Power_Mode => 1);

   subtype CONTROL_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  Controls operation of the memory controller.
   type CONTROL_Register is record
      --  EMC Enable. Indicates if the EMC is enabled or disabled.Disabling the
      --  EMC reduces power consumption. When the memory controller is disabled
      --  the memory is not refreshed. The memory controller is enabled by
      --  setting the enable bit, or by reset. This bit must only be modified
      --  when the EMC is in idle state.[1]
      E        : ENUM := Interfaces.LPC43.EMC.Enabled;
      --  Address mirror. Indicates normal or reset memory map. On POR, CS1 is
      --  mirrored to both CS0 and DYCS0 memory areas. Clearing the M bit
      --  enables CS0 and DYCS0 memory to be accessed.
      M        : ENUM_1 := Interfaces.LPC43.EMC.Reset;
      --  Low-power mode. Indicates normal, or low-power mode. Entering
      --  low-power mode reduces memory controller power consumption. Dynamic
      --  memory is refreshed as necessary. The memory controller returns to
      --  normal functional mode by clearing the low-power mode bit (L), or by
      --  POR. This bit must only be modified when the EMC is in idle state.[1]
      L        : ENUM_2 := Interfaces.LPC43.EMC.Normal;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : CONTROL_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONTROL_Register use record
      E        at 0 range 0 .. 0;
      M        at 0 range 1 .. 1;
      L        at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------
   -- STATUS_Register --
   ---------------------

   --  Busy indicator. This bit is used to ensure that the memory controller
   --  enters the low-power or disabled mode cleanly by determining if the
   --  memory controller is busy or not:
   type ENUM_3 is
     (
      --  Idle. EMC is idle (warm reset value).
      Idle,
      --  Busy. EMC is busy performing memory transactions, commands,
      --  auto-refresh cycles, or is in self-refresh mode (POR reset value).
      Busy)
     with Size => 1;
   for ENUM_3 use
     (Idle => 0,
      Busy => 1);

   --  Write buffer status. This bit enables the EMC to enter low-power mode or
   --  disabled mode cleanly:
   type ENUM_4 is
     (
      --  Empty. Write buffers empty (POR reset value)
      Empty,
      --  Data. Write buffers contain data.
      Data)
     with Size => 1;
   for ENUM_4 use
     (Empty => 0,
      Data => 1);

   --  Self-refresh acknowledge. This bit indicates the operating mode of the
   --  EMC:
   type ENUM_5 is
     (
      --  Normal mode.
      Normal_Mode,
      --  Self-refresh mode. (POR reset value.)
      Self_Refresh_Mode)
     with Size => 1;
   for ENUM_5 use
     (Normal_Mode => 0,
      Self_Refresh_Mode => 1);

   subtype STATUS_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  Provides EMC status information.
   type STATUS_Register is record
      --  Read-only. Busy indicator. This bit is used to ensure that the memory
      --  controller enters the low-power or disabled mode cleanly by
      --  determining if the memory controller is busy or not:
      B        : ENUM_3;
      --  Read-only. Write buffer status. This bit enables the EMC to enter
      --  low-power mode or disabled mode cleanly:
      S        : ENUM_4;
      --  Read-only. Self-refresh acknowledge. This bit indicates the operating
      --  mode of the EMC:
      SA       : ENUM_5;
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED : STATUS_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      B        at 0 range 0 .. 0;
      S        at 0 range 1 .. 1;
      SA       at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   ---------------------
   -- CONFIG_Register --
   ---------------------

   --  Endian mode.
   type ENUM_6 is
     (
      --  Little-endian mode. (POR reset value.)
      Little_Endian_Mode,
      --  Big-endian mode.
      Big_Endian_Mode)
     with Size => 1;
   for ENUM_6 use
     (Little_Endian_Mode => 0,
      Big_Endian_Mode => 1);

   subtype CONFIG_RESERVED_Field is Interfaces.Bit_Types.UInt7;
   subtype CONFIG_RESERVED_Field_1 is Interfaces.Bit_Types.Bit;
   subtype CONFIG_RESERVED_Field_2 is Interfaces.Bit_Types.UInt23;

   --  Configures operation of the memory controller.
   type CONFIG_Register is record
      --  Endian mode.
      EM         : ENUM_6 := Interfaces.LPC43.EMC.Little_Endian_Mode;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED   : CONFIG_RESERVED_Field := 16#0#;
      --  Reserved. Always write a 0 to this bit.
      RESERVED_1 : CONFIG_RESERVED_Field_1 := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_2 : CONFIG_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFIG_Register use record
      EM         at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 7;
      RESERVED_1 at 0 range 8 .. 8;
      RESERVED_2 at 0 range 9 .. 31;
   end record;

   -----------------------------
   -- DYNAMICCONTROL_Register --
   -----------------------------

   --  Dynamic memory clock control. When clock control is LOW the output clock
   --  CLKOUT is stopped when there are no SDRAM transactions. The clock is
   --  also stopped during self-refresh mode.
   type ENUM_7 is
     (
      --  Stop. CLKOUT stops when all SDRAMs are idle and during self-refresh
      --  mode.
      Stop,
      --  Run. CLKOUT runs continuously (POR reset value).
      Run)
     with Size => 1;
   for ENUM_7 use
     (Stop => 0,
      Run => 1);

   --  Self-refresh request, EMC SREFREQ. By writing 1 to this bit self-refresh
   --  can be entered under software control. Writing 0 to this bit returns the
   --  EMC to normal mode. The self-refresh acknowledge bit in the Status
   --  register must be polled to discover the current operating mode of the
   --  EMC.[2]
   type ENUM_8 is
     (
      --  Normal mode.
      Normal_Mode,
      --  Self-refresh. Enter self-refresh mode (POR reset value).
      Self_Refresh)
     with Size => 1;
   for ENUM_8 use
     (Normal_Mode => 0,
      Self_Refresh => 1);

   subtype DYNAMICCONTROL_RESERVED_Field is Interfaces.Bit_Types.UInt2;

   --  Memory clock control.
   type ENUM_9 is
     (
      --  Enabled. CLKOUT enabled (POR reset value).
      Enabled,
      --  Disabled. CLKOUT disabled.[3]
      Disabled)
     with Size => 1;
   for ENUM_9 use
     (Enabled => 0,
      Disabled => 1);

   subtype DYNAMICCONTROL_RESERVED_Field_1 is Interfaces.Bit_Types.Bit;

   --  SDRAM initialization.
   type ENUM_10 is
     (
      --  Normal. Issue SDRAM NORMAL operation command (POR reset value).
      Normal,
      --  Mode. Issue SDRAM MODE command.
      Mode,
      --  PALL. Issue SDRAM PALL (precharge all) command.
      Pall,
      --  NOP. Issue SDRAM NOP (no operation) command)
      Nop)
     with Size => 2;
   for ENUM_10 use
     (Normal => 0,
      Mode => 1,
      Pall => 2,
      Nop => 3);

   subtype DYNAMICCONTROL_RESERVED_Field_2 is Interfaces.Bit_Types.UInt5;
   subtype DYNAMICCONTROL_RESERVED_Field_3 is Interfaces.Bit_Types.UInt18;

   --  Controls dynamic memory operation.
   type DYNAMICCONTROL_Register is record
      --  Dynamic memory clock enable.
      CE         : ENUM := Interfaces.LPC43.EMC.Disabled;
      --  Dynamic memory clock control. When clock control is LOW the output
      --  clock CLKOUT is stopped when there are no SDRAM transactions. The
      --  clock is also stopped during self-refresh mode.
      CS         : ENUM_7 := Interfaces.LPC43.EMC.Run;
      --  Self-refresh request, EMC SREFREQ. By writing 1 to this bit
      --  self-refresh can be entered under software control. Writing 0 to this
      --  bit returns the EMC to normal mode. The self-refresh acknowledge bit
      --  in the Status register must be polled to discover the current
      --  operating mode of the EMC.[2]
      SR         : ENUM_8 := Interfaces.LPC43.EMC.Self_Refresh;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED   : DYNAMICCONTROL_RESERVED_Field := 16#0#;
      --  Memory clock control.
      MMC        : ENUM_9 := Interfaces.LPC43.EMC.Enabled;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1 : DYNAMICCONTROL_RESERVED_Field_1 := 16#0#;
      --  SDRAM initialization.
      I          : ENUM_10 := Interfaces.LPC43.EMC.Normal;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_2 : DYNAMICCONTROL_RESERVED_Field_2 := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_3 : DYNAMICCONTROL_RESERVED_Field_3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICCONTROL_Register use record
      CE         at 0 range 0 .. 0;
      CS         at 0 range 1 .. 1;
      SR         at 0 range 2 .. 2;
      RESERVED   at 0 range 3 .. 4;
      MMC        at 0 range 5 .. 5;
      RESERVED_1 at 0 range 6 .. 6;
      I          at 0 range 7 .. 8;
      RESERVED_2 at 0 range 9 .. 13;
      RESERVED_3 at 0 range 14 .. 31;
   end record;

   -----------------------------
   -- DYNAMICREFRESH_Register --
   -----------------------------

   subtype DYNAMICREFRESH_REFRESH_Field is Interfaces.Bit_Types.UInt11;
   subtype DYNAMICREFRESH_RESERVED_Field is Interfaces.Bit_Types.UInt21;

   --  Configures dynamic memory refresh operation.
   type DYNAMICREFRESH_Register is record
      --  Refresh timer. Indicates the multiple of 16 EMC_CCLKs between SDRAM
      --  refresh cycles. 0x0 = Refresh disabled (POR reset value). 0x1 - 0x7FF
      --  = n x16 = 16n EMC_CCLKs between SDRAM refresh cycles. For example:
      --  0x1 = 1 x 16 = 16 EMC_CCLKs between SDRAM refresh cycles. 0x8 = 8 x
      --  16 = 128 EMC_CCLKs between SDRAM refresh cycles
      REFRESH  : DYNAMICREFRESH_REFRESH_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : DYNAMICREFRESH_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICREFRESH_Register use record
      REFRESH  at 0 range 0 .. 10;
      RESERVED at 0 range 11 .. 31;
   end record;

   --------------------------------
   -- DYNAMICREADCONFIG_Register --
   --------------------------------

   --  Read data strategy.
   type ENUM_11 is
     (
      --  Do not use. POR reset value.
      Do_Not_Use,
      --  Command delayed by 1/2 EMC_CCLK.
      Half,
      --  Command delayed by 1/2 EMC_CCLK plus one clock cycle.
      Halfplusone,
      --  Command delayed by1/2 EMC_CCLK plus two clock cycles,
      Halfplustwo)
     with Size => 2;
   for ENUM_11 use
     (Do_Not_Use => 0,
      Half => 1,
      Halfplusone => 2,
      Halfplustwo => 3);

   subtype DYNAMICREADCONFIG_RESERVED_Field is Interfaces.Bit_Types.UInt30;

   --  Configures the dynamic memory read strategy.
   type DYNAMICREADCONFIG_Register is record
      --  Read data strategy.
      RD       : ENUM_11 := Interfaces.LPC43.EMC.Do_Not_Use;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : DYNAMICREADCONFIG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICREADCONFIG_Register use record
      RD       at 0 range 0 .. 1;
      RESERVED at 0 range 2 .. 31;
   end record;

   ------------------------
   -- DYNAMICRP_Register --
   ------------------------

   subtype DYNAMICRP_TRP_Field is Interfaces.Bit_Types.UInt4;
   subtype DYNAMICRP_RESERVED_Field is Interfaces.Bit_Types.UInt28;

   --  Selects the precharge command period.
   type DYNAMICRP_Register is record
      --  Precharge command period. 0x0 - 0xE = n + 1 clock cycles. The delay
      --  is in EMC_CCLK cycles. 0xF = 16 clock cycles (POR reset value).
      TRP      : DYNAMICRP_TRP_Field := 16#F#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : DYNAMICRP_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICRP_Register use record
      TRP      at 0 range 0 .. 3;
      RESERVED at 0 range 4 .. 31;
   end record;

   -------------------------
   -- DYNAMICRAS_Register --
   -------------------------

   subtype DYNAMICRAS_TRAS_Field is Interfaces.Bit_Types.UInt4;
   subtype DYNAMICRAS_RESERVED_Field is Interfaces.Bit_Types.UInt28;

   --  Selects the active to precharge command period.
   type DYNAMICRAS_Register is record
      --  Active to precharge command period. 0x0 - 0xE = n + 1 clock cycles.
      --  The delay is in EMC_CCLK cycles. 0xF = 16 clock cycles (POR reset
      --  value).
      TRAS     : DYNAMICRAS_TRAS_Field := 16#F#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : DYNAMICRAS_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICRAS_Register use record
      TRAS     at 0 range 0 .. 3;
      RESERVED at 0 range 4 .. 31;
   end record;

   --------------------------
   -- DYNAMICSREX_Register --
   --------------------------

   subtype DYNAMICSREX_TSREX_Field is Interfaces.Bit_Types.UInt4;
   subtype DYNAMICSREX_RESERVED_Field is Interfaces.Bit_Types.UInt28;

   --  Selects the self-refresh exit time.
   type DYNAMICSREX_Register is record
      --  Self-refresh exit time. 0x0 - 0xE = n + 1 clock cycles. The delay is
      --  in EMC_CCLK cycles. 0xF = 16 clock cycles (POR reset value).
      TSREX    : DYNAMICSREX_TSREX_Field := 16#F#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : DYNAMICSREX_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICSREX_Register use record
      TSREX    at 0 range 0 .. 3;
      RESERVED at 0 range 4 .. 31;
   end record;

   -------------------------
   -- DYNAMICAPR_Register --
   -------------------------

   subtype DYNAMICAPR_TAPR_Field is Interfaces.Bit_Types.UInt4;
   subtype DYNAMICAPR_RESERVED_Field is Interfaces.Bit_Types.UInt28;

   --  Selects the last-data-out to active command time.
   type DYNAMICAPR_Register is record
      --  Last-data-out to active command time. 0x0 - 0xE = n + 1 clock cycles.
      --  The delay is in EMC_CCLK cycles. 0xF = 16 clock cycles (POR reset
      --  value).
      TAPR     : DYNAMICAPR_TAPR_Field := 16#F#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : DYNAMICAPR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICAPR_Register use record
      TAPR     at 0 range 0 .. 3;
      RESERVED at 0 range 4 .. 31;
   end record;

   -------------------------
   -- DYNAMICDAL_Register --
   -------------------------

   subtype DYNAMICDAL_TDAL_Field is Interfaces.Bit_Types.UInt4;
   subtype DYNAMICDAL_RESERVED_Field is Interfaces.Bit_Types.UInt28;

   --  Selects the data-in to active command time.
   type DYNAMICDAL_Register is record
      --  Data-in to active command. 0x0 - 0xE = n clock cycles. The delay is
      --  in EMC_CCLK cycles. 0xF = 15 clock cycles (POR reset value).
      TDAL     : DYNAMICDAL_TDAL_Field := 16#F#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : DYNAMICDAL_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICDAL_Register use record
      TDAL     at 0 range 0 .. 3;
      RESERVED at 0 range 4 .. 31;
   end record;

   ------------------------
   -- DYNAMICWR_Register --
   ------------------------

   subtype DYNAMICWR_TWR_Field is Interfaces.Bit_Types.UInt4;
   subtype DYNAMICWR_RESERVED_Field is Interfaces.Bit_Types.UInt28;

   --  Selects the write recovery time.
   type DYNAMICWR_Register is record
      --  Write recovery time. 0x0 - 0xE = n + 1 clock cycles. The delay is in
      --  EMC_CCLK cycles. 0xF = 16 clock cycles (POR reset value).
      TWR      : DYNAMICWR_TWR_Field := 16#F#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : DYNAMICWR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICWR_Register use record
      TWR      at 0 range 0 .. 3;
      RESERVED at 0 range 4 .. 31;
   end record;

   ------------------------
   -- DYNAMICRC_Register --
   ------------------------

   subtype DYNAMICRC_TRC_Field is Interfaces.Bit_Types.UInt5;
   subtype DYNAMICRC_RESERVED_Field is Interfaces.Bit_Types.UInt27;

   --  Selects the active to active command period.
   type DYNAMICRC_Register is record
      --  Active to active command period. 0x0 - 0x1E = n + 1 clock cycles. The
      --  delay is in EMC_CCLK cycles. 0x1F = 32 clock cycles (POR reset
      --  value).
      TRC      : DYNAMICRC_TRC_Field := 16#1F#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : DYNAMICRC_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICRC_Register use record
      TRC      at 0 range 0 .. 4;
      RESERVED at 0 range 5 .. 31;
   end record;

   -------------------------
   -- DYNAMICRFC_Register --
   -------------------------

   subtype DYNAMICRFC_TRFC_Field is Interfaces.Bit_Types.UInt5;
   subtype DYNAMICRFC_RESERVED_Field is Interfaces.Bit_Types.UInt27;

   --  Selects the auto-refresh period.
   type DYNAMICRFC_Register is record
      --  Auto-refresh period and auto-refresh to active command period. 0x0 -
      --  0x1E = n + 1 clock cycles. The delay is in EMC_CCLK cycles. 0x1F = 32
      --  clock cycles (POR reset value).
      TRFC     : DYNAMICRFC_TRFC_Field := 16#1F#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : DYNAMICRFC_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICRFC_Register use record
      TRFC     at 0 range 0 .. 4;
      RESERVED at 0 range 5 .. 31;
   end record;

   -------------------------
   -- DYNAMICXSR_Register --
   -------------------------

   subtype DYNAMICXSR_TXSR_Field is Interfaces.Bit_Types.UInt5;
   subtype DYNAMICXSR_RESERVED_Field is Interfaces.Bit_Types.UInt27;

   --  Selects the exit self-refresh to active command time.
   type DYNAMICXSR_Register is record
      --  Exit self-refresh to active command time. 0x0 - 0x1E = n + 1 clock
      --  cycles. The delay is in EMC_CCLK cycles. 0x1F = 32 clock cycles (POR
      --  reset value).
      TXSR     : DYNAMICXSR_TXSR_Field := 16#1F#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : DYNAMICXSR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICXSR_Register use record
      TXSR     at 0 range 0 .. 4;
      RESERVED at 0 range 5 .. 31;
   end record;

   -------------------------
   -- DYNAMICRRD_Register --
   -------------------------

   subtype DYNAMICRRD_TRRD_Field is Interfaces.Bit_Types.UInt4;
   subtype DYNAMICRRD_RESERVED_Field is Interfaces.Bit_Types.UInt28;

   --  Selects the active bank A to active bank B latency.
   type DYNAMICRRD_Register is record
      --  Active bank A to active bank B latency 0x0 - 0xE = n + 1 clock
      --  cycles. The delay is in EMC_CCLK cycles. 0xF = 16 clock cycles (POR
      --  reset value).
      TRRD     : DYNAMICRRD_TRRD_Field := 16#F#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : DYNAMICRRD_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICRRD_Register use record
      TRRD     at 0 range 0 .. 3;
      RESERVED at 0 range 4 .. 31;
   end record;

   -------------------------
   -- DYNAMICMRD_Register --
   -------------------------

   subtype DYNAMICMRD_TMRD_Field is Interfaces.Bit_Types.UInt4;
   subtype DYNAMICMRD_RESERVED_Field is Interfaces.Bit_Types.UInt28;

   --  Selects the load mode register to active command time.
   type DYNAMICMRD_Register is record
      --  Load mode register to active command time. 0x0 - 0xE = n + 1 clock
      --  cycles. The delay is in EMC_CCLK cycles. 0xF = 16 clock cycles (POR
      --  reset value).
      TMRD     : DYNAMICMRD_TMRD_Field := 16#F#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : DYNAMICMRD_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICMRD_Register use record
      TMRD     at 0 range 0 .. 3;
      RESERVED at 0 range 4 .. 31;
   end record;

   ---------------------------------
   -- STATICEXTENDEDWAIT_Register --
   ---------------------------------

   subtype STATICEXTENDEDWAIT_EXTENDEDWAIT_Field is
     Interfaces.Bit_Types.UInt10;
   subtype STATICEXTENDEDWAIT_RESERVED_Field is Interfaces.Bit_Types.UInt22;

   --  Selects time for long static memory read and write transfers.
   type STATICEXTENDEDWAIT_Register is record
      --  Extended wait time out. 16 clock cycles (POR reset value). The delay
      --  is in EMC_CCLK cycles. 0x0 = 16 clock cycles. 0x1 - 0x3FF = (n+1) x16
      --  clock cycles.
      EXTENDEDWAIT : STATICEXTENDEDWAIT_EXTENDEDWAIT_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED     : STATICEXTENDEDWAIT_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATICEXTENDEDWAIT_Register use record
      EXTENDEDWAIT at 0 range 0 .. 9;
      RESERVED     at 0 range 10 .. 31;
   end record;

   ----------------------------
   -- DYNAMICCONFIG_Register --
   ----------------------------

   subtype DYNAMICCONFIG0_RESERVED_Field is Interfaces.Bit_Types.UInt3;

   --  Memory device.
   type ENUM_12 is
     (
      --  SDRAM (POR reset value).
      Sdram,
      --  Reserved.
      Reserved,
      --  Reserved.
      Reserved_1,
      --  Reserved.
      Reserved_2)
     with Size => 2;
   for ENUM_12 use
     (Sdram => 0,
      Reserved => 1,
      Reserved_1 => 2,
      Reserved_2 => 3);

   subtype DYNAMICCONFIG0_RESERVED_Field_1 is Interfaces.Bit_Types.UInt2;
   subtype DYNAMICCONFIG0_AM0_Field is Interfaces.Bit_Types.UInt6;
   subtype DYNAMICCONFIG0_RESERVED_Field_2 is Interfaces.Bit_Types.Bit;
   subtype DYNAMICCONFIG0_AM1_Field is Interfaces.Bit_Types.Bit;
   subtype DYNAMICCONFIG0_RESERVED_Field_3 is Interfaces.Bit_Types.UInt4;

   --  Write protect.
   type ENUM_13 is
     (
      --  None. Writes not protected (POR reset value).
      None,
      --  Protected. Writes protected.
      Protected_k)
     with Size => 1;
   for ENUM_13 use
     (None => 0,
      Protected_k => 1);

   subtype DYNAMICCONFIG0_RESERVED_Field_4 is Interfaces.Bit_Types.UInt11;

   --  Selects the configuration information for dynamic memory chip select 0.
   type DYNAMICCONFIG_Register is record
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED   : DYNAMICCONFIG0_RESERVED_Field := 16#0#;
      --  Memory device.
      MD         : ENUM_12 := Interfaces.LPC43.EMC.Sdram;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1 : DYNAMICCONFIG0_RESERVED_Field_1 := 16#0#;
      --  Address mapping. See Table 382. 000000 = reset value.[1]
      AM0        : DYNAMICCONFIG0_AM0_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_2 : DYNAMICCONFIG0_RESERVED_Field_2 := 16#0#;
      --  Address mapping See Table 382. 0 = reset value.
      AM1        : DYNAMICCONFIG0_AM1_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_3 : DYNAMICCONFIG0_RESERVED_Field_3 := 16#0#;
      --  Buffer enable.
      B          : ENUM := Interfaces.LPC43.EMC.Disabled;
      --  Write protect.
      P          : ENUM_13 := Interfaces.LPC43.EMC.None;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_4 : DYNAMICCONFIG0_RESERVED_Field_4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICCONFIG_Register use record
      RESERVED   at 0 range 0 .. 2;
      MD         at 0 range 3 .. 4;
      RESERVED_1 at 0 range 5 .. 6;
      AM0        at 0 range 7 .. 12;
      RESERVED_2 at 0 range 13 .. 13;
      AM1        at 0 range 14 .. 14;
      RESERVED_3 at 0 range 15 .. 18;
      B          at 0 range 19 .. 19;
      P          at 0 range 20 .. 20;
      RESERVED_4 at 0 range 21 .. 31;
   end record;

   ----------------------------
   -- DYNAMICRASCAS_Register --
   ----------------------------

   --  RAS latency (active to read/write delay).
   type ENUM_14 is
     (
      --  Reserved.
      Reserved,
      --  One EMC_CCLK cycle.
      One_Emc_Cclk_Cycle,
      --  Two EMC_CCLK cycles.
      Two_Emc_Cclk_Cycles,
      --  Three EMC_CCLK cycles (POR reset value).
      Three_Emc_Cclk_Cycle)
     with Size => 2;
   for ENUM_14 use
     (Reserved => 0,
      One_Emc_Cclk_Cycle => 1,
      Two_Emc_Cclk_Cycles => 2,
      Three_Emc_Cclk_Cycle => 3);

   subtype DYNAMICRASCAS0_RESERVED_Field is Interfaces.Bit_Types.UInt6;
   subtype DYNAMICRASCAS0_RESERVED_Field_1 is Interfaces.Bit_Types.UInt22;

   --  Selects the RAS and CAS latencies for dynamic memory chip select 0.
   type DYNAMICRASCAS_Register is record
      --  RAS latency (active to read/write delay).
      RAS        : ENUM_14 := Interfaces.LPC43.EMC.Three_Emc_Cclk_Cycle;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED   : DYNAMICRASCAS0_RESERVED_Field := 16#0#;
      --  CAS latency.
      CAS        : ENUM_14 := Interfaces.LPC43.EMC.Three_Emc_Cclk_Cycle;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1 : DYNAMICRASCAS0_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICRASCAS_Register use record
      RAS        at 0 range 0 .. 1;
      RESERVED   at 0 range 2 .. 7;
      CAS        at 0 range 8 .. 9;
      RESERVED_1 at 0 range 10 .. 31;
   end record;

   ---------------------------
   -- STATICCONFIG_Register --
   ---------------------------

   --  Memory width.
   type ENUM_15 is
     (
      --  8 bit (POR reset value).
      ENUM_8_Bit,
      --  16 bit.
      ENUM_16_Bit,
      --  32 bit.
      ENUM_32_Bit,
      --  Reserved.
      Reserved)
     with Size => 2;
   for ENUM_15 use
     (ENUM_8_Bit => 0,
      ENUM_16_Bit => 1,
      ENUM_32_Bit => 2,
      Reserved => 3);

   subtype STATICCONFIG0_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype STATICCONFIG0_RESERVED_Field_1 is Interfaces.Bit_Types.UInt2;

   --  Chip select polarity. The value of the chip select polarity on power-on
   --  reset is 0.
   type ENUM_16 is
     (
      --  Active LOW chip select.
      Active_Low,
      --  Active HIGH chip select.
      Active_High)
     with Size => 1;
   for ENUM_16 use
     (Active_Low => 0,
      Active_High => 1);

   --  Byte lane state. The byte lane state bit, PB, enables different types of
   --  memory to be connected. For byte-wide static memories the BLSn[3:0]
   --  signal from the EMC is usually connected to WE (write enable). In this
   --  case for reads all the BLSn[3:0] bits must be HIGH. This means that the
   --  byte lane state (PB) bit must be LOW. 16 bit wide static memory devices
   --  usually have the BLSn[3:0] signals connected to the UBn and LBn (upper
   --  byte and lower byte) signals in the static memory. In this case a write
   --  to a particular byte must assert the appropriate UBn or LBn signal LOW.
   --  For reads, all the UB and LB signals must be asserted LOW so that the
   --  bus is driven. In this case the byte lane state (PB) bit must be HIGH.
   --  When PB is set to 0, the WE signal is undefined or 0. You must set PB to
   --  1, to use the WE signal.
   type ENUM_17 is
     (
      --  High. For reads all the bits in BLSn[3:0] are HIGH. For writes the
      --  respective active bits in BLSn[3:0] are LOW (POR reset value).
      High,
      --  Low. For reads the respective active bits in BLSn[3:0] are LOW. For
      --  writes the respective active bits in BLSn[3:0] are LOW.
      Low)
     with Size => 1;
   for ENUM_17 use
     (High => 0,
      Low => 1);

   subtype STATICCONFIG0_RESERVED_Field_2 is Interfaces.Bit_Types.UInt10;

   --  Write protect.
   type ENUM_18 is
     (
      --  None. Writes not protected (POR reset value).
      None,
      --  Protect. Write protected.
      Protect)
     with Size => 1;
   for ENUM_18 use
     (None => 0,
      Protect => 1);

   subtype STATICCONFIG0_RESERVED_Field_3 is Interfaces.Bit_Types.UInt11;

   --  Selects the memory configuration for static chip select 0.
   type STATICCONFIG_Register is record
      --  Memory width.
      MW         : ENUM_15 := Interfaces.LPC43.EMC.ENUM_8_Bit;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED   : STATICCONFIG0_RESERVED_Field := 16#0#;
      --  Page mode. In page mode the EMC can burst up to four external
      --  accesses. Therefore devices with asynchronous page mode burst four or
      --  higher devices are supported. Asynchronous page mode burst two
      --  devices are not supported and must be accessed normally.
      PM         : ENUM := Interfaces.LPC43.EMC.Disabled;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1 : STATICCONFIG0_RESERVED_Field_1 := 16#0#;
      --  Chip select polarity. The value of the chip select polarity on
      --  power-on reset is 0.
      PC         : ENUM_16 := Interfaces.LPC43.EMC.Active_Low;
      --  Byte lane state. The byte lane state bit, PB, enables different types
      --  of memory to be connected. For byte-wide static memories the
      --  BLSn[3:0] signal from the EMC is usually connected to WE (write
      --  enable). In this case for reads all the BLSn[3:0] bits must be HIGH.
      --  This means that the byte lane state (PB) bit must be LOW. 16 bit wide
      --  static memory devices usually have the BLSn[3:0] signals connected to
      --  the UBn and LBn (upper byte and lower byte) signals in the static
      --  memory. In this case a write to a particular byte must assert the
      --  appropriate UBn or LBn signal LOW. For reads, all the UB and LB
      --  signals must be asserted LOW so that the bus is driven. In this case
      --  the byte lane state (PB) bit must be HIGH. When PB is set to 0, the
      --  WE signal is undefined or 0. You must set PB to 1, to use the WE
      --  signal.
      PB         : ENUM_17 := Interfaces.LPC43.EMC.High;
      --  Extended wait. Extended wait (EW) uses the StaticExtendedWait
      --  register to time both the read and write transfers rather than the
      --  StaticWaitRd and StaticWaitWr registers. This enables much longer
      --  transactions.[1]
      EW         : ENUM := Interfaces.LPC43.EMC.Disabled;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_2 : STATICCONFIG0_RESERVED_Field_2 := 16#0#;
      --  Buffer enable [2].
      B          : ENUM := Interfaces.LPC43.EMC.Disabled;
      --  Write protect.
      P          : ENUM_18 := Interfaces.LPC43.EMC.None;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_3 : STATICCONFIG0_RESERVED_Field_3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATICCONFIG_Register use record
      MW         at 0 range 0 .. 1;
      RESERVED   at 0 range 2 .. 2;
      PM         at 0 range 3 .. 3;
      RESERVED_1 at 0 range 4 .. 5;
      PC         at 0 range 6 .. 6;
      PB         at 0 range 7 .. 7;
      EW         at 0 range 8 .. 8;
      RESERVED_2 at 0 range 9 .. 18;
      B          at 0 range 19 .. 19;
      P          at 0 range 20 .. 20;
      RESERVED_3 at 0 range 21 .. 31;
   end record;

   ----------------------------
   -- STATICWAITWEN_Register --
   ----------------------------

   subtype STATICWAITWEN0_WAITWEN_Field is Interfaces.Bit_Types.UInt4;
   subtype STATICWAITWEN0_RESERVED_Field is Interfaces.Bit_Types.UInt28;

   --  Selects the delay from chip select 0 to write enable.
   type STATICWAITWEN_Register is record
      --  Wait write enable. Delay from chip select assertion to write enable.
      --  0x0 = One EMC_CCLK cycle delay between assertion of chip select and
      --  write enable (POR reset value). 0x1 - 0xF = (n + 1) EMC_CCLK cycle
      --  delay. The delay is (WAITWEN +1) x tEMC_CCLK.
      WAITWEN  : STATICWAITWEN0_WAITWEN_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : STATICWAITWEN0_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATICWAITWEN_Register use record
      WAITWEN  at 0 range 0 .. 3;
      RESERVED at 0 range 4 .. 31;
   end record;

   ----------------------------
   -- STATICWAITOEN_Register --
   ----------------------------

   subtype STATICWAITOEN0_WAITOEN_Field is Interfaces.Bit_Types.UInt4;
   subtype STATICWAITOEN0_RESERVED_Field is Interfaces.Bit_Types.UInt28;

   --  Selects the delay from chip select 0 or address change, whichever is
   --  later, to output enable.
   type STATICWAITOEN_Register is record
      --  Wait output enable. Delay from chip select assertion to output
      --  enable. 0x0 = No delay (POR reset value). 0x1 - 0xF = n cycle delay.
      --  The delay is WAITOEN x tEMC_CCLK.
      WAITOEN  : STATICWAITOEN0_WAITOEN_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : STATICWAITOEN0_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATICWAITOEN_Register use record
      WAITOEN  at 0 range 0 .. 3;
      RESERVED at 0 range 4 .. 31;
   end record;

   ---------------------------
   -- STATICWAITRD_Register --
   ---------------------------

   subtype STATICWAITRD0_WAITRD_Field is Interfaces.Bit_Types.UInt5;
   subtype STATICWAITRD0_RESERVED_Field is Interfaces.Bit_Types.UInt27;

   --  Selects the delay from chip select 0 to a read access.
   type STATICWAITRD_Register is record
      --  Non-page mode read wait states or asynchronous page mode read first
      --  access wait state. Non-page mode read or asynchronous page mode read,
      --  first read only: 0x0 - 0x1E = (n + 1) EMC_CCLK cycles for read
      --  accesses. For non-sequential reads, the wait state time is (WAITRD +
      --  1) x tEMC_CCLK. 0x1F = 32 EMC_CCLK cycles for read accesses (POR
      --  reset value).
      WAITRD   : STATICWAITRD0_WAITRD_Field := 16#1F#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : STATICWAITRD0_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATICWAITRD_Register use record
      WAITRD   at 0 range 0 .. 4;
      RESERVED at 0 range 5 .. 31;
   end record;

   -----------------------------
   -- STATICWAITPAGE_Register --
   -----------------------------

   subtype STATICWAITPAGE0_WAITPAGE_Field is Interfaces.Bit_Types.UInt5;
   subtype STATICWAITPAGE0_RESERVED_Field is Interfaces.Bit_Types.UInt27;

   --  Selects the delay for asynchronous page mode sequential accesses for
   --  chip select 0.
   type STATICWAITPAGE_Register is record
      --  Asynchronous page mode read after the first read wait states. Number
      --  of wait states for asynchronous page mode read accesses after the
      --  first read: 0x0 - 0x1E = (n+ 1) EMC_CCLK cycle read access time. For
      --  asynchronous page mode read for sequential reads, the wait state time
      --  for page mode accesses after the first read is (WAITPAGE + 1) x
      --  tEMC_CCLK. 0x1F = 32 EMC_CCLK cycle read access time (POR reset
      --  value).
      WAITPAGE : STATICWAITPAGE0_WAITPAGE_Field := 16#1F#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : STATICWAITPAGE0_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATICWAITPAGE_Register use record
      WAITPAGE at 0 range 0 .. 4;
      RESERVED at 0 range 5 .. 31;
   end record;

   ---------------------------
   -- STATICWAITWR_Register --
   ---------------------------

   subtype STATICWAITWR0_WAITWR_Field is Interfaces.Bit_Types.UInt5;
   subtype STATICWAITWR0_RESERVED_Field is Interfaces.Bit_Types.UInt27;

   --  Selects the delay from chip select 0 to a write access.
   type STATICWAITWR_Register is record
      --  Write wait states. SRAM wait state time for write accesses after the
      --  first read: 0x0 - 0x1E = (n + 2) EMC_CCLK cycle write access time.
      --  The wait state time for write accesses after the first read is WAITWR
      --  (n + 2) x tEMC_CCLK. 0x1F = 33 EMC_CCLK cycle write access time (POR
      --  reset value).
      WAITWR   : STATICWAITWR0_WAITWR_Field := 16#1F#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : STATICWAITWR0_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATICWAITWR_Register use record
      WAITWR   at 0 range 0 .. 4;
      RESERVED at 0 range 5 .. 31;
   end record;

   -----------------------------
   -- STATICWAITTURN_Register --
   -----------------------------

   subtype STATICWAITTURN0_WAITTURN_Field is Interfaces.Bit_Types.UInt4;
   subtype STATICWAITTURN0_RESERVED_Field is Interfaces.Bit_Types.UInt28;

   --  Selects the number of bus turnaround cycles for chip select 0.
   type STATICWAITTURN_Register is record
      --  Bus turnaround cycles. 0x0 - 0xE = (n + 1) EMC_CCLK turnaround
      --  cycles. Bus turnaround time is (WAITTURN + 1) x tEMC_CCLK. 0xF = 16
      --  EMC_CCLK turnaround cycles (POR reset value).
      WAITTURN : STATICWAITTURN0_WAITTURN_Field := 16#F#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : STATICWAITTURN0_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATICWAITTURN_Register use record
      WAITTURN at 0 range 0 .. 3;
      RESERVED at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  External Memory Controller (EMC)
   type EMC_Peripheral is record
      --  Controls operation of the memory controller.
      CONTROL            : CONTROL_Register;
      --  Provides EMC status information.
      STATUS             : STATUS_Register;
      --  Configures operation of the memory controller.
      CONFIG             : CONFIG_Register;
      --  Controls dynamic memory operation.
      DYNAMICCONTROL     : DYNAMICCONTROL_Register;
      --  Configures dynamic memory refresh operation.
      DYNAMICREFRESH     : DYNAMICREFRESH_Register;
      --  Configures the dynamic memory read strategy.
      DYNAMICREADCONFIG  : DYNAMICREADCONFIG_Register;
      --  Selects the precharge command period.
      DYNAMICRP          : DYNAMICRP_Register;
      --  Selects the active to precharge command period.
      DYNAMICRAS         : DYNAMICRAS_Register;
      --  Selects the self-refresh exit time.
      DYNAMICSREX        : DYNAMICSREX_Register;
      --  Selects the last-data-out to active command time.
      DYNAMICAPR         : DYNAMICAPR_Register;
      --  Selects the data-in to active command time.
      DYNAMICDAL         : DYNAMICDAL_Register;
      --  Selects the write recovery time.
      DYNAMICWR          : DYNAMICWR_Register;
      --  Selects the active to active command period.
      DYNAMICRC          : DYNAMICRC_Register;
      --  Selects the auto-refresh period.
      DYNAMICRFC         : DYNAMICRFC_Register;
      --  Selects the exit self-refresh to active command time.
      DYNAMICXSR         : DYNAMICXSR_Register;
      --  Selects the active bank A to active bank B latency.
      DYNAMICRRD         : DYNAMICRRD_Register;
      --  Selects the load mode register to active command time.
      DYNAMICMRD         : DYNAMICMRD_Register;
      --  Selects time for long static memory read and write transfers.
      STATICEXTENDEDWAIT : STATICEXTENDEDWAIT_Register;
      --  Selects the configuration information for dynamic memory chip select
      --  0.
      DYNAMICCONFIG0     : DYNAMICCONFIG_Register;
      --  Selects the RAS and CAS latencies for dynamic memory chip select 0.
      DYNAMICRASCAS0     : DYNAMICRASCAS_Register;
      --  Selects the configuration information for dynamic memory chip select
      --  0.
      DYNAMICCONFIG1     : DYNAMICCONFIG_Register;
      --  Selects the RAS and CAS latencies for dynamic memory chip select 0.
      DYNAMICRASCAS1     : DYNAMICRASCAS_Register;
      --  Selects the configuration information for dynamic memory chip select
      --  0.
      DYNAMICCONFIG2     : DYNAMICCONFIG_Register;
      --  Selects the RAS and CAS latencies for dynamic memory chip select 0.
      DYNAMICRASCAS2     : DYNAMICRASCAS_Register;
      --  Selects the configuration information for dynamic memory chip select
      --  0.
      DYNAMICCONFIG3     : DYNAMICCONFIG_Register;
      --  Selects the RAS and CAS latencies for dynamic memory chip select 0.
      DYNAMICRASCAS3     : DYNAMICRASCAS_Register;
      --  Selects the memory configuration for static chip select 0.
      STATICCONFIG0      : STATICCONFIG_Register;
      --  Selects the delay from chip select 0 to write enable.
      STATICWAITWEN0     : STATICWAITWEN_Register;
      --  Selects the delay from chip select 0 or address change, whichever is
      --  later, to output enable.
      STATICWAITOEN0     : STATICWAITOEN_Register;
      --  Selects the delay from chip select 0 to a read access.
      STATICWAITRD0      : STATICWAITRD_Register;
      --  Selects the delay for asynchronous page mode sequential accesses for
      --  chip select 0.
      STATICWAITPAGE0    : STATICWAITPAGE_Register;
      --  Selects the delay from chip select 0 to a write access.
      STATICWAITWR0      : STATICWAITWR_Register;
      --  Selects the number of bus turnaround cycles for chip select 0.
      STATICWAITTURN0    : STATICWAITTURN_Register;
      --  Selects the memory configuration for static chip select 0.
      STATICCONFIG1      : STATICCONFIG_Register;
      --  Selects the delay from chip select 0 to write enable.
      STATICWAITWEN1     : STATICWAITWEN_Register;
      --  Selects the delay from chip select 0 or address change, whichever is
      --  later, to output enable.
      STATICWAITOEN1     : STATICWAITOEN_Register;
      --  Selects the delay from chip select 0 to a read access.
      STATICWAITRD1      : STATICWAITRD_Register;
      --  Selects the delay for asynchronous page mode sequential accesses for
      --  chip select 0.
      STATICWAITPAGE1    : STATICWAITPAGE_Register;
      --  Selects the delay from chip select 0 to a write access.
      STATICWAITWR1      : STATICWAITWR_Register;
      --  Selects the number of bus turnaround cycles for chip select 0.
      STATICWAITTURN1    : STATICWAITTURN_Register;
      --  Selects the memory configuration for static chip select 0.
      STATICCONFIG2      : STATICCONFIG_Register;
      --  Selects the delay from chip select 0 to write enable.
      STATICWAITWEN2     : STATICWAITWEN_Register;
      --  Selects the delay from chip select 0 or address change, whichever is
      --  later, to output enable.
      STATICWAITOEN2     : STATICWAITOEN_Register;
      --  Selects the delay from chip select 0 to a read access.
      STATICWAITRD2      : STATICWAITRD_Register;
      --  Selects the delay for asynchronous page mode sequential accesses for
      --  chip select 0.
      STATICWAITPAGE2    : STATICWAITPAGE_Register;
      --  Selects the delay from chip select 0 to a write access.
      STATICWAITWR2      : STATICWAITWR_Register;
      --  Selects the number of bus turnaround cycles for chip select 0.
      STATICWAITTURN2    : STATICWAITTURN_Register;
      --  Selects the memory configuration for static chip select 0.
      STATICCONFIG3      : STATICCONFIG_Register;
      --  Selects the delay from chip select 0 to write enable.
      STATICWAITWEN3     : STATICWAITWEN_Register;
      --  Selects the delay from chip select 0 or address change, whichever is
      --  later, to output enable.
      STATICWAITOEN3     : STATICWAITOEN_Register;
      --  Selects the delay from chip select 0 to a read access.
      STATICWAITRD3      : STATICWAITRD_Register;
      --  Selects the delay for asynchronous page mode sequential accesses for
      --  chip select 0.
      STATICWAITPAGE3    : STATICWAITPAGE_Register;
      --  Selects the delay from chip select 0 to a write access.
      STATICWAITWR3      : STATICWAITWR_Register;
      --  Selects the number of bus turnaround cycles for chip select 0.
      STATICWAITTURN3    : STATICWAITTURN_Register;
   end record
     with Volatile;

   for EMC_Peripheral use record
      CONTROL            at 0 range 0 .. 31;
      STATUS             at 4 range 0 .. 31;
      CONFIG             at 8 range 0 .. 31;
      DYNAMICCONTROL     at 32 range 0 .. 31;
      DYNAMICREFRESH     at 36 range 0 .. 31;
      DYNAMICREADCONFIG  at 40 range 0 .. 31;
      DYNAMICRP          at 48 range 0 .. 31;
      DYNAMICRAS         at 52 range 0 .. 31;
      DYNAMICSREX        at 56 range 0 .. 31;
      DYNAMICAPR         at 60 range 0 .. 31;
      DYNAMICDAL         at 64 range 0 .. 31;
      DYNAMICWR          at 68 range 0 .. 31;
      DYNAMICRC          at 72 range 0 .. 31;
      DYNAMICRFC         at 76 range 0 .. 31;
      DYNAMICXSR         at 80 range 0 .. 31;
      DYNAMICRRD         at 84 range 0 .. 31;
      DYNAMICMRD         at 88 range 0 .. 31;
      STATICEXTENDEDWAIT at 128 range 0 .. 31;
      DYNAMICCONFIG0     at 256 range 0 .. 31;
      DYNAMICRASCAS0     at 260 range 0 .. 31;
      DYNAMICCONFIG1     at 288 range 0 .. 31;
      DYNAMICRASCAS1     at 292 range 0 .. 31;
      DYNAMICCONFIG2     at 320 range 0 .. 31;
      DYNAMICRASCAS2     at 324 range 0 .. 31;
      DYNAMICCONFIG3     at 352 range 0 .. 31;
      DYNAMICRASCAS3     at 356 range 0 .. 31;
      STATICCONFIG0      at 512 range 0 .. 31;
      STATICWAITWEN0     at 516 range 0 .. 31;
      STATICWAITOEN0     at 520 range 0 .. 31;
      STATICWAITRD0      at 524 range 0 .. 31;
      STATICWAITPAGE0    at 528 range 0 .. 31;
      STATICWAITWR0      at 532 range 0 .. 31;
      STATICWAITTURN0    at 536 range 0 .. 31;
      STATICCONFIG1      at 544 range 0 .. 31;
      STATICWAITWEN1     at 548 range 0 .. 31;
      STATICWAITOEN1     at 552 range 0 .. 31;
      STATICWAITRD1      at 556 range 0 .. 31;
      STATICWAITPAGE1    at 560 range 0 .. 31;
      STATICWAITWR1      at 564 range 0 .. 31;
      STATICWAITTURN1    at 568 range 0 .. 31;
      STATICCONFIG2      at 576 range 0 .. 31;
      STATICWAITWEN2     at 580 range 0 .. 31;
      STATICWAITOEN2     at 584 range 0 .. 31;
      STATICWAITRD2      at 588 range 0 .. 31;
      STATICWAITPAGE2    at 592 range 0 .. 31;
      STATICWAITWR2      at 596 range 0 .. 31;
      STATICWAITTURN2    at 600 range 0 .. 31;
      STATICCONFIG3      at 608 range 0 .. 31;
      STATICWAITWEN3     at 612 range 0 .. 31;
      STATICWAITOEN3     at 616 range 0 .. 31;
      STATICWAITRD3      at 620 range 0 .. 31;
      STATICWAITPAGE3    at 624 range 0 .. 31;
      STATICWAITWR3      at 628 range 0 .. 31;
      STATICWAITTURN3    at 632 range 0 .. 31;
   end record;

   --  External Memory Controller (EMC)
   EMC_Periph : aliased EMC_Peripheral
     with Import, Address => EMC_Base;

end Interfaces.LPC43.EMC;
