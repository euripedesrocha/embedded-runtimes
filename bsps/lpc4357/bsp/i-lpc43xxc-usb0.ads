--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43xxC.USB0 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ------------------------
   -- CAPLENGTH_Register --
   ------------------------

   subtype CAPLENGTH_CAPLENGTH_Field is Interfaces.Bit_Types.Byte;
   subtype CAPLENGTH_HCIVERSION_Field is Interfaces.Bit_Types.Short;
   subtype CAPLENGTH_RESERVED_Field is Interfaces.Bit_Types.Byte;

   --  Capability register length
   type CAPLENGTH_Register is record
      --  Read-only. Indicates offset to add to the register base address at
      --  the beginning of the Operational Register
      CAPLENGTH  : CAPLENGTH_CAPLENGTH_Field;
      --  Read-only. BCD encoding of the EHCI revision number supported by this
      --  host controller.
      HCIVERSION : CAPLENGTH_HCIVERSION_Field;
      --  Read-only. These bits are reserved and should be set to zero.
      RESERVED   : CAPLENGTH_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAPLENGTH_Register use record
      CAPLENGTH  at 0 range 0 .. 7;
      HCIVERSION at 0 range 8 .. 23;
      RESERVED   at 0 range 24 .. 31;
   end record;

   ------------------------
   -- HCSPARAMS_Register --
   ------------------------

   subtype HCSPARAMS_N_PORTS_Field is Interfaces.Bit_Types.UInt4;
   subtype HCSPARAMS_PPC_Field is Interfaces.Bit_Types.Bit;
   subtype HCSPARAMS_RESERVED_Field is Interfaces.Bit_Types.UInt3;
   subtype HCSPARAMS_N_PCC_Field is Interfaces.Bit_Types.UInt4;
   subtype HCSPARAMS_N_CC_Field is Interfaces.Bit_Types.UInt4;
   subtype HCSPARAMS_PI_Field is Interfaces.Bit_Types.Bit;
   subtype HCSPARAMS_N_PTT_Field is Interfaces.Bit_Types.UInt4;
   subtype HCSPARAMS_N_TT_Field is Interfaces.Bit_Types.UInt4;
   subtype HCSPARAMS_RESERVED_Field_1 is Interfaces.Bit_Types.UInt4;

   --  Host controller structural parameters
   type HCSPARAMS_Register is record
      --  Read-only. Number of downstream ports. This field specifies the
      --  number of physical downstream ports implemented on this host
      --  controller.
      N_PORTS    : HCSPARAMS_N_PORTS_Field;
      --  Read-only. Port Power Control. This field indicates whether the host
      --  controller implementation includes port power control.
      PPC        : HCSPARAMS_PPC_Field;
      --  Read-only. These bits are reserved and should be set to zero.
      RESERVED   : HCSPARAMS_RESERVED_Field;
      --  Read-only. Number of Ports per Companion Controller. This field
      --  indicates the number of ports supported per internal Companion
      --  Controller.
      N_PCC      : HCSPARAMS_N_PCC_Field;
      --  Read-only. Number of Companion Controller. This field indicates the
      --  number of companion controllers associated with this USB2.0 host
      --  controller.
      N_CC       : HCSPARAMS_N_CC_Field;
      --  Read-only. Port indicators. This bit indicates whether the ports
      --  support port indicator control.
      PI         : HCSPARAMS_PI_Field;
      --  Read-only. These bits are reserved and should be set to zero.
      RESERVED_1 : HCSPARAMS_RESERVED_Field;
      --  Read-only. Number of Ports per Transaction Translator. This field
      --  indicates the number of ports assigned to each transaction translator
      --  within the USB2.0 host controller.
      N_PTT      : HCSPARAMS_N_PTT_Field;
      --  Read-only. Number of Transaction Translators. This field indicates
      --  the number of embedded transaction translators associated with the
      --  USB2.0 host controller.
      N_TT       : HCSPARAMS_N_TT_Field;
      --  Read-only. These bits are reserved and should be set to zero.
      RESERVED_2 : HCSPARAMS_RESERVED_Field_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCSPARAMS_Register use record
      N_PORTS    at 0 range 0 .. 3;
      PPC        at 0 range 4 .. 4;
      RESERVED   at 0 range 5 .. 7;
      N_PCC      at 0 range 8 .. 11;
      N_CC       at 0 range 12 .. 15;
      PI         at 0 range 16 .. 16;
      RESERVED_1 at 0 range 17 .. 19;
      N_PTT      at 0 range 20 .. 23;
      N_TT       at 0 range 24 .. 27;
      RESERVED_2 at 0 range 28 .. 31;
   end record;

   ------------------------
   -- HCCPARAMS_Register --
   ------------------------

   subtype HCCPARAMS_ADC_Field is Interfaces.Bit_Types.Bit;
   subtype HCCPARAMS_PFL_Field is Interfaces.Bit_Types.Bit;
   subtype HCCPARAMS_ASP_Field is Interfaces.Bit_Types.Bit;
   subtype HCCPARAMS_IST_Field is Interfaces.Bit_Types.UInt4;
   subtype HCCPARAMS_EECP_Field is Interfaces.Bit_Types.Byte;
   subtype HCCPARAMS_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Host controller capability parameters
   type HCCPARAMS_Register is record
      --  Read-only. 64-bit Addressing Capability. If zero, no 64-bit
      --  addressing capability is supported.
      ADC          : HCCPARAMS_ADC_Field;
      --  Read-only. Programmable Frame List Flag. If set to one, then the
      --  system software can specify and use a smaller frame list and
      --  configure the host controller via the USBCMD register Frame List Size
      --  field. The frame list must always be aligned on a 4K-boundary. This
      --  requirement ensures that the frame list is always physically
      --  contiguous.
      PFL          : HCCPARAMS_PFL_Field;
      --  Read-only. Asynchronous Schedule Park Capability. If this bit is set
      --  to a one, then the host controller supports the park feature for
      --  high-speed queue heads in the Asynchronous Schedule.The feature can
      --  be disabled or enabled and set to a specific level by using the
      --  Asynchronous Schedule Park Mode Enable and Asynchronous Schedule Park
      --  Mode Count fields in the USBCMD register.
      ASP          : HCCPARAMS_ASP_Field;
      --  unspecified
      Reserved_3_3 : Interfaces.Bit_Types.Bit;
      --  Read-only. Isochronous Scheduling Threshold. This field indicates,
      --  relative to the current position of the executing host controller,
      --  where software can reliably update the isochronous schedule.
      IST          : HCCPARAMS_IST_Field;
      --  Read-only. EHCI Extended Capabilities Pointer. This optional field
      --  indicates the existence of a capabilities list.
      EECP         : HCCPARAMS_EECP_Field;
      --  Read-only. These bits are reserved and should be set to zero.
      RESERVED     : HCCPARAMS_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCCPARAMS_Register use record
      ADC          at 0 range 0 .. 0;
      PFL          at 0 range 1 .. 1;
      ASP          at 0 range 2 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      IST          at 0 range 4 .. 7;
      EECP         at 0 range 8 .. 15;
      RESERVED     at 0 range 16 .. 31;
   end record;

   -------------------------
   -- DCIVERSION_Register --
   -------------------------

   subtype DCIVERSION_DCIVERSION_Field is Interfaces.Bit_Types.Short;

   --  Device interface version number
   type DCIVERSION_Register is record
      --  Read-only. The device controller interface conforms to the two-byte
      --  BCD encoding of the interface version number contained in this
      --  register.
      DCIVERSION     : DCIVERSION_DCIVERSION_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCIVERSION_Register use record
      DCIVERSION     at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------------
   -- USBCMD_D_Register --
   -----------------------

   --  Run/Stop
   type ENUM is
     (
      --  Writing a 0 to this bit will cause a detach event.
      Detach,
      --  Writing a one to this bit will cause the device controller to enable
      --  a pull-up on USB_DP and initiate an attach event. This control bit is
      --  not directly connected to the pull-up enable, as the pull-up will
      --  become disabled upon transitioning into high-speed mode. Software
      --  should use this bit to prevent an attach event before the device
      --  controller has been properly initialized.
      Attach)
     with Size => 1;
   for ENUM use
     (Detach => 0,
      Attach => 1);

   --  Controller reset. Software uses this bit to reset the controller. This
   --  bit is set to zero by the Host/Device Controller when the reset process
   --  is complete. Software cannot terminate the reset process early by
   --  writing a zero to this register.
   type ENUM_1 is
     (
      --  Set to 0 by hardware when the reset process is complete.
      Resetcomplete,
      --  When software writes a one to this bit, the Device Controller resets
      --  its internal pipelines, timers, counters, state machines etc. to
      --  their initial values. Writing a one to this bit when the device is in
      --  the attached state is not recommended, since the effect on an
      --  attached host is undefined. In order to ensure that the device is not
      --  in an attached state before initiating a device controller reset, all
      --  primed endpoints should be flushed and the USBCMD Run/Stop bit should
      --  be set to 0.
      Reset)
     with Size => 1;
   for ENUM_1 use
     (Resetcomplete => 0,
      Reset => 1);

   subtype USBCMD_D_RESERVED_Field is Interfaces.Bit_Types.UInt2;

   -----------------------
   -- USBCMD_D.RESERVED --
   -----------------------

   --  USBCMD_D_RESERVED array element
   subtype USBCMD_D_RESERVED_Element is Interfaces.Bit_Types.Bit;

   --  USBCMD_D_RESERVED array
   type USBCMD_D_RESERVED_Field_Array is array (1 .. 4)
     of USBCMD_D_RESERVED_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for USBCMD_D_RESERVED
   type USBCMD_D_RESERVED_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  RESERVED as an array
            Arr : USBCMD_D_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for USBCMD_D_RESERVED_Field_1 use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   -----------------------
   -- USBCMD_D.RESERVED --
   -----------------------

   --  USBCMD_D_RESERVED array
   type USBCMD_D_RESERVED_Field_Array_1 is array (1 .. 3)
     of USBCMD_D_RESERVED_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for USBCMD_D_RESERVED
   type USBCMD_D_RESERVED_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  RESERVED as an array
            Arr : USBCMD_D_RESERVED_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for USBCMD_D_RESERVED_Field_2 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype USBCMD_D_SUTW_Field is Interfaces.Bit_Types.Bit;
   subtype USBCMD_D_ATDTW_Field is Interfaces.Bit_Types.Bit;
   subtype USBCMD_D_RESERVED_Field_3 is Interfaces.Bit_Types.Bit;
   subtype USBCMD_D_ITC_Field is Interfaces.Bit_Types.Byte;
   subtype USBCMD_D_RESERVED_Field_4 is Interfaces.Bit_Types.Byte;

   --  USB command (device mode)
   type USBCMD_D_Register is record
      --  Run/Stop
      RS         : ENUM := Interfaces.LPC43xxC.USB0.Detach;
      --  Controller reset. Software uses this bit to reset the controller.
      --  This bit is set to zero by the Host/Device Controller when the reset
      --  process is complete. Software cannot terminate the reset process
      --  early by writing a zero to this register.
      RST        : ENUM_1 := Interfaces.LPC43xxC.USB0.Resetcomplete;
      --  Not used in device mode.
      RESERVED   : USBCMD_D_RESERVED_Field := 16#0#;
      --  Not used in device mode.
      RESERVED_1 : USBCMD_D_RESERVED_Field_1 :=
                    (As_Array => False, Val => 16#0#);
      --  Not used in Device mode.
      RESERVED_2 : USBCMD_D_RESERVED_Field := 16#0#;
      --  Reserved.These bits should be set to 0.
      RESERVED_3 : USBCMD_D_RESERVED_Field_2 :=
                    (As_Array => False, Val => 16#0#);
      --  Setup trip wire During handling a setup packet, this bit is used as a
      --  semaphore to ensure that the setup data payload of 8 bytes is
      --  extracted from a QH by the DCD without being corrupted. If the setup
      --  lockout mode is off (see USBMODE register) then there exists a hazard
      --  when new setup data arrives while the DCD is copying the setup data
      --  payload from the QH for a previous setup packet. This bit is set and
      --  cleared by software and will be cleared by hardware when a hazard
      --  exists. (See Section 18.10).
      SUTW       : USBCMD_D_SUTW_Field := 16#0#;
      --  Add dTD trip wire This bit is used as a semaphore to ensure the to
      --  proper addition of a new dTD to an active (primed) endpoint's linked
      --  list. This bit is set and cleared by software during the process of
      --  adding a new dTD. See also Section 18.10. This bit shall also be
      --  cleared by hardware when its state machine is hazard region for which
      --  adding a dTD to a primed endpoint may go unrecognized.
      ATDTW      : USBCMD_D_ATDTW_Field := 16#0#;
      --  Not used in device mode.
      RESERVED_4 : USBCMD_D_RESERVED_Field_3 := 16#0#;
      --  Interrupt threshold control. The system software uses this field to
      --  set the maximum rate at which the host/device controller will issue
      --  interrupts. ITC contains the maximum interrupt interval measured in
      --  micro-frames. Valid values are shown below. All other values are
      --  reserved. 0x0 = Immediate (no threshold) 0x1 = 1 micro frame. 0x2 = 2
      --  micro frames. 0x8 = 8 micro frames. 0x10 = 16 micro frames. 0x20 = 32
      --  micro frames. 0x40 = 64 micro frames.
      ITC        : USBCMD_D_ITC_Field := 16#8#;
      --  Reserved
      RESERVED_5 : USBCMD_D_RESERVED_Field_4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBCMD_D_Register use record
      RS         at 0 range 0 .. 0;
      RST        at 0 range 1 .. 1;
      RESERVED   at 0 range 2 .. 3;
      RESERVED_1 at 0 range 4 .. 7;
      RESERVED_2 at 0 range 8 .. 9;
      RESERVED_3 at 0 range 10 .. 12;
      SUTW       at 0 range 13 .. 13;
      ATDTW      at 0 range 14 .. 14;
      RESERVED_4 at 0 range 15 .. 15;
      ITC        at 0 range 16 .. 23;
      RESERVED_5 at 0 range 24 .. 31;
   end record;

   -----------------------
   -- USBCMD_H_Register --
   -----------------------

   --  Run/Stop
   type ENUM_2 is
     (
      --  When this bit is set to 0, the Host Controller completes the current
      --  transaction on the USB and then halts. The HC Halted bit in the
      --  status register indicates when the Host Controller has finished the
      --  transaction and has entered the stopped state. Software should not
      --  write a one to this field unless the host controller is in the Halted
      --  state (i.e. HCHalted in the USBSTS register is a one).
      Halt,
      --  When set to a 1, the Host Controller proceeds with the execution of
      --  the schedule. The Host Controller continues execution as long as this
      --  bit is set to a one.
      Proceed)
     with Size => 1;
   for ENUM_2 use
     (Halt => 0,
      Proceed => 1);

   -----------------
   -- USBCMD_H.FS --
   -----------------

   --  USBCMD_H_FS array element
   subtype USBCMD_H_FS_Element is Interfaces.Bit_Types.Bit;

   --  USBCMD_H_FS array
   type USBCMD_H_FS_Field_Array is array (0 .. 1) of USBCMD_H_FS_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for USBCMD_H_FS
   type USBCMD_H_FS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FS as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  FS as an array
            Arr : USBCMD_H_FS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBCMD_H_FS_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  This bit controls whether the host controller skips processing the
   --  periodic schedule.
   type ENUM_3 is
     (
      --  Do not process the periodic schedule.
      Do_Not_Process_The_P,
      --  Use the PERIODICLISTBASE register to access the periodic schedule.
      Use_The_Periodiclist)
     with Size => 1;
   for ENUM_3 use
     (Do_Not_Process_The_P => 0,
      Use_The_Periodiclist => 1);

   --  This bit controls whether the host controller skips processing the
   --  asynchronous schedule.
   type ENUM_4 is
     (
      --  Do not process the asynchronous schedule.
      Do_Not_Process_The_A,
      --  Use the ASYNCLISTADDR to access the asynchronous schedule.
      Use_The_Asynclistadd)
     with Size => 1;
   for ENUM_4 use
     (Do_Not_Process_The_A => 0,
      Use_The_Asynclistadd => 1);

   --  This bit is used as a doorbell by software to tell the host controller
   --  to issue an interrupt the next time it advances asynchronous schedule.
   type ENUM_5 is
     (
      --  The host controller sets this bit to zero after it has set the
      --  Interrupt on Sync Advance status bit in the USBSTS register to one.
      The_Host_Controller,
      --  Software must write a 1 to this bit to ring the doorbell. When the
      --  host controller has evicted all appropriate cached schedule states,
      --  it sets the Interrupt on Async Advance status bit in the USBSTS
      --  register. If the Interrupt on Sync Advance Enable bit in the USBINTR
      --  register is one, then the host controller will assert an interrupt at
      --  the next interrupt threshold. Software should not write a one to this
      --  bit when the asynchronous schedule is inactive. Doing so will yield
      --  undefined results.
      Software_Must_Write)
     with Size => 1;
   for ENUM_5 use
     (The_Host_Controller => 0,
      Software_Must_Write => 1);

   subtype USBCMD_H_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype USBCMD_H_ASP1_0_Field is Interfaces.Bit_Types.UInt2;

   --  Asynchronous Schedule Park Mode Enable
   type ENUM_6 is
     (
      --  Park mode is disabled.
      Park_Mode_Is_Disable,
      --  Park mode is enabled.
      Park_Mode_Is_Enabled)
     with Size => 1;
   for ENUM_6 use
     (Park_Mode_Is_Disable => 0,
      Park_Mode_Is_Enabled => 1);

   -----------------------
   -- USBCMD_H.RESERVED --
   -----------------------

   --  USBCMD_H_RESERVED array element
   subtype USBCMD_H_RESERVED_Element is Interfaces.Bit_Types.Bit;

   --  USBCMD_H_RESERVED array
   type USBCMD_H_RESERVED_Field_Array is array (1 .. 3)
     of USBCMD_H_RESERVED_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for USBCMD_H_RESERVED
   type USBCMD_H_RESERVED_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  RESERVED as an array
            Arr : USBCMD_H_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for USBCMD_H_RESERVED_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype USBCMD_H_FS2_Field is Interfaces.Bit_Types.Bit;
   subtype USBCMD_H_ITC_Field is Interfaces.Bit_Types.Byte;
   subtype USBCMD_H_RESERVED_Field_2 is Interfaces.Bit_Types.Byte;

   --  USB command (host mode)
   type USBCMD_H_Register is record
      --  Run/Stop
      RS         : ENUM_2 := Interfaces.LPC43xxC.USB0.Halt;
      --  Controller reset. Software uses this bit to reset the controller.
      --  This bit is set to zero by the Host/Device Controller when the reset
      --  process is complete. Software cannot terminate the reset process
      --  early by writing a zero to this register.
      RST        : ENUM_1 := Interfaces.LPC43xxC.USB0.Resetcomplete;
      --  Bit 0 of the Frame List Size bits. See Table 220. This field
      --  specifies the size of the frame list that controls which bits in the
      --  Frame Index Register should be used for the Frame List Current index.
      --  Note that this field is made up from USBCMD bits 15, 3, and 2.
      FS         : USBCMD_H_FS_Field := (As_Array => False, Val => 16#0#);
      --  This bit controls whether the host controller skips processing the
      --  periodic schedule.
      PSE        : ENUM_3 := Interfaces.LPC43xxC.USB0.Do_Not_Process_The_P;
      --  This bit controls whether the host controller skips processing the
      --  asynchronous schedule.
      ASE        : ENUM_4 := Interfaces.LPC43xxC.USB0.Do_Not_Process_The_A;
      --  This bit is used as a doorbell by software to tell the host
      --  controller to issue an interrupt the next time it advances
      --  asynchronous schedule.
      IAA        : ENUM_5 := Interfaces.LPC43xxC.USB0.The_Host_Controller;
      --  Reserved
      RESERVED   : USBCMD_H_RESERVED_Field := 16#0#;
      --  Asynchronous schedule park mode Contains a count of the number of
      --  successive transactions the host controller is allowed to execute
      --  from a high-speed queue head on the Asynchronous schedule before
      --  continuing traversal of the Asynchronous schedule. Valid values are
      --  0x1 to 0x3. Software must not write 00 to this bit when Park Mode
      --  Enable is one as this will result in undefined behavior.
      ASP1_0     : USBCMD_H_ASP1_0_Field := 16#0#;
      --  Reserved.
      RESERVED_1 : USBCMD_H_RESERVED_Field := 16#0#;
      --  Asynchronous Schedule Park Mode Enable
      ASPE       : ENUM_6 := Interfaces.LPC43xxC.USB0.Park_Mode_Is_Disable;
      --  Reserved.
      RESERVED_2 : USBCMD_H_RESERVED_Field_1 :=
                    (As_Array => False, Val => 16#0#);
      --  Bit 2 of the Frame List Size bits. See Table 220.
      FS2        : USBCMD_H_FS2_Field := 16#0#;
      --  Interrupt threshold control. The system software uses this field to
      --  set the maximum rate at which the host/device controller will issue
      --  interrupts. ITC contains the maximum interrupt interval measured in
      --  micro-frames. Valid values are shown below. All other values are
      --  reserved. 0x0 = Immediate (no threshold) 0x1 = 1 micro frame. 0x2 = 2
      --  micro frames. 0x8 = 8 micro frames. 0x10 = 16 micro frames. 0x20 = 32
      --  micro frames. 0x40 = 64 micro frames.
      ITC        : USBCMD_H_ITC_Field := 16#8#;
      --  Reserved
      RESERVED_3 : USBCMD_H_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBCMD_H_Register use record
      RS         at 0 range 0 .. 0;
      RST        at 0 range 1 .. 1;
      FS         at 0 range 2 .. 3;
      PSE        at 0 range 4 .. 4;
      ASE        at 0 range 5 .. 5;
      IAA        at 0 range 6 .. 6;
      RESERVED   at 0 range 7 .. 7;
      ASP1_0     at 0 range 8 .. 9;
      RESERVED_1 at 0 range 10 .. 10;
      ASPE       at 0 range 11 .. 11;
      RESERVED_2 at 0 range 12 .. 14;
      FS2        at 0 range 15 .. 15;
      ITC        at 0 range 16 .. 23;
      RESERVED_3 at 0 range 24 .. 31;
   end record;

   -----------------------
   -- USBSTS_D_Register --
   -----------------------

   --  USB interrupt
   type ENUM_7 is
     (
      --  This bit is cleared by software writing a one to it.
      St,
      --  This bit is set by the Host/Device Controller when the cause of an
      --  interrupt is a completion of a USB transaction where the Transfer
      --  Descriptor (TD) has an interrupt on complete (IOC) bit set. This bit
      --  is also set by the Host/Device Controller when a short packet is
      --  detected. A short packet is when the actual number of bytes received
      --  was less than the expected number of bytes.
      Clear)
     with Size => 1;
   for ENUM_7 use
     (St => 0,
      Clear => 1);

   -----------------------
   -- USBSTS_D.RESERVED --
   -----------------------

   --  USBSTS_D_RESERVED array element
   subtype USBSTS_D_RESERVED_Element is Interfaces.Bit_Types.Bit;

   --  USBSTS_D_RESERVED array
   type USBSTS_D_RESERVED_Field_Array is array (1 .. 2)
     of USBSTS_D_RESERVED_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for USBSTS_D_RESERVED
   type USBSTS_D_RESERVED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  RESERVED as an array
            Arr : USBSTS_D_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBSTS_D_RESERVED_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype USBSTS_D_AAI_Field is Interfaces.Bit_Types.Bit;
   subtype USBSTS_D_RESERVED_Field_1 is Interfaces.Bit_Types.UInt3;

   -----------------------
   -- USBSTS_D.RESERVED --
   -----------------------

   --  USBSTS_D_RESERVED array
   type USBSTS_D_RESERVED_Field_Array_1 is array (1 .. 4)
     of USBSTS_D_RESERVED_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for USBSTS_D_RESERVED
   type USBSTS_D_RESERVED_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  RESERVED as an array
            Arr : USBSTS_D_RESERVED_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for USBSTS_D_RESERVED_Field_2 use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   -----------------------
   -- USBSTS_D.RESERVED --
   -----------------------

   --  USBSTS_D_RESERVED array
   type USBSTS_D_RESERVED_Field_Array_2 is array (1 .. 3)
     of USBSTS_D_RESERVED_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for USBSTS_D_RESERVED
   type USBSTS_D_RESERVED_Field_3
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  RESERVED as an array
            Arr : USBSTS_D_RESERVED_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for USBSTS_D_RESERVED_Field_3 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype USBSTS_D_RESERVED_Field_4 is Interfaces.Bit_Types.UInt12;

   --  USB status (device mode)
   type USBSTS_D_Register is record
      --  USB interrupt
      UI         : ENUM_7 := Interfaces.LPC43xxC.USB0.St;
      --  USB error interrupt
      UEI        : ENUM_7 := Interfaces.LPC43xxC.USB0.St;
      --  Port change detect.
      PCI        : ENUM_7 := Interfaces.LPC43xxC.USB0.St;
      --  Not used in Device mode.
      RESERVED   : USBSTS_D_RESERVED_Field :=
                    (As_Array => False, Val => 16#0#);
      --  Not used in Device mode.
      AAI        : USBSTS_D_AAI_Field := 16#0#;
      --  USB reset received
      URI        : ENUM_7 := Interfaces.LPC43xxC.USB0.St;
      --  SOF received
      SRI        : ENUM_7 := Interfaces.LPC43xxC.USB0.St;
      --  DCSuspend
      SLI        : ENUM_7 := Interfaces.LPC43xxC.USB0.St;
      --  Reserved. Software should only write 0 to reserved bits.
      RESERVED_1 : USBSTS_D_RESERVED_Field_1 := 16#0#;
      --  Not used in Device mode.
      RESERVED_2 : USBSTS_D_RESERVED_Field_2 :=
                    (As_Array => False, Val => 16#0#);
      --  NAK interrupt bit
      NAKI       : ENUM_7 := Interfaces.LPC43xxC.USB0.St;
      --  Reserved. Software should only write 0 to reserved bits.
      RESERVED_3 : USBSTS_D_RESERVED_Field_3 :=
                    (As_Array => False, Val => 16#0#);
      --  Reserved. Software should only write 0 to reserved bits.
      RESERVED_4 : USBSTS_D_RESERVED_Field_4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSTS_D_Register use record
      UI         at 0 range 0 .. 0;
      UEI        at 0 range 1 .. 1;
      PCI        at 0 range 2 .. 2;
      RESERVED   at 0 range 3 .. 4;
      AAI        at 0 range 5 .. 5;
      URI        at 0 range 6 .. 6;
      SRI        at 0 range 7 .. 7;
      SLI        at 0 range 8 .. 8;
      RESERVED_1 at 0 range 9 .. 11;
      RESERVED_2 at 0 range 12 .. 15;
      NAKI       at 0 range 16 .. 16;
      RESERVED_3 at 0 range 17 .. 19;
      RESERVED_4 at 0 range 20 .. 31;
   end record;

   -----------------------
   -- USBSTS_H_Register --
   -----------------------

   subtype USBSTS_H_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype USBSTS_H_RESERVED_Field_1 is Interfaces.Bit_Types.UInt3;

   --  HCHalted
   type ENUM_8 is
     (
      --  The RS bit in USBCMD is set to zero. Set by the host controller.
      Rs,
      --  The Host Controller sets this bit to one after it has stopped
      --  executing because of the Run/Stop bit being set to 0, either by
      --  software or by the Host Controller hardware (e.g. because of an
      --  internal error).
      Halt)
     with Size => 1;
   for ENUM_8 use
     (Rs => 0,
      Halt => 1);

   --  Reclamation
   type ENUM_9 is
     (
      --  No empty asynchronous schedule detected.
      No_Empty_Asynchronou,
      --  An empty asynchronous schedule is detected. Set by the host
      --  controller.
      Empty_Asynchronou)
     with Size => 1;
   for ENUM_9 use
     (No_Empty_Asynchronou => 0,
      Empty_Asynchronou => 1);

   --  Periodic schedule status This bit reports the current real status of the
   --  Periodic Schedule. The Host Controller is not required to immediately
   --  disable or enable the Periodic Schedule when software transitions the
   --  Periodic Schedule Enable bit in the USBCMD register. When this bit and
   --  the Periodic Schedule Enable bit are the same value, the Periodic
   --  Schedule is either enabled (if both are 1) or disabled (if both are 0).
   type ENUM_10 is
     (
      --  The periodic schedule status is disabled.
      Disabled,
      --  The periodic schedule status is enabled.
      Disabled_1)
     with Size => 1;
   for ENUM_10 use
     (Disabled => 0,
      Disabled_1 => 1);

   -----------------------
   -- USBSTS_H.RESERVED --
   -----------------------

   --  USBSTS_H_RESERVED array element
   subtype USBSTS_H_RESERVED_Element is Interfaces.Bit_Types.Bit;

   --  USBSTS_H_RESERVED array
   type USBSTS_H_RESERVED_Field_Array is array (1 .. 2)
     of USBSTS_H_RESERVED_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for USBSTS_H_RESERVED
   type USBSTS_H_RESERVED_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  RESERVED as an array
            Arr : USBSTS_H_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBSTS_H_RESERVED_Field_2 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype USBSTS_H_RESERVED_Field_3 is Interfaces.Bit_Types.UInt12;

   --  USB status (host mode)
   type USBSTS_H_Register is record
      --  USB interrupt (USBINT)
      UI         : ENUM_7 := Interfaces.LPC43xxC.USB0.St;
      --  USB error interrupt (USBERRINT)
      UEI        : ENUM_7 := Interfaces.LPC43xxC.USB0.St;
      --  Port change detect.
      PCI        : ENUM_7 := Interfaces.LPC43xxC.USB0.St;
      --  Frame list roll-over
      FRI        : ENUM_7 := Interfaces.LPC43xxC.USB0.St;
      --  Reserved.
      RESERVED   : USBSTS_H_RESERVED_Field := 16#0#;
      --  Interrupt on async advance
      AAI        : ENUM_7 := Interfaces.LPC43xxC.USB0.St;
      --  Not used by the Host controller.
      RESERVED_1 : USBSTS_H_RESERVED_Field := 16#0#;
      --  SOF received
      SRI        : ENUM_7 := Interfaces.LPC43xxC.USB0.St;
      --  Not used by the Host controller.
      RESERVED_2 : USBSTS_H_RESERVED_Field := 16#0#;
      --  Reserved.
      RESERVED_3 : USBSTS_H_RESERVED_Field_1 := 16#0#;
      --  HCHalted
      HCH        : ENUM_8 := Interfaces.LPC43xxC.USB0.Rs;
      --  Reclamation
      RCL        : ENUM_9 := Interfaces.LPC43xxC.USB0.No_Empty_Asynchronou;
      --  Periodic schedule status This bit reports the current real status of
      --  the Periodic Schedule. The Host Controller is not required to
      --  immediately disable or enable the Periodic Schedule when software
      --  transitions the Periodic Schedule Enable bit in the USBCMD register.
      --  When this bit and the Periodic Schedule Enable bit are the same
      --  value, the Periodic Schedule is either enabled (if both are 1) or
      --  disabled (if both are 0).
      PS         : ENUM_10 := Interfaces.LPC43xxC.USB0.Disabled;
      --  Asynchronous schedule status This bit reports the current real status
      --  of the Asynchronous Schedule. The Host Controller is not required to
      --  immediately disable or enable the Asynchronous Schedule when software
      --  transitions the Asynchronous Schedule Enable bit in the USBCMD
      --  register. When this bit and the Asynchronous Schedule Enable bit are
      --  the same value, the Asynchronous Schedule is either enabled (if both
      --  are 1) or disabled (if both are 0).
      AS         : ENUM_10 := Interfaces.LPC43xxC.USB0.Disabled;
      --  Not used on Host mode.
      RESERVED_4 : USBSTS_H_RESERVED_Field_2 :=
                    (As_Array => False, Val => 16#0#);
      --  USB host asynchronous interrupt (USBHSTASYNCINT)
      UAI        : ENUM_7 := Interfaces.LPC43xxC.USB0.St;
      --  USB host periodic interrupt (USBHSTPERINT)
      UPI        : ENUM_7 := Interfaces.LPC43xxC.USB0.St;
      --  Reserved.
      RESERVED_5 : USBSTS_H_RESERVED_Field_3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSTS_H_Register use record
      UI         at 0 range 0 .. 0;
      UEI        at 0 range 1 .. 1;
      PCI        at 0 range 2 .. 2;
      FRI        at 0 range 3 .. 3;
      RESERVED   at 0 range 4 .. 4;
      AAI        at 0 range 5 .. 5;
      RESERVED_1 at 0 range 6 .. 6;
      SRI        at 0 range 7 .. 7;
      RESERVED_2 at 0 range 8 .. 8;
      RESERVED_3 at 0 range 9 .. 11;
      HCH        at 0 range 12 .. 12;
      RCL        at 0 range 13 .. 13;
      PS         at 0 range 14 .. 14;
      AS         at 0 range 15 .. 15;
      RESERVED_4 at 0 range 16 .. 17;
      UAI        at 0 range 18 .. 18;
      UPI        at 0 range 19 .. 19;
      RESERVED_5 at 0 range 20 .. 31;
   end record;

   ------------------------
   -- USBINTR_D_Register --
   ------------------------

   subtype USBINTR_D_UE_Field is Interfaces.Bit_Types.Bit;
   subtype USBINTR_D_UEE_Field is Interfaces.Bit_Types.Bit;
   subtype USBINTR_D_PCE_Field is Interfaces.Bit_Types.Bit;

   ------------------------
   -- USBINTR_D.RESERVED --
   ------------------------

   --  USBINTR_D_RESERVED array element
   subtype USBINTR_D_RESERVED_Element is Interfaces.Bit_Types.Bit;

   --  USBINTR_D_RESERVED array
   type USBINTR_D_RESERVED_Field_Array is array (1 .. 3)
     of USBINTR_D_RESERVED_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for USBINTR_D_RESERVED
   type USBINTR_D_RESERVED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  RESERVED as an array
            Arr : USBINTR_D_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for USBINTR_D_RESERVED_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype USBINTR_D_URE_Field is Interfaces.Bit_Types.Bit;
   subtype USBINTR_D_SRE_Field is Interfaces.Bit_Types.Bit;
   subtype USBINTR_D_SLE_Field is Interfaces.Bit_Types.Bit;
   subtype USBINTR_D_RESERVED_Field_1 is Interfaces.Bit_Types.UInt7;
   subtype USBINTR_D_NAKE_Field is Interfaces.Bit_Types.Bit;

   ------------------------
   -- USBINTR_D.RESERVED --
   ------------------------

   subtype USBINTR_D_RESERVED_Field_2 is Interfaces.Bit_Types.UInt12;

   --  USB interrupt enable (device mode)
   type USBINTR_D_Register is record
      --  USB interrupt enable When this bit is one, and the USBINT bit in the
      --  USBSTS register is one, the host/device controller will issue an
      --  interrupt at the next interrupt threshold. The interrupt is
      --  acknowledged by software clearing the USBINT bit in USBSTS.
      UE         : USBINTR_D_UE_Field := 16#0#;
      --  USB error interrupt enable When this bit is a one, and the USBERRINT
      --  bit in the USBSTS register is a one, the host/device controller will
      --  issue an interrupt at the next interrupt threshold. The interrupt is
      --  acknowledged by software clearing the USBERRINT bit in the USBSTS
      --  register.
      UEE        : USBINTR_D_UEE_Field := 16#0#;
      --  Port change detect enable When this bit is a one, and the Port Change
      --  Detect bit in the USBSTS register is a one, the host/device
      --  controller will issue an interrupt. The interrupt is acknowledged by
      --  software clearing the Port Change Detect bit in USBSTS.
      PCE        : USBINTR_D_PCE_Field := 16#0#;
      --  Not used by the Device controller.
      RESERVED   : USBINTR_D_RESERVED_Field :=
                    (As_Array => False, Val => 16#0#);
      --  USB reset enable When this bit is a one, and the USB Reset Received
      --  bit in the USBSTS register is a one, the device controller will issue
      --  an interrupt. The interrupt is acknowledged by software clearing the
      --  USB Reset Received bit.
      URE        : USBINTR_D_URE_Field := 16#0#;
      --  SOF received enable When this bit is a one, and the SOF Received bit
      --  in the USBSTS register is a one, the device controller will issue an
      --  interrupt. The interrupt is acknowledged by software clearing the SOF
      --  Received bit.
      SRE        : USBINTR_D_SRE_Field := 16#0#;
      --  Sleep enable When this bit is a one, and the DCSuspend bit in the
      --  USBSTS register transitions, the device controller will issue an
      --  interrupt. The interrupt is acknowledged by software writing a one to
      --  the DCSuspend bit.
      SLE        : USBINTR_D_SLE_Field := 16#0#;
      --  Reserved
      RESERVED_1 : USBINTR_D_RESERVED_Field_1 := 16#0#;
      --  NAK interrupt enable This bit is set by software if it wants to
      --  enable the hardware interrupt for the NAK Interrupt bit. If both this
      --  bit and the corresponding NAK Interrupt bit are set, a hardware
      --  interrupt is generated.
      NAKE       : USBINTR_D_NAKE_Field := 16#0#;
      --  Reserved
      RESERVED_2 : USBINTR_D_RESERVED_Field :=
                    (As_Array => False, Val => 16#0#);
      --  Reserved
      RESERVED_3 : USBINTR_D_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBINTR_D_Register use record
      UE         at 0 range 0 .. 0;
      UEE        at 0 range 1 .. 1;
      PCE        at 0 range 2 .. 2;
      RESERVED   at 0 range 3 .. 5;
      URE        at 0 range 6 .. 6;
      SRE        at 0 range 7 .. 7;
      SLE        at 0 range 8 .. 8;
      RESERVED_1 at 0 range 9 .. 15;
      NAKE       at 0 range 16 .. 16;
      RESERVED_2 at 0 range 17 .. 19;
      RESERVED_3 at 0 range 20 .. 31;
   end record;

   ------------------------
   -- USBINTR_H_Register --
   ------------------------

   subtype USBINTR_H_UE_Field is Interfaces.Bit_Types.Bit;
   subtype USBINTR_H_UEE_Field is Interfaces.Bit_Types.Bit;
   subtype USBINTR_H_PCE_Field is Interfaces.Bit_Types.Bit;
   subtype USBINTR_H_FRE_Field is Interfaces.Bit_Types.Bit;
   subtype USBINTR_H_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype USBINTR_H_AAE_Field is Interfaces.Bit_Types.Bit;
   subtype USBINTR_H_SRE_Field is Interfaces.Bit_Types.Bit;
   subtype USBINTR_H_RESERVED_Field_1 is Interfaces.Bit_Types.UInt7;

   ------------------------
   -- USBINTR_H.RESERVED --
   ------------------------

   --  USBINTR_H_RESERVED array element
   subtype USBINTR_H_RESERVED_Element is Interfaces.Bit_Types.Bit;

   --  USBINTR_H_RESERVED array
   type USBINTR_H_RESERVED_Field_Array is array (1 .. 2)
     of USBINTR_H_RESERVED_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for USBINTR_H_RESERVED
   type USBINTR_H_RESERVED_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  RESERVED as an array
            Arr : USBINTR_H_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBINTR_H_RESERVED_Field_2 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype USBINTR_H_UAIE_Field is Interfaces.Bit_Types.Bit;
   subtype USBINTR_H_UPIA_Field is Interfaces.Bit_Types.Bit;
   subtype USBINTR_H_RESERVED_Field_3 is Interfaces.Bit_Types.UInt12;

   --  USB interrupt enable (host mode)
   type USBINTR_H_Register is record
      --  USB interrupt enable When this bit is one, and the USBINT bit in the
      --  USBSTS register is one, the host/device controller will issue an
      --  interrupt at the next interrupt threshold. The interrupt is
      --  acknowledged by software clearing the USBINT bit in USBSTS.
      UE         : USBINTR_H_UE_Field := 16#0#;
      --  USB error interrupt enable When this bit is a one, and the USBERRINT
      --  bit in the USBSTS register is a one, the host/device controller will
      --  issue an interrupt at the next interrupt threshold. The interrupt is
      --  acknowledged by software clearing the USBERRINT bit in the USBSTS
      --  register.
      UEE        : USBINTR_H_UEE_Field := 16#0#;
      --  Port change detect enable When this bit is a one, and the Port Change
      --  Detect bit in the USBSTS register is a one, the host/device
      --  controller will issue an interrupt. The interrupt is acknowledged by
      --  software clearing the Port Change Detect bit in USBSTS.
      PCE        : USBINTR_H_PCE_Field := 16#0#;
      --  Frame list rollover enable When this bit is a one, and the Frame List
      --  Rollover bit in the USBSTS register is a one, the host controller
      --  will issue an interrupt. The interrupt is acknowledged by software
      --  clearing the Frame List Rollover bit.
      FRE        : USBINTR_H_FRE_Field := 16#0#;
      --  Reserved
      RESERVED   : USBINTR_H_RESERVED_Field := 16#0#;
      --  Interrupt on asynchronous advance enable When this bit is a one, and
      --  the Interrupt on Async Advance bit in the USBSTS register is a one,
      --  the host controller will issue an interrupt at the next interrupt
      --  threshold. The interrupt is acknowledged by software clearing the
      --  Interrupt on Async Advance bit.
      AAE        : USBINTR_H_AAE_Field := 16#0#;
      --  Not used by the Host controller.
      RESERVED_1 : USBINTR_H_RESERVED_Field := 16#0#;
      --  If this bit is one and the SRI bit in the USBSTS register is one, the
      --  host controller will issue an interrupt. In host mode, the SRI bit
      --  will be set every 125 ms and can be used by the host controller as a
      --  time base. The interrupt is acknowledged by software clearing the SRI
      --  bit in the USBSTS register.
      SRE        : USBINTR_H_SRE_Field := 16#0#;
      --  Not used by the Host controller.
      RESERVED_2 : USBINTR_H_RESERVED_Field := 16#0#;
      --  Reserved
      RESERVED_3 : USBINTR_H_RESERVED_Field_1 := 16#0#;
      --  Not used by the host controller.
      RESERVED_4 : USBINTR_H_RESERVED_Field_2 :=
                    (As_Array => False, Val => 16#0#);
      --  USB host asynchronous interrupt enable When this bit is a one, and
      --  the USBHSTASYNCINT bit in the USBSTS register is a one, the host
      --  controller will issue an interrupt at the next interrupt threshold.
      --  The interrupt is acknowledged by software clearing the USBHSTASYNCINT
      --  bit.
      UAIE       : USBINTR_H_UAIE_Field := 16#0#;
      --  USB host periodic interrupt enable When this bit is a one, and the
      --  USBHSTPERINT bit in the USBSTS register is a one, the host controller
      --  will issue an interrupt at the next interrupt threshold. The
      --  interrupt is acknowledged by software clearing the USBHSTPERINT bit.
      UPIA       : USBINTR_H_UPIA_Field := 16#0#;
      --  Reserved
      RESERVED_5 : USBINTR_H_RESERVED_Field_3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBINTR_H_Register use record
      UE         at 0 range 0 .. 0;
      UEE        at 0 range 1 .. 1;
      PCE        at 0 range 2 .. 2;
      FRE        at 0 range 3 .. 3;
      RESERVED   at 0 range 4 .. 4;
      AAE        at 0 range 5 .. 5;
      RESERVED_1 at 0 range 6 .. 6;
      SRE        at 0 range 7 .. 7;
      RESERVED_2 at 0 range 8 .. 8;
      RESERVED_3 at 0 range 9 .. 15;
      RESERVED_4 at 0 range 16 .. 17;
      UAIE       at 0 range 18 .. 18;
      UPIA       at 0 range 19 .. 19;
      RESERVED_5 at 0 range 20 .. 31;
   end record;

   ------------------------
   -- FRINDEX_D_Register --
   ------------------------

   subtype FRINDEX_D_FRINDEX2_0_Field is Interfaces.Bit_Types.UInt3;
   subtype FRINDEX_D_FRINDEX13_3_Field is Interfaces.Bit_Types.UInt11;
   subtype FRINDEX_D_RESERVED_Field is Interfaces.Bit_Types.UInt18;

   --  USB frame index (device mode)
   type FRINDEX_D_Register is record
      --  Current micro frame number
      FRINDEX2_0  : FRINDEX_D_FRINDEX2_0_Field := 16#0#;
      --  Current frame number of the last frame transmitted
      FRINDEX13_3 : FRINDEX_D_FRINDEX13_3_Field := 16#0#;
      --  Reserved
      RESERVED    : FRINDEX_D_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FRINDEX_D_Register use record
      FRINDEX2_0  at 0 range 0 .. 2;
      FRINDEX13_3 at 0 range 3 .. 13;
      RESERVED    at 0 range 14 .. 31;
   end record;

   ------------------------
   -- FRINDEX_H_Register --
   ------------------------

   subtype FRINDEX_H_FRINDEX2_0_Field is Interfaces.Bit_Types.UInt3;
   subtype FRINDEX_H_FRINDEX12_3_Field is Interfaces.Bit_Types.UInt10;
   subtype FRINDEX_H_RESERVED_Field is Interfaces.Bit_Types.UInt19;

   --  USB frame index (host mode)
   type FRINDEX_H_Register is record
      --  Current micro frame number
      FRINDEX2_0  : FRINDEX_H_FRINDEX2_0_Field := 16#0#;
      --  Frame list current index.
      FRINDEX12_3 : FRINDEX_H_FRINDEX12_3_Field := 16#0#;
      --  Reserved
      RESERVED    : FRINDEX_H_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FRINDEX_H_Register use record
      FRINDEX2_0  at 0 range 0 .. 2;
      FRINDEX12_3 at 0 range 3 .. 12;
      RESERVED    at 0 range 13 .. 31;
   end record;

   -------------------------
   -- DEVICEADDR_Register --
   -------------------------

   subtype DEVICEADDR_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Device address advance
   type ENUM_11 is
     (
      --  Any write to USBADR are instantaneous.
      Instantaneous,
      --  When the user writes a one to this bit at the same time or before
      --  USBADR is written, the write to USBADR fields is staged and held in a
      --  hidden register. After an IN occurs on endpoint 0 and is
      --  acknowledged, USBADR will be loaded from the holding register.
      --  Hardware will automatically clear this bit on the following
      --  conditions: IN is ACKed to endpoint 0. USBADR is updated from the
      --  staging register. OUT/SETUP occurs on endpoint 0. USBADR is not
      --  updated. Device reset occurs. USBADR is set to 0. After the status
      --  phase of the SET_ADDRESS descriptor, the DCD has 2 ms to program the
      --  USBADR field. This mechanism will ensure this specification is met
      --  when the DCD can not write the device address within 2 ms from the
      --  SET_ADDRESS status phase. If the DCD writes the USBADR with USBADRA=1
      --  after the SET_ADDRESS data phase (before the prime of the status
      --  phase), the USBADR will be programmed instantly at the correct time
      --  and meet the 2 ms USB requirement.
      Delayed)
     with Size => 1;
   for ENUM_11 use
     (Instantaneous => 0,
      Delayed => 1);

   subtype DEVICEADDR_USBADR_Field is Interfaces.Bit_Types.UInt7;

   --  USB device address (device mode)
   type DEVICEADDR_Register is record
      --  Reserved
      RESERVED : DEVICEADDR_RESERVED_Field := 16#0#;
      --  Device address advance
      USBADRA  : ENUM_11 := Interfaces.LPC43xxC.USB0.Instantaneous;
      --  USB device address
      USBADR   : DEVICEADDR_USBADR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEVICEADDR_Register use record
      RESERVED at 0 range 0 .. 23;
      USBADRA  at 0 range 24 .. 24;
      USBADR   at 0 range 25 .. 31;
   end record;

   -------------------------------
   -- PERIODICLISTBASE_Register --
   -------------------------------

   subtype PERIODICLISTBASE_RESERVED_Field is Interfaces.Bit_Types.UInt12;
   subtype PERIODICLISTBASE_PERBASE31_12_Field is Interfaces.Bit_Types.UInt20;

   --  Frame list base address (host mode)
   type PERIODICLISTBASE_Register is record
      --  Reserved
      RESERVED     : PERIODICLISTBASE_RESERVED_Field := 16#0#;
      --  Base Address (Low) These bits correspond to the memory address
      --  signals 31:12.
      PERBASE31_12 : PERIODICLISTBASE_PERBASE31_12_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PERIODICLISTBASE_Register use record
      RESERVED     at 0 range 0 .. 11;
      PERBASE31_12 at 0 range 12 .. 31;
   end record;

   -------------------------------
   -- ENDPOINTLISTADDR_Register --
   -------------------------------

   subtype ENDPOINTLISTADDR_RESERVED_Field is Interfaces.Bit_Types.UInt11;
   subtype ENDPOINTLISTADDR_EPBASE31_11_Field is Interfaces.Bit_Types.UInt21;

   --  Address of endpoint list in memory
   type ENDPOINTLISTADDR_Register is record
      --  reserved
      RESERVED    : ENDPOINTLISTADDR_RESERVED_Field := 16#0#;
      --  Endpoint list pointer (low) These bits correspond to memory address
      --  signals 31:11, respectively. This field will reference a list of up
      --  to 4 Queue Heads (QH). (i.e. one queue head per endpoint and
      --  direction.)
      EPBASE31_11 : ENDPOINTLISTADDR_EPBASE31_11_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENDPOINTLISTADDR_Register use record
      RESERVED    at 0 range 0 .. 10;
      EPBASE31_11 at 0 range 11 .. 31;
   end record;

   ----------------------------
   -- ASYNCLISTADDR_Register --
   ----------------------------

   subtype ASYNCLISTADDR_RESERVED_Field is Interfaces.Bit_Types.UInt5;
   subtype ASYNCLISTADDR_ASYBASE31_5_Field is Interfaces.Bit_Types.UInt27;

   --  Address of endpoint list in memory
   type ASYNCLISTADDR_Register is record
      --  Reserved
      RESERVED    : ASYNCLISTADDR_RESERVED_Field := 16#0#;
      --  Link pointer (Low) LPL These bits correspond to memory address
      --  signals 31:5, respectively. This field may only reference a Queue
      --  Head (OH).
      ASYBASE31_5 : ASYNCLISTADDR_ASYBASE31_5_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASYNCLISTADDR_Register use record
      RESERVED    at 0 range 0 .. 4;
      ASYBASE31_5 at 0 range 5 .. 31;
   end record;

   ---------------------
   -- TTCTRL_Register --
   ---------------------

   subtype TTCTRL_RESERVED_Field is Interfaces.Bit_Types.UInt24;
   subtype TTCTRL_TTHA_Field is Interfaces.Bit_Types.UInt7;
   subtype TTCTRL_RESERVED_Field_1 is Interfaces.Bit_Types.Bit;

   --  Asynchronous buffer status for embedded TT (host mode)
   type TTCTRL_Register is record
      --  Reserved.
      RESERVED   : TTCTRL_RESERVED_Field := 16#0#;
      --  Hub address when FS or LS device are connected directly.
      TTHA       : TTCTRL_TTHA_Field := 16#0#;
      --  Reserved.
      RESERVED_1 : TTCTRL_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TTCTRL_Register use record
      RESERVED   at 0 range 0 .. 23;
      TTHA       at 0 range 24 .. 30;
      RESERVED_1 at 0 range 31 .. 31;
   end record;

   ------------------------
   -- BURSTSIZE_Register --
   ------------------------

   subtype BURSTSIZE_RXPBURST_Field is Interfaces.Bit_Types.Byte;
   subtype BURSTSIZE_TXPBURST_Field is Interfaces.Bit_Types.Byte;
   subtype BURSTSIZE_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  Programmable burst size
   type BURSTSIZE_Register is record
      --  Programmable RX burst length This register represents the maximum
      --  length of a burst in 32-bit words while moving data from the USB bus
      --  to system memory.
      RXPBURST : BURSTSIZE_RXPBURST_Field := 16#0#;
      --  Programmable TX burst length This register represents the maximum
      --  length of a burst in 32-bit words while moving data from system
      --  memory to the USB bus.
      TXPBURST : BURSTSIZE_TXPBURST_Field := 16#0#;
      --  Reserved.
      RESERVED : BURSTSIZE_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BURSTSIZE_Register use record
      RXPBURST at 0 range 0 .. 7;
      TXPBURST at 0 range 8 .. 15;
      RESERVED at 0 range 16 .. 31;
   end record;

   ---------------------------
   -- TXFILLTUNING_Register --
   ---------------------------

   subtype TXFILLTUNING_TXSCHOH_Field is Interfaces.Bit_Types.Byte;
   subtype TXFILLTUNING_TXSCHEATLTH_Field is Interfaces.Bit_Types.UInt5;
   subtype TXFILLTUNING_RESERVED_Field is Interfaces.Bit_Types.UInt3;
   subtype TXFILLTUNING_TXFIFOTHRES_Field is Interfaces.Bit_Types.UInt6;
   subtype TXFILLTUNING_RESERVED_Field_1 is Interfaces.Bit_Types.UInt10;

   --  Host transmit pre-buffer packet tuning (host mode)
   type TXFILLTUNING_Register is record
      --  FIFO burst threshold This register controls the number of data bursts
      --  that are posted to the TX latency FIFO in host mode before the packet
      --  begins on to the bus. The minimum value is 2 and this value should be
      --  a low as possible to maximize USB performance. A higher value can be
      --  used in systems with unpredictable latency and/or insufficient
      --  bandwidth where the FIFO may underrun because the data transferred
      --  from the latency FIFO to USB occurs before it can be replenished from
      --  system memory. This value is ignored if the Stream Disable bit in
      --  USBMODE register is set.
      TXSCHOH     : TXFILLTUNING_TXSCHOH_Field := 16#0#;
      --  Scheduler health counter This register increments when the host
      --  controller fails to fill the TX latency FIFO to the level programmed
      --  by TXFIFOTHRES before running out of time to send the packet before
      --  the next Start-Of-Frame . This health counter measures the number of
      --  times this occurs to provide feedback to selecting a proper TXSCHOH.
      --  Writing to this register will clear the counter. The maximum value is
      --  31.
      TXSCHEATLTH : TXFILLTUNING_TXSCHEATLTH_Field := 16#0#;
      --  reserved
      RESERVED    : TXFILLTUNING_RESERVED_Field := 16#0#;
      --  Scheduler overhead This register adds an additional fixed offset to
      --  the schedule time estimator described above as Tff. As an
      --  approximation, the value chosen for this register should limit the
      --  number of back-off events captured in the TXSCHHEALTH to less than 10
      --  per second in a highly utilized bus. Choosing a value that is too
      --  high for this register is not desired as it can needlessly reduce USB
      --  utilization. The time unit represented in this register is 1.267 ms
      --  when a device is connected in High-Speed Mode for OTG and SPH. The
      --  time unit represented in this register is 6.333 ms when a device is
      --  connected in Low/Full Speed Mode for OTG and SPH.
      TXFIFOTHRES : TXFILLTUNING_TXFIFOTHRES_Field := 16#0#;
      --  reserved
      RESERVED_1  : TXFILLTUNING_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXFILLTUNING_Register use record
      TXSCHOH     at 0 range 0 .. 7;
      TXSCHEATLTH at 0 range 8 .. 12;
      RESERVED    at 0 range 13 .. 15;
      TXFIFOTHRES at 0 range 16 .. 21;
      RESERVED_1  at 0 range 22 .. 31;
   end record;

   ------------------------
   -- BINTERVAL_Register --
   ------------------------

   subtype BINTERVAL_BINT_Field is Interfaces.Bit_Types.UInt4;
   subtype BINTERVAL_RESERVED_Field is Interfaces.Bit_Types.UInt28;

   --  Length of virtual frame
   type BINTERVAL_Register is record
      --  bInterval value (see Section 18.7.7)
      BINT     : BINTERVAL_BINT_Field := 16#0#;
      --  reserved
      RESERVED : BINTERVAL_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BINTERVAL_Register use record
      BINT     at 0 range 0 .. 3;
      RESERVED at 0 range 4 .. 31;
   end record;

   -----------------------
   -- ENDPTNAK_Register --
   -----------------------

   -------------------
   -- ENDPTNAK.EPRN --
   -------------------

   --  ENDPTNAK_EPRN array element
   subtype ENDPTNAK_EPRN_Element is Interfaces.Bit_Types.Bit;

   --  ENDPTNAK_EPRN array
   type ENDPTNAK_EPRN_Field_Array is array (0 .. 5) of ENDPTNAK_EPRN_Element
     with Component_Size => 1, Size => 6;

   --  Type definition for ENDPTNAK_EPRN
   type ENDPTNAK_EPRN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EPRN as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  EPRN as an array
            Arr : ENDPTNAK_EPRN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for ENDPTNAK_EPRN_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   subtype ENDPTNAK_RESERVED_Field is Interfaces.Bit_Types.UInt10;

   -------------------
   -- ENDPTNAK.EPTN --
   -------------------

   --  ENDPTNAK_EPTN array element
   subtype ENDPTNAK_EPTN_Element is Interfaces.Bit_Types.Bit;

   --  ENDPTNAK_EPTN array
   type ENDPTNAK_EPTN_Field_Array is array (0 .. 5) of ENDPTNAK_EPTN_Element
     with Component_Size => 1, Size => 6;

   --  Type definition for ENDPTNAK_EPTN
   type ENDPTNAK_EPTN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EPTN as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  EPTN as an array
            Arr : ENDPTNAK_EPTN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for ENDPTNAK_EPTN_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Endpoint NAK (device mode)
   type ENDPTNAK_Register is record
      --  Rx endpoint NAK Each RX endpoint has one bit in this field. The bit
      --  is set when the device sends a NAK handshake on a received OUT or
      --  PING token for the corresponding endpoint. Bit 5 corresponds to
      --  endpoint 5. ... Bit 1 corresponds to endpoint 1. Bit 0 corresponds to
      --  endpoint 0.
      EPRN       : ENDPTNAK_EPRN_Field := (As_Array => False, Val => 16#0#);
      --  Reserved
      RESERVED   : ENDPTNAK_RESERVED_Field := 16#0#;
      --  Tx endpoint NAK Each TX endpoint has one bit in this field. The bit
      --  is set when the device sends a NAK handshake on a received IN token
      --  for the corresponding endpoint. Bit 3 corresponds to endpoint 3. ...
      --  Bit 1 corresponds to endpoint 1. Bit 0 corresponds to endpoint 0.
      EPTN       : ENDPTNAK_EPTN_Field := (As_Array => False, Val => 16#0#);
      --  reserved
      RESERVED_1 : ENDPTNAK_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENDPTNAK_Register use record
      EPRN       at 0 range 0 .. 5;
      RESERVED   at 0 range 6 .. 15;
      EPTN       at 0 range 16 .. 21;
      RESERVED_1 at 0 range 22 .. 31;
   end record;

   -------------------------
   -- ENDPTNAKEN_Register --
   -------------------------

   ----------------------
   -- ENDPTNAKEN.EPRNE --
   ----------------------

   --  ENDPTNAKEN_EPRNE array element
   subtype ENDPTNAKEN_EPRNE_Element is Interfaces.Bit_Types.Bit;

   --  ENDPTNAKEN_EPRNE array
   type ENDPTNAKEN_EPRNE_Field_Array is array (0 .. 5)
     of ENDPTNAKEN_EPRNE_Element
     with Component_Size => 1, Size => 6;

   --  Type definition for ENDPTNAKEN_EPRNE
   type ENDPTNAKEN_EPRNE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EPRNE as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  EPRNE as an array
            Arr : ENDPTNAKEN_EPRNE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for ENDPTNAKEN_EPRNE_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   subtype ENDPTNAKEN_RESERVED_Field is Interfaces.Bit_Types.UInt10;

   ----------------------
   -- ENDPTNAKEN.EPTNE --
   ----------------------

   --  ENDPTNAKEN_EPTNE array element
   subtype ENDPTNAKEN_EPTNE_Element is Interfaces.Bit_Types.Bit;

   --  ENDPTNAKEN_EPTNE array
   type ENDPTNAKEN_EPTNE_Field_Array is array (0 .. 5)
     of ENDPTNAKEN_EPTNE_Element
     with Component_Size => 1, Size => 6;

   --  Type definition for ENDPTNAKEN_EPTNE
   type ENDPTNAKEN_EPTNE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EPTNE as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  EPTNE as an array
            Arr : ENDPTNAKEN_EPTNE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for ENDPTNAKEN_EPTNE_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Endpoint NAK Enable (device mode)
   type ENDPTNAKEN_Register is record
      --  Rx endpoint NAK enable Each bit enables the corresponding RX NAK bit.
      --  If this bit is set and the corresponding RX endpoint NAK bit is set,
      --  the NAK interrupt bit is set. Bit 5 corresponds to endpoint 5. ...
      --  Bit 1 corresponds to endpoint 1. Bit 0 corresponds to endpoint 0.
      EPRNE      : ENDPTNAKEN_EPRNE_Field :=
                    (As_Array => False, Val => 16#0#);
      --  Reserved
      RESERVED   : ENDPTNAKEN_RESERVED_Field := 16#0#;
      --  Tx endpoint NAK Each bit enables the corresponding TX NAK bit. If
      --  this bit is set and the corresponding TX endpoint NAK bit is set, the
      --  NAK interrupt bit is set. Bit 5 corresponds to endpoint 5. ... Bit 1
      --  corresponds to endpoint 1. Bit 0 corresponds to endpoint 0.
      EPTNE      : ENDPTNAKEN_EPTNE_Field :=
                    (As_Array => False, Val => 16#0#);
      --  Reserved
      RESERVED_1 : ENDPTNAKEN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENDPTNAKEN_Register use record
      EPRNE      at 0 range 0 .. 5;
      RESERVED   at 0 range 6 .. 15;
      EPTNE      at 0 range 16 .. 21;
      RESERVED_1 at 0 range 22 .. 31;
   end record;

   ------------------------
   -- PORTSC1_D_Register --
   ------------------------

   --  Current connect status
   type ENUM_12 is
     (
      --  Device not attached A zero indicates that the device did not attach
      --  successfully or was forcibly disconnected by the software writing a
      --  zero to the Run bit in the USBCMD register. It does not state the
      --  device being disconnected or suspended.
      Device_Not_Attached,
      --  Device attached. A one indicates that the device successfully
      --  attached and is operating in either high-speed mode or full-speed
      --  mode as indicated by the High Speed Port bit in this register.
      Device_Attached_A)
     with Size => 1;
   for ENUM_12 use
     (Device_Not_Attached => 0,
      Device_Attached_A => 1);

   subtype PORTSC1_D_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype PORTSC1_D_PE_Field is Interfaces.Bit_Types.Bit;
   subtype PORTSC1_D_PEC_Field is Interfaces.Bit_Types.Bit;
   subtype PORTSC1_D_RESERVED_Field_1 is Interfaces.Bit_Types.UInt2;

   --  Force port resume After the device has been in Suspend State for 5 ms or
   --  more, software must set this bit to one to drive resume signaling before
   --  clearing. The Device Controller will set this bit to one if a J-to-K
   --  transition is detected while the port is in the Suspend state. The bit
   --  will be cleared when the device returns to normal operation. When this
   --  bit transitions to a one because a J-to-K transition detected, the Port
   --  Change Detect bit in the USBSTS register is set to one as well.
   type ENUM_13 is
     (
      --  No resume (K-state) detected/driven on port.
      No_Resume,
      --  Resume detected/driven on port.
      Resume_Detected)
     with Size => 1;
   for ENUM_13 use
     (No_Resume => 0,
      Resume_Detected => 1);

   --  Suspend In device mode, this is a read-only status bit .
   type ENUM_14 is
     (
      --  Port not in suspend state
      Port_Not_In_Suspend,
      --  Port in suspend state
      Port_In_Suspend_Stat)
     with Size => 1;
   for ENUM_14 use
     (Port_Not_In_Suspend => 0,
      Port_In_Suspend_Stat => 1);

   --  Port reset In device mode, this is a read-only status bit. A device
   --  reset from the USB bus is also indicated in the USBSTS register.
   type ENUM_15 is
     (
      --  Port is not in the reset state.
      Port_Is_Not_In_The_R,
      --  Port is in the reset state.
      Port_Is_In_The_Reset)
     with Size => 1;
   for ENUM_15 use
     (Port_Is_Not_In_The_R => 0,
      Port_Is_In_The_Reset => 1);

   --  High-speed status This bit is redundant with bits 27:26 (PSPD) in this
   --  register. It is implemented for compatibility reasons.
   type ENUM_16 is
     (
      --  Host/device connected to the port is not in High-speed mode.
      Not_Highsspeed,
      --  Host/device connected to the port is in High-speed mode.
      Highspeed)
     with Size => 1;
   for ENUM_16 use
     (Not_Highsspeed => 0,
      Highspeed => 1);

   ------------------------
   -- PORTSC1_D.RESERVED --
   ------------------------

   --  PORTSC1_D_RESERVED array element
   subtype PORTSC1_D_RESERVED_Element is Interfaces.Bit_Types.Bit;

   --  PORTSC1_D_RESERVED array
   type PORTSC1_D_RESERVED_Field_Array is array (1 .. 2)
     of PORTSC1_D_RESERVED_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for PORTSC1_D_RESERVED
   type PORTSC1_D_RESERVED_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  RESERVED as an array
            Arr : PORTSC1_D_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PORTSC1_D_RESERVED_Field_2 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Port indicator control Writing to this field effects the value of the
   --  USB0_IND[1:0] pins.
   type ENUM_17 is
     (
      --  Port indicators are off.
      Off,
      --  amber
      Amber,
      --  green
      Green,
      --  undefined
      Undefined)
     with Size => 2;
   for ENUM_17 use
     (Off => 0,
      Amber => 1,
      Green => 2,
      Undefined => 3);

   --  Port test control Any value other than 0000 indicates that the port is
   --  operating in test mode. The FORCE_ENABLE_FS and FORCE ENABLE_LS are
   --  extensions to the test mode support specified in the EHCI specification.
   --  Writing the PTC field to any of the FORCE_ENABLE_HS/FS/LS values will
   --  force the port into the connected and enabled state at the selected
   --  speed. Writing the PTC field back to TEST_MODE_DISABLE will allow the
   --  port state machines to progress normally from that point. Values 0111 to
   --  1111 are not valid.
   type ENUM_18 is
     (
      --  TEST_MODE_DISABLE
      Test_Mode_Disable,
      --  J_STATE
      J_State,
      --  K_STATE
      K_State,
      --  SE0 (host)/NAK (device)
      Se0_Nak,
      --  Packet
      Packet,
      --  FORCE_ENABLE_HS
      Force_Enable_Hs,
      --  FORCE_ENABLE_FS
      Force_Enable_Fs)
     with Size => 4;
   for ENUM_18 use
     (Test_Mode_Disable => 0,
      J_State => 1,
      K_State => 2,
      Se0_Nak => 3,
      Packet => 4,
      Force_Enable_Hs => 5,
      Force_Enable_Fs => 6);

   ------------------------
   -- PORTSC1_D.RESERVED --
   ------------------------

   --  PORTSC1_D_RESERVED array
   type PORTSC1_D_RESERVED_Field_Array_1 is array (1 .. 3)
     of PORTSC1_D_RESERVED_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for PORTSC1_D_RESERVED
   type PORTSC1_D_RESERVED_Field_3
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  RESERVED as an array
            Arr : PORTSC1_D_RESERVED_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PORTSC1_D_RESERVED_Field_3 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  PHY low power suspend - clock disable (PLPSCD) In device mode, The PHY
   --  can be put into Low Power Suspend - Clock Disable when the device is not
   --  running (USBCMD Run/Stop = 0) or the host has signaled suspend (PORTSC
   --  SUSPEND = 1). Low power suspend will be cleared automatically when the
   --  host has signaled resume. Before forcing a resume from the device, the
   --  device controller driver must clear this bit.
   type ENUM_19 is
     (
      --  Writing a 0 enables the PHY clock. Reading a 0 indicates the status
      --  of the PHY clock (enabled).
      Enable,
      --  Writing a 1 disables the PHY clock. Reading a 1 indicates the status
      --  of the PHY clock (disabled).
      Disable)
     with Size => 1;
   for ENUM_19 use
     (Enable => 0,
      Disable => 1);

   --  Port force full speed connect
   type ENUM_20 is
     (
      --  Port connects at any speed.
      Anyspeed,
      --  Writing this bit to a 1 will force the port to only connect at full
      --  speed. It disables the chirp sequence that allows the port to
      --  identify itself as High-speed. This is useful for testing FS
      --  configurations with a HS host, hub or device.
      Fullspeed)
     with Size => 1;
   for ENUM_20 use
     (Anyspeed => 0,
      Fullspeed => 1);

   --  Port speed This register field indicates the speed at which the port is
   --  operating.
   type ENUM_21 is
     (
      --  Full-speed
      Full_Speed,
      --  invalid in device mode
      Invalid_In_Device_Mo,
      --  High-speed
      High_Speed)
     with Size => 2;
   for ENUM_21 use
     (Full_Speed => 0,
      Invalid_In_Device_Mo => 1,
      High_Speed => 2);

   subtype PORTSC1_D_RESERVED_Field_4 is Interfaces.Bit_Types.UInt4;

   --  Port 1 status/control (device mode)
   type PORTSC1_D_Register is record
      --  Current connect status
      CCS        : ENUM_12 := Interfaces.LPC43xxC.USB0.Device_Not_Attached;
      --  Not used in device mode
      RESERVED   : PORTSC1_D_RESERVED_Field := 16#0#;
      --  Port enable. This bit is always 1. The device port is always enabled.
      PE         : PORTSC1_D_PE_Field := 16#0#;
      --  Port enable/disable change This bit is always 0. The device port is
      --  always enabled.
      PEC        : PORTSC1_D_PEC_Field := 16#0#;
      --  Reserved
      RESERVED_1 : PORTSC1_D_RESERVED_Field_1 := 16#0#;
      --  Force port resume After the device has been in Suspend State for 5 ms
      --  or more, software must set this bit to one to drive resume signaling
      --  before clearing. The Device Controller will set this bit to one if a
      --  J-to-K transition is detected while the port is in the Suspend state.
      --  The bit will be cleared when the device returns to normal operation.
      --  When this bit transitions to a one because a J-to-K transition
      --  detected, the Port Change Detect bit in the USBSTS register is set to
      --  one as well.
      FPR        : ENUM_13 := Interfaces.LPC43xxC.USB0.No_Resume;
      --  Suspend In device mode, this is a read-only status bit .
      SUSP       : ENUM_14 := Interfaces.LPC43xxC.USB0.Port_Not_In_Suspend;
      --  Port reset In device mode, this is a read-only status bit. A device
      --  reset from the USB bus is also indicated in the USBSTS register.
      PR         : ENUM_15 := Interfaces.LPC43xxC.USB0.Port_Is_Not_In_The_R;
      --  High-speed status This bit is redundant with bits 27:26 (PSPD) in
      --  this register. It is implemented for compatibility reasons.
      HSP        : ENUM_16 := Interfaces.LPC43xxC.USB0.Not_Highsspeed;
      --  Not used in device mode.
      RESERVED_2 : PORTSC1_D_RESERVED_Field_1 := 16#0#;
      --  Not used in device mode.
      RESERVED_3 : PORTSC1_D_RESERVED_Field_2 :=
                    (As_Array => False, Val => 16#0#);
      --  Port indicator control Writing to this field effects the value of the
      --  USB0_IND[1:0] pins.
      PIC1_0     : ENUM_17 := Interfaces.LPC43xxC.USB0.Off;
      --  Port test control Any value other than 0000 indicates that the port
      --  is operating in test mode. The FORCE_ENABLE_FS and FORCE ENABLE_LS
      --  are extensions to the test mode support specified in the EHCI
      --  specification. Writing the PTC field to any of the
      --  FORCE_ENABLE_HS/FS/LS values will force the port into the connected
      --  and enabled state at the selected speed. Writing the PTC field back
      --  to TEST_MODE_DISABLE will allow the port state machines to progress
      --  normally from that point. Values 0111 to 1111 are not valid.
      PTC3_0     : ENUM_18 := Interfaces.LPC43xxC.USB0.Test_Mode_Disable;
      --  Not used in device mode. This bit is always 0 in device mode.
      RESERVED_4 : PORTSC1_D_RESERVED_Field_3 :=
                    (As_Array => False, Val => 16#0#);
      --  PHY low power suspend - clock disable (PLPSCD) In device mode, The
      --  PHY can be put into Low Power Suspend - Clock Disable when the device
      --  is not running (USBCMD Run/Stop = 0) or the host has signaled suspend
      --  (PORTSC SUSPEND = 1). Low power suspend will be cleared automatically
      --  when the host has signaled resume. Before forcing a resume from the
      --  device, the device controller driver must clear this bit.
      PHCD       : ENUM_19 := Interfaces.LPC43xxC.USB0.Enable;
      --  Port force full speed connect
      PFSC       : ENUM_20 := Interfaces.LPC43xxC.USB0.Anyspeed;
      --  reserved
      RESERVED_5 : PORTSC1_D_RESERVED_Field := 16#0#;
      --  Port speed This register field indicates the speed at which the port
      --  is operating.
      PSPD       : ENUM_21 := Interfaces.LPC43xxC.USB0.Full_Speed;
      --  Reserved
      RESERVED_6 : PORTSC1_D_RESERVED_Field_4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORTSC1_D_Register use record
      CCS        at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 1;
      PE         at 0 range 2 .. 2;
      PEC        at 0 range 3 .. 3;
      RESERVED_1 at 0 range 4 .. 5;
      FPR        at 0 range 6 .. 6;
      SUSP       at 0 range 7 .. 7;
      PR         at 0 range 8 .. 8;
      HSP        at 0 range 9 .. 9;
      RESERVED_2 at 0 range 10 .. 11;
      RESERVED_3 at 0 range 12 .. 13;
      PIC1_0     at 0 range 14 .. 15;
      PTC3_0     at 0 range 16 .. 19;
      RESERVED_4 at 0 range 20 .. 22;
      PHCD       at 0 range 23 .. 23;
      PFSC       at 0 range 24 .. 24;
      RESERVED_5 at 0 range 25 .. 25;
      PSPD       at 0 range 26 .. 27;
      RESERVED_6 at 0 range 28 .. 31;
   end record;

   ------------------------
   -- PORTSC1_H_Register --
   ------------------------

   --  Current connect status This value reflects the current state of the port
   --  and may not correspond directly to the event that caused the CSC bit to
   --  be set. This bit is 0 if PP (Port Power bit) is 0. Software clears this
   --  bit by writing a 1 to it.
   type ENUM_22 is
     (
      --  No device is present.
      No_Device_Is_Present,
      --  Device is present on the port.
      Device_Is_Present_On)
     with Size => 1;
   for ENUM_22 use
     (No_Device_Is_Present => 0,
      Device_Is_Present_On => 1);

   --  Connect status change Indicates a change has occurred in the port's
   --  Current Connect Status. The host/device controller sets this bit for all
   --  changes to the port device connect status, even if system software has
   --  not cleared an existing connect status change. For example, the
   --  insertion status changes twice before system software has cleared the
   --  changed condition, hub hardware will be setting an already-set bit
   --  (i.e., the bit will remain set). Software clears this bit by writing a
   --  one to it. This bit is 0 if PP (Port Power bit) is 0
   type ENUM_23 is
     (
      --  No change in current status.
      No_Change_In_Current,
      --  Change in current status.
      Change_In_Current_St)
     with Size => 1;
   for ENUM_23 use
     (No_Change_In_Current => 0,
      Change_In_Current_St => 1);

   --  Port enable. Ports can only be enabled by the host controller as a part
   --  of the reset and enable. Software cannot enable a port by writing a one
   --  to this field. Ports can be disabled by either a fault condition
   --  (disconnect event or other fault condition) or by the host software.
   --  Note that the bit status does not change until the port state actually
   --  changes. There may be a delay in disabling or enabling a port due to
   --  other host controller and bus events. When the port is disabled.
   --  downstream propagation of data is blocked except for reset. This bit is
   --  0 if PP (Port Power bit) is 0.
   type ENUM_24 is
     (
      --  Port disabled.
      Port_Disabled,
      --  Port enabled.
      Port_Enabled)
     with Size => 1;
   for ENUM_24 use
     (Port_Disabled => 0,
      Port_Enabled => 1);

   --  Port disable/enable change For the root hub, this bit gets set to a one
   --  only when a port is disabled due to disconnect on the port or due to the
   --  appropriate conditions existing at the EOF2 point (See Chapter 11 of the
   --  USB Specification). Software clears this by writing a one to it. This
   --  bit is 0 if PP (Port Power bit) is 0,
   type ENUM_25 is
     (
      --  No change.
      No_Change,
      --  Port enabled/disabled status has changed.
      Changed)
     with Size => 1;
   for ENUM_25 use
     (No_Change => 0,
      Changed => 1);

   --  Over-current active This bit will automatically transition from 1 to 0
   --  when the over-current condition is removed.
   type ENUM_26 is
     (
      --  The port does not have an over-current condition.
      The_Port_Does_Not_Ha,
      --  The port has currently an over-current condition.
      The_Port_Has_Current)
     with Size => 1;
   for ENUM_26 use
     (The_Port_Does_Not_Ha => 0,
      The_Port_Has_Current => 1);

   subtype PORTSC1_H_OCC_Field is Interfaces.Bit_Types.Bit;

   --  High-speed status
   type ENUM_27 is
     (
      --  Host/device connected to the port is not in High-speed mode.
      No_Hispeed,
      --  Host/device connected to the port is in High-speed mode.
      Hispeed)
     with Size => 1;
   for ENUM_27 use
     (No_Hispeed => 0,
      Hispeed => 1);

   --  Line status These bits reflect the current logical levels of the USB_DP
   --  and USB_DM signal lines. USB_DP corresponds to bit 11 and USB_DM to bit
   --  10. In host mode, the use of linestate by the host controller driver is
   --  not necessary for this controller (unlike EHCI) because the controller
   --  hardware manages the connection of LS and FS.
   type ENUM_28 is
     (
      --  SE0 (USB_DP and USB_DM LOW)
      Se0,
      --  J-state (USB_DP HIGH and USB_DM LOW)
      J_State,
      --  K-state (USB_DP LOW and USB_DM HIGH)
      K_State,
      --  Undefined
      Undefined)
     with Size => 2;
   for ENUM_28 use
     (Se0 => 0,
      J_State => 1,
      K_State => 2,
      Undefined => 3);

   --  Port power control Host/OTG controller requires port power control
   --  switches. This bit represents the current setting of the switch (0=off,
   --  1=on). When power is not available on a port (i.e. PP equals a 0), the
   --  port is non-functional and will not report attaches, detaches, etc. When
   --  an over-current condition is detected on a powered port and PPC is a
   --  one, the PP bit in each affected port may be transitioned by the host
   --  controller driver from a one to a zero (removing power from the port).
   type ENUM_29 is
     (
      --  Port power off.
      Port_Power_Off,
      --  Port power on.
      Port_Power_On)
     with Size => 1;
   for ENUM_29 use
     (Port_Power_Off => 0,
      Port_Power_On => 1);

   subtype PORTSC1_H_RESERVED_Field is Interfaces.Bit_Types.Bit;

   --  Port indicator control Writing to this field effects the value of the
   --  pins USB0_IND1 and USB0_IND0.
   type ENUM_30 is
     (
      --  Port indicators are off.
      Port_Indicators_Are,
      --  Amber
      Amber,
      --  Green
      Green,
      --  Undefined
      Undefined)
     with Size => 2;
   for ENUM_30 use
     (Port_Indicators_Are => 0,
      Amber => 1,
      Green => 2,
      Undefined => 3);

   --  Port test control Any value other than 0000 indicates that the port is
   --  operating in test mode. The FORCE_ENABLE_FS and FORCE ENABLE_LS are
   --  extensions to the test mode support specified in the EHCI specification.
   --  Writing the PTC field to any of the FORCE_ENABLE_{HS/FS/LS} values will
   --  force the port into the connected and enabled state at the selected
   --  speed. Writing the PTC field back to TEST_MODE_DISABLE will allow the
   --  port state machines to progress normally from that point. Values 0x8 to
   --  0xF are reserved.
   type ENUM_31 is
     (
      --  TEST_MODE_DISABLE
      Test_Mode_Disable,
      --  J_STATE
      J_State,
      --  K_STATE
      K_State,
      --  SE0 (host)/NAK (device)
      Se0_Nak,
      --  Packet
      Packet,
      --  FORCE_ENABLE_HS
      Force_Enable_Hs,
      --  FORCE_ENABLE_FS
      Force_Enable_Fs,
      --  FORCE_ENABLE_LS
      Force_Enable_Ls)
     with Size => 4;
   for ENUM_31 use
     (Test_Mode_Disable => 0,
      J_State => 1,
      K_State => 2,
      Se0_Nak => 3,
      Packet => 4,
      Force_Enable_Hs => 5,
      Force_Enable_Fs => 6,
      Force_Enable_Ls => 7);

   --  Wake on connect enable (WKCNNT_E) This bit is 0 if PP (Port Power bit)
   --  is 0
   type ENUM_32 is
     (
      --  Disables the port to wake up on device connects.
      Disables_The_Port_To,
      --  Writing this bit to a one enables the port to be sensitive to device
      --  connects as wake-up events.
      Writing_This_Bit_To)
     with Size => 1;
   for ENUM_32 use
     (Disables_The_Port_To => 0,
      Writing_This_Bit_To => 1);

   --  Wake on over-current enable (WKOC_E)
   type ENUM_33 is
     (
      --  Disables the port to wake up on over-current events.
      Disables_The_Port_To,
      --  Writing a one to this bit enabled the port to be sensitive to
      --  over-current conditions as wake-up events.
      Writing_A_One_To_Thi)
     with Size => 1;
   for ENUM_33 use
     (Disables_The_Port_To => 0,
      Writing_A_One_To_Thi => 1);

   --  PHY low power suspend - clock disable (PLPSCD) In host mode, the PHY can
   --  be put into Low Power Suspend - Clock Disable when the downstream device
   --  has been put into suspend mode or when no downstream device is
   --  connected. Low power suspend is completely under the control of
   --  software.
   type ENUM_34 is
     (
      --  Writing a 0 enables the PHY clock. Reading a 0 indicates the status
      --  of the PHY clock (enabled).
      Writing_A_0_Enables,
      --  Writing a 1 disables the PHY clock. Reading a 1 indicates the status
      --  of the PHY clock (disabled).
      Writing_A_1_Disables)
     with Size => 1;
   for ENUM_34 use
     (Writing_A_0_Enables => 0,
      Writing_A_1_Disables => 1);

   --  Port force full speed connect
   type ENUM_35 is
     (
      --  Port connects at any speed.
      Port_Connects_At_Any,
      --  Writing this bit to a 1 will force the port to only connect at Full
      --  Speed. It disables the chirp sequence that allows the port to
      --  identify itself as High Speed. This is useful for testing FS
      --  configurations with a HS host, hub or device.
      Writing_This_Bit_To)
     with Size => 1;
   for ENUM_35 use
     (Port_Connects_At_Any => 0,
      Writing_This_Bit_To => 1);

   --  Port speed This register field indicates the speed at which the port is
   --  operating. For HS mode operation in the host controller and HS/FS
   --  operation in the device controller the port routing steers data to the
   --  Protocol engine. For FS and LS mode operation in the host controller,
   --  the port routing steers data to the Protocol Engine w/ Embedded
   --  Transaction Translator.
   type ENUM_36 is
     (
      --  Full-speed
      Full_Speed,
      --  Low-speed
      Low_Speed,
      --  High-speed
      High_Speed)
     with Size => 2;
   for ENUM_36 use
     (Full_Speed => 0,
      Low_Speed => 1,
      High_Speed => 2);

   --  Port 1 status/control (host mode)
   type PORTSC1_H_Register is record
      --  Current connect status This value reflects the current state of the
      --  port and may not correspond directly to the event that caused the CSC
      --  bit to be set. This bit is 0 if PP (Port Power bit) is 0. Software
      --  clears this bit by writing a 1 to it.
      CCS            : ENUM_22 :=
                        Interfaces.LPC43xxC.USB0.No_Device_Is_Present;
      --  Connect status change Indicates a change has occurred in the port's
      --  Current Connect Status. The host/device controller sets this bit for
      --  all changes to the port device connect status, even if system
      --  software has not cleared an existing connect status change. For
      --  example, the insertion status changes twice before system software
      --  has cleared the changed condition, hub hardware will be setting an
      --  already-set bit (i.e., the bit will remain set). Software clears this
      --  bit by writing a one to it. This bit is 0 if PP (Port Power bit) is 0
      CSC            : ENUM_23 :=
                        Interfaces.LPC43xxC.USB0.No_Change_In_Current;
      --  Port enable. Ports can only be enabled by the host controller as a
      --  part of the reset and enable. Software cannot enable a port by
      --  writing a one to this field. Ports can be disabled by either a fault
      --  condition (disconnect event or other fault condition) or by the host
      --  software. Note that the bit status does not change until the port
      --  state actually changes. There may be a delay in disabling or enabling
      --  a port due to other host controller and bus events. When the port is
      --  disabled. downstream propagation of data is blocked except for reset.
      --  This bit is 0 if PP (Port Power bit) is 0.
      PE             : ENUM_24 := Interfaces.LPC43xxC.USB0.Port_Disabled;
      --  Port disable/enable change For the root hub, this bit gets set to a
      --  one only when a port is disabled due to disconnect on the port or due
      --  to the appropriate conditions existing at the EOF2 point (See Chapter
      --  11 of the USB Specification). Software clears this by writing a one
      --  to it. This bit is 0 if PP (Port Power bit) is 0,
      PEC            : ENUM_25 := Interfaces.LPC43xxC.USB0.No_Change;
      --  Over-current active This bit will automatically transition from 1 to
      --  0 when the over-current condition is removed.
      OCA            : ENUM_26 :=
                        Interfaces.LPC43xxC.USB0.The_Port_Does_Not_Ha;
      --  Over-current change This bit gets set to one when there is a change
      --  to Over-current Active. Software clears this bit by writing a one to
      --  this bit position.
      OCC            : PORTSC1_H_OCC_Field := 16#0#;
      --  Force port resume Software sets this bit to one to drive resume
      --  signaling. The Host Controller sets this bit to one if a J-to-K
      --  transition is detected while the port is in the Suspend state. When
      --  this bit transitions to a one because a J-to-K transition is
      --  detected, the Port Change Detect bit in the USBSTS register is also
      --  set to one. This bit will automatically change to zero after the
      --  resume sequence is complete. This behavior is different from EHCI
      --  where the host controller driver is required to set this bit to a
      --  zero after the resume duration is timed in the driver. Note that when
      --  the Host controller owns the port, the resume sequence follows the
      --  defined sequence documented in the USB Specification Revision 2.0.
      --  The resume signaling (Full-speed K) is driven on the port as long as
      --  this bit remains a one. This bit will remain a one until the port has
      --  switched to the high-speed idle. Writing a zero has no affect because
      --  the port controller will time the resume operation clear the bit the
      --  port control state switches to HS or FS idle. This bit is 0 if PP
      --  (Port Power bit) is 0.
      FPR            : ENUM_13 := Interfaces.LPC43xxC.USB0.No_Resume;
      --  Suspend Together with the PE (Port enabled bit), this bit describes
      --  the port states, see Table 240. The host controller will
      --  unconditionally set this bit to zero when software sets the Force
      --  Port Resume bit to zero. The host controller ignores a write of zero
      --  to this bit. If host software sets this bit to a one when the port is
      --  not enabled (i.e. Port enabled bit is a zero) the results are
      --  undefined. This bit is 0 if PP (Port Power bit) is 0.
      SUSP           : ENUM_14 :=
                        Interfaces.LPC43xxC.USB0.Port_Not_In_Suspend;
      --  Port reset When software writes a one to this bit the bus-reset
      --  sequence as defined in the USB Specification Revision 2.0 is started.
      --  This bit will automatically change to zero after the reset sequence
      --  is complete. This behavior is different from EHCI where the host
      --  controller driver is required to set this bit to a zero after the
      --  reset duration is timed in the driver. This bit is 0 if PP (Port
      --  Power bit) is 0.
      PR             : ENUM_15 :=
                        Interfaces.LPC43xxC.USB0.Port_Is_Not_In_The_R;
      --  High-speed status
      HSP            : ENUM_27 := Interfaces.LPC43xxC.USB0.No_Hispeed;
      --  Line status These bits reflect the current logical levels of the
      --  USB_DP and USB_DM signal lines. USB_DP corresponds to bit 11 and
      --  USB_DM to bit 10. In host mode, the use of linestate by the host
      --  controller driver is not necessary for this controller (unlike EHCI)
      --  because the controller hardware manages the connection of LS and FS.
      LS             : ENUM_28 := Interfaces.LPC43xxC.USB0.Se0;
      --  Port power control Host/OTG controller requires port power control
      --  switches. This bit represents the current setting of the switch
      --  (0=off, 1=on). When power is not available on a port (i.e. PP equals
      --  a 0), the port is non-functional and will not report attaches,
      --  detaches, etc. When an over-current condition is detected on a
      --  powered port and PPC is a one, the PP bit in each affected port may
      --  be transitioned by the host controller driver from a one to a zero
      --  (removing power from the port).
      PP             : ENUM_29 := Interfaces.LPC43xxC.USB0.Port_Power_Off;
      --  Reserved
      RESERVED       : PORTSC1_H_RESERVED_Field := 16#0#;
      --  Port indicator control Writing to this field effects the value of the
      --  pins USB0_IND1 and USB0_IND0.
      PIC1_0         : ENUM_30 :=
                        Interfaces.LPC43xxC.USB0.Port_Indicators_Are;
      --  Port test control Any value other than 0000 indicates that the port
      --  is operating in test mode. The FORCE_ENABLE_FS and FORCE ENABLE_LS
      --  are extensions to the test mode support specified in the EHCI
      --  specification. Writing the PTC field to any of the
      --  FORCE_ENABLE_{HS/FS/LS} values will force the port into the connected
      --  and enabled state at the selected speed. Writing the PTC field back
      --  to TEST_MODE_DISABLE will allow the port state machines to progress
      --  normally from that point. Values 0x8 to 0xF are reserved.
      PTC3_0         : ENUM_31 := Interfaces.LPC43xxC.USB0.Test_Mode_Disable;
      --  Wake on connect enable (WKCNNT_E) This bit is 0 if PP (Port Power
      --  bit) is 0
      WKCN           : ENUM_32 :=
                        Interfaces.LPC43xxC.USB0.Disables_The_Port_To;
      --  Wake on disconnect enable (WKDSCNNT_E) This bit is 0 if PP (Port
      --  Power bit) is 0.
      WKDC           : ENUM_32 :=
                        Interfaces.LPC43xxC.USB0.Disables_The_Port_To;
      --  Wake on over-current enable (WKOC_E)
      WKOC           : ENUM_33 :=
                        Interfaces.LPC43xxC.USB0.Disables_The_Port_To;
      --  PHY low power suspend - clock disable (PLPSCD) In host mode, the PHY
      --  can be put into Low Power Suspend - Clock Disable when the downstream
      --  device has been put into suspend mode or when no downstream device is
      --  connected. Low power suspend is completely under the control of
      --  software.
      PHCD           : ENUM_34 :=
                        Interfaces.LPC43xxC.USB0.Writing_A_0_Enables;
      --  Port force full speed connect
      PFSC           : ENUM_35 :=
                        Interfaces.LPC43xxC.USB0.Port_Connects_At_Any;
      --  Reserved
      RESERVED_1     : PORTSC1_H_RESERVED_Field := 16#0#;
      --  Port speed This register field indicates the speed at which the port
      --  is operating. For HS mode operation in the host controller and HS/FS
      --  operation in the device controller the port routing steers data to
      --  the Protocol engine. For FS and LS mode operation in the host
      --  controller, the port routing steers data to the Protocol Engine w/
      --  Embedded Transaction Translator.
      PSPD           : ENUM_36 := Interfaces.LPC43xxC.USB0.Full_Speed;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORTSC1_H_Register use record
      CCS            at 0 range 0 .. 0;
      CSC            at 0 range 1 .. 1;
      PE             at 0 range 2 .. 2;
      PEC            at 0 range 3 .. 3;
      OCA            at 0 range 4 .. 4;
      OCC            at 0 range 5 .. 5;
      FPR            at 0 range 6 .. 6;
      SUSP           at 0 range 7 .. 7;
      PR             at 0 range 8 .. 8;
      HSP            at 0 range 9 .. 9;
      LS             at 0 range 10 .. 11;
      PP             at 0 range 12 .. 12;
      RESERVED       at 0 range 13 .. 13;
      PIC1_0         at 0 range 14 .. 15;
      PTC3_0         at 0 range 16 .. 19;
      WKCN           at 0 range 20 .. 20;
      WKDC           at 0 range 21 .. 21;
      WKOC           at 0 range 22 .. 22;
      PHCD           at 0 range 23 .. 23;
      PFSC           at 0 range 24 .. 24;
      RESERVED_1     at 0 range 25 .. 25;
      PSPD           at 0 range 26 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --------------------
   -- OTGSC_Register --
   --------------------

   subtype OTGSC_VD_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_VC_Field is Interfaces.Bit_Types.Bit;

   --  Hardware assist auto_reset
   type ENUM_37 is
     (
      --  Disabled
      Disabled,
      --  Enable automatic reset after connect on host port.
      Enable_Automatic_Res)
     with Size => 1;
   for ENUM_37 use
     (Disabled => 0,
      Enable_Automatic_Res => 1);

   subtype OTGSC_OT_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_DP_Field is Interfaces.Bit_Types.Bit;

   --  ID pull-up. This bit provides control over the pull-up resistor.
   type ENUM_38 is
     (
      --  Pull-up off. The ID bit will not be sampled.
      Pull_Up_Off_The_Id,
      --  Pull-up on.
      Pull_Up_On)
     with Size => 1;
   for ENUM_38 use
     (Pull_Up_Off_The_Id => 0,
      Pull_Up_On => 1);

   subtype OTGSC_HADP_Field is Interfaces.Bit_Types.Bit;

   --  Hardware assist B-disconnect to A-connect
   type ENUM_39 is
     (
      --  Disabled.
      Disabled,
      --  Enable automatic B-disconnect to A-connect sequence.
      Enable_Automatic_B_D)
     with Size => 1;
   for ENUM_39 use
     (Disabled => 0,
      Enable_Automatic_B_D => 1);

   --  USB ID
   type ENUM_40 is
     (
      --  A-device
      A_Device,
      --  B-device
      B_Device)
     with Size => 1;
   for ENUM_40 use
     (A_Device => 0,
      B_Device => 1);

   subtype OTGSC_AVV_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_ASV_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_BSV_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_BSE_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_MS1T_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_DPS_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_IDIS_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_AVVIS_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_ASVIS_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_BSVIS_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_BSEIS_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_ms1S_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_DPIS_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_IDIE_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_AVVIE_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_ASVIE_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_BSVIE_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_BSEIE_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_MS1E_Field is Interfaces.Bit_Types.Bit;
   subtype OTGSC_DPIE_Field is Interfaces.Bit_Types.Bit;

   --  OTG status and control
   type OTGSC_Register is record
      --  VBUS_Discharge Setting this bit to 1 causes VBUS to discharge through
      --  a resistor.
      VD         : OTGSC_VD_Field := 16#0#;
      --  VBUS_Charge Setting this bit to 1 causes the VBUS line to be charged.
      --  This is used for VBUS pulsing during SRP.
      VC         : OTGSC_VC_Field := 16#0#;
      --  Hardware assist auto_reset
      HAAR       : ENUM_37 := Interfaces.LPC43xxC.USB0.Disabled;
      --  OTG termination This bit must be set to 1 when the OTG controller is
      --  in device mode. This controls the pull-down on USB_DM.
      OT         : OTGSC_OT_Field := 16#0#;
      --  Data pulsing Setting this bit to 1 causes the pull-up on USB_DP to be
      --  asserted for data pulsing during SRP.
      DP         : OTGSC_DP_Field := 16#0#;
      --  ID pull-up. This bit provides control over the pull-up resistor.
      IDPU       : ENUM_38 := Interfaces.LPC43xxC.USB0.Pull_Up_Off_The_Id;
      --  Hardware assist data pulse Write a 1 to start data pulse sequence.
      HADP       : OTGSC_HADP_Field := 16#0#;
      --  Hardware assist B-disconnect to A-connect
      HABA       : ENUM_39 := Interfaces.LPC43xxC.USB0.Disabled;
      --  USB ID
      ID         : ENUM_40 := Interfaces.LPC43xxC.USB0.A_Device;
      --  A-VBUS valid Reading 1 indicates that VBUS is above the A-VBUS valid
      --  threshold.
      AVV        : OTGSC_AVV_Field := 16#0#;
      --  A-session valid Reading 1 indicates that VBUS is above the A-session
      --  valid threshold.
      ASV        : OTGSC_ASV_Field := 16#0#;
      --  B-session valid Reading 1 indicates that VBUS is above the B-session
      --  valid threshold.
      BSV        : OTGSC_BSV_Field := 16#0#;
      --  B-session end Reading 1 indicates that VBUS is below the B-session
      --  end threshold.
      BSE        : OTGSC_BSE_Field := 16#0#;
      --  1 millisecond timer toggle This bit toggles once per millisecond.
      MS1T       : OTGSC_MS1T_Field := 16#0#;
      --  Data bus pulsing status Reading a 1 indicates that data bus pulsing
      --  is detected on the port.
      DPS        : OTGSC_DPS_Field := 16#0#;
      --  reserved
      RESERVED   : OTGSC_RESERVED_Field := 16#0#;
      --  USB ID interrupt status This bit is set when a change on the ID input
      --  has been detected. Software must write a 1 to this bit to clear it.
      IDIS       : OTGSC_IDIS_Field := 16#0#;
      --  A-VBUS valid interrupt status This bit is set then VBUS has either
      --  risen above or fallen below the A-VBUS valid threshold (4.4 V on an
      --  A-device). Software must write a 1 to this bit to clear it.
      AVVIS      : OTGSC_AVVIS_Field := 16#0#;
      --  A-Session valid interrupt status This bit is set then VBUS has either
      --  risen above or fallen below the A-session valid threshold (0.8 V).
      --  Software must write a 1 to this bit to clear it.
      ASVIS      : OTGSC_ASVIS_Field := 16#0#;
      --  B-Session valid interrupt status This bit is set then VBUS has either
      --  risen above or fallen below the B-session valid threshold (0.8 V).
      --  Software must write a 1 to this bit to clear it.
      BSVIS      : OTGSC_BSVIS_Field := 16#0#;
      --  B-Session end interrupt status This bit is set then VBUS has fallen
      --  below the B-session end threshold. Software must write a 1 to this
      --  bit to clear it.
      BSEIS      : OTGSC_BSEIS_Field := 16#0#;
      --  1 millisecond timer interrupt status This bit is set once every
      --  millisecond. Software must write a 1 to this bit to clear it.
      ms1S       : OTGSC_ms1S_Field := 16#0#;
      --  Data pulse interrupt status This bit is set when data bus pulsing
      --  occurs on DP or DM. Data bus pulsing is only detected when the CM bit
      --  in USBMODE = Host (11) and the PortPower bit in PORTSC = Off (0).
      --  Software must write a 1 to this bit to clear it.
      DPIS       : OTGSC_DPIS_Field := 16#0#;
      --  reserved
      RESERVED_1 : OTGSC_RESERVED_Field := 16#0#;
      --  USB ID interrupt enable Setting this bit enables the interrupt.
      --  Writing a 0 disables the interrupt.
      IDIE       : OTGSC_IDIE_Field := 16#0#;
      --  A-VBUS valid interrupt enable Setting this bit enables the A-VBUS
      --  valid interrupt. Writing a 0 disables the interrupt.
      AVVIE      : OTGSC_AVVIE_Field := 16#0#;
      --  A-session valid interrupt enable Setting this bit enables the
      --  A-session valid interrupt. Writing a 0 disables the interrupt
      ASVIE      : OTGSC_ASVIE_Field := 16#0#;
      --  B-session valid interrupt enable Setting this bit enables the
      --  B-session valid interrupt. Writing a 0 disables the interrupt.
      BSVIE      : OTGSC_BSVIE_Field := 16#0#;
      --  B-session end interrupt enable Setting this bit enables the B-session
      --  end interrupt. Writing a 0 disables the interrupt.
      BSEIE      : OTGSC_BSEIE_Field := 16#0#;
      --  1 millisecond timer interrupt enable Setting this bit enables the 1
      --  millisecond timer interrupt. Writing a 0 disables the interrupt.
      MS1E       : OTGSC_MS1E_Field := 16#0#;
      --  Data pulse interrupt enable Setting this bit enables the data pulse
      --  interrupt. Writing a 0 disables the interrupt
      DPIE       : OTGSC_DPIE_Field := 16#0#;
      --  Reserved
      RESERVED_2 : OTGSC_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTGSC_Register use record
      VD         at 0 range 0 .. 0;
      VC         at 0 range 1 .. 1;
      HAAR       at 0 range 2 .. 2;
      OT         at 0 range 3 .. 3;
      DP         at 0 range 4 .. 4;
      IDPU       at 0 range 5 .. 5;
      HADP       at 0 range 6 .. 6;
      HABA       at 0 range 7 .. 7;
      ID         at 0 range 8 .. 8;
      AVV        at 0 range 9 .. 9;
      ASV        at 0 range 10 .. 10;
      BSV        at 0 range 11 .. 11;
      BSE        at 0 range 12 .. 12;
      MS1T       at 0 range 13 .. 13;
      DPS        at 0 range 14 .. 14;
      RESERVED   at 0 range 15 .. 15;
      IDIS       at 0 range 16 .. 16;
      AVVIS      at 0 range 17 .. 17;
      ASVIS      at 0 range 18 .. 18;
      BSVIS      at 0 range 19 .. 19;
      BSEIS      at 0 range 20 .. 20;
      ms1S       at 0 range 21 .. 21;
      DPIS       at 0 range 22 .. 22;
      RESERVED_1 at 0 range 23 .. 23;
      IDIE       at 0 range 24 .. 24;
      AVVIE      at 0 range 25 .. 25;
      ASVIE      at 0 range 26 .. 26;
      BSVIE      at 0 range 27 .. 27;
      BSEIE      at 0 range 28 .. 28;
      MS1E       at 0 range 29 .. 29;
      DPIE       at 0 range 30 .. 30;
      RESERVED_2 at 0 range 31 .. 31;
   end record;

   ------------------------
   -- USBMODE_D_Register --
   ------------------------

   --  Controller mode The controller defaults to an idle state and needs to be
   --  initialized to the desired operating mode after reset. This register can
   --  only be written once after reset. If it is necessary to switch modes,
   --  software must reset the controller by writing to the RESET bit in the
   --  USBCMD register before reprogramming this register.
   type ENUM_41 is
     (
      --  Idle
      Idle,
      --  Reserved
      Reserved,
      --  Device controller
      Device_Controller,
      --  Host controller
      Host_Controller)
     with Size => 2;
   for ENUM_41 use
     (Idle => 0,
      Reserved => 1,
      Device_Controller => 2,
      Host_Controller => 3);

   --  Endian select This bit can change the byte ordering of the transfer
   --  buffers to match the host microprocessor bus architecture. The bit
   --  fields in the microprocessor interface and the DMA data structures
   --  (including the setup buffer within the device QH) are unaffected by the
   --  value of this bit, because they are based upon 32-bit words.
   type ENUM_42 is
     (
      --  Little endian: first byte referenced in least significant byte of
      --  32-bit word.
      Little_Endian_First,
      --  Big endian: first byte referenced in most significant byte of 32-bit
      --  word.
      Big_Endian_First_By)
     with Size => 1;
   for ENUM_42 use
     (Little_Endian_First => 0,
      Big_Endian_First_By => 1);

   --  Setup Lockout mode In device mode, this bit controls behavior of the
   --  setup lock mechanism. See Section 18.10.8.
   type ENUM_43 is
     (
      --  Setup Lockouts on
      Setup_Lockouts_On,
      --  Setup Lockouts Off (DCD requires the use of Setup Buffer Tripwire in
      --  USBCMD)
      Setup_Lockouts_Off)
     with Size => 1;
   for ENUM_43 use
     (Setup_Lockouts_On => 0,
      Setup_Lockouts_Off => 1);

   --  Stream disable mode The use of this feature substantially limits the
   --  overall USB performance that can be achieved.
   type ENUM_44 is
     (
      --  Not disabled
      Not_Disabled,
      --  Disabled. Setting this bit to one disables double priming on both RX
      --  and TX for low bandwidth systems. This mode ensures that when the RX
      --  and TX buffers are sufficient to contain an entire packet that the
      --  standard double buffering scheme is disabled to prevent
      --  overruns/underruns in bandwidth limited systems. Note: In High Speed
      --  Mode, all packets received will be responded to with a NYET handshake
      --  when stream disable is active.
      Disabled_Setting_Th)
     with Size => 1;
   for ENUM_44 use
     (Not_Disabled => 0,
      Disabled_Setting_Th => 1);

   subtype USBMODE_D_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype USBMODE_D_RESERVED_Field_1 is Interfaces.Bit_Types.UInt26;

   --  USB device mode (device mode)
   type USBMODE_D_Register is record
      --  Controller mode The controller defaults to an idle state and needs to
      --  be initialized to the desired operating mode after reset. This
      --  register can only be written once after reset. If it is necessary to
      --  switch modes, software must reset the controller by writing to the
      --  RESET bit in the USBCMD register before reprogramming this register.
      CM1_0      : ENUM_41 := Interfaces.LPC43xxC.USB0.Idle;
      --  Endian select This bit can change the byte ordering of the transfer
      --  buffers to match the host microprocessor bus architecture. The bit
      --  fields in the microprocessor interface and the DMA data structures
      --  (including the setup buffer within the device QH) are unaffected by
      --  the value of this bit, because they are based upon 32-bit words.
      ES         : ENUM_42 := Interfaces.LPC43xxC.USB0.Little_Endian_First;
      --  Setup Lockout mode In device mode, this bit controls behavior of the
      --  setup lock mechanism. See Section 18.10.8.
      SLOM       : ENUM_43 := Interfaces.LPC43xxC.USB0.Setup_Lockouts_On;
      --  Stream disable mode The use of this feature substantially limits the
      --  overall USB performance that can be achieved.
      SDIS       : ENUM_44 := Interfaces.LPC43xxC.USB0.Not_Disabled;
      --  Not used in device mode.
      RESERVED   : USBMODE_D_RESERVED_Field := 16#0#;
      --  reserved
      RESERVED_1 : USBMODE_D_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBMODE_D_Register use record
      CM1_0      at 0 range 0 .. 1;
      ES         at 0 range 2 .. 2;
      SLOM       at 0 range 3 .. 3;
      SDIS       at 0 range 4 .. 4;
      RESERVED   at 0 range 5 .. 5;
      RESERVED_1 at 0 range 6 .. 31;
   end record;

   ------------------------
   -- USBMODE_H_Register --
   ------------------------

   subtype USBMODE_H_RESERVED_Field is Interfaces.Bit_Types.Bit;

   --  Stream disable mode The use of this feature substantially limits the
   --  overall USB performance that can be achieved.
   type ENUM_45 is
     (
      --  Not disabled
      Not_Disabled,
      --  Disabled. Setting to a 1 ensures that overruns/underruns of the
      --  latency FIFO are eliminated for low bandwidth systems where the RX
      --  and TX buffers are sufficient to contain the entire packet. Enabling
      --  stream disable also has the effect of ensuring the the TX latency is
      --  filled to capacity before the packet is launched onto the USB. Note:
      --  Time duration to pre-fill the FIFO becomes significant when stream
      --  disable is active. See TXFILLTUNING to characterize the adjustments
      --  needed for the scheduler when using this feature.
      Disabled_Setting_To)
     with Size => 1;
   for ENUM_45 use
     (Not_Disabled => 0,
      Disabled_Setting_To => 1);

   --  VBUS power select
   type ENUM_46 is
     (
      --  vbus_pwr_select is set LOW.
      Low,
      --  vbus_pwr_select is set HIGH
      High)
     with Size => 1;
   for ENUM_46 use
     (Low => 0,
      High => 1);

   subtype USBMODE_H_RESERVED_Field_1 is Interfaces.Bit_Types.UInt26;

   --  USB mode (host mode)
   type USBMODE_H_Register is record
      --  Controller mode The controller defaults to an idle state and needs to
      --  be initialized to the desired operating mode after reset. This
      --  register can only be written once after reset. If it is necessary to
      --  switch modes, software must reset the controller by writing to the
      --  RESET bit in the USBCMD register before reprogramming this register.
      CM         : ENUM_41 := Interfaces.LPC43xxC.USB0.Idle;
      --  Endian select This bit can change the byte ordering of the transfer
      --  buffers. The bit fields in the microprocessor interface and the DMA
      --  data structures (including the setup buffer within the device QH) are
      --  unaffected by the value of this bit, because they are based upon
      --  32-bit words.
      ES         : ENUM_42 := Interfaces.LPC43xxC.USB0.Little_Endian_First;
      --  Not used in host mode
      RESERVED   : USBMODE_H_RESERVED_Field := 16#0#;
      --  Stream disable mode The use of this feature substantially limits the
      --  overall USB performance that can be achieved.
      SDIS       : ENUM_45 := Interfaces.LPC43xxC.USB0.Not_Disabled;
      --  VBUS power select
      VBPS       : ENUM_46 := Interfaces.LPC43xxC.USB0.Low;
      --  reserved
      RESERVED_1 : USBMODE_H_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBMODE_H_Register use record
      CM         at 0 range 0 .. 1;
      ES         at 0 range 2 .. 2;
      RESERVED   at 0 range 3 .. 3;
      SDIS       at 0 range 4 .. 4;
      VBPS       at 0 range 5 .. 5;
      RESERVED_1 at 0 range 6 .. 31;
   end record;

   -----------------------------
   -- ENDPTSETUPSTAT_Register --
   -----------------------------

   -----------------------------------
   -- ENDPTSETUPSTAT.ENDPTSETUPSTAT --
   -----------------------------------

   --  ENDPTSETUPSTAT array element
   subtype ENDPTSETUPSTAT_Element is Interfaces.Bit_Types.Bit;

   --  ENDPTSETUPSTAT array
   type ENDPTSETUPSTAT_Field_Array is array (0 .. 5)
     of ENDPTSETUPSTAT_Element
     with Component_Size => 1, Size => 6;

   --  Type definition for ENDPTSETUPSTAT
   type ENDPTSETUPSTAT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENDPTSETUPSTAT as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  ENDPTSETUPSTAT as an array
            Arr : ENDPTSETUPSTAT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for ENDPTSETUPSTAT_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   subtype ENDPTSETUPSTAT_RESERVED_Field is Interfaces.Bit_Types.UInt26;

   --  Endpoint setup status
   type ENDPTSETUPSTAT_Register is record
      --  Setup endpoint status for logical endpoints 0 to 5. For every setup
      --  transaction that is received, a corresponding bit in this register is
      --  set to one. Software must clear or acknowledge the setup transfer by
      --  writing a one to a respective bit after it has read the setup data
      --  from Queue head. The response to a setup packet as in the order of
      --  operations and total response time is crucial to limit bus time outs
      --  while the setup lockout mechanism is engaged.
      ENDPTSETUPSTAT : ENDPTSETUPSTAT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  reserved
      RESERVED       : ENDPTSETUPSTAT_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENDPTSETUPSTAT_Register use record
      ENDPTSETUPSTAT at 0 range 0 .. 5;
      RESERVED       at 0 range 6 .. 31;
   end record;

   -------------------------
   -- ENDPTPRIME_Register --
   -------------------------

   ---------------------
   -- ENDPTPRIME.PERB --
   ---------------------

   --  ENDPTPRIME_PERB array element
   subtype ENDPTPRIME_PERB_Element is Interfaces.Bit_Types.Bit;

   --  ENDPTPRIME_PERB array
   type ENDPTPRIME_PERB_Field_Array is array (0 .. 5)
     of ENDPTPRIME_PERB_Element
     with Component_Size => 1, Size => 6;

   --  Type definition for ENDPTPRIME_PERB
   type ENDPTPRIME_PERB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PERB as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  PERB as an array
            Arr : ENDPTPRIME_PERB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for ENDPTPRIME_PERB_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   subtype ENDPTPRIME_RESERVED_Field is Interfaces.Bit_Types.UInt10;

   ---------------------
   -- ENDPTPRIME.PETB --
   ---------------------

   --  ENDPTPRIME_PETB array element
   subtype ENDPTPRIME_PETB_Element is Interfaces.Bit_Types.Bit;

   --  ENDPTPRIME_PETB array
   type ENDPTPRIME_PETB_Field_Array is array (0 .. 5)
     of ENDPTPRIME_PETB_Element
     with Component_Size => 1, Size => 6;

   --  Type definition for ENDPTPRIME_PETB
   type ENDPTPRIME_PETB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PETB as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  PETB as an array
            Arr : ENDPTPRIME_PETB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for ENDPTPRIME_PETB_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Endpoint initialization
   type ENDPTPRIME_Register is record
      --  Prime endpoint receive buffer for physical OUT endpoints 5 to 0. For
      --  each OUT endpoint, a corresponding bit is set to 1 by software to
      --  request a buffer be prepared for a receive operation for when a USB
      --  host initiates a USB OUT transaction. Software should write a one to
      --  the corresponding bit whenever posting a new transfer descriptor to
      --  an endpoint. Hardware will automatically use this bit to begin
      --  parsing for a new transfer descriptor from the queue head and prepare
      --  a receive buffer. Hardware will clear this bit when the associated
      --  endpoint(s) is (are) successfully primed. PERB0 = endpoint 0 ...
      --  PERB5 = endpoint 5
      PERB       : ENDPTPRIME_PERB_Field := (As_Array => False, Val => 16#0#);
      --  reserved
      RESERVED   : ENDPTPRIME_RESERVED_Field := 16#0#;
      --  Prime endpoint transmit buffer for physical IN endpoints 5 to 0. For
      --  each IN endpoint a corresponding bit is set to one by software to
      --  request a buffer be prepared for a transmit operation in order to
      --  respond to a USB IN/INTERRUPT transaction. Software should write a
      --  one to the corresponding bit when posting a new transfer descriptor
      --  to an endpoint. Hardware will automatically use this bit to begin
      --  parsing for a new transfer descriptor from the queue head and prepare
      --  a transmit buffer. Hardware will clear this bit when the associated
      --  endpoint(s) is (are) successfully primed. PETB0 = endpoint 0 ...
      --  PETB5 = endpoint 5
      PETB       : ENDPTPRIME_PETB_Field := (As_Array => False, Val => 16#0#);
      --  reserved
      RESERVED_1 : ENDPTPRIME_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENDPTPRIME_Register use record
      PERB       at 0 range 0 .. 5;
      RESERVED   at 0 range 6 .. 15;
      PETB       at 0 range 16 .. 21;
      RESERVED_1 at 0 range 22 .. 31;
   end record;

   -------------------------
   -- ENDPTFLUSH_Register --
   -------------------------

   ---------------------
   -- ENDPTFLUSH.FERB --
   ---------------------

   --  ENDPTFLUSH_FERB array element
   subtype ENDPTFLUSH_FERB_Element is Interfaces.Bit_Types.Bit;

   --  ENDPTFLUSH_FERB array
   type ENDPTFLUSH_FERB_Field_Array is array (0 .. 5)
     of ENDPTFLUSH_FERB_Element
     with Component_Size => 1, Size => 6;

   --  Type definition for ENDPTFLUSH_FERB
   type ENDPTFLUSH_FERB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FERB as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  FERB as an array
            Arr : ENDPTFLUSH_FERB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for ENDPTFLUSH_FERB_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   subtype ENDPTFLUSH_RESERVED_Field is Interfaces.Bit_Types.UInt10;

   ---------------------
   -- ENDPTFLUSH.FETB --
   ---------------------

   --  ENDPTFLUSH_FETB array element
   subtype ENDPTFLUSH_FETB_Element is Interfaces.Bit_Types.Bit;

   --  ENDPTFLUSH_FETB array
   type ENDPTFLUSH_FETB_Field_Array is array (0 .. 5)
     of ENDPTFLUSH_FETB_Element
     with Component_Size => 1, Size => 6;

   --  Type definition for ENDPTFLUSH_FETB
   type ENDPTFLUSH_FETB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FETB as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  FETB as an array
            Arr : ENDPTFLUSH_FETB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for ENDPTFLUSH_FETB_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Endpoint de-initialization
   type ENDPTFLUSH_Register is record
      --  Flush endpoint receive buffer for physical OUT endpoints 5 to 0.
      --  Writing a one to a bit(s) will clear any primed buffers. FERB0 =
      --  endpoint 0 ... FERB5 = endpoint 5
      FERB       : ENDPTFLUSH_FERB_Field := (As_Array => False, Val => 16#0#);
      --  reserved
      RESERVED   : ENDPTFLUSH_RESERVED_Field := 16#0#;
      --  Flush endpoint transmit buffer for physical IN endpoints 5 to 0.
      --  Writing a one to a bit(s) will clear any primed buffers. FETB0 =
      --  endpoint 0 ... FETB5 = endpoint 5
      FETB       : ENDPTFLUSH_FETB_Field := (As_Array => False, Val => 16#0#);
      --  reserved
      RESERVED_1 : ENDPTFLUSH_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENDPTFLUSH_Register use record
      FERB       at 0 range 0 .. 5;
      RESERVED   at 0 range 6 .. 15;
      FETB       at 0 range 16 .. 21;
      RESERVED_1 at 0 range 22 .. 31;
   end record;

   ------------------------
   -- ENDPTSTAT_Register --
   ------------------------

   --------------------
   -- ENDPTSTAT.ERBR --
   --------------------

   --  ENDPTSTAT_ERBR array element
   subtype ENDPTSTAT_ERBR_Element is Interfaces.Bit_Types.Bit;

   --  ENDPTSTAT_ERBR array
   type ENDPTSTAT_ERBR_Field_Array is array (0 .. 5)
     of ENDPTSTAT_ERBR_Element
     with Component_Size => 1, Size => 6;

   --  Type definition for ENDPTSTAT_ERBR
   type ENDPTSTAT_ERBR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ERBR as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  ERBR as an array
            Arr : ENDPTSTAT_ERBR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for ENDPTSTAT_ERBR_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   subtype ENDPTSTAT_RESERVED_Field is Interfaces.Bit_Types.UInt10;

   --------------------
   -- ENDPTSTAT.ETBR --
   --------------------

   --  ENDPTSTAT_ETBR array element
   subtype ENDPTSTAT_ETBR_Element is Interfaces.Bit_Types.Bit;

   --  ENDPTSTAT_ETBR array
   type ENDPTSTAT_ETBR_Field_Array is array (0 .. 5)
     of ENDPTSTAT_ETBR_Element
     with Component_Size => 1, Size => 6;

   --  Type definition for ENDPTSTAT_ETBR
   type ENDPTSTAT_ETBR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ETBR as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  ETBR as an array
            Arr : ENDPTSTAT_ETBR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for ENDPTSTAT_ETBR_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Endpoint status
   type ENDPTSTAT_Register is record
      --  Read-only. Endpoint receive buffer ready for physical OUT endpoints 5
      --  to 0. This bit is set to 1 by hardware as a response to receiving a
      --  command from a corresponding bit in the ENDPTPRIME register. ERBR0 =
      --  endpoint 0 ... ERBR5 = endpoint 5
      ERBR       : ENDPTSTAT_ERBR_Field;
      --  Read-only. reserved
      RESERVED   : ENDPTSTAT_RESERVED_Field;
      --  Read-only. Endpoint transmit buffer ready for physical IN endpoints 3
      --  to 0. This bit is set to 1 by hardware as a response to receiving a
      --  command from a corresponding bit in the ENDPTPRIME register. ETBR0 =
      --  endpoint 0 ... ETBR5 = endpoint 5
      ETBR       : ENDPTSTAT_ETBR_Field;
      --  Read-only. reserved
      RESERVED_1 : ENDPTSTAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENDPTSTAT_Register use record
      ERBR       at 0 range 0 .. 5;
      RESERVED   at 0 range 6 .. 15;
      ETBR       at 0 range 16 .. 21;
      RESERVED_1 at 0 range 22 .. 31;
   end record;

   ----------------------------
   -- ENDPTCOMPLETE_Register --
   ----------------------------

   ------------------------
   -- ENDPTCOMPLETE.ERCE --
   ------------------------

   --  ENDPTCOMPLETE_ERCE array element
   subtype ENDPTCOMPLETE_ERCE_Element is Interfaces.Bit_Types.Bit;

   --  ENDPTCOMPLETE_ERCE array
   type ENDPTCOMPLETE_ERCE_Field_Array is array (0 .. 5)
     of ENDPTCOMPLETE_ERCE_Element
     with Component_Size => 1, Size => 6;

   --  Type definition for ENDPTCOMPLETE_ERCE
   type ENDPTCOMPLETE_ERCE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ERCE as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  ERCE as an array
            Arr : ENDPTCOMPLETE_ERCE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for ENDPTCOMPLETE_ERCE_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   subtype ENDPTCOMPLETE_RESERVED_Field is Interfaces.Bit_Types.UInt10;

   ------------------------
   -- ENDPTCOMPLETE.ETCE --
   ------------------------

   --  ENDPTCOMPLETE_ETCE array element
   subtype ENDPTCOMPLETE_ETCE_Element is Interfaces.Bit_Types.Bit;

   --  ENDPTCOMPLETE_ETCE array
   type ENDPTCOMPLETE_ETCE_Field_Array is array (0 .. 5)
     of ENDPTCOMPLETE_ETCE_Element
     with Component_Size => 1, Size => 6;

   --  Type definition for ENDPTCOMPLETE_ETCE
   type ENDPTCOMPLETE_ETCE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ETCE as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  ETCE as an array
            Arr : ENDPTCOMPLETE_ETCE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for ENDPTCOMPLETE_ETCE_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Endpoint complete
   type ENDPTCOMPLETE_Register is record
      --  Endpoint receive complete event for physical OUT endpoints 5 to 0.
      --  This bit is set to 1 by hardware when receive event (OUT/SETUP)
      --  occurred. ERCE0 = endpoint 0 ... ERCE5 = endpoint 5
      ERCE       : ENDPTCOMPLETE_ERCE_Field :=
                    (As_Array => False, Val => 16#0#);
      --  reserved
      RESERVED   : ENDPTCOMPLETE_RESERVED_Field := 16#0#;
      --  Endpoint transmit complete event for physical IN endpoints 5 to 0.
      --  This bit is set to 1 by hardware when a transmit event (IN/INTERRUPT)
      --  occurred. ETCE0 = endpoint 0 ... ETCE5 = endpoint 5
      ETCE       : ENDPTCOMPLETE_ETCE_Field :=
                    (As_Array => False, Val => 16#0#);
      --  reserved
      RESERVED_1 : ENDPTCOMPLETE_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENDPTCOMPLETE_Register use record
      ERCE       at 0 range 0 .. 5;
      RESERVED   at 0 range 6 .. 15;
      ETCE       at 0 range 16 .. 21;
      RESERVED_1 at 0 range 22 .. 31;
   end record;

   -------------------------
   -- ENDPTCTRL0_Register --
   -------------------------

   --  Rx endpoint stall
   type ENUM_47 is
     (
      --  Endpoint ok.
      Endpoint_Ok,
      --  Endpoint stalled Software can write a one to this bit to force the
      --  endpoint to return a STALL handshake to the Host. It will continue
      --  returning STALL until the bit is cleared by software, or it will
      --  automatically be cleared upon receipt of a new SETUP request. After
      --  receiving a SETUP request, this bit will continue to be cleared by
      --  hardware until the associated ENDSETUPSTAT bit is cleared.[1]
      Endpoint_Stalled_Sof)
     with Size => 1;
   for ENUM_47 use
     (Endpoint_Ok => 0,
      Endpoint_Stalled_Sof => 1);

   subtype ENDPTCTRL0_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype ENDPTCTRL0_RXT1_0_Field is Interfaces.Bit_Types.UInt2;
   subtype ENDPTCTRL0_RESERVED_Field_1 is Interfaces.Bit_Types.UInt3;
   subtype ENDPTCTRL0_RXE_Field is Interfaces.Bit_Types.Bit;
   subtype ENDPTCTRL0_RESERVED_Field_2 is Interfaces.Bit_Types.Byte;
   subtype ENDPTCTRL0_TXT1_0_Field is Interfaces.Bit_Types.UInt2;
   subtype ENDPTCTRL0_TXE_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint control 0
   type ENDPTCTRL0_Register is record
      --  Rx endpoint stall
      RXS        : ENUM_47 := Interfaces.LPC43xxC.USB0.Endpoint_Ok;
      --  reserved
      RESERVED   : ENDPTCTRL0_RESERVED_Field := 16#0#;
      --  Endpoint type Endpoint 0 is always a control endpoint.
      RXT1_0     : ENDPTCTRL0_RXT1_0_Field := 16#0#;
      --  reserved
      RESERVED_1 : ENDPTCTRL0_RESERVED_Field_1 := 16#0#;
      --  Rx endpoint enable Endpoint enabled. Control endpoint 0 is always
      --  enabled. This bit is always 1.
      RXE        : ENDPTCTRL0_RXE_Field := 16#0#;
      --  reserved
      RESERVED_2 : ENDPTCTRL0_RESERVED_Field_2 := 16#0#;
      --  Tx endpoint stall
      TXS        : ENUM_47 := Interfaces.LPC43xxC.USB0.Endpoint_Ok;
      --  reserved
      RESERVED_3 : ENDPTCTRL0_RESERVED_Field := 16#0#;
      --  Endpoint type Endpoint 0 is always a control endpoint.
      TXT1_0     : ENDPTCTRL0_TXT1_0_Field := 16#0#;
      --  reserved
      RESERVED_4 : ENDPTCTRL0_RESERVED_Field_1 := 16#0#;
      --  Tx endpoint enable Endpoint enabled. Control endpoint 0 is always
      --  enabled. This bit is always 1.
      TXE        : ENDPTCTRL0_TXE_Field := 16#0#;
      --  reserved
      RESERVED_5 : ENDPTCTRL0_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENDPTCTRL0_Register use record
      RXS        at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 1;
      RXT1_0     at 0 range 2 .. 3;
      RESERVED_1 at 0 range 4 .. 6;
      RXE        at 0 range 7 .. 7;
      RESERVED_2 at 0 range 8 .. 15;
      TXS        at 0 range 16 .. 16;
      RESERVED_3 at 0 range 17 .. 17;
      TXT1_0     at 0 range 18 .. 19;
      RESERVED_4 at 0 range 20 .. 22;
      TXE        at 0 range 23 .. 23;
      RESERVED_5 at 0 range 24 .. 31;
   end record;

   ------------------------
   -- ENDPTCTRL_Register --
   ------------------------

   --  Rx endpoint stall
   type ENUM_48 is
     (
      --  Endpoint ok. This bit will be cleared automatically upon receipt of a
      --  SETUP request if this Endpoint is configured as a Control Endpoint
      --  and this bit will continue to be cleared by hardware until the
      --  associated ENDPTSETUPSTAT bit is cleared.
      Endpoint_Ok_This_Bi,
      --  Endpoint stalled Software can write a one to this bit to force the
      --  endpoint to return a STALL handshake to the Host. It will continue
      --  returning STALL until the bit is cleared by software, or it will
      --  automatically be cleared upon receipt of a new SETUP request.
      Endpoint_Stalled_Sof)
     with Size => 1;
   for ENUM_48 use
     (Endpoint_Ok_This_Bi => 0,
      Endpoint_Stalled_Sof => 1);

   subtype ENDPTCTRL_RESERVED_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint type
   type ENUM_49 is
     (
      --  Control
      Control,
      --  Isochronous
      Isochronous,
      --  Bulk
      Bulk,
      --  Reserved
      Reserved)
     with Size => 2;
   for ENUM_49 use
     (Control => 0,
      Isochronous => 1,
      Bulk => 2,
      Reserved => 3);

   --  Rx data toggle inhibit This bit is only used for test and should always
   --  be written as zero. Writing a one to this bit will cause this endpoint
   --  to ignore the data toggle sequence and always accept data packets
   --  regardless of their data PID.
   type ENUM_50 is
     (
      --  Disabled
      Disabled,
      --  Enabled
      Enabled)
     with Size => 1;
   for ENUM_50 use
     (Disabled => 0,
      Enabled => 1);

   subtype ENDPTCTRL_RXR_Field is Interfaces.Bit_Types.Bit;

   --  Rx endpoint enable An endpoint should be enabled only after it has been
   --  configured.
   type ENUM_51 is
     (
      --  Endpoint disabled.
      Endpoint_Disabled,
      --  Endpoint enabled.
      Endpoint_Enabled)
     with Size => 1;
   for ENUM_51 use
     (Endpoint_Disabled => 0,
      Endpoint_Enabled => 1);

   subtype ENDPTCTRL_RESERVED_Field_1 is Interfaces.Bit_Types.Byte;

   --  Tx endpoint type
   type ENUM_52 is
     (
      --  Control
      Control,
      --  Isochronous
      Isochronous,
      --  Bulk
      Bulk,
      --  Interrupt
      Interrupt)
     with Size => 2;
   for ENUM_52 use
     (Control => 0,
      Isochronous => 1,
      Bulk => 2,
      Interrupt => 3);

   --  Tx data toggle inhibit This bit is only used for test and should always
   --  be written as zero. Writing a one to this bit will cause this endpoint
   --  to ignore the data toggle sequence and always accept data packets
   --  regardless of their data PID.
   type ENUM_53 is
     (
      --  Enabled
      Enabled,
      --  Disabled
      Disabled)
     with Size => 1;
   for ENUM_53 use
     (Enabled => 0,
      Disabled => 1);

   subtype ENDPTCTRL_TXR_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint control
   type ENDPTCTRL_Register is record
      --  Rx endpoint stall
      RXS        : ENUM_48 := Interfaces.LPC43xxC.USB0.Endpoint_Ok_This_Bi;
      --  Reserved
      RESERVED   : ENDPTCTRL_RESERVED_Field := 16#0#;
      --  Endpoint type
      RXT        : ENUM_49 := Interfaces.LPC43xxC.USB0.Control;
      --  Reserved
      RESERVED_1 : ENDPTCTRL_RESERVED_Field := 16#0#;
      --  Rx data toggle inhibit This bit is only used for test and should
      --  always be written as zero. Writing a one to this bit will cause this
      --  endpoint to ignore the data toggle sequence and always accept data
      --  packets regardless of their data PID.
      RXI        : ENUM_50 := Interfaces.LPC43xxC.USB0.Disabled;
      --  Rx data toggle reset Write 1 to reset the PID sequence. Whenever a
      --  configuration event is received for this Endpoint, software must
      --  write a one to this bit in order to synchronize the data PIDs between
      --  the host and device.
      RXR        : ENDPTCTRL_RXR_Field := 16#0#;
      --  Rx endpoint enable An endpoint should be enabled only after it has
      --  been configured.
      RXE        : ENUM_51 := Interfaces.LPC43xxC.USB0.Endpoint_Disabled;
      --  reserved
      RESERVED_2 : ENDPTCTRL_RESERVED_Field_1 := 16#0#;
      --  Tx endpoint stall
      TXS        : ENUM_48 := Interfaces.LPC43xxC.USB0.Endpoint_Ok_This_Bi;
      --  Reserved
      RESERVED_3 : ENDPTCTRL_RESERVED_Field := 16#0#;
      --  Tx endpoint type
      TXT1_0     : ENUM_52 := Interfaces.LPC43xxC.USB0.Control;
      --  reserved
      RESERVED_4 : ENDPTCTRL_RESERVED_Field := 16#0#;
      --  Tx data toggle inhibit This bit is only used for test and should
      --  always be written as zero. Writing a one to this bit will cause this
      --  endpoint to ignore the data toggle sequence and always accept data
      --  packets regardless of their data PID.
      TXI        : ENUM_53 := Interfaces.LPC43xxC.USB0.Enabled;
      --  Tx data toggle reset Write 1 to reset the PID sequence. Whenever a
      --  configuration event is received for this Endpoint, software must
      --  write a one to this bit in order to synchronize the data PIDs between
      --  the host and device.
      TXR        : ENDPTCTRL_TXR_Field := 16#0#;
      --  Tx endpoint enable An endpoint should be enabled only after it has
      --  been configured
      TXE        : ENUM_51 := Interfaces.LPC43xxC.USB0.Endpoint_Disabled;
      --  reserved
      RESERVED_5 : ENDPTCTRL_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENDPTCTRL_Register use record
      RXS        at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 1;
      RXT        at 0 range 2 .. 3;
      RESERVED_1 at 0 range 4 .. 4;
      RXI        at 0 range 5 .. 5;
      RXR        at 0 range 6 .. 6;
      RXE        at 0 range 7 .. 7;
      RESERVED_2 at 0 range 8 .. 15;
      TXS        at 0 range 16 .. 16;
      RESERVED_3 at 0 range 17 .. 17;
      TXT1_0     at 0 range 18 .. 19;
      RESERVED_4 at 0 range 20 .. 20;
      TXI        at 0 range 21 .. 21;
      TXR        at 0 range 22 .. 22;
      TXE        at 0 range 23 .. 23;
      RESERVED_5 at 0 range 24 .. 31;
   end record;

   --  Endpoint control
   type ENDPTCTRL_Registers is array (0 .. 4) of ENDPTCTRL_Register;

   -----------------
   -- Peripherals --
   -----------------

   type USB0_Disc is
     (
      D,
      H,
      Mode_1,
      Mode_2);

   --  USB0 Host/Device/OTG controller
   type USB0_Peripheral
     (Discriminent : USB0_Disc := D)
   is record
      --  Capability register length
      CAPLENGTH        : CAPLENGTH_Register;
      --  Host controller structural parameters
      HCSPARAMS        : HCSPARAMS_Register;
      --  Host controller capability parameters
      HCCPARAMS        : HCCPARAMS_Register;
      --  Device interface version number
      DCIVERSION       : DCIVERSION_Register;
      --  Asynchronous buffer status for embedded TT (host mode)
      TTCTRL           : TTCTRL_Register;
      --  Programmable burst size
      BURSTSIZE        : BURSTSIZE_Register;
      --  Host transmit pre-buffer packet tuning (host mode)
      TXFILLTUNING     : TXFILLTUNING_Register;
      --  Length of virtual frame
      BINTERVAL        : BINTERVAL_Register;
      --  Endpoint NAK (device mode)
      ENDPTNAK         : ENDPTNAK_Register;
      --  Endpoint NAK Enable (device mode)
      ENDPTNAKEN       : ENDPTNAKEN_Register;
      --  OTG status and control
      OTGSC            : OTGSC_Register;
      --  Endpoint setup status
      ENDPTSETUPSTAT   : ENDPTSETUPSTAT_Register;
      --  Endpoint initialization
      ENDPTPRIME       : ENDPTPRIME_Register;
      --  Endpoint de-initialization
      ENDPTFLUSH       : ENDPTFLUSH_Register;
      --  Endpoint status
      ENDPTSTAT        : ENDPTSTAT_Register;
      --  Endpoint complete
      ENDPTCOMPLETE    : ENDPTCOMPLETE_Register;
      --  Endpoint control 0
      ENDPTCTRL0       : ENDPTCTRL0_Register;
      --  Endpoint control
      ENDPTCTRL        : ENDPTCTRL_Registers;
      case Discriminent is
         when D =>
            --  USB command (device mode)
            USBCMD_D : USBCMD_D_Register;
            --  USB status (device mode)
            USBSTS_D : USBSTS_D_Register;
            --  USB interrupt enable (device mode)
            USBINTR_D : USBINTR_D_Register;
            --  USB frame index (device mode)
            FRINDEX_D : FRINDEX_D_Register;
            --  Port 1 status/control (device mode)
            PORTSC1_D : PORTSC1_D_Register;
            --  USB device mode (device mode)
            USBMODE_D : USBMODE_D_Register;
         when H =>
            --  USB command (host mode)
            USBCMD_H : USBCMD_H_Register;
            --  USB status (host mode)
            USBSTS_H : USBSTS_H_Register;
            --  USB interrupt enable (host mode)
            USBINTR_H : USBINTR_H_Register;
            --  USB frame index (host mode)
            FRINDEX_H : FRINDEX_H_Register;
            --  Port 1 status/control (host mode)
            PORTSC1_H : PORTSC1_H_Register;
            --  USB mode (host mode)
            USBMODE_H : USBMODE_H_Register;
         when Mode_1 =>
            --  USB device address (device mode)
            DEVICEADDR : DEVICEADDR_Register;
            --  Address of endpoint list in memory
            ENDPOINTLISTADDR : ENDPOINTLISTADDR_Register;
         when Mode_2 =>
            --  Frame list base address (host mode)
            PERIODICLISTBASE : PERIODICLISTBASE_Register;
            --  Address of endpoint list in memory
            ASYNCLISTADDR : ASYNCLISTADDR_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for USB0_Peripheral use record
      CAPLENGTH        at 256 range 0 .. 31;
      HCSPARAMS        at 260 range 0 .. 31;
      HCCPARAMS        at 264 range 0 .. 31;
      DCIVERSION       at 288 range 0 .. 31;
      TTCTRL           at 348 range 0 .. 31;
      BURSTSIZE        at 352 range 0 .. 31;
      TXFILLTUNING     at 356 range 0 .. 31;
      BINTERVAL        at 372 range 0 .. 31;
      ENDPTNAK         at 376 range 0 .. 31;
      ENDPTNAKEN       at 380 range 0 .. 31;
      OTGSC            at 420 range 0 .. 31;
      ENDPTSETUPSTAT   at 428 range 0 .. 31;
      ENDPTPRIME       at 432 range 0 .. 31;
      ENDPTFLUSH       at 436 range 0 .. 31;
      ENDPTSTAT        at 440 range 0 .. 31;
      ENDPTCOMPLETE    at 444 range 0 .. 31;
      ENDPTCTRL0       at 448 range 0 .. 31;
      ENDPTCTRL        at 452 range 0 .. 159;
      USBCMD_D         at 320 range 0 .. 31;
      USBSTS_D         at 324 range 0 .. 31;
      USBINTR_D        at 328 range 0 .. 31;
      FRINDEX_D        at 332 range 0 .. 31;
      PORTSC1_D        at 388 range 0 .. 31;
      USBMODE_D        at 424 range 0 .. 31;
      USBCMD_H         at 320 range 0 .. 31;
      USBSTS_H         at 324 range 0 .. 31;
      USBINTR_H        at 328 range 0 .. 31;
      FRINDEX_H        at 332 range 0 .. 31;
      PORTSC1_H        at 388 range 0 .. 31;
      USBMODE_H        at 424 range 0 .. 31;
      DEVICEADDR       at 340 range 0 .. 31;
      ENDPOINTLISTADDR at 344 range 0 .. 31;
      PERIODICLISTBASE at 340 range 0 .. 31;
      ASYNCLISTADDR    at 344 range 0 .. 31;
   end record;

   --  USB0 Host/Device/OTG controller
   USB0_Periph : aliased USB0_Peripheral
     with Import, Address => USB0_Base;

end Interfaces.LPC43xxC.USB0;
