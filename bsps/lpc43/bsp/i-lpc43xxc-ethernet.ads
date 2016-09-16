--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43xxC.ETHERNET is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -------------------------
   -- MAC_CONFIG_Register --
   -------------------------

   subtype MAC_CONFIG_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype MAC_CONFIG_RE_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_CONFIG_TE_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_CONFIG_DF_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_CONFIG_BL_Field is Interfaces.Bit_Types.UInt2;
   subtype MAC_CONFIG_ACS_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_CONFIG_RESERVED_Field_1 is Interfaces.Bit_Types.Bit;
   subtype MAC_CONFIG_DR_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_CONFIG_DM_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_CONFIG_LM_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_CONFIG_DO_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_CONFIG_FES_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_CONFIG_PS_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_CONFIG_DCRS_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_CONFIG_IFG_Field is Interfaces.Bit_Types.UInt3;
   subtype MAC_CONFIG_JE_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_CONFIG_JD_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_CONFIG_WD_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_CONFIG_RESERVED_Field_2 is Interfaces.Bit_Types.Byte;

   --  MAC configuration register
   type MAC_CONFIG_Register is record
      --  Reserved
      RESERVED   : MAC_CONFIG_RESERVED_Field := 16#0#;
      --  Receiver enable When this bit is set, the receiver state machine of
      --  the MAC is enabled for receiving frames from the MII. When this bit
      --  is reset, the MAC receive state machine is disabled after the
      --  completion of the reception of the current frame, and will not
      --  receive any further frames from the MII.
      RE         : MAC_CONFIG_RE_Field := 16#0#;
      --  Transmitter Enable When this bit is set, the transmit state machine
      --  of the MAC is enabled for transmission on the MII. When this bit is
      --  reset, the MAC transmit state machine is disabled after the
      --  completion of the transmission of the current frame, and will not
      --  transmit any further frames.
      TE         : MAC_CONFIG_TE_Field := 16#0#;
      --  Deferral Check When this bit is set, the deferral check function is
      --  enabled in the MAC. The MAC will issue a Frame Abort status, along
      --  with the excessive deferral error bit set in the transmit frame
      --  status when the transmit state machine is deferred for more than
      --  24,288 bit times in 10/100-Mbps mode. If the Core is configured for
      --  1000 Mbps operation, or if the Jumbo frame mode is enabled in
      --  10/100-Mbps mode, the threshold for deferral is 155,680 bits times.
      --  Deferral begins when the transmitter is ready to transmit, but is
      --  prevented because of an active CRS (carrier sense) signal on the MII.
      --  Defer time is not cumulative. If the transmitter defers for 10,000
      --  bit times, then transmits, collides, backs off, and then has to defer
      --  again after completion of back-off, the deferral timer resets to 0
      --  and restarts. When this bit is reset, the deferral check function is
      --  disabled and the MAC defers until the CRS signal goes inactive. This
      --  bit is applicable only in Half-Duplex mode and is reserved (RO) in
      --  Full-Duplex-only configuration.
      DF         : MAC_CONFIG_DF_Field := 16#0#;
      --  Back-Off Limit The Back-Off limit determines the random integer
      --  number (r) of slot time delays (4,096 bit times for 1000 Mbps and 512
      --  bit times for 10/100 Mbps) the MAC waits before rescheduling a
      --  transmission attempt during retries after a collision. This bit is
      --  applicable only to Half-Duplex mode and is reserved (RO) in
      --  Full-Duplex-only configuration. 00: k = min (n, 10) 01: k = min (n,
      --  8) 10: k = min (n, 4) 11: k = min (n, 1) where n = retransmission
      --  attempt. The random integer r takes the value in the range 0 <= r <=
      --  2k.
      BL         : MAC_CONFIG_BL_Field := 16#0#;
      --  Automatic Pad/CRC Stripping When this bit is set, the MAC strips the
      --  Pad/FCS field on incoming frames only if the length's field value is
      --  less than or equal to 1,500 bytes. All received frames with length
      --  field greater than or equal to 1,501 bytes are passed to the
      --  application without stripping the Pad/FCS field. When this bit is
      --  reset, the MAC will pass all incoming frames to the Host unmodified.
      ACS        : MAC_CONFIG_ACS_Field := 16#0#;
      --  Link Up/Down Indicates whether the link is up or down during the
      --  transmission of configuration in SMII interface: 0 = Link down 1 =
      --  Link up
      RESERVED_1 : MAC_CONFIG_RESERVED_Field_1 := 16#0#;
      --  Disable Retry When this bit is set, the MAC will attempt only 1
      --  transmission. When a collision occurs on the MII, the MAC will ignore
      --  the current frame transmission and report a Frame Abort with
      --  excessive collision error in the transmit frame status. When this bit
      --  is reset, the MAC will attempt retries based on the settings of BL.
      --  This bit is applicable only to Half-Duplex mode and is reserved (RO
      --  with default value) in Full- Duplex-only configuration.
      DR         : MAC_CONFIG_DR_Field := 16#0#;
      --  Reserved
      RESERVED_2 : MAC_CONFIG_RESERVED_Field_1 := 16#0#;
      --  Duplex Mode When this bit is set, the MAC operates in a Full-Duplex
      --  mode where it can transmit and receive simultaneously.
      DM         : MAC_CONFIG_DM_Field := 16#0#;
      --  Loopback Mode When this bit is set, the MAC operates in loopback mode
      --  at MII. The MII Receive clock input is required for the loopback to
      --  work properly, as the Transmit clock is not looped-back internally.
      LM         : MAC_CONFIG_LM_Field := 16#0#;
      --  Disable Receive Own When this bit is set, the MAC disables the
      --  reception of frames in Half-Duplex mode. When this bit is reset, the
      --  MAC receives all packets that are given by the PHY while
      --  transmitting. This bit is not applicable if the MAC is operating in
      --  Full-Duplex mode.
      DO_k       : MAC_CONFIG_DO_Field := 16#0#;
      --  Speed Indicates the speed in Fast Ethernet (MII) mode: 0 = 10 Mbps 1
      --  = 100 Mbps
      FES        : MAC_CONFIG_FES_Field := 16#0#;
      --  Port select 1 = MII (100 Mbp) - this is the only allowed value.
      PS         : MAC_CONFIG_PS_Field := 16#1#;
      --  Disable carrier sense during transmission When set high, this bit
      --  makes the MAC transmitter ignore the MII CRS signal during frame
      --  transmission in Half-Duplex mode. This request results in no errors
      --  generated due to Loss of Carrier or No Carrier during such
      --  transmission. When this bit is low, the MAC transmitter generates
      --  such errors due to Carrier Sense and will even abort the
      --  transmissions.
      DCRS       : MAC_CONFIG_DCRS_Field := 16#0#;
      --  Inter-frame gap These bits control the minimum IFG between frames
      --  during transmission. 000 = 96 bit times 001 = 88 bit times 010 = 80
      --  bit times ... 000 = 40 bit times Note that in Half-Duplex mode, the
      --  minimum IFG can be configured for 64 bit times (IFG = 100) only.
      --  Lower values are not considered
      IFG        : MAC_CONFIG_IFG_Field := 16#0#;
      --  Jumbo Frame Enable When this bit is set, MAC allows Jumbo frames of
      --  9,018 bytes (9,022 bytes for VLAN tagged frames) without reporting a
      --  giant frame error in the receive frame status.
      JE         : MAC_CONFIG_JE_Field := 16#0#;
      --  Reserved.
      RESERVED_3 : MAC_CONFIG_RESERVED_Field_1 := 16#0#;
      --  Jabber Disable When this bit is set, the MAC disables the jabber
      --  timer on the transmitter, and can transfer frames of up to 16,384
      --  bytes. When this bit is reset, the MAC cuts off the transmitter if
      --  the application sends out more than 2,048 bytes of data (10,240 if JE
      --  is set high) during transmission.
      JD         : MAC_CONFIG_JD_Field := 16#0#;
      --  Watchdog Disable When this bit is set, the MAC disables the watchdog
      --  timer on the receiver, and can receive frames of up to 16,384 bytes.
      --  When this bit is reset, the MAC allows no more than 2,048 bytes
      --  (10,240 if JE is set high) of the frame being received and cuts off
      --  any bytes received after that.
      WD         : MAC_CONFIG_WD_Field := 16#0#;
      --  Reserved.
      RESERVED_4 : MAC_CONFIG_RESERVED_Field_2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_CONFIG_Register use record
      RESERVED   at 0 range 0 .. 1;
      RE         at 0 range 2 .. 2;
      TE         at 0 range 3 .. 3;
      DF         at 0 range 4 .. 4;
      BL         at 0 range 5 .. 6;
      ACS        at 0 range 7 .. 7;
      RESERVED_1 at 0 range 8 .. 8;
      DR         at 0 range 9 .. 9;
      RESERVED_2 at 0 range 10 .. 10;
      DM         at 0 range 11 .. 11;
      LM         at 0 range 12 .. 12;
      DO_k       at 0 range 13 .. 13;
      FES        at 0 range 14 .. 14;
      PS         at 0 range 15 .. 15;
      DCRS       at 0 range 16 .. 16;
      IFG        at 0 range 17 .. 19;
      JE         at 0 range 20 .. 20;
      RESERVED_3 at 0 range 21 .. 21;
      JD         at 0 range 22 .. 22;
      WD         at 0 range 23 .. 23;
      RESERVED_4 at 0 range 24 .. 31;
   end record;

   -------------------------------
   -- MAC_FRAME_FILTER_Register --
   -------------------------------

   subtype MAC_FRAME_FILTER_PR_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_FRAME_FILTER_HUC_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_FRAME_FILTER_HMC_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_FRAME_FILTER_DAIF_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_FRAME_FILTER_PM_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_FRAME_FILTER_DBF_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_FRAME_FILTER_PCF_Field is Interfaces.Bit_Types.UInt2;

   -------------------------------
   -- MAC_FRAME_FILTER.RESERVED --
   -------------------------------

   --  MAC_FRAME_FILTER_RESERVED array element
   subtype MAC_FRAME_FILTER_RESERVED_Element is Interfaces.Bit_Types.Bit;

   --  MAC_FRAME_FILTER_RESERVED array
   type MAC_FRAME_FILTER_RESERVED_Field_Array is array (1 .. 2)
     of MAC_FRAME_FILTER_RESERVED_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for MAC_FRAME_FILTER_RESERVED
   type MAC_FRAME_FILTER_RESERVED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  RESERVED as an array
            Arr : MAC_FRAME_FILTER_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for MAC_FRAME_FILTER_RESERVED_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype MAC_FRAME_FILTER_HPF_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_FRAME_FILTER_RESERVED_Field_1 is Interfaces.Bit_Types.UInt20;
   subtype MAC_FRAME_FILTER_RA_Field is Interfaces.Bit_Types.Bit;

   --  MAC frame filter
   type MAC_FRAME_FILTER_Register is record
      --  Promiscuous Mode When this bit is set, the Address Filter module
      --  passes all incoming frames regardless of its destination or source
      --  address. The SA/DA Filter Fails status bits of the Receive Status
      --  Word will always be cleared when PR is set.
      PR         : MAC_FRAME_FILTER_PR_Field := 16#0#;
      --  Hash Unicast When set, MAC performs destination address filtering of
      --  unicast frames according to the hash table. When reset, the MAC
      --  performs a perfect destination address filtering for unicast frames,
      --  that is, it compares the DA field with the values programmed in DA
      --  registers.
      HUC        : MAC_FRAME_FILTER_HUC_Field := 16#0#;
      --  Hash Multicast When set, MAC performs destination address filtering
      --  of received multicast frames according to the hash table. When reset,
      --  the MAC performs a perfect destination address filtering for
      --  multicast frames, that is, it compares the DA field with the values
      --  programmed in DA registers.
      HMC        : MAC_FRAME_FILTER_HMC_Field := 16#0#;
      --  DA Inverse Filtering When this bit is set, the Address Check block
      --  operates in inverse filtering mode for the DA address comparison for
      --  both unicast and multicast frames. When reset, normal filtering of
      --  frames is performed.
      DAIF       : MAC_FRAME_FILTER_DAIF_Field := 16#0#;
      --  Pass All Multicast When set, this bit indicates that all received
      --  frames with a multicast destination address (first bit in the
      --  destination address field is '1') are passed. When reset, filtering
      --  of multicast frame depends on HMC bit.
      PM         : MAC_FRAME_FILTER_PM_Field := 16#0#;
      --  Disable Broadcast Frames When this bit is set, the AFM module filters
      --  all incoming broadcast frames. When this bit is reset, the AFM module
      --  passes all received broadcast frames.
      DBF        : MAC_FRAME_FILTER_DBF_Field := 16#0#;
      --  Pass Control Frames These bits control the forwarding of all control
      --  frames (including unicast and multicast PAUSE frames). Note that the
      --  processing of PAUSE control frames depends only on RFE of the Flow
      --  Control Register. 00 = MAC filters all control frames from reaching
      --  the application. 01 = MAC forwards all control frames except PAUSE
      --  control frames to application even if they fail the Address filter.
      --  10 = MAC forwards all control frames to application even if they fail
      --  the Address Filter. 11 = MAC forwards control frames that pass the
      --  Address Filter.
      PCF        : MAC_FRAME_FILTER_PCF_Field := 16#0#;
      --  Reserved.
      RESERVED   : MAC_FRAME_FILTER_RESERVED_Field :=
                    (As_Array => False, Val => 16#0#);
      --  Hash or perfect filter When set, this bit configures the address
      --  filter to pass a frame if it matches either the perfect filtering or
      --  the hash filtering as set by HMC or HUC bits. When low and if the
      --  HUC/HMC bit is set, the frame is passed only if it matches the Hash
      --  filter.
      HPF        : MAC_FRAME_FILTER_HPF_Field := 16#0#;
      --  Reserved
      RESERVED_1 : MAC_FRAME_FILTER_RESERVED_Field_1 := 16#0#;
      --  Receive all When this bit is set, the MAC Receiver module passes to
      --  the Application all frames received irrespective of whether they pass
      --  the address filter. The result of the SA/DA filtering is updated
      --  (pass or fail) in the corresponding bits in the Receive Status Word.
      --  When this bit is reset, the Receiver module passes to the Application
      --  only those frames that pass the SA/DA address filter.
      RA         : MAC_FRAME_FILTER_RA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_FRAME_FILTER_Register use record
      PR         at 0 range 0 .. 0;
      HUC        at 0 range 1 .. 1;
      HMC        at 0 range 2 .. 2;
      DAIF       at 0 range 3 .. 3;
      PM         at 0 range 4 .. 4;
      DBF        at 0 range 5 .. 5;
      PCF        at 0 range 6 .. 7;
      RESERVED   at 0 range 8 .. 9;
      HPF        at 0 range 10 .. 10;
      RESERVED_1 at 0 range 11 .. 30;
      RA         at 0 range 31 .. 31;
   end record;

   ---------------------------
   -- MAC_MII_ADDR_Register --
   ---------------------------

   subtype MAC_MII_ADDR_GB_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_MII_ADDR_W_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_MII_ADDR_CR_Field is Interfaces.Bit_Types.UInt4;
   subtype MAC_MII_ADDR_GR_Field is Interfaces.Bit_Types.UInt5;
   subtype MAC_MII_ADDR_PA_Field is Interfaces.Bit_Types.UInt5;
   subtype MAC_MII_ADDR_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  MII address register
   type MAC_MII_ADDR_Register is record
      --  MII busy This register field can be read by the application (Read),
      --  can be set to 1 by the application with a register write of 1 (Write
      --  Set), and is cleared to 0 by the core (Self Clear). The application
      --  cannot clear this type of field, and a register write of 0 to this
      --  bit has no effect on this field. This bit should read a logic 0
      --  before writing to this register and the MAC_MII_DATA register. This
      --  bit must also be set to 0 during a Write to this register. During a
      --  PHY register access, this bit will be set to 1 by the Application to
      --  indicate that a Read or Write access is in progress. The MAC_MII_DATA
      --  register should be kept valid until this bit is cleared by the MAC
      --  during a PHY Write operation. The MAC_MII_DATA register is invalid
      --  until this bit is cleared by the MAC during a PHY Read operation.
      --  This register should not be written to until this bit is cleared.
      GB       : MAC_MII_ADDR_GB_Field := 16#0#;
      --  MII write When set, this bit tells the PHY that this will be a Write
      --  operation using the MII Data register. If this bit is not set, this
      --  will be a Read operation, placing the data in the MII Data register.
      W        : MAC_MII_ADDR_W_Field := 16#0#;
      --  CSR clock range The CSR Clock Range selection determines the
      --  frequency of the MDC clock. The suggested range of CLK_M4_ETHERNET
      --  frequency applicable for each value below (when Bit[5] = 0) ensures
      --  that the MDC clock is approximately between the frequency range 1.0
      --  MHz - 2.5 MHz. When bit 5 is set, you can achieve MDC clock of
      --  frequency higher than the IEEE 802.3 specified frequency limit of 2.5
      --  MHz and program a clock divider of lower value. For example, when
      --  CLK_M4_ETHERNET is of frequency 100 MHz and you program these bits as
      --  1010, then the resultant MDC clock will be of 12.5 MHz which is
      --  outside the limit of IEEE 802.3 specified range. Program the values
      --  given below only if the interfacing chips supports faster MDC clocks.
      --  See Table 554 for bit values.
      CR       : MAC_MII_ADDR_CR_Field := 16#0#;
      --  MII register These bits select the desired MII register in the
      --  selected PHY device.
      GR       : MAC_MII_ADDR_GR_Field := 16#0#;
      --  Physical layer address This field tells which of the 32 possible PHY
      --  devices are being accessed.
      PA       : MAC_MII_ADDR_PA_Field := 16#0#;
      --  Reserved
      RESERVED : MAC_MII_ADDR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_MII_ADDR_Register use record
      GB       at 0 range 0 .. 0;
      W        at 0 range 1 .. 1;
      CR       at 0 range 2 .. 5;
      GR       at 0 range 6 .. 10;
      PA       at 0 range 11 .. 15;
      RESERVED at 0 range 16 .. 31;
   end record;

   ---------------------------
   -- MAC_MII_DATA_Register --
   ---------------------------

   subtype MAC_MII_DATA_GD_Field is Interfaces.Bit_Types.Short;
   subtype MAC_MII_DATA_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  MII data register
   type MAC_MII_DATA_Register is record
      --  MII data This contains the 16-bit data value read from the PHY after
      --  a Management Read operation or the 16-bit data value to be written to
      --  the PHY before a Management Write operation.
      GD       : MAC_MII_DATA_GD_Field := 16#0#;
      --  Reserved
      RESERVED : MAC_MII_DATA_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_MII_DATA_Register use record
      GD       at 0 range 0 .. 15;
      RESERVED at 0 range 16 .. 31;
   end record;

   ----------------------------
   -- MAC_FLOW_CTRL_Register --
   ----------------------------

   subtype MAC_FLOW_CTRL_FCB_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_FLOW_CTRL_TFE_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_FLOW_CTRL_RFE_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_FLOW_CTRL_UP_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_FLOW_CTRL_PLT_Field is Interfaces.Bit_Types.UInt2;
   subtype MAC_FLOW_CTRL_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_FLOW_CTRL_DZPQ_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_FLOW_CTRL_RESERVED_Field_1 is Interfaces.Bit_Types.Byte;
   subtype MAC_FLOW_CTRL_PT_Field is Interfaces.Bit_Types.Short;

   --  Flow control register
   type MAC_FLOW_CTRL_Register is record
      --  Flow Control Busy/Backpressure Activate This register field can be
      --  read by the application (Read), can be set to 1 by the application
      --  with a register write of 1 (Write Set), and is cleared to 0 by the
      --  core (Self Clear). The application cannot clear this type of field,
      --  and a register write of 0 to this bit has no effect on this field.
      --  This bit initiates a Pause Control frame in Full-Duplex mode. In
      --  Full-Duplex mode, this bit should be read as 0 before writing to the
      --  Flow Control register. To initiate a Pause control frame, the
      --  Application must set this bit to 1. During a transfer of the Control
      --  Frame, this bit will continue to be set to signify that a frame
      --  transmission is in progress. After the completion of Pause control
      --  frame transmission, the MAC will reset this bit to 0. The Flow
      --  Control register should not be written to until this bit is cleared.
      --  In Half-Duplex mode, when this bit is set (and TFE is set), then
      --  backpressure is asserted by the MAC Core. During backpressure, when
      --  the MAC receives a new frame, the transmitter starts sending a JAM
      --  pattern resulting in a collision. This control register bit is
      --  logically ORed with the flow controller input signal for the
      --  backpressure function. When the MAC is configured to Full- Duplex
      --  mode, the BPA is automatically disabled.
      FCB        : MAC_FLOW_CTRL_FCB_Field := 16#0#;
      --  Transmit Flow Control Enable In Full-Duplex mode, when this bit is
      --  set, the MAC enables the flow control operation to transmit Pause
      --  frames. When this bit is reset, the flow control operation in the MAC
      --  is disabled, and the MAC will not transmit any Pause frames. In
      --  Half-Duplex mode, when this bit is set, the MAC enables the
      --  back-pressure operation. When this bit is reset, the backpressure
      --  feature is disabled.
      TFE        : MAC_FLOW_CTRL_TFE_Field := 16#0#;
      --  Receive Flow Control Enable When this bit is set, the MAC will decode
      --  the received Pause frame and disable its transmitter for a specified
      --  (Pause Time) time. When this bit is reset, the decode function of the
      --  Pause frame is disabled.
      RFE        : MAC_FLOW_CTRL_RFE_Field := 16#0#;
      --  Unicast Pause Frame Detect When this bit is set, the MAC will detect
      --  the Pause frames with the station's unicast address specified in MAC
      --  Address0 High Register and MAC Address0 Low Register, in addition to
      --  the detecting Pause frames with the unique multicast address. When
      --  this bit is reset, the MAC will detect only a Pause frame with the
      --  unique multicast address specified in the 802.3x standard.
      UP         : MAC_FLOW_CTRL_UP_Field := 16#0#;
      --  Pause Low Threshold This field configures the threshold of the PAUSE
      --  timer at which the input flow control is checked for automatic
      --  retransmission of PAUSE Frame. The threshold values should be always
      --  less than the Pause Time configured in Bits[31:16]. For example, if
      --  PT = 0x100 (256 slot-times), and PLT = 01, then a second PAUSE frame
      --  is automatically transmitted if the flow control signal is asserted
      --  at 228 (256 - 28) slot-times after the first PAUSE frame is
      --  transmitted.
      PLT        : MAC_FLOW_CTRL_PLT_Field := 16#0#;
      --  Reserved
      RESERVED   : MAC_FLOW_CTRL_RESERVED_Field := 16#0#;
      --  Disable Zero-Quanta Pause When set, this bit disables the automatic
      --  generation of Zero-Quanta Pause Control frames on the deassertion of
      --  the flow-control signal from the FIFO layer. When this bit is reset,
      --  normal operation with automatic Zero-Quanta Pause Control frame
      --  generation is enabled.
      DZPQ       : MAC_FLOW_CTRL_DZPQ_Field := 16#0#;
      --  Reserved
      RESERVED_1 : MAC_FLOW_CTRL_RESERVED_Field_1 := 16#0#;
      --  Pause time This field holds the value to be used in the Pause Time
      --  field in the transmit control frame. If the Pause Time bits is
      --  configured to be double-synchronized to the MII clock domain, then
      --  consecutive writes to this register should be performed only after at
      --  least 4 clock cycles in the destination clock domain.
      PT         : MAC_FLOW_CTRL_PT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_FLOW_CTRL_Register use record
      FCB        at 0 range 0 .. 0;
      TFE        at 0 range 1 .. 1;
      RFE        at 0 range 2 .. 2;
      UP         at 0 range 3 .. 3;
      PLT        at 0 range 4 .. 5;
      RESERVED   at 0 range 6 .. 6;
      DZPQ       at 0 range 7 .. 7;
      RESERVED_1 at 0 range 8 .. 15;
      PT         at 0 range 16 .. 31;
   end record;

   ---------------------------
   -- MAC_VLAN_TAG_Register --
   ---------------------------

   subtype MAC_VLAN_TAG_VL_Field is Interfaces.Bit_Types.Short;
   subtype MAC_VLAN_TAG_ETV_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_VLAN_TAG_RESERVED_Field is Interfaces.Bit_Types.UInt15;

   --  VLAN tag register
   type MAC_VLAN_TAG_Register is record
      --  VLAN Tag Identifier for Receive Frames This contains the 802.1Q VLAN
      --  tag to identify VLAN frames, and is compared to the fifteenth and
      --  sixteenth bytes of the frames being received for VLAN frames.
      --  Bits[15:13] are the User Priority, Bit[12] is the Canonical Format
      --  Indicator (CFI) and bits[11:0] are the VLAN tag's VLAN Identifier
      --  (VID) field. When the ETV bit is set, only the VID (Bits[11:0]) is
      --  used for comparison. If VL (VL[11:0] if ETV is set) is all zeros, the
      --  MAC does not check the fifteenth and sixteenth bytes for VLAN tag
      --  comparison, and declares all frames with a Type field value of 0x8100
      --  to be VLAN frames.
      VL       : MAC_VLAN_TAG_VL_Field := 16#0#;
      --  Enable 12-Bit VLAN Tag Comparison When this bit is set, a 12-bit VLAN
      --  identifier, rather than the complete 16-bit VLAN tag, is used for
      --  comparison and filtering. Bits[11:0] of the VLAN tag are compared
      --  with the corresponding field in the received VLAN-tagged frame. When
      --  this bit is reset, all 16 bits of the received VLAN frame's fifteenth
      --  and sixteenth bytes are used for comparison.
      ETV      : MAC_VLAN_TAG_ETV_Field := 16#0#;
      --  Reserved
      RESERVED : MAC_VLAN_TAG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_VLAN_TAG_Register use record
      VL       at 0 range 0 .. 15;
      ETV      at 0 range 16 .. 16;
      RESERVED at 0 range 17 .. 31;
   end record;

   ------------------------
   -- MAC_DEBUG_Register --
   ------------------------

   subtype MAC_DEBUG_RXIDLESTAT_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_DEBUG_FIFOSTAT0_Field is Interfaces.Bit_Types.UInt2;
   subtype MAC_DEBUG_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_DEBUG_RXFIFOSTAT1_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_DEBUG_RXFIFOSTAT_Field is Interfaces.Bit_Types.UInt2;
   subtype MAC_DEBUG_RXFIFOLVL_Field is Interfaces.Bit_Types.UInt2;
   subtype MAC_DEBUG_RESERVED_Field_1 is Interfaces.Bit_Types.UInt6;
   subtype MAC_DEBUG_TXIDLESTAT_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_DEBUG_TXSTAT_Field is Interfaces.Bit_Types.UInt2;
   subtype MAC_DEBUG_PAUSE_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_DEBUG_TXFIFOSTAT_Field is Interfaces.Bit_Types.UInt2;
   subtype MAC_DEBUG_TXFIFOSTAT1_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_DEBUG_TXFIFOLVL_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_DEBUG_TXFIFOFULL_Field is Interfaces.Bit_Types.Bit;

   --  Debug register
   type MAC_DEBUG_Register is record
      --  Read-only. When high, it indicates that the MAC MII receive protocol
      --  engine is actively receiving data and not in IDLE state.
      RXIDLESTAT  : MAC_DEBUG_RXIDLESTAT_Field;
      --  Read-only. When high, it indicates the active state of the small FIFO
      --  Read and Write controllers respectively of the MAC receive Frame
      --  Controller module.
      FIFOSTAT0   : MAC_DEBUG_FIFOSTAT0_Field;
      --  Read-only. Reserved
      RESERVED    : MAC_DEBUG_RESERVED_Field;
      --  Read-only. When high, it indicates that the MTL RxFIFO Write
      --  Controller is active and transferring a received frame to the FIFO.
      RXFIFOSTAT1 : MAC_DEBUG_RXFIFOSTAT1_Field;
      --  Read-only. State of the RxFIFO read Controller: 00 = idle state 01 =
      --  reading frame data 10 = reading frame status (or Time stamp) 11 =
      --  flushing the frame data and status
      RXFIFOSTAT  : MAC_DEBUG_RXFIFOSTAT_Field;
      --  Read-only. Reserved
      RESERVED_1  : MAC_DEBUG_RESERVED_Field;
      --  Read-only. Status of the RxFIFO Fill-level 00 = RxFIFO Empty 01 =
      --  RxFIFO fill-level below flow-control de-activate threshold 10 =
      --  RxFIFO fill-level above flow-control activate threshold 11 = RxFIFO
      --  Full
      RXFIFOLVL   : MAC_DEBUG_RXFIFOLVL_Field;
      --  Read-only. Reserved
      RESERVED_2  : MAC_DEBUG_RESERVED_Field_1;
      --  Read-only. When high, it indicates that the MAC MII transmit protocol
      --  engine is actively transmitting data and not in IDLE state.
      TXIDLESTAT  : MAC_DEBUG_TXIDLESTAT_Field;
      --  Read-only. State of the MAC Transmit Frame Controller module: 00 =
      --  idle 01 = Waiting for Status of previous frame or IFG/backoff period
      --  to be over 10 = Generating and transmitting a PAUSE control frame (in
      --  full duplex mode) 11 = Transferring input frame for transmission
      TXSTAT      : MAC_DEBUG_TXSTAT_Field;
      --  Read-only. When high, it indicates that the MAC transmitter is in
      --  PAUSE condition (in full-duplex only) and hence will not schedule any
      --  frame for transmission.
      PAUSE       : MAC_DEBUG_PAUSE_Field;
      --  Read-only. State of the TxFIFO read Controller 00 = idle state 01 =
      --  READ state (transferring data to MAC transmitter) 10 = Waiting for
      --  TxStatus from MAC transmitter 11 = Writing the received TxStatus or
      --  flushing the TxFIFO
      TXFIFOSTAT  : MAC_DEBUG_TXFIFOSTAT_Field;
      --  Read-only. When high, it indicates that the TxFIFO Write Controller
      --  is active and transferring data to the TxFIFO.
      TXFIFOSTAT1 : MAC_DEBUG_TXFIFOSTAT1_Field;
      --  Read-only. Reserved
      RESERVED_3  : MAC_DEBUG_RESERVED_Field;
      --  Read-only. When high, it indicates that the TxFIFO is not empty and
      --  has some data left for transmission.
      TXFIFOLVL   : MAC_DEBUG_TXFIFOLVL_Field;
      --  Read-only. When high, it indicates that the TxStatus FIFO is full and
      --  hence the controller will not be accepting any more frames for
      --  transmission.
      TXFIFOFULL  : MAC_DEBUG_TXFIFOFULL_Field;
      --  Read-only. Reserved
      RESERVED_4  : MAC_DEBUG_RESERVED_Field_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_DEBUG_Register use record
      RXIDLESTAT  at 0 range 0 .. 0;
      FIFOSTAT0   at 0 range 1 .. 2;
      RESERVED    at 0 range 3 .. 3;
      RXFIFOSTAT1 at 0 range 4 .. 4;
      RXFIFOSTAT  at 0 range 5 .. 6;
      RESERVED_1  at 0 range 7 .. 7;
      RXFIFOLVL   at 0 range 8 .. 9;
      RESERVED_2  at 0 range 10 .. 15;
      TXIDLESTAT  at 0 range 16 .. 16;
      TXSTAT      at 0 range 17 .. 18;
      PAUSE       at 0 range 19 .. 19;
      TXFIFOSTAT  at 0 range 20 .. 21;
      TXFIFOSTAT1 at 0 range 22 .. 22;
      RESERVED_3  at 0 range 23 .. 23;
      TXFIFOLVL   at 0 range 24 .. 24;
      TXFIFOFULL  at 0 range 25 .. 25;
      RESERVED_4  at 0 range 26 .. 31;
   end record;

   --------------------------------
   -- MAC_PMT_CTRL_STAT_Register --
   --------------------------------

   subtype MAC_PMT_CTRL_STAT_PD_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_PMT_CTRL_STAT_MPE_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_PMT_CTRL_STAT_WFE_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_PMT_CTRL_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype MAC_PMT_CTRL_STAT_MPR_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_PMT_CTRL_STAT_WFR_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_PMT_CTRL_STAT_GU_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_PMT_CTRL_STAT_RESERVED_Field_1 is Interfaces.Bit_Types.UInt21;
   subtype MAC_PMT_CTRL_STAT_WFFRPR_Field is Interfaces.Bit_Types.Bit;

   --  PMT control and status
   type MAC_PMT_CTRL_STAT_Register is record
      --  Power-down This register field can be read by the application (Read),
      --  can be set to 1 by the application with a register write of 1 (Write
      --  Set), and is cleared to 0 by the core (Self Clear). The application
      --  cannot clear this type of field, and a register write of 0 to this
      --  bit has no effect on this field. When set, all received frames will
      --  be dropped. This bit is cleared automatically when a magic packet or
      --  Wake-Up frame is received, and Power-Down mode is disabled. Frames
      --  received after this bit is cleared are forwarded to the
      --  application.This bit must only be set when either the Magic Packet
      --  Enable or Wake- Up Frame Enable bit is set high.
      PD         : MAC_PMT_CTRL_STAT_PD_Field := 16#0#;
      --  Magic packet enable When set, enables generation of a power
      --  management event due to Magic Packet reception.
      MPE        : MAC_PMT_CTRL_STAT_MPE_Field := 16#0#;
      --  Wake-up frame enable When set, enables generation of a power
      --  management event due to wake-up frame reception.
      WFE        : MAC_PMT_CTRL_STAT_WFE_Field := 16#0#;
      --  Reserved
      RESERVED   : MAC_PMT_CTRL_STAT_RESERVED_Field := 16#0#;
      --  Magic Packet Received This register field can be read by the
      --  application (Read), can be set to 1 by the Ethernet core on a certain
      --  internal event (Self Set), and is automatically cleared to 0 on a
      --  register read. A register write of 0 has no effect on this field.
      --  When set, this bit indicates the power management event was generated
      --  by the reception of a Magic Packet. This bit is cleared by a Read
      --  into this register.
      MPR        : MAC_PMT_CTRL_STAT_MPR_Field := 16#0#;
      --  Wake-up Frame Received This register field can be read by the
      --  application (Read), can be set to 1 by the Ethernet core on a certain
      --  internal event (Self Set), and is automatically cleared to 0 on a
      --  register read. A register write of 0 has no effect on this field.
      --  When set, this bit indicates the power management event was generated
      --  due to reception of a wake-up frame. This bit is cleared by a Read
      --  into this register.
      WFR        : MAC_PMT_CTRL_STAT_WFR_Field := 16#0#;
      --  Reserved
      RESERVED_1 : MAC_PMT_CTRL_STAT_RESERVED_Field := 16#0#;
      --  Global Unicast When set, enables any unicast packet filtered by the
      --  MAC (DAF) address recognition to be a wake-up frame.
      GU         : MAC_PMT_CTRL_STAT_GU_Field := 16#0#;
      --  Reserved
      RESERVED_2 : MAC_PMT_CTRL_STAT_RESERVED_Field_1 := 16#0#;
      --  Wake-up Frame Filter Register Pointer Reset This register field can
      --  be read by the application (Read), can be set to 1 by the application
      --  with a register write of 1 (Write Set), and is cleared to 0 by the
      --  core (Self Clear). The application cannot clear this type of field,
      --  and a register write of 0 to this bit has no effect on this field.
      --  When set, resets the Remote Wake-up Frame Filter register pointer to
      --  000. It is automatically cleared after 1 clock cycle.
      WFFRPR     : MAC_PMT_CTRL_STAT_WFFRPR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_PMT_CTRL_STAT_Register use record
      PD         at 0 range 0 .. 0;
      MPE        at 0 range 1 .. 1;
      WFE        at 0 range 2 .. 2;
      RESERVED   at 0 range 3 .. 4;
      MPR        at 0 range 5 .. 5;
      WFR        at 0 range 6 .. 6;
      RESERVED_1 at 0 range 7 .. 8;
      GU         at 0 range 9 .. 9;
      RESERVED_2 at 0 range 10 .. 30;
      WFFRPR     at 0 range 31 .. 31;
   end record;

   -----------------------
   -- MAC_INTR_Register --
   -----------------------

   subtype MAC_INTR_RESERVED_Field is Interfaces.Bit_Types.UInt3;
   subtype MAC_INTR_PMT_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_INTR_RESERVED_Field_1 is Interfaces.Bit_Types.UInt5;
   subtype MAC_INTR_TS_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_INTR_RESERVED_Field_2 is Interfaces.Bit_Types.Bit;
   subtype MAC_INTR_RESERVED_Field_3 is Interfaces.Bit_Types.UInt21;

   --  Interrupt status register
   type MAC_INTR_Register is record
      --  Read-only. Reserved.
      RESERVED   : MAC_INTR_RESERVED_Field;
      --  Read-only. PMT Interrupt Status This bit is set whenever a Magic
      --  packet or Wake-on-LAN frame is received in Power- Down mode (See bits
      --  5 and 6 in Table 560). This bit is cleared when both bits[6:5] are
      --  cleared because of a read operation to the PMT Control and Status
      --  register.
      PMT        : MAC_INTR_PMT_Field;
      --  Read-only. Reserved.
      RESERVED_1 : MAC_INTR_RESERVED_Field_1;
      --  Read-only. Timestamp interrupt status When Advanced Timestamp feature
      --  is enabled, this bit is set when any of the following conditions is
      --  true: - The system time value equals or exceeds the value specified
      --  in the Target Time High and Low registers - There is an overflow in
      --  the seconds register This bit is cleared on reading the byte 0 of the
      --  Timestamp Status register (Table 576). Otherwise, when default Time
      --  stamping is enabled, this bit when set indicates that the system time
      --  value equals or exceeds the value specified in the Target Time
      --  registers. In this mode, this bit is cleared after the completion of
      --  the read of this Interrupt Status Register[9]. In all other modes,
      --  this bit is reserved.
      TS         : MAC_INTR_TS_Field;
      --  Read-only. Reserved.
      RESERVED_2 : MAC_INTR_RESERVED_Field_2;
      --  Read-only. Reserved
      RESERVED_3 : MAC_INTR_RESERVED_Field_3;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_INTR_Register use record
      RESERVED   at 0 range 0 .. 2;
      PMT        at 0 range 3 .. 3;
      RESERVED_1 at 0 range 4 .. 8;
      TS         at 0 range 9 .. 9;
      RESERVED_2 at 0 range 10 .. 10;
      RESERVED_3 at 0 range 11 .. 31;
   end record;

   ----------------------------
   -- MAC_INTR_MASK_Register --
   ----------------------------

   subtype MAC_INTR_MASK_RESERVED_Field is Interfaces.Bit_Types.UInt3;
   subtype MAC_INTR_MASK_PMTIM_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_INTR_MASK_RESERVED_Field_1 is Interfaces.Bit_Types.UInt5;
   subtype MAC_INTR_MASK_TSIM_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_INTR_MASK_RESERVED_Field_2 is Interfaces.Bit_Types.Bit;

   --  Interrupt mask register
   type MAC_INTR_MASK_Register is record
      --  Reserved
      RESERVED       : MAC_INTR_MASK_RESERVED_Field := 16#0#;
      --  PMT Interrupt Mask This bit when set, will disable the assertion of
      --  the interrupt signal due to the setting of PMT Interrupt Status bit
      --  in Table 561.
      PMTIM          : MAC_INTR_MASK_PMTIM_Field := 16#0#;
      --  Reserved.
      RESERVED_1     : MAC_INTR_MASK_RESERVED_Field_1 := 16#0#;
      --  Timestamp interrupt mask When set, this bit disables the assertion of
      --  the interrupt signal because of the setting of Timestamp Interrupt
      --  Status bit in Table 561
      TSIM           : MAC_INTR_MASK_TSIM_Field := 16#0#;
      --  Reserved.
      RESERVED_2     : MAC_INTR_MASK_RESERVED_Field_2 := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_INTR_MASK_Register use record
      RESERVED       at 0 range 0 .. 2;
      PMTIM          at 0 range 3 .. 3;
      RESERVED_1     at 0 range 4 .. 8;
      TSIM           at 0 range 9 .. 9;
      RESERVED_2     at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------------------
   -- MAC_ADDR0_HIGH_Register --
   -----------------------------

   subtype MAC_ADDR0_HIGH_A47_32_Field is Interfaces.Bit_Types.Short;
   subtype MAC_ADDR0_HIGH_RESERVED_Field is Interfaces.Bit_Types.UInt15;
   subtype MAC_ADDR0_HIGH_MO_Field is Interfaces.Bit_Types.Bit;

   --  MAC address 0 high register
   type MAC_ADDR0_HIGH_Register is record
      --  MAC Address0 [47:32] This field contains the upper 16 bits (47:32) of
      --  the 6-byte first MAC address. This is used by the MAC for filtering
      --  for received frames and for inserting the MAC address in the Transmit
      --  Flow Control (PAUSE) Frames.
      A47_32   : MAC_ADDR0_HIGH_A47_32_Field := 16#FFFF#;
      --  Reserved
      RESERVED : MAC_ADDR0_HIGH_RESERVED_Field := 16#0#;
      --  Always 1
      MO       : MAC_ADDR0_HIGH_MO_Field := 16#1#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_ADDR0_HIGH_Register use record
      A47_32   at 0 range 0 .. 15;
      RESERVED at 0 range 16 .. 30;
      MO       at 0 range 31 .. 31;
   end record;

   -------------------------------
   -- MAC_TIMESTP_CTRL_Register --
   -------------------------------

   subtype MAC_TIMESTP_CTRL_TSENA_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_TIMESTP_CTRL_TSCFUPDT_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_TIMESTP_CTRL_TSINIT_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_TIMESTP_CTRL_TSUPDT_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_TIMESTP_CTRL_TSTRIG_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_TIMESTP_CTRL_TSADDREG_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_TIMESTP_CTRL_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype MAC_TIMESTP_CTRL_TSENALL_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_TIMESTP_CTRL_TSCTRLSSR_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_TIMESTP_CTRL_TSVER2ENA_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_TIMESTP_CTRL_TSIPENA_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_TIMESTP_CTRL_TSIPV6ENA_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_TIMESTP_CTRL_TSIPV4ENA_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_TIMESTP_CTRL_TSEVNTENA_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_TIMESTP_CTRL_TSMSTRENA_Field is Interfaces.Bit_Types.Bit;
   subtype MAC_TIMESTP_CTRL_TSCLKTYPE_Field is Interfaces.Bit_Types.UInt2;
   subtype MAC_TIMESTP_CTRL_TSENMACADDR_Field is Interfaces.Bit_Types.Bit;

   --  Time stamp control register
   type MAC_TIMESTP_CTRL_Register is record
      --  Time stamp Enable When this bit, is set the timestamping is enabled
      --  for transmit and receive frames. When disabled timestamp is not added
      --  for transmit and receive frames and the TimeStamp Generator is also
      --  suspended. User has to always initialize the TimeStamp (system time)
      --  after enabling this mode.
      TSENA          : MAC_TIMESTP_CTRL_TSENA_Field := 16#0#;
      --  Time stamp Fine or Coarse Update When set, indicates that the system
      --  times update to be done using fine update method. When reset it
      --  indicates the system time stamp update to be done using Coarse
      --  method. This bit is reserved if the fine correction option is not
      --  enabled.
      TSCFUPDT       : MAC_TIMESTP_CTRL_TSCFUPDT_Field := 16#0#;
      --  Time stamp Initialize This register field can be read and written by
      --  the application (Read and Write), and is cleared to 0 by the Ethernet
      --  core (Self Clear). When set, the system time is initialized
      --  (over-written) with the value specified in the Time stamp High Update
      --  and Time stamp Low Update registers. This register bit should be read
      --  zero before updating it. This bit is reset once the initialize is
      --  complete.
      TSINIT         : MAC_TIMESTP_CTRL_TSINIT_Field := 16#0#;
      --  Time stamp Update This register field can be read and written by the
      --  application (Read and Write), and is cleared to 0 by the Ethernet
      --  core (Self Clear). When set, the system time is updated
      --  (added/subtracted) with the value specified in the Time stamp High
      --  Update and Time stamp Low Update registers. This register bit should
      --  be read zero before updating it. This bit is reset once the update is
      --  completed in hardware.
      TSUPDT         : MAC_TIMESTP_CTRL_TSUPDT_Field := 16#0#;
      --  Time stamp Interrupt Trigger Enable This register field can be read
      --  and written by the application (Read and Write), and is cleared to 0
      --  by the Ethernet core (Self Clear). When set, the Time stamp interrupt
      --  is generated when the System Time becomes greater than the value
      --  written in Target Time register. This bit is reset after the
      --  generation of Time stamp Trigger Interrupt.
      TSTRIG         : MAC_TIMESTP_CTRL_TSTRIG_Field := 16#0#;
      --  Addend Reg Update When set, the contents of the Time stamp Addend
      --  register is updated in the PTP block for fine correction. This is
      --  cleared when the update is completed. This register bit should be
      --  zero before setting it. This is a reserved bit when only coarse
      --  correction option is selected.
      TSADDREG       : MAC_TIMESTP_CTRL_TSADDREG_Field := 16#0#;
      --  Reserved
      RESERVED       : MAC_TIMESTP_CTRL_RESERVED_Field := 16#0#;
      --  Enable Time stamp for All Frames When set, the Time stamp snapshot is
      --  enabled for all frames received by the core.
      TSENALL        : MAC_TIMESTP_CTRL_TSENALL_Field := 16#0#;
      --  Time stamp Digital or Binary rollover control When set, the Time
      --  stamp Low register rolls over after 0x3B9A_C9FF value (i.e., 1
      --  nanosecond accuracy) and increments the Time stamp (High) seconds.
      --  When reset, the rollover value of sub-second register is 0x7FFF_FFFF.
      --  The sub-second increment has to be programmed correctly depending on
      --  the PTP reference clock frequency and this bit value.
      TSCTRLSSR      : MAC_TIMESTP_CTRL_TSCTRLSSR_Field := 16#0#;
      --  Enable PTP packet snooping for version 2 format When set, the PTP
      --  packets are snooped using the 1588 version 2 format else snooped
      --  using the version 1 format.
      TSVER2ENA      : MAC_TIMESTP_CTRL_TSVER2ENA_Field := 16#0#;
      --  Enable Time stamp Snapshot for PTP over Ethernet frames When set, the
      --  Time stamp snapshot is taken for frames which have PTP messages in
      --  Ethernet frames (PTP over Ethernet) also. By default snapshots are
      --  taken for UDP-IP-Ethernet PTP packets.
      TSIPENA        : MAC_TIMESTP_CTRL_TSIPENA_Field := 16#0#;
      --  Enable Time stamp Snapshot for IPv6 frames When set, the Time stamp
      --  snapshot is taken for IPv6 frames.
      TSIPV6ENA      : MAC_TIMESTP_CTRL_TSIPV6ENA_Field := 16#0#;
      --  Enable Time stamp Snapshot for IPv4 frames When set, the Time stamp
      --  snapshot is taken for IPv4 frames.
      TSIPV4ENA      : MAC_TIMESTP_CTRL_TSIPV4ENA_Field := 16#1#;
      --  Enable Time stamp Snapshot for Event Messages When set, the Time
      --  stamp snapshot is taken for event messages only. When reset snapshot
      --  is taken for all other messages except Announce, Management and
      --  Signaling.
      TSEVNTENA      : MAC_TIMESTP_CTRL_TSEVNTENA_Field := 16#0#;
      --  Enable Snapshot for Messages Relevant to Master When set, the
      --  snapshot is taken for messages relevant to master node only else
      --  snapshot is taken for messages relevant to slave node. This is valid
      --  only for ordinary clock and boundary clock node.
      TSMSTRENA      : MAC_TIMESTP_CTRL_TSMSTRENA_Field := 16#0#;
      --  Select the type of clock node The following are the options to select
      --  the type of clock node: 00 = ordinary clock 01 = boundary clock 10 =
      --  end-to-end transparent clock 11 = peer-to-peer transparent clock
      TSCLKTYPE      : MAC_TIMESTP_CTRL_TSCLKTYPE_Field := 16#0#;
      --  Enable MAC address for PTP frame filtering When set, uses the DA MAC
      --  address (that matches any MAC Address register except the default MAC
      --  address 0) to filter the PTP frames when PTP is sent directly over
      --  Ethernet.
      TSENMACADDR    : MAC_TIMESTP_CTRL_TSENMACADDR_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_TIMESTP_CTRL_Register use record
      TSENA          at 0 range 0 .. 0;
      TSCFUPDT       at 0 range 1 .. 1;
      TSINIT         at 0 range 2 .. 2;
      TSUPDT         at 0 range 3 .. 3;
      TSTRIG         at 0 range 4 .. 4;
      TSADDREG       at 0 range 5 .. 5;
      RESERVED       at 0 range 6 .. 7;
      TSENALL        at 0 range 8 .. 8;
      TSCTRLSSR      at 0 range 9 .. 9;
      TSVER2ENA      at 0 range 10 .. 10;
      TSIPENA        at 0 range 11 .. 11;
      TSIPV6ENA      at 0 range 12 .. 12;
      TSIPV4ENA      at 0 range 13 .. 13;
      TSEVNTENA      at 0 range 14 .. 14;
      TSMSTRENA      at 0 range 15 .. 15;
      TSCLKTYPE      at 0 range 16 .. 17;
      TSENMACADDR    at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------------------
   -- SUBSECOND_INCR_Register --
   -----------------------------

   subtype SUBSECOND_INCR_SSINC_Field is Interfaces.Bit_Types.Byte;
   subtype SUBSECOND_INCR_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Sub-second increment register
   type SUBSECOND_INCR_Register is record
      --  Sub-second increment value. The value programmed in this register is
      --  accumulated with the contents of the sub-second register. For
      --  example, to achieve an accuracy of 20 ns, the value to be programmed
      --  is 20. (Program 0x14 with a 50 MHz reference clock if 1 ns accuracy
      --  is selected.)
      SSINC    : SUBSECOND_INCR_SSINC_Field := 16#0#;
      --  Reserved.
      RESERVED : SUBSECOND_INCR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUBSECOND_INCR_Register use record
      SSINC    at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --------------------------
   -- NANOSECONDS_Register --
   --------------------------

   subtype NANOSECONDS_TSSS_Field is Interfaces.Bit_Types.UInt31;
   subtype NANOSECONDS_PSNT_Field is Interfaces.Bit_Types.Bit;

   --  System time nanoseconds register
   type NANOSECONDS_Register is record
      --  Read-only. Time stamp sub seconds The value in this field has the sub
      --  second representation of time, with an accuracy of 0.46 nano-second.
      --  (When TSCTRLSSR in the MAC_TIMESTAMP_CTRL register is set, each bit
      --  represents 1 ns and the maximum value will be 0x3B9A_C9FF, after
      --  which it rolls-over to zero).
      TSSS : NANOSECONDS_TSSS_Field;
      --  Read-only. Positive or negative time This bit indicates positive or
      --  negative time value. If the bit is reset, it indicates that the time
      --  representation is positive, and if it is set, it indicates negative
      --  time value. (This bit represents the 32nd bit of the nanoseconds
      --  value when the Advance Time stamp feature is enabled).
      PSNT : NANOSECONDS_PSNT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NANOSECONDS_Register use record
      TSSS at 0 range 0 .. 30;
      PSNT at 0 range 31 .. 31;
   end record;

   --------------------------------
   -- NANOSECONDSUPDATE_Register --
   --------------------------------

   subtype NANOSECONDSUPDATE_TSSS_Field is Interfaces.Bit_Types.UInt31;
   subtype NANOSECONDSUPDATE_ADDSUB_Field is Interfaces.Bit_Types.Bit;

   --  System time nanoseconds update register
   type NANOSECONDSUPDATE_Register is record
      --  Time stamp sub seconds The value in this field has the sub second
      --  representation of time, with an accuracy of 0.46 nano-second. (When
      --  TSCTRLSSR is set in the Time stamp control register, each bit
      --  represents 1 ns and the programmed value should not exceed
      --  0x3B9A_C9FF.)
      TSSS   : NANOSECONDSUPDATE_TSSS_Field := 16#0#;
      --  Add or subtract time When this bit is set, the time value is
      --  subtracted with the contents of the update register. When this bit is
      --  reset, the time value is added with the contents of the update
      --  register.
      ADDSUB : NANOSECONDSUPDATE_ADDSUB_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NANOSECONDSUPDATE_Register use record
      TSSS   at 0 range 0 .. 30;
      ADDSUB at 0 range 31 .. 31;
   end record;

   --------------------------------
   -- TARGETNANOSECONDS_Register --
   --------------------------------

   subtype TARGETNANOSECONDS_TSTR_Field is Interfaces.Bit_Types.UInt31;
   subtype TARGETNANOSECONDS_RESERVED_Field is Interfaces.Bit_Types.Bit;

   --  Target time nanoseconds register
   type TARGETNANOSECONDS_Register is record
      --  Target Time stamp low This register stores the time in (signed)
      --  nanoseconds. When the value of the Time stamp matches the Target Time
      --  stamp registers (both), the MAC will generate an interrupt if
      --  enabled. (This value should not exceed 0x3B9A_C9FF when TSCTRLSSR is
      --  set in the Time stamp control register.)
      TSTR     : TARGETNANOSECONDS_TSTR_Field := 16#0#;
      --  Reserved.
      RESERVED : TARGETNANOSECONDS_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TARGETNANOSECONDS_Register use record
      TSTR     at 0 range 0 .. 30;
      RESERVED at 0 range 31 .. 31;
   end record;

   -----------------------
   -- HIGHWORD_Register --
   -----------------------

   subtype HIGHWORD_TSHWR_Field is Interfaces.Bit_Types.Short;
   subtype HIGHWORD_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  System time higher word seconds register
   type HIGHWORD_Register is record
      --  Time stamp higher word Contains the most significant 16-bits of the
      --  Time stamp seconds value. The register is directly written to
      --  initialize the value. This register is incremented when there is an
      --  overflow from the 32-bits of the System Time - Seconds register.
      TSHWR    : HIGHWORD_TSHWR_Field := 16#0#;
      --  Reserved.
      RESERVED : HIGHWORD_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HIGHWORD_Register use record
      TSHWR    at 0 range 0 .. 15;
      RESERVED at 0 range 16 .. 31;
   end record;

   ----------------------------
   -- TIMESTAMPSTAT_Register --
   ----------------------------

   subtype TIMESTAMPSTAT_TSSOVF_Field is Interfaces.Bit_Types.Bit;
   subtype TIMESTAMPSTAT_TSTARGT_Field is Interfaces.Bit_Types.Bit;
   subtype TIMESTAMPSTAT_RESERVED_Field is Interfaces.Bit_Types.UInt30;

   --  Time stamp status register
   type TIMESTAMPSTAT_Register is record
      --  Read-only. Time stamp seconds overflow When set, indicates that the
      --  seconds value of the Time stamp (when supporting version 2 format)
      --  has overflowed beyond 0xFFFF_FFFF.
      TSSOVF   : TIMESTAMPSTAT_TSSOVF_Field;
      --  Read-only. Time stamp target reached When set, indicates the value of
      --  system time is greater or equal to the value specified in the Target
      --  Time High and Low registers
      TSTARGT  : TIMESTAMPSTAT_TSTARGT_Field;
      --  Read-only. Reserved.
      RESERVED : TIMESTAMPSTAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMESTAMPSTAT_Register use record
      TSSOVF   at 0 range 0 .. 0;
      TSTARGT  at 0 range 1 .. 1;
      RESERVED at 0 range 2 .. 31;
   end record;

   ---------------------------
   -- DMA_BUS_MODE_Register --
   ---------------------------

   subtype DMA_BUS_MODE_SWR_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_BUS_MODE_DA_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_BUS_MODE_DSL_Field is Interfaces.Bit_Types.UInt5;
   subtype DMA_BUS_MODE_ATDS_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_BUS_MODE_PBL_Field is Interfaces.Bit_Types.UInt6;
   subtype DMA_BUS_MODE_PR_Field is Interfaces.Bit_Types.UInt2;
   subtype DMA_BUS_MODE_FB_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_BUS_MODE_RPBL_Field is Interfaces.Bit_Types.UInt6;
   subtype DMA_BUS_MODE_USP_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_BUS_MODE_PBL8X_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_BUS_MODE_AAL_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_BUS_MODE_MB_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_BUS_MODE_TXPR_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_BUS_MODE_RESERVED_Field is Interfaces.Bit_Types.UInt4;

   --  Bus Mode Register
   type DMA_BUS_MODE_Register is record
      --  Software reset This register field can be read by the application
      --  (Read), can be set to 1 by the application with a register write of 1
      --  (Write Set), and is cleared to 0 by the Ethernet core (Self Clear).
      --  The application cannot clear this type of field, and a register write
      --  of 0 to this bit has no effect on this field. When this bit is set,
      --  the MAC DMA Controller resets all MAC Subsystem internal registers
      --  and logic. It is cleared automatically after the reset operation has
      --  completed in all of the core clock domains. Read a 0 value in this
      --  bit before re-programming any register of the core. The reset
      --  operation is completed only when all the resets in all the active
      --  clock domains are de-asserted. Hence it is essential that all the PHY
      --  inputs clocks (applicable for the selected PHY interface) are present
      --  for software reset completion.
      SWR      : DMA_BUS_MODE_SWR_Field := 16#0#;
      --  DMA arbitration scheme 0 = Round-robin with Rx:Tx priority given in
      --  bits [15:14] 1 = Rx has priority over Tx
      DA       : DMA_BUS_MODE_DA_Field := 16#0#;
      --  Descriptor skip length This bit specifies the number of Word to skip
      --  between two unchained descriptors. The address skipping starts from
      --  the end of current descriptor to the start of next descriptor. When
      --  DSL value equals zero, then the descriptor table is taken as
      --  contiguous by the DMA, in Ring mode.
      DSL      : DMA_BUS_MODE_DSL_Field := 16#0#;
      --  Alternate descriptor size When set, the alternate descriptor (see
      --  Section 26.7.6.3) size is increased to 32 bytes (8 DWORDS). This is
      --  required when the Advanced Time-Stamp feature or Full IPC Offload
      --  Engine is enabled in the receiver. When reset, the descriptor size
      --  reverts back to 4 DWORDs (16 bytes).
      ATDS     : DMA_BUS_MODE_ATDS_Field := 16#0#;
      --  Programmable burst length These bits indicate the maximum number of
      --  beats to be transferred in one DMA transaction. This will be the
      --  maximum value that is used in a single block Read/Write. The DMA will
      --  always attempt to burst as specified in PBL each time it starts a
      --  Burst transfer on the host bus. PBL can be programmed with
      --  permissible values of 1, 2, 4, 8, 16, and 32. Any other value will
      --  result in undefined behavior. When USP is set high, this PBL value is
      --  applicable for TxDMA transactions only. The PBL values have the
      --  following limitations. The maximum number of beats (PBL) possible is
      --  limited by the size of the Tx FIFO and Rx FIFO in the MTL layer and
      --  the data bus width on the DMA. The FIFO has a constraint that the
      --  maximum beat supported is half the depth of the FIFO, except when
      --  specified (as given below). For different data bus widths and FIFO
      --  sizes, the valid PBL range (including x8 mode) is provided in the
      --  following table. If the PBL is common for both transmit and receive
      --  DMA, the minimum Rx FIFO and Tx FIFO depths must be considered. Do
      --  not program out-of-range PBL values, because the system may not
      --  behave properly.
      PBL      : DMA_BUS_MODE_PBL_Field := 16#1#;
      --  Rx-to-Tx priority ratio RxDMA requests given priority over TxDMA
      --  requests in the following ratio. This is valid only when the DA bit
      --  is reset. 00 = 1-to-1 01 = 2-to-1 10 = 3-to-1 11 = 4-to-1
      PR       : DMA_BUS_MODE_PR_Field := 16#0#;
      --  Fixed burst This bit controls whether the AHB Master interface
      --  performs fixed burst transfers or not. When set, the AHB will use
      --  only SINGLE, INCR4, INCR8 or INCR16 during start of normal burst
      --  transfers. When reset, the AHB will use SINGLE and INCR burst
      --  transfer operations.
      FB       : DMA_BUS_MODE_FB_Field := 16#0#;
      --  RxDMA PBL These bits indicate the maximum number of beats to be
      --  transferred in one RxDMA transaction. This will be the maximum value
      --  that is used in a single block Read/Write. The RxDMA will always
      --  attempt to burst as specified in RPBL each time it starts a Burst
      --  transfer on the host bus. RPBL can be programmed with permissible
      --  values of 1, 2, 4, 8, 16, and 32. Any other value will result in
      --  undefined behavior. These bits are valid and applicable only when USP
      --  is set high.
      RPBL     : DMA_BUS_MODE_RPBL_Field := 16#1#;
      --  Use separate PBL When set high, it configures the RxDMA to use the
      --  value configured in bits [22:17] as PBL while the PBL value in bits
      --  [13:8] is applicable to TxDMA operations only. When reset to low, the
      --  PBL value in bits [13:8] is applicable for both DMA engines.
      USP      : DMA_BUS_MODE_USP_Field := 16#0#;
      --  8 x PBL mode When set high, this bit multiplies the PBL value
      --  programmed (bits [22:17] and bits [13:8]) eight times. Thus the DMA
      --  will transfer data in to a maximum of 8, 16, 32, 64, 128, and 256
      --  beats depending on the PBL value. This bit function is not backward
      --  compatible. Before version 3.50a, this bit was 4xPBL.
      PBL8X    : DMA_BUS_MODE_PBL8X_Field := 16#0#;
      --  Address-aligned beats When this bit is set high and the FB bit equals
      --  1, the AHB interface generates all bursts aligned to the start
      --  address LS bits. If the FB bit equals 0, the first burst (accessing
      --  the data buffer's start address) is not aligned, but subsequent
      --  bursts are aligned to the address.
      AAL      : DMA_BUS_MODE_AAL_Field := 16#0#;
      --  Mixed burst When this bit is set high and FB bit is low, the AHB
      --  master interface will start all bursts of length more than 16 with
      --  INCR (undefined burst) whereas it will revert to fixed burst
      --  transfers (INCRx and SINGLE) for burst-length of 16 and below.
      MB       : DMA_BUS_MODE_MB_Field := 16#0#;
      --  When set, this bit indicates that the transmit DMA has higher
      --  priority than the receive DMA during arbitration for the system-side
      --  bus.
      TXPR     : DMA_BUS_MODE_TXPR_Field := 16#0#;
      --  Reserved
      RESERVED : DMA_BUS_MODE_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_BUS_MODE_Register use record
      SWR      at 0 range 0 .. 0;
      DA       at 0 range 1 .. 1;
      DSL      at 0 range 2 .. 6;
      ATDS     at 0 range 7 .. 7;
      PBL      at 0 range 8 .. 13;
      PR       at 0 range 14 .. 15;
      FB       at 0 range 16 .. 16;
      RPBL     at 0 range 17 .. 22;
      USP      at 0 range 23 .. 23;
      PBL8X    at 0 range 24 .. 24;
      AAL      at 0 range 25 .. 25;
      MB       at 0 range 26 .. 26;
      TXPR     at 0 range 27 .. 27;
      RESERVED at 0 range 28 .. 31;
   end record;

   -----------------------
   -- DMA_STAT_Register --
   -----------------------

   subtype DMA_STAT_TI_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_STAT_TPS_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_STAT_TU_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_STAT_TJT_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_STAT_OVF_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_STAT_UNF_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_STAT_RI_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_STAT_RU_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_STAT_RPS_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_STAT_RWT_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_STAT_ETI_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_STAT_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype DMA_STAT_FBI_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_STAT_ERI_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_STAT_AIE_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_STAT_NIS_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_STAT_RS_Field is Interfaces.Bit_Types.UInt3;
   subtype DMA_STAT_TS_Field is Interfaces.Bit_Types.UInt3;

   -----------------
   -- DMA_STAT.EB --
   -----------------

   --  DMA_STAT_EB array element
   subtype DMA_STAT_EB_Element is Interfaces.Bit_Types.Bit;

   --  DMA_STAT_EB array
   type DMA_STAT_EB_Field_Array is array (1 .. 3) of DMA_STAT_EB_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for DMA_STAT_EB
   type DMA_STAT_EB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EB as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  EB as an array
            Arr : DMA_STAT_EB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for DMA_STAT_EB_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype DMA_STAT_RESERVED_Field_1 is Interfaces.Bit_Types.UInt6;

   --  Status register
   type DMA_STAT_Register is record
      --  Transmit interrupt This bit indicates that frame transmission is
      --  finished and TDES1[31] is set in the First Descriptor.
      TI         : DMA_STAT_TI_Field := 16#0#;
      --  Transmit process stopped This bit is set when the transmission is
      --  stopped.
      TPS        : DMA_STAT_TPS_Field := 16#0#;
      --  Transmit buffer unavailable This bit indicates that the Next
      --  Descriptor in the Transmit List is owned by the host and cannot be
      --  acquired by the DMA. Transmission is suspended. Bits[22:20] explain
      --  the Transmit Process state transitions. To resume processing transmit
      --  descriptors, the host should change the ownership of the bit of the
      --  descriptor and then issue a Transmit Poll Demand command.
      TU         : DMA_STAT_TU_Field := 16#0#;
      --  Transmit jabber timeout This bit indicates that the Transmit Jabber
      --  Timer expired, meaning that the transmitter had been excessively
      --  active. The transmission process is aborted and placed in the Stopped
      --  state. This causes the Transmit Jabber Timeout TDES0[14] flag to
      --  assert.
      TJT        : DMA_STAT_TJT_Field := 16#0#;
      --  Receive overflow This bit indicates that the Receive Buffer had an
      --  Overflow during frame reception. If the partial frame is transferred
      --  to application, the overflow status is set in RDES0[11].
      OVF        : DMA_STAT_OVF_Field := 16#0#;
      --  Transmit underflow This bit indicates that the Transmit Buffer had an
      --  Underflow during frame transmission. Transmission is suspended and an
      --  Underflow Error TDES0[1] is set.
      UNF        : DMA_STAT_UNF_Field := 16#0#;
      --  Receive interrupt This bit indicates the completion of frame
      --  reception. Specific frame status information has been posted in the
      --  descriptor. Reception remains in the Running state.
      RI         : DMA_STAT_RI_Field := 16#0#;
      --  Receive buffer unavailable This bit indicates that the Next
      --  Descriptor in the Receive List is owned by the host and cannot be
      --  acquired by the DMA. Receive Process is suspended. To resume
      --  processing Receive descriptors, the host should change the ownership
      --  of the descriptor and issue a Receive Poll Demand command. If no
      --  Receive Poll Demand is issued, Receive Process resumes when the next
      --  recognized incoming frame is received. This bit is set only when the
      --  previous Receive Descriptor was owned by the DMA.
      RU         : DMA_STAT_RU_Field := 16#0#;
      --  Received process stopped This bit is asserted when the Receive
      --  Process enters the Stopped state.
      RPS        : DMA_STAT_RPS_Field := 16#0#;
      --  Receive watchdog timeout This bit is asserted when a frame with a
      --  length greater than 2,048 bytes is received (10,240 when Jumbo Frame
      --  mode is enabled).
      RWT        : DMA_STAT_RWT_Field := 16#0#;
      --  Early transmit interrupt This bit indicates that the frame to be
      --  transmitted was fully transferred to the MTL Transmit FIFO.
      ETI        : DMA_STAT_ETI_Field := 16#0#;
      --  Reserved
      RESERVED   : DMA_STAT_RESERVED_Field := 16#0#;
      --  Fatal bus error interrupt This bit indicates that a bus error
      --  occurred, as detailed in bits [25:23]. When this bit is set, the
      --  corresponding DMA engine disables all its bus accesses.
      FBI        : DMA_STAT_FBI_Field := 16#0#;
      --  Early receive interrupt This bit indicates that the DMA had filled
      --  the first data buffer of the packet. Receive Interrupt bit 6 in this
      --  register automatically clears this bit.
      ERI        : DMA_STAT_ERI_Field := 16#0#;
      --  Abnormal interrupt summary Abnormal Interrupt Summary bit value is
      --  the logical OR of the following when the corresponding interrupt bits
      --  are enabled in the DMA_INT_EN register: DMA_STAT register, bit 1:
      --  Transmit process stopped DMA_STAT register, bit 3: Transmit jabber
      --  timeout DMA_STAT register, bit 4: Receive overflow DMA_STAT register,
      --  bit 5: Transmit underflow DMA_STAT register, bit 7: Receiver buffer
      --  unavailable DMA_STAT register, bit 8: Receive process stopped
      --  DMA_STAT register, bit 9: Receive watchdog timeout DMA_STAT register,
      --  bit 10: Early transmit interrupt DMA_STAT register, bit 13: Fatal bus
      --  error Only unmasked bits affect the Abnormal Interrupt Summary bit.
      --  This is a sticky bit and must be cleared each time a corresponding
      --  bit that causes AIS to be set is cleared.
      AIE        : DMA_STAT_AIE_Field := 16#0#;
      --  Normal interrupt summary Normal Interrupt Summary bit value is the
      --  logical OR of the following when the corresponding interrupt bits are
      --  enabled in the DMA_INT_EN register: DMA_STAT register, bit 0:
      --  Transmit interrupt DMA_STAT register, bit 2: Transmit buffer
      --  unavailable DMA_STAT register, bit 6: Receive interrupt DMA_STAT
      --  register, bit 14: Early receive interrupt Only unmasked bits affect
      --  the Normal Interrupt Summary bit. This is a sticky bit and must be
      --  cleared (by writing a 1 to this bit) each time a corresponding bit
      --  that causes NIS to be set is cleared.
      NIS        : DMA_STAT_NIS_Field := 16#0#;
      --  Receive Process State These bits indicate the receive DMA state
      --  machine state. This field does not generate an interrupt. 000 =
      --  Stopped: Reset or Stop Receive Command issued. 001 = Running:
      --  Fetching Receive Transfer Descriptor. 010 = Reserved. 011 = Running:
      --  Waiting for receive packet. 100 = Suspended: Receive Descriptor
      --  Unavailable. 101 = Running: Closing Receive Descriptor. 110 =
      --  TIME_STAMP write state. 111 = Running: Transferring the receive
      --  packet data from receive buffer to host memory.
      RS         : DMA_STAT_RS_Field := 16#0#;
      --  Transmit Process State These bits indicate the transmit DMA state
      --  machine state. This field does not generate an interrupt. 000 =
      --  Stopped; Reset or Stop Transmit Command issued. 001 = Running;
      --  Fetching Transmit Transfer Descriptor. 010 = Running; Waiting for
      --  status. 011 = Running; Reading Data from host memory buffer and
      --  queuing it to transmit buffer (Tx FIFO). 100 = TIME_STAMP write
      --  state. 101 = Reserved. 110 = Suspended; Transmit Descriptor
      --  Unavailable or Transmit Buffer Underflow. 111 = Running; Closing
      --  Transmit Descriptor.
      TS         : DMA_STAT_TS_Field := 16#0#;
      --  Error bit 1 This bit indicates the type of error that caused a Bus
      --  Error (e.g., error response on the AHB interface). This bits is valid
      --  only when bit 13 in this register is set. This field does not
      --  generate an interrupt. 1 = Error during data transfer by TxDMA. 0 =
      --  Error during data transfer by RxDMA.
      EB         : DMA_STAT_EB_Field := (As_Array => False, Val => 16#0#);
      --  Reserved
      RESERVED_1 : DMA_STAT_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_STAT_Register use record
      TI         at 0 range 0 .. 0;
      TPS        at 0 range 1 .. 1;
      TU         at 0 range 2 .. 2;
      TJT        at 0 range 3 .. 3;
      OVF        at 0 range 4 .. 4;
      UNF        at 0 range 5 .. 5;
      RI         at 0 range 6 .. 6;
      RU         at 0 range 7 .. 7;
      RPS        at 0 range 8 .. 8;
      RWT        at 0 range 9 .. 9;
      ETI        at 0 range 10 .. 10;
      RESERVED   at 0 range 11 .. 12;
      FBI        at 0 range 13 .. 13;
      ERI        at 0 range 14 .. 14;
      AIE        at 0 range 15 .. 15;
      NIS        at 0 range 16 .. 16;
      RS         at 0 range 17 .. 19;
      TS         at 0 range 20 .. 22;
      EB         at 0 range 23 .. 25;
      RESERVED_1 at 0 range 26 .. 31;
   end record;

   --------------------------
   -- DMA_OP_MODE_Register --
   --------------------------

   subtype DMA_OP_MODE_RESERVED_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_OP_MODE_SR_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_OP_MODE_OSF_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_OP_MODE_RTC_Field is Interfaces.Bit_Types.UInt2;
   subtype DMA_OP_MODE_FUF_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_OP_MODE_FEF_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_OP_MODE_RESERVED_Field_1 is Interfaces.Bit_Types.UInt5;
   subtype DMA_OP_MODE_ST_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_OP_MODE_TTC_Field is Interfaces.Bit_Types.UInt3;
   subtype DMA_OP_MODE_RESERVED_Field_2 is Interfaces.Bit_Types.UInt3;
   subtype DMA_OP_MODE_FTF_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_OP_MODE_RESERVED_Field_3 is Interfaces.Bit_Types.UInt2;
   subtype DMA_OP_MODE_DFF_Field is Interfaces.Bit_Types.Bit;

   --------------------------
   -- DMA_OP_MODE.RESERVED --
   --------------------------

   --  DMA_OP_MODE_RESERVED array element
   subtype DMA_OP_MODE_RESERVED_Element is Interfaces.Bit_Types.Bit;

   --  DMA_OP_MODE_RESERVED array
   type DMA_OP_MODE_RESERVED_Field_Array is array (1 .. 2)
     of DMA_OP_MODE_RESERVED_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for DMA_OP_MODE_RESERVED
   type DMA_OP_MODE_RESERVED_Field_4
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  RESERVED as an array
            Arr : DMA_OP_MODE_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DMA_OP_MODE_RESERVED_Field_4 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Operation mode register
   type DMA_OP_MODE_Register is record
      --  Reserved
      RESERVED   : DMA_OP_MODE_RESERVED_Field := 16#0#;
      --  Start/stop receive When this bit is set, the Receive process is
      --  placed in the Running state. The DMA attempts to acquire the
      --  descriptor from the Receive list and processes incoming frames.
      --  Descriptor acquisition is attempted from the current position in the
      --  list, which is the address set by the DMA_REC_DES_ADDR register or
      --  the position retained when the Receive process was previously
      --  stopped. If no descriptor is owned by the DMA, reception is suspended
      --  and Receive Buffer Unavailable bit (bit 7 in DMA_STAT register) is
      --  set. The Start Receive command is effective only when reception has
      --  stopped. If the command was issued before setting the
      --  DMA_REC_DES_ADDR, DMA behavior is unpredictable.
      SR         : DMA_OP_MODE_SR_Field := 16#0#;
      --  Operate on second frame When this bit is set, this bit instructs the
      --  DMA to process a second frame of Transmit data even before status for
      --  first frame is obtained.
      OSF        : DMA_OP_MODE_OSF_Field := 16#0#;
      --  Receive threshold control These two bits control the threshold level
      --  of the MTL Receive FIFO. Transfer (request) to DMA starts when the
      --  frame size within the MTL Receive FIFO is larger than the threshold.
      --  In addition, full frames with a length less than the threshold are
      --  transferred automatically. These bits are valid only when the RSF bit
      --  is zero, and are ignored when the RSF bit is set to 1. 00 = 64 01 =
      --  32 10 = 96 11 = 128
      RTC        : DMA_OP_MODE_RTC_Field := 16#0#;
      --  Reserved
      RESERVED_1 : DMA_OP_MODE_RESERVED_Field := 16#0#;
      --  Forward undersized good frames When set, the Rx FIFO will forward
      --  Undersized frames (frames with no Error and length less than 64
      --  bytes) including pad-bytes and CRC). When reset, the Rx FIFO will
      --  drop all frames of less than 64 bytes, unless it is already
      --  transferred due to lower value of Receive Threshold (e.g., RTC = 01).
      FUF        : DMA_OP_MODE_FUF_Field := 16#0#;
      --  Forward error frames When this bit is reset, the Rx FIFO drops frames
      --  with error status (CRC error, collision error, , watchdog timeout,
      --  overflow). However, if the frame's start byte (write) pointer is
      --  already transferred to the read controller side (in Threshold mode),
      --  then the frames are not dropped. When FEF is set, all frames except
      --  runt error frames are forwarded to the DMA. But when RxFIFO overflows
      --  when a partial frame is written, then such frames are dropped even
      --  when FEF is set.
      FEF        : DMA_OP_MODE_FEF_Field := 16#0#;
      --  Reserved
      RESERVED_2 : DMA_OP_MODE_RESERVED_Field_1 := 16#0#;
      --  Start/Stop Transmission Command When this bit is set, transmission is
      --  placed in the Running state, and the DMA checks the Transmit List at
      --  the current position for a frame to be transmitted. Descriptor
      --  acquisition is attempted either from the current position in the
      --  list, which is the Transmit List Base Address set by the
      --  DMA_TRANS_DES_ADDR register or from the position retained when
      --  transmission was stopped previously. If the current descriptor is not
      --  owned by the DMA, transmission enters the Suspended state and
      --  Transmit Buffer Unavailable (DMA_STAT register, bit 2) is set. The
      --  Start Transmission command is effective only when transmission is
      --  stopped. If the command is issued before setting the
      --  DMA_TRANS_DES_ADDR register, then the DMA behavior is unpredictable.
      --  When this bit is reset, the transmission process is placed in the
      --  Stopped state after completing the transmission of the current frame.
      --  The Next Descriptor position in the Transmit List is saved, and
      --  becomes the current position when transmission is restarted. The stop
      --  transmission command is effective only the transmission of the
      --  current frame is complete or when the transmission is in the
      --  Suspended state.
      ST         : DMA_OP_MODE_ST_Field := 16#0#;
      --  Transmit threshold control These three bits control the threshold
      --  level of the MTL Transmit FIFO. Transmission starts when the frame
      --  size within the MTL Transmit FIFO is larger than the threshold. In
      --  addition, full frames with a length less than the threshold are also
      --  transmitted. These bits are used only when the TSF bit (Bit 21) is
      --  reset. 000 = 64 001 = 128 010 = 192 011 = 256 100 = 40 101 = 32 110 =
      --  24 111 = 16
      TTC        : DMA_OP_MODE_TTC_Field := 16#0#;
      --  Reserved
      RESERVED_3 : DMA_OP_MODE_RESERVED_Field_2 := 16#0#;
      --  Flush transmit FIFO This register field can be read by the
      --  application (Read), can be set to 1 by the application with a
      --  register write of 1 (Write Set), and is cleared to 0 by the Ethernet
      --  core (Self Clear). The application cannot clear this type of field,
      --  and a register write of 0 to this bit has no effect on this field.
      --  When this bit is set, the transmit FIFO controller logic is reset to
      --  its default values and thus all data in the Tx FIFO is lost/flushed.
      --  This bit is cleared internally when the flushing operation is
      --  completed fully. The Operation Mode register should not be written to
      --  until this bit is cleared. The data which is already accepted by the
      --  MAC transmitter will not be flushed. It will be scheduled for
      --  transmission and will result in underflow and runt frame
      --  transmission. The flush operation completes only after emptying the
      --  TxFIFO of its contents and all the pending Transmit Status of the
      --  transmitted frames are accepted by the host. In order to complete
      --  this flush operation, the PHY transmit clock is required to be
      --  active.
      FTF        : DMA_OP_MODE_FTF_Field := 16#0#;
      --  Reserved
      RESERVED_4 : DMA_OP_MODE_RESERVED_Field := 16#0#;
      --  Reserved
      RESERVED_5 : DMA_OP_MODE_RESERVED_Field_3 := 16#0#;
      --  Disable flushing of received frames When this bit is set, the RxDMA
      --  does not flush any frames due to the unavailability of receive
      --  descriptors/buffers as it does normally when this bit is reset.
      --  (See).
      DFF        : DMA_OP_MODE_DFF_Field := 16#0#;
      --  Reserved
      RESERVED_6 : DMA_OP_MODE_RESERVED_Field_4 :=
                    (As_Array => False, Val => 16#0#);
      --  Reserved
      RESERVED_7 : DMA_OP_MODE_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_OP_MODE_Register use record
      RESERVED   at 0 range 0 .. 0;
      SR         at 0 range 1 .. 1;
      OSF        at 0 range 2 .. 2;
      RTC        at 0 range 3 .. 4;
      RESERVED_1 at 0 range 5 .. 5;
      FUF        at 0 range 6 .. 6;
      FEF        at 0 range 7 .. 7;
      RESERVED_2 at 0 range 8 .. 12;
      ST         at 0 range 13 .. 13;
      TTC        at 0 range 14 .. 16;
      RESERVED_3 at 0 range 17 .. 19;
      FTF        at 0 range 20 .. 20;
      RESERVED_4 at 0 range 21 .. 21;
      RESERVED_5 at 0 range 22 .. 23;
      DFF        at 0 range 24 .. 24;
      RESERVED_6 at 0 range 25 .. 26;
      RESERVED_7 at 0 range 27 .. 31;
   end record;

   -------------------------
   -- DMA_INT_EN_Register --
   -------------------------

   subtype DMA_INT_EN_TIE_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_INT_EN_TSE_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_INT_EN_TUE_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_INT_EN_TJE_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_INT_EN_OVE_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_INT_EN_UNE_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_INT_EN_RIE_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_INT_EN_RUE_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_INT_EN_RSE_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_INT_EN_RWE_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_INT_EN_ETE_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_INT_EN_RESERVED_Field is Interfaces.Bit_Types.UInt2;
   subtype DMA_INT_EN_FBE_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_INT_EN_ERE_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_INT_EN_AIE_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_INT_EN_NIE_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_INT_EN_RESERVED_Field_1 is Interfaces.Bit_Types.UInt15;

   --  Interrupt enable register
   type DMA_INT_EN_Register is record
      --  Transmit interrupt enable When this bit is set with Normal Interrupt
      --  Summary Enable (bit 16 in this register), Transmit Interrupt is
      --  enabled. When this bit is reset, Transmit Interrupt is disabled.
      TIE        : DMA_INT_EN_TIE_Field := 16#0#;
      --  Transmit stopped enable When this bit is set with Abnormal Interrupt
      --  Summary Enable (bit 15 in this register), Transmission Stopped
      --  Interrupt is enabled. When this bit is reset, Transmission Stopped
      --  Interrupt is disabled.
      TSE        : DMA_INT_EN_TSE_Field := 16#0#;
      --  Transmit buffer unavailable enable When this bit is set with Normal
      --  Interrupt Summary Enable (bit 16 in this register), Transmit Buffer
      --  Unavailable Interrupt is enabled. When this bit is reset, Transmit
      --  Buffer Unavailable Interrupt is disabled.
      TUE        : DMA_INT_EN_TUE_Field := 16#0#;
      --  Transmit jabber timeout enable When this bit is set with Abnormal
      --  Interrupt Summary Enable (bit 15 in this register), Transmit Jabber
      --  Timeout Interrupt is enabled. When this bit is reset, Transmit Jabber
      --  Timeout Interrupt is disabled.
      TJE        : DMA_INT_EN_TJE_Field := 16#0#;
      --  Overflow interrupt enable When this bit is set with Abnormal
      --  Interrupt Summary Enable (bit 15 in this register), Receive Overflow
      --  Interrupt is enabled. When this bit is reset, Overflow Interrupt is
      --  disabled.
      OVE        : DMA_INT_EN_OVE_Field := 16#0#;
      --  Underflow interrupt enable When this bit is set with Abnormal
      --  Interrupt Summary Enable (bit 15 in this register), Transmit
      --  Underflow Interrupt is enabled. When this bit is reset, Underflow
      --  Interrupt is disabled.
      UNE        : DMA_INT_EN_UNE_Field := 16#0#;
      --  Receive interrupt enable When this bit is set with Normal Interrupt
      --  Summary Enable (bit 16 in this register), Receive Interrupt is
      --  enabled. When this bit is reset, Receive Interrupt is disabled.
      RIE        : DMA_INT_EN_RIE_Field := 16#0#;
      --  Receive buffer unavailable enable When this bit is set with Abnormal
      --  Interrupt Summary Enable (bit 15 in this register), Receive Buffer
      --  Unavailable Interrupt is enabled. When this bit is reset, the Receive
      --  Buffer Unavailable Interrupt is disabled.
      RUE        : DMA_INT_EN_RUE_Field := 16#0#;
      --  Received stopped enable When this bit is set with Abnormal Interrupt
      --  Summary Enable (bit 15 in this register), Receive Stopped Interrupt
      --  is enabled. When this bit is reset, Receive Stopped Interrupt is
      --  disabled.
      RSE        : DMA_INT_EN_RSE_Field := 16#0#;
      --  Receive watchdog timeout enable When this bit is set with Abnormal
      --  Interrupt Summary Enable (bit 15 in this register), the Receive
      --  Watchdog Timeout Interrupt is enabled. When this bit is reset,
      --  Receive Watchdog Timeout Interrupt is disabled.
      RWE        : DMA_INT_EN_RWE_Field := 16#0#;
      --  Early transmit interrupt enable When this bit is set with an Abnormal
      --  Interrupt Summary Enable (bit 15 in this register), Early Transmit
      --  Interrupt is enabled. When this bit is reset, Early Transmit
      --  Interrupt is disabled.
      ETE        : DMA_INT_EN_ETE_Field := 16#0#;
      --  Reserved
      RESERVED   : DMA_INT_EN_RESERVED_Field := 16#0#;
      --  Fatal bus error enable When this bit is set with Abnormal Interrupt
      --  Summary Enable (bit 15 in this register), the Fatal Bus Error
      --  Interrupt is enabled. When this bit is reset, Fatal Bus Error Enable
      --  Interrupt is disabled.
      FBE        : DMA_INT_EN_FBE_Field := 16#0#;
      --  Early receive interrupt enable When this bit is set with Normal
      --  Interrupt Summary Enable (bit 16 in this register), Early Receive
      --  Interrupt is enabled. When this bit is reset, Early Receive Interrupt
      --  is disabled.
      ERE        : DMA_INT_EN_ERE_Field := 16#0#;
      --  Abnormal interrupt summary enable When this bit is set, an Abnormal
      --  Interrupt is enabled. When this bit is reset, an Abnormal Interrupt
      --  is disabled. This bit enables the following bits DMA_STAT register,
      --  bit 1: Transmit process stopped DMA_STAT register, bit 3: Transmit
      --  jabber timeout DMA_STAT register, bit 4: Receive overflow DMA_STAT
      --  register, bit 5: Transmit underflow DMA_STAT register, bit 7:
      --  Receiver buffer unavailable DMA_STAT register, bit 8: Receive process
      --  stopped DMA_STAT register, bit 9: Receive watchdog timeout DMA_STAT
      --  register, bit 10: Early transmit interrupt DMA_STAT register, bit 13:
      --  Fatal bus error
      AIE        : DMA_INT_EN_AIE_Field := 16#0#;
      --  Normal interrupt summary enable When this bit is set, a normal
      --  interrupt is enabled. When this bit is reset, a normal interrupt is
      --  disabled. This bit enables the following bits: DMA_STAT register, bit
      --  0: Transmit interrupt DMA_STAT register, bit 2: Transmit buffer
      --  unavailable DMA_STAT register, bit 6: Receive interrupt DMA_STAT
      --  register, bit 14: Early receive interrupt
      NIE        : DMA_INT_EN_NIE_Field := 16#0#;
      --  Reserved
      RESERVED_1 : DMA_INT_EN_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_INT_EN_Register use record
      TIE        at 0 range 0 .. 0;
      TSE        at 0 range 1 .. 1;
      TUE        at 0 range 2 .. 2;
      TJE        at 0 range 3 .. 3;
      OVE        at 0 range 4 .. 4;
      UNE        at 0 range 5 .. 5;
      RIE        at 0 range 6 .. 6;
      RUE        at 0 range 7 .. 7;
      RSE        at 0 range 8 .. 8;
      RWE        at 0 range 9 .. 9;
      ETE        at 0 range 10 .. 10;
      RESERVED   at 0 range 11 .. 12;
      FBE        at 0 range 13 .. 13;
      ERE        at 0 range 14 .. 14;
      AIE        at 0 range 15 .. 15;
      NIE        at 0 range 16 .. 16;
      RESERVED_1 at 0 range 17 .. 31;
   end record;

   -----------------------------
   -- DMA_MFRM_BUFOF_Register --
   -----------------------------

   subtype DMA_MFRM_BUFOF_FMC_Field is Interfaces.Bit_Types.Short;
   subtype DMA_MFRM_BUFOF_OC_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_MFRM_BUFOF_FMA_Field is Interfaces.Bit_Types.UInt11;
   subtype DMA_MFRM_BUFOF_OF_Field is Interfaces.Bit_Types.Bit;
   subtype DMA_MFRM_BUFOF_RESERVED_Field is Interfaces.Bit_Types.UInt3;

   --  Missed frame and buffer overflow register
   type DMA_MFRM_BUFOF_Register is record
      --  Read-only. Number of frames missed This register field can be read by
      --  the application (Read), can be set to 1 by the Ethernet core on a
      --  certain internal event (Self Set), and is automatically cleared to 0
      --  on a register read. A register write of 0 has no effect on this
      --  field. Indicates the number of frames missed by the controller due to
      --  the Host Receive Buffer being unavailable. This counter is
      --  incremented each time the DMA discards an incoming frame. The counter
      --  is cleared when this register is read with.
      FMC      : DMA_MFRM_BUFOF_FMC_Field;
      --  Read-only. Overflow bit for missed frame counter This register field
      --  can be read by the application (Read), can be set to 1 by the
      --  Ethernet core on a certain internal event (Self Set), and is
      --  automatically cleared to 0 on a register read. A register write of 0
      --  has no effect on this field.
      OC       : DMA_MFRM_BUFOF_OC_Field;
      --  Read-only. Number of frames missed by the application This register
      --  field can be read by the application (Read), can be set to 1 by the
      --  Ethernet core on a certain internal event (Self Set), and is
      --  automatically cleared to 0 on a register read. A register write of 0
      --  has no effect on this field. Indicates the number of frames missed by
      --  the application. This counter is incremented each time the MTL
      --  asserts the sideband signal. The counter is cleared when this
      --  register is read with .
      FMA      : DMA_MFRM_BUFOF_FMA_Field;
      --  Read-only. Overflow bit for FIFO overflow counter This register field
      --  can be read by the application (Read), can be set to 1 by the
      --  Ethernet core on a certain internal event (Self Set), and is
      --  automatically cleared to 0 on a register read. A register write of 0
      --  has no effect on this field.
      OF_k     : DMA_MFRM_BUFOF_OF_Field;
      --  Read-only. Reserved
      RESERVED : DMA_MFRM_BUFOF_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_MFRM_BUFOF_Register use record
      FMC      at 0 range 0 .. 15;
      OC       at 0 range 16 .. 16;
      FMA      at 0 range 17 .. 27;
      OF_k     at 0 range 28 .. 28;
      RESERVED at 0 range 29 .. 31;
   end record;

   ------------------------------
   -- DMA_REC_INT_WDT_Register --
   ------------------------------

   subtype DMA_REC_INT_WDT_RIWT_Field is Interfaces.Bit_Types.Byte;
   subtype DMA_REC_INT_WDT_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  Receive interrupt watchdog timer register
   type DMA_REC_INT_WDT_Register is record
      --  RI watchdog timeout Indicates the number of system clock cycles
      --  multiplied by 256 for which the watchdog timer is set. The watchdog
      --  timer gets triggered with the programmed value after the RxDMA
      --  completes the transfer of a frame for which the RI status bit is not
      --  set due to the setting in the corresponding descriptor RDES1[31].
      --  When the watch-dog timer runs out, the RI bit is set and the timer is
      --  stopped. The watchdog timer is reset when RI bit is set high due to
      --  automatic setting of RI as per RDES1[31] of any received frame.
      RIWT     : DMA_REC_INT_WDT_RIWT_Field := 16#0#;
      --  Reserved
      RESERVED : DMA_REC_INT_WDT_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_REC_INT_WDT_Register use record
      RIWT     at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Ethernet
   type ETHERNET_Peripheral is record
      --  MAC configuration register
      MAC_CONFIG            : MAC_CONFIG_Register;
      --  MAC frame filter
      MAC_FRAME_FILTER      : MAC_FRAME_FILTER_Register;
      --  Hash table high register
      MAC_HASHTABLE_HIGH    : Interfaces.Bit_Types.Word;
      --  Hash table low register
      MAC_HASHTABLE_LOW     : Interfaces.Bit_Types.Word;
      --  MII address register
      MAC_MII_ADDR          : MAC_MII_ADDR_Register;
      --  MII data register
      MAC_MII_DATA          : MAC_MII_DATA_Register;
      --  Flow control register
      MAC_FLOW_CTRL         : MAC_FLOW_CTRL_Register;
      --  VLAN tag register
      MAC_VLAN_TAG          : MAC_VLAN_TAG_Register;
      --  Debug register
      MAC_DEBUG             : MAC_DEBUG_Register;
      --  Remote wake-up frame filter
      MAC_RWAKE_FRFLT       : Interfaces.Bit_Types.Word;
      --  PMT control and status
      MAC_PMT_CTRL_STAT     : MAC_PMT_CTRL_STAT_Register;
      --  Interrupt status register
      MAC_INTR              : MAC_INTR_Register;
      --  Interrupt mask register
      MAC_INTR_MASK         : MAC_INTR_MASK_Register;
      --  MAC address 0 high register
      MAC_ADDR0_HIGH        : MAC_ADDR0_HIGH_Register;
      --  MAC address 0 low register
      MAC_ADDR0_LOW         : Interfaces.Bit_Types.Word;
      --  Time stamp control register
      MAC_TIMESTP_CTRL      : MAC_TIMESTP_CTRL_Register;
      --  Sub-second increment register
      SUBSECOND_INCR        : SUBSECOND_INCR_Register;
      --  System time seconds register
      SECONDS               : Interfaces.Bit_Types.Word;
      --  System time nanoseconds register
      NANOSECONDS           : NANOSECONDS_Register;
      --  System time seconds update register
      SECONDSUPDATE         : Interfaces.Bit_Types.Word;
      --  System time nanoseconds update register
      NANOSECONDSUPDATE     : NANOSECONDSUPDATE_Register;
      --  Time stamp addend register
      ADDEND                : Interfaces.Bit_Types.Word;
      --  Target time seconds register
      TARGETSECONDS         : Interfaces.Bit_Types.Word;
      --  Target time nanoseconds register
      TARGETNANOSECONDS     : TARGETNANOSECONDS_Register;
      --  System time higher word seconds register
      HIGHWORD              : HIGHWORD_Register;
      --  Time stamp status register
      TIMESTAMPSTAT         : TIMESTAMPSTAT_Register;
      --  Bus Mode Register
      DMA_BUS_MODE          : DMA_BUS_MODE_Register;
      --  Transmit poll demand register
      DMA_TRANS_POLL_DEMAND : Interfaces.Bit_Types.Word;
      --  Receive poll demand register
      DMA_REC_POLL_DEMAND   : Interfaces.Bit_Types.Word;
      --  Receive descriptor list address register
      DMA_REC_DES_ADDR      : Interfaces.Bit_Types.Word;
      --  Transmit descriptor list address register
      DMA_TRANS_DES_ADDR    : Interfaces.Bit_Types.Word;
      --  Status register
      DMA_STAT              : DMA_STAT_Register;
      --  Operation mode register
      DMA_OP_MODE           : DMA_OP_MODE_Register;
      --  Interrupt enable register
      DMA_INT_EN            : DMA_INT_EN_Register;
      --  Missed frame and buffer overflow register
      DMA_MFRM_BUFOF        : DMA_MFRM_BUFOF_Register;
      --  Receive interrupt watchdog timer register
      DMA_REC_INT_WDT       : DMA_REC_INT_WDT_Register;
      --  Current host transmit descriptor register
      DMA_CURHOST_TRANS_DES : Interfaces.Bit_Types.Word;
      --  Current host receive descriptor register
      DMA_CURHOST_REC_DES   : Interfaces.Bit_Types.Word;
      --  Current host transmit buffer address register
      DMA_CURHOST_TRANS_BUF : Interfaces.Bit_Types.Word;
      --  Current host receive buffer address register
      DMA_CURHOST_REC_BUF   : Interfaces.Bit_Types.Word;
   end record
     with Volatile;

   for ETHERNET_Peripheral use record
      MAC_CONFIG            at 0 range 0 .. 31;
      MAC_FRAME_FILTER      at 4 range 0 .. 31;
      MAC_HASHTABLE_HIGH    at 8 range 0 .. 31;
      MAC_HASHTABLE_LOW     at 12 range 0 .. 31;
      MAC_MII_ADDR          at 16 range 0 .. 31;
      MAC_MII_DATA          at 20 range 0 .. 31;
      MAC_FLOW_CTRL         at 24 range 0 .. 31;
      MAC_VLAN_TAG          at 28 range 0 .. 31;
      MAC_DEBUG             at 36 range 0 .. 31;
      MAC_RWAKE_FRFLT       at 40 range 0 .. 31;
      MAC_PMT_CTRL_STAT     at 44 range 0 .. 31;
      MAC_INTR              at 56 range 0 .. 31;
      MAC_INTR_MASK         at 60 range 0 .. 31;
      MAC_ADDR0_HIGH        at 64 range 0 .. 31;
      MAC_ADDR0_LOW         at 68 range 0 .. 31;
      MAC_TIMESTP_CTRL      at 1792 range 0 .. 31;
      SUBSECOND_INCR        at 1796 range 0 .. 31;
      SECONDS               at 1800 range 0 .. 31;
      NANOSECONDS           at 1804 range 0 .. 31;
      SECONDSUPDATE         at 1808 range 0 .. 31;
      NANOSECONDSUPDATE     at 1812 range 0 .. 31;
      ADDEND                at 1816 range 0 .. 31;
      TARGETSECONDS         at 1820 range 0 .. 31;
      TARGETNANOSECONDS     at 1824 range 0 .. 31;
      HIGHWORD              at 1828 range 0 .. 31;
      TIMESTAMPSTAT         at 1832 range 0 .. 31;
      DMA_BUS_MODE          at 4096 range 0 .. 31;
      DMA_TRANS_POLL_DEMAND at 4100 range 0 .. 31;
      DMA_REC_POLL_DEMAND   at 4104 range 0 .. 31;
      DMA_REC_DES_ADDR      at 4108 range 0 .. 31;
      DMA_TRANS_DES_ADDR    at 4112 range 0 .. 31;
      DMA_STAT              at 4116 range 0 .. 31;
      DMA_OP_MODE           at 4120 range 0 .. 31;
      DMA_INT_EN            at 4124 range 0 .. 31;
      DMA_MFRM_BUFOF        at 4128 range 0 .. 31;
      DMA_REC_INT_WDT       at 4132 range 0 .. 31;
      DMA_CURHOST_TRANS_DES at 4168 range 0 .. 31;
      DMA_CURHOST_REC_DES   at 4172 range 0 .. 31;
      DMA_CURHOST_TRANS_BUF at 4176 range 0 .. 31;
      DMA_CURHOST_REC_BUF   at 4180 range 0 .. 31;
   end record;

   --  Ethernet
   ETHERNET_Periph : aliased ETHERNET_Peripheral
     with Import, Address => ETHERNET_Base;

end Interfaces.LPC43xxC.ETHERNET;
