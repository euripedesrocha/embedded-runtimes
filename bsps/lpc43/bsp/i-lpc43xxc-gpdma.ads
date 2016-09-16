--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.LPC43xxC.GPDMA is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ----------------------
   -- INTSTAT_Register --
   ----------------------

   ---------------------
   -- INTSTAT.INTSTAT --
   ---------------------

   --  INTSTAT array element
   subtype INTSTAT_Element is Interfaces.Bit_Types.Bit;

   --  INTSTAT array
   type INTSTAT_Field_Array is array (0 .. 7) of INTSTAT_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for INTSTAT
   type INTSTAT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INTSTAT as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  INTSTAT as an array
            Arr : INTSTAT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for INTSTAT_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype INTSTAT_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  DMA Interrupt Status Register
   type INTSTAT_Register is record
      --  Read-only. Status of DMA channel interrupts after masking. Each bit
      --  represents one channel: 0 - the corresponding channel has no active
      --  interrupt request. 1 - the corresponding channel does have an active
      --  interrupt request.
      INTSTAT  : INTSTAT_Field;
      --  Read-only. Reserved. Read undefined.
      RESERVED : INTSTAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSTAT_Register use record
      INTSTAT  at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   ------------------------
   -- INTTCSTAT_Register --
   ------------------------

   -------------------------
   -- INTTCSTAT.INTTCSTAT --
   -------------------------

   --  INTTCSTAT array element
   subtype INTTCSTAT_Element is Interfaces.Bit_Types.Bit;

   --  INTTCSTAT array
   type INTTCSTAT_Field_Array is array (0 .. 7) of INTTCSTAT_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for INTTCSTAT
   type INTTCSTAT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INTTCSTAT as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  INTTCSTAT as an array
            Arr : INTTCSTAT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for INTTCSTAT_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype INTTCSTAT_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  DMA Interrupt Terminal Count Request Status Register
   type INTTCSTAT_Register is record
      --  Read-only. Terminal count interrupt request status for DMA channels.
      --  Each bit represents one channel: 0 - the corresponding channel has no
      --  active terminal count interrupt request. 1 - the corresponding
      --  channel does have an active terminal count interrupt request.
      INTTCSTAT : INTTCSTAT_Field;
      --  Read-only. Reserved. Read undefined.
      RESERVED  : INTTCSTAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTTCSTAT_Register use record
      INTTCSTAT at 0 range 0 .. 7;
      RESERVED  at 0 range 8 .. 31;
   end record;

   -------------------------
   -- INTTCCLEAR_Register --
   -------------------------

   ---------------------------
   -- INTTCCLEAR.INTTCCLEAR --
   ---------------------------

   --  INTTCCLEAR array element
   subtype INTTCCLEAR_Element is Interfaces.Bit_Types.Bit;

   --  INTTCCLEAR array
   type INTTCCLEAR_Field_Array is array (0 .. 7) of INTTCCLEAR_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for INTTCCLEAR
   type INTTCCLEAR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INTTCCLEAR as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  INTTCCLEAR as an array
            Arr : INTTCCLEAR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for INTTCCLEAR_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype INTTCCLEAR_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  DMA Interrupt Terminal Count Request Clear Register
   type INTTCCLEAR_Register is record
      --  Write-only. Allows clearing the Terminal count interrupt request
      --  (IntTCStat) for DMA channels. Each bit represents one channel: 0 -
      --  writing 0 has no effect. 1 - clears the corresponding channel
      --  terminal count interrupt.
      INTTCCLEAR : INTTCCLEAR_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Reserved. Read undefined. Write reserved bits as zero.
      RESERVED   : INTTCCLEAR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTTCCLEAR_Register use record
      INTTCCLEAR at 0 range 0 .. 7;
      RESERVED   at 0 range 8 .. 31;
   end record;

   -------------------------
   -- INTERRSTAT_Register --
   -------------------------

   ---------------------------
   -- INTERRSTAT.INTERRSTAT --
   ---------------------------

   --  INTERRSTAT array element
   subtype INTERRSTAT_Element is Interfaces.Bit_Types.Bit;

   --  INTERRSTAT array
   type INTERRSTAT_Field_Array is array (0 .. 7) of INTERRSTAT_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for INTERRSTAT
   type INTERRSTAT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INTERRSTAT as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  INTERRSTAT as an array
            Arr : INTERRSTAT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for INTERRSTAT_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype INTERRSTAT_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  DMA Interrupt Error Status Register
   type INTERRSTAT_Register is record
      --  Read-only. Interrupt error status for DMA channels. Each bit
      --  represents one channel: 0 - the corresponding channel has no active
      --  error interrupt request. 1 - the corresponding channel does have an
      --  active error interrupt request.
      INTERRSTAT : INTERRSTAT_Field;
      --  Read-only. Reserved. Read undefined.
      RESERVED   : INTERRSTAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTERRSTAT_Register use record
      INTERRSTAT at 0 range 0 .. 7;
      RESERVED   at 0 range 8 .. 31;
   end record;

   ------------------------
   -- INTERRCLR_Register --
   ------------------------

   -------------------------
   -- INTERRCLR.INTERRCLR --
   -------------------------

   --  INTERRCLR array element
   subtype INTERRCLR_Element is Interfaces.Bit_Types.Bit;

   --  INTERRCLR array
   type INTERRCLR_Field_Array is array (0 .. 7) of INTERRCLR_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for INTERRCLR
   type INTERRCLR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INTERRCLR as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  INTERRCLR as an array
            Arr : INTERRCLR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for INTERRCLR_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype INTERRCLR_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  DMA Interrupt Error Clear Register
   type INTERRCLR_Register is record
      --  Write-only. Writing a 1 clears the error interrupt request
      --  (IntErrStat) for DMA channels. Each bit represents one channel: 0 -
      --  writing 0 has no effect. 1 - clears the corresponding channel error
      --  interrupt.
      INTERRCLR : INTERRCLR_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Reserved. Read undefined. Write reserved bits as zero.
      RESERVED  : INTERRCLR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTERRCLR_Register use record
      INTERRCLR at 0 range 0 .. 7;
      RESERVED  at 0 range 8 .. 31;
   end record;

   ---------------------------
   -- RAWINTTCSTAT_Register --
   ---------------------------

   -------------------------------
   -- RAWINTTCSTAT.RAWINTTCSTAT --
   -------------------------------

   --  RAWINTTCSTAT array element
   subtype RAWINTTCSTAT_Element is Interfaces.Bit_Types.Bit;

   --  RAWINTTCSTAT array
   type RAWINTTCSTAT_Field_Array is array (0 .. 7) of RAWINTTCSTAT_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for RAWINTTCSTAT
   type RAWINTTCSTAT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RAWINTTCSTAT as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  RAWINTTCSTAT as an array
            Arr : RAWINTTCSTAT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RAWINTTCSTAT_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype RAWINTTCSTAT_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  DMA Raw Interrupt Terminal Count Status Register
   type RAWINTTCSTAT_Register is record
      --  Read-only. Status of the terminal count interrupt for DMA channels
      --  prior to masking. Each bit represents one channel: 0 - the
      --  corresponding channel has no active terminal count interrupt request.
      --  1 - the corresponding channel does have an active terminal count
      --  interrupt request.
      RAWINTTCSTAT : RAWINTTCSTAT_Field;
      --  Read-only. Reserved. Read undefined.
      RESERVED     : RAWINTTCSTAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAWINTTCSTAT_Register use record
      RAWINTTCSTAT at 0 range 0 .. 7;
      RESERVED     at 0 range 8 .. 31;
   end record;

   ----------------------------
   -- RAWINTERRSTAT_Register --
   ----------------------------

   ---------------------------------
   -- RAWINTERRSTAT.RAWINTERRSTAT --
   ---------------------------------

   --  RAWINTERRSTAT array element
   subtype RAWINTERRSTAT_Element is Interfaces.Bit_Types.Bit;

   --  RAWINTERRSTAT array
   type RAWINTERRSTAT_Field_Array is array (0 .. 7) of RAWINTERRSTAT_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for RAWINTERRSTAT
   type RAWINTERRSTAT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RAWINTERRSTAT as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  RAWINTERRSTAT as an array
            Arr : RAWINTERRSTAT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RAWINTERRSTAT_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype RAWINTERRSTAT_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  DMA Raw Error Interrupt Status Register
   type RAWINTERRSTAT_Register is record
      --  Read-only. Status of the error interrupt for DMA channels prior to
      --  masking. Each bit represents one channel: 0 - the corresponding
      --  channel has no active error interrupt request. 1 - the corresponding
      --  channel does have an active error interrupt request.
      RAWINTERRSTAT : RAWINTERRSTAT_Field;
      --  Read-only. Reserved. Read undefined.
      RESERVED      : RAWINTERRSTAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAWINTERRSTAT_Register use record
      RAWINTERRSTAT at 0 range 0 .. 7;
      RESERVED      at 0 range 8 .. 31;
   end record;

   ------------------------
   -- ENBLDCHNS_Register --
   ------------------------

   -------------------------------
   -- ENBLDCHNS.ENABLEDCHANNELS --
   -------------------------------

   --  ENBLDCHNS_ENABLEDCHANNELS array element
   subtype ENBLDCHNS_ENABLEDCHANNELS_Element is Interfaces.Bit_Types.Bit;

   --  ENBLDCHNS_ENABLEDCHANNELS array
   type ENBLDCHNS_ENABLEDCHANNELS_Field_Array is array (0 .. 7)
     of ENBLDCHNS_ENABLEDCHANNELS_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for ENBLDCHNS_ENABLEDCHANNELS
   type ENBLDCHNS_ENABLEDCHANNELS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENABLEDCHANNELS as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  ENABLEDCHANNELS as an array
            Arr : ENBLDCHNS_ENABLEDCHANNELS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ENBLDCHNS_ENABLEDCHANNELS_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype ENBLDCHNS_RESERVED_Field is Interfaces.Bit_Types.UInt24;

   --  DMA Enabled Channel Register
   type ENBLDCHNS_Register is record
      --  Read-only. Enable status for DMA channels. Each bit represents one
      --  channel: 0 - DMA channel is disabled. 1 - DMA channel is enabled.
      ENABLEDCHANNELS : ENBLDCHNS_ENABLEDCHANNELS_Field;
      --  Read-only. Reserved. Read undefined.
      RESERVED        : ENBLDCHNS_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENBLDCHNS_Register use record
      ENABLEDCHANNELS at 0 range 0 .. 7;
      RESERVED        at 0 range 8 .. 31;
   end record;

   -----------------------
   -- SOFTBREQ_Register --
   -----------------------

   -----------------------
   -- SOFTBREQ.SOFTBREQ --
   -----------------------

   --  SOFTBREQ array element
   subtype SOFTBREQ_Element is Interfaces.Bit_Types.Bit;

   --  SOFTBREQ array
   type SOFTBREQ_Field_Array is array (0 .. 15) of SOFTBREQ_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for SOFTBREQ
   type SOFTBREQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SOFTBREQ as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  SOFTBREQ as an array
            Arr : SOFTBREQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SOFTBREQ_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype SOFTBREQ_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  DMA Software Burst Request Register
   type SOFTBREQ_Register is record
      --  Software burst request flags for each of 16 possible sources. Each
      --  bit represents one DMA request line or peripheral function (refer to
      --  Table 136 for peripheral hardware connections to the DMA controller):
      --  0 - writing 0 has no effect. 1 - writing 1 generates a DMA burst
      --  request for the corresponding request line.
      SOFTBREQ : SOFTBREQ_Field := (As_Array => False, Val => 16#0#);
      --  Reserved. Read undefined. Write reserved bits as zero.
      RESERVED : SOFTBREQ_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SOFTBREQ_Register use record
      SOFTBREQ at 0 range 0 .. 15;
      RESERVED at 0 range 16 .. 31;
   end record;

   -----------------------
   -- SOFTSREQ_Register --
   -----------------------

   -----------------------
   -- SOFTSREQ.SOFTSREQ --
   -----------------------

   --  SOFTSREQ array element
   subtype SOFTSREQ_Element is Interfaces.Bit_Types.Bit;

   --  SOFTSREQ array
   type SOFTSREQ_Field_Array is array (0 .. 15) of SOFTSREQ_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for SOFTSREQ
   type SOFTSREQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SOFTSREQ as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  SOFTSREQ as an array
            Arr : SOFTSREQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SOFTSREQ_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype SOFTSREQ_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  DMA Software Single Request Register
   type SOFTSREQ_Register is record
      --  Software single transfer request flags for each of 16 possible
      --  sources. Each bit represents one DMA request line or peripheral
      --  function: 0 - writing 0 has no effect. 1 - writing 1 generates a DMA
      --  single transfer request for the corresponding request line.
      SOFTSREQ : SOFTSREQ_Field := (As_Array => False, Val => 16#0#);
      --  Reserved. Read undefined. Write reserved bits as zero.
      RESERVED : SOFTSREQ_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SOFTSREQ_Register use record
      SOFTSREQ at 0 range 0 .. 15;
      RESERVED at 0 range 16 .. 31;
   end record;

   ------------------------
   -- SOFTLBREQ_Register --
   ------------------------

   -------------------------
   -- SOFTLBREQ.SOFTLBREQ --
   -------------------------

   --  SOFTLBREQ array element
   subtype SOFTLBREQ_Element is Interfaces.Bit_Types.Bit;

   --  SOFTLBREQ array
   type SOFTLBREQ_Field_Array is array (0 .. 15) of SOFTLBREQ_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for SOFTLBREQ
   type SOFTLBREQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SOFTLBREQ as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  SOFTLBREQ as an array
            Arr : SOFTLBREQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SOFTLBREQ_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype SOFTLBREQ_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  DMA Software Last Burst Request Register
   type SOFTLBREQ_Register is record
      --  Software last burst request flags for each of 16 possible sources.
      --  Each bit represents one DMA request line or peripheral function: 0 -
      --  writing 0 has no effect. 1 - writing 1 generates a DMA last burst
      --  request for the corresponding request line.
      SOFTLBREQ : SOFTLBREQ_Field := (As_Array => False, Val => 16#0#);
      --  Reserved. Read undefined. Write reserved bits as zero.
      RESERVED  : SOFTLBREQ_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SOFTLBREQ_Register use record
      SOFTLBREQ at 0 range 0 .. 15;
      RESERVED  at 0 range 16 .. 31;
   end record;

   ------------------------
   -- SOFTLSREQ_Register --
   ------------------------

   -------------------------
   -- SOFTLSREQ.SOFTLSREQ --
   -------------------------

   --  SOFTLSREQ array element
   subtype SOFTLSREQ_Element is Interfaces.Bit_Types.Bit;

   --  SOFTLSREQ array
   type SOFTLSREQ_Field_Array is array (0 .. 15) of SOFTLSREQ_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for SOFTLSREQ
   type SOFTLSREQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SOFTLSREQ as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  SOFTLSREQ as an array
            Arr : SOFTLSREQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SOFTLSREQ_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype SOFTLSREQ_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  DMA Software Last Single Request Register
   type SOFTLSREQ_Register is record
      --  Software last single transfer request flags for each of 16 possible
      --  sources. Each bit represents one DMA request line or peripheral
      --  function: 0 - writing 0 has no effect. 1 - writing 1 generates a DMA
      --  last single transfer request for the corresponding request line.
      SOFTLSREQ : SOFTLSREQ_Field := (As_Array => False, Val => 16#0#);
      --  Reserved. Read undefined. Write reserved bits as zero.
      RESERVED  : SOFTLSREQ_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SOFTLSREQ_Register use record
      SOFTLSREQ at 0 range 0 .. 15;
      RESERVED  at 0 range 16 .. 31;
   end record;

   ---------------------
   -- CONFIG_Register --
   ---------------------

   --  DMA Controller enable:
   type ENUM is
     (
      --  Disabled (default). Disabling the DMA Controller reduces power
      --  consumption.
      Disabled_Default,
      --  Enabled
      Enabled)
     with Size => 1;
   for ENUM use
     (Disabled_Default => 0,
      Enabled => 1);

   --  AHB Master 0 endianness configuration:
   type ENUM_1 is
     (
      --  Little-endian mode (default).
      Little_Endian_Mode,
      --  Big-endian mode.
      Big_Endian_Mode)
     with Size => 1;
   for ENUM_1 use
     (Little_Endian_Mode => 0,
      Big_Endian_Mode => 1);

   --------------
   -- CONFIG.M --
   --------------

   --  CONFIG_M array
   type CONFIG_M_Field_Array is array (0 .. 1) of ENUM_1
     with Component_Size => 1, Size => 2;

   --  Type definition for CONFIG_M
   type CONFIG_M_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  M as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  M as an array
            Arr : CONFIG_M_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CONFIG_M_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CONFIG_RESERVED_Field is Interfaces.Bit_Types.UInt29;

   --  DMA Configuration Register
   type CONFIG_Register is record
      --  DMA Controller enable:
      E        : ENUM := Interfaces.LPC43xxC.GPDMA.Disabled_Default;
      --  AHB Master 0 endianness configuration:
      M        : CONFIG_M_Field := (As_Array => False, Val => 16#0#);
      --  Reserved. Read undefined. Write reserved bits as zero.
      RESERVED : CONFIG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFIG_Register use record
      E        at 0 range 0 .. 0;
      M        at 0 range 1 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -------------------
   -- SYNC_Register --
   -------------------

   -------------------
   -- SYNC.DMACSYNC --
   -------------------

   --  SYNC_DMACSYNC array element
   subtype SYNC_DMACSYNC_Element is Interfaces.Bit_Types.Bit;

   --  SYNC_DMACSYNC array
   type SYNC_DMACSYNC_Field_Array is array (0 .. 15) of SYNC_DMACSYNC_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for SYNC_DMACSYNC
   type SYNC_DMACSYNC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DMACSYNC as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  DMACSYNC as an array
            Arr : SYNC_DMACSYNC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SYNC_DMACSYNC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype SYNC_RESERVED_Field is Interfaces.Bit_Types.Short;

   --  DMA Synchronization Register
   type SYNC_Register is record
      --  Controls the synchronization logic for DMA request signals. Each bit
      --  represents one set of DMA request lines as described in the preceding
      --  text: 0 - synchronization logic for the corresponding DMA request
      --  signals are enabled. 1 - synchronization logic for the corresponding
      --  request line signals are disabled.
      DMACSYNC : SYNC_DMACSYNC_Field := (As_Array => False, Val => 16#0#);
      --  Reserved. Read undefined. Write reserved bits as zero.
      RESERVED : SYNC_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYNC_Register use record
      DMACSYNC at 0 range 0 .. 15;
      RESERVED at 0 range 16 .. 31;
   end record;

   -------------------
   -- CLLI_Register --
   -------------------

   --  AHB master select for loading the next LLI:
   type ENUM_2 is
     (
      --  AHB Master 0.
      Ahb_Master_0,
      --  AHB Master 1.
      Ahb_Master_1)
     with Size => 1;
   for ENUM_2 use
     (Ahb_Master_0 => 0,
      Ahb_Master_1 => 1);

   subtype CLLI0_R_Field is Interfaces.Bit_Types.Bit;
   subtype CLLI0_LLI_Field is Interfaces.Bit_Types.UInt30;

   --  DMA Channel Linked List Item Register
   type CLLI_Register is record
      --  AHB master select for loading the next LLI:
      LM  : ENUM_2 := Interfaces.LPC43xxC.GPDMA.Ahb_Master_0;
      --  Reserved, and must be written as 0, masked on read.
      R   : CLLI0_R_Field := 16#0#;
      --  Linked list item. Bits [31:2] of the address for the next LLI.
      --  Address bits [1:0] are 0.
      LLI : CLLI0_LLI_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLLI_Register use record
      LM  at 0 range 0 .. 0;
      R   at 0 range 1 .. 1;
      LLI at 0 range 2 .. 31;
   end record;

   -----------------------
   -- CCONTROL_Register --
   -----------------------

   subtype CCONTROL0_TRANSFERSIZE_Field is Interfaces.Bit_Types.UInt12;

   --  Source burst size. Indicates the number of transfers that make up a
   --  source burst. This value must be set to the burst size of the source
   --  peripheral, or if the source is memory, to the memory boundary size (see
   --  Figure 3). The burst size is the amount of data that is transferred when
   --  the BREQ signal goes active in the source peripheral.
   type ENUM_3 is
     (
      --  Source burst size = 1
      Source_Burst_1,
      --  Source burst size = 4
      Source_Burst_4,
      --  Source burst size = 8
      Source_Burst_8,
      --  Source burst size = 16
      Source_Burst_16,
      --  Source burst size = 32
      Source_Burst_32,
      --  Source burst size = 64
      Source_Burst_64,
      --  Source burst size = 128
      Source_Burst_128,
      --  Source burst size = 256
      Source_Burst_256)
     with Size => 3;
   for ENUM_3 use
     (Source_Burst_1 => 0,
      Source_Burst_4 => 1,
      Source_Burst_8 => 2,
      Source_Burst_16 => 3,
      Source_Burst_32 => 4,
      Source_Burst_64 => 5,
      Source_Burst_128 => 6,
      Source_Burst_256 => 7);

   --  Destination burst size. Indicates the number of transfers that make up a
   --  destination burst transfer request. This value must be set to the burst
   --  size of the destination peripheral or, if the destination is memory, to
   --  the memory boundary size. The burst size is the amount of data that is
   --  transferred when the BREQ signal goes active in the destination
   --  peripheral.
   type ENUM_4 is
     (
      --  Destination burst size = 1
      Destination_Burst_1,
      --  Destination burst size = 4
      Destination_Burst_4,
      --  Destination burst size = 8
      Destination_Burst_8,
      --  Destination burst size = 16
      Destination_Burst_16,
      --  Destination burst size = 32
      Destination_Burst_32,
      --  Destination burst size = 64
      Destination_Burst_64,
      --  Destination burst size = 128
      Destination_Burst_128,
      --  Destination burst size = 256
      Destination_Burst_256)
     with Size => 3;
   for ENUM_4 use
     (Destination_Burst_1 => 0,
      Destination_Burst_4 => 1,
      Destination_Burst_8 => 2,
      Destination_Burst_16 => 3,
      Destination_Burst_32 => 4,
      Destination_Burst_64 => 5,
      Destination_Burst_128 => 6,
      Destination_Burst_256 => 7);

   --  Source transfer width. Transfers wider than the AHB master bus width are
   --  illegal. The source and destination widths can be different from each
   --  other. The hardware automatically packs and unpacks the data as
   --  required. 0x3 to 0x7 - Reserved.
   type ENUM_5 is
     (
      --  Byte (8-bit)
      Byte_8_Bit,
      --  Halfword (16-bit)
      Halfword_16_Bit,
      --  Word (32-bit)
      Word_32_Bit)
     with Size => 3;
   for ENUM_5 use
     (Byte_8_Bit => 0,
      Halfword_16_Bit => 1,
      Word_32_Bit => 2);

   --  Source AHB master select:
   type ENUM_6 is
     (
      --  AHB Master 0 selected for source transfer.
      Ahb_Master_0_Selecte,
      --  AHB Master 1 selected for source transfer.
      Ahb_Master_1_Selecte)
     with Size => 1;
   for ENUM_6 use
     (Ahb_Master_0_Selecte => 0,
      Ahb_Master_1_Selecte => 1);

   --  Source increment:
   type ENUM_7 is
     (
      --  The source address is not incremented after each transfer.
      Not_Increment,
      --  The source address is incremented after each transfer.
      Increment)
     with Size => 1;
   for ENUM_7 use
     (Not_Increment => 0,
      Increment => 1);

   --  Destination increment:
   type ENUM_8 is
     (
      --  The destination address is not incremented after each transfer.
      The_Destination_Addr,
      --  The destination address is incremented after each transfer.
      The_Destination_Addr_1)
     with Size => 1;
   for ENUM_8 use
     (The_Destination_Addr => 0,
      The_Destination_Addr_1 => 1);

   --  Indicates that the access is in user mode or privileged mode:
   type ENUM_9 is
     (
      --  Access is in user mode
      Access_Is_In_User_Mo,
      --  Access is in privileged mode.
      Access_Is_In_Privile)
     with Size => 1;
   for ENUM_9 use
     (Access_Is_In_User_Mo => 0,
      Access_Is_In_Privile => 1);

   --  Indicates that the access is bufferable or not bufferable:
   type ENUM_10 is
     (
      --  Access is not bufferable.
      Access_Is_Not_Buffer,
      --  Access is bufferable.
      Access_Is_Bufferable)
     with Size => 1;
   for ENUM_10 use
     (Access_Is_Not_Buffer => 0,
      Access_Is_Bufferable => 1);

   --  Indicates that the access is cacheable or not cacheable:
   type ENUM_11 is
     (
      --  Access is not cacheable.
      Access_Is_Not_Cachea,
      --  Access is cacheable.
      Access_Is_Cacheable)
     with Size => 1;
   for ENUM_11 use
     (Access_Is_Not_Cachea => 0,
      Access_Is_Cacheable => 1);

   --  Terminal count interrupt enable bit.
   type ENUM_12 is
     (
      --  The terminal count interrupt is disabled.
      The_Terminal_Count_I,
      --  The terminal count interrupt is enabled.
      The_Terminal_Count_I_1)
     with Size => 1;
   for ENUM_12 use
     (The_Terminal_Count_I => 0,
      The_Terminal_Count_I_1 => 1);

   --  DMA Channel Control Register
   type CCONTROL_Register is record
      --  Transfer size in byte. A write to this field sets the size of the
      --  transfer when the DMA Controller is the flow controller. The transfer
      --  size value must be set before the channel is enabled. Transfer size
      --  is updated as data transfers are completed. A read from this field
      --  indicates the number of transfers completed on the destination bus.
      --  Reading the register when the channel is active does not give useful
      --  information because by the time that the software has processed the
      --  value read, the channel might have progressed. It is intended to be
      --  used only when a channel is enabled and then disabled. The transfer
      --  size value is not used if the DMA Controller is not the flow
      --  controller.
      TRANSFERSIZE : CCONTROL0_TRANSFERSIZE_Field := 16#0#;
      --  Source burst size. Indicates the number of transfers that make up a
      --  source burst. This value must be set to the burst size of the source
      --  peripheral, or if the source is memory, to the memory boundary size
      --  (see Figure 3). The burst size is the amount of data that is
      --  transferred when the BREQ signal goes active in the source
      --  peripheral.
      SBSIZE       : ENUM_3 := Interfaces.LPC43xxC.GPDMA.Source_Burst_1;
      --  Destination burst size. Indicates the number of transfers that make
      --  up a destination burst transfer request. This value must be set to
      --  the burst size of the destination peripheral or, if the destination
      --  is memory, to the memory boundary size. The burst size is the amount
      --  of data that is transferred when the BREQ signal goes active in the
      --  destination peripheral.
      DBSIZE       : ENUM_4 := Interfaces.LPC43xxC.GPDMA.Destination_Burst_1;
      --  Source transfer width. Transfers wider than the AHB master bus width
      --  are illegal. The source and destination widths can be different from
      --  each other. The hardware automatically packs and unpacks the data as
      --  required. 0x3 to 0x7 - Reserved.
      SWIDTH       : ENUM_5 := Interfaces.LPC43xxC.GPDMA.Byte_8_Bit;
      --  Destination transfer width. Transfers wider than the AHB master bus
      --  width are not supported. The source and destination widths can be
      --  different from each other. The hardware automatically packs and
      --  unpacks the data as required. 0x3 to 0x7 - Reserved.
      DWIDTH       : ENUM_5 := Interfaces.LPC43xxC.GPDMA.Byte_8_Bit;
      --  Source AHB master select:
      S            : ENUM_6 := Interfaces.LPC43xxC.GPDMA.Ahb_Master_0_Selecte;
      --  Destination AHB master select: Only Master1 can access a peripheral.
      --  Master0 can only access memory.
      D            : ENUM_6 := Interfaces.LPC43xxC.GPDMA.Ahb_Master_0_Selecte;
      --  Source increment:
      SI           : ENUM_7 := Interfaces.LPC43xxC.GPDMA.Not_Increment;
      --  Destination increment:
      DI           : ENUM_8 := Interfaces.LPC43xxC.GPDMA.The_Destination_Addr;
      --  Indicates that the access is in user mode or privileged mode:
      PROT1        : ENUM_9 := Interfaces.LPC43xxC.GPDMA.Access_Is_In_User_Mo;
      --  Indicates that the access is bufferable or not bufferable:
      PROT2        : ENUM_10 :=
                      Interfaces.LPC43xxC.GPDMA.Access_Is_Not_Buffer;
      --  Indicates that the access is cacheable or not cacheable:
      PROT3        : ENUM_11 :=
                      Interfaces.LPC43xxC.GPDMA.Access_Is_Not_Cachea;
      --  Terminal count interrupt enable bit.
      I            : ENUM_12 :=
                      Interfaces.LPC43xxC.GPDMA.The_Terminal_Count_I;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCONTROL_Register use record
      TRANSFERSIZE at 0 range 0 .. 11;
      SBSIZE       at 0 range 12 .. 14;
      DBSIZE       at 0 range 15 .. 17;
      SWIDTH       at 0 range 18 .. 20;
      DWIDTH       at 0 range 21 .. 23;
      S            at 0 range 24 .. 24;
      D            at 0 range 25 .. 25;
      SI           at 0 range 26 .. 26;
      DI           at 0 range 27 .. 27;
      PROT1        at 0 range 28 .. 28;
      PROT2        at 0 range 29 .. 29;
      PROT3        at 0 range 30 .. 30;
      I            at 0 range 31 .. 31;
   end record;

   ----------------------
   -- CCONFIG_Register --
   ----------------------

   --  Channel enable. Reading this bit indicates whether a channel is
   --  currently enabled or disabled: The Channel Enable bit status can also be
   --  found by reading the EnbldChns Register. A channel can be disabled by
   --  clearing the Enable bit. This causes the current AHB transfer (if one is
   --  in progress) to complete and the channel is then disabled. Any data in
   --  the FIFO of the relevant channel is lost. Restarting the channel by
   --  setting the Channel Enable bit has unpredictable effects, the channel
   --  must be fully re-initialized. The channel is also disabled, and Channel
   --  Enable bit cleared, when the last LLI is reached, the DMA transfer is
   --  completed, or if a channel error is encountered. If a channel must be
   --  disabled without losing data in the FIFO, the Halt bit must be set so
   --  that further DMA requests are ignored. The Active bit must then be
   --  polled until it reaches 0, indicating that there is no data left in the
   --  FIFO. Finally, the Channel Enable bit can be cleared.
   type ENUM_13 is
     (
      --  Channel disabled.
      Channel_Disabled,
      --  Channel enabled.
      Channel_Enabled)
     with Size => 1;
   for ENUM_13 use
     (Channel_Disabled => 0,
      Channel_Enabled => 1);

   --  Source peripheral. This value selects the DMA source request peripheral.
   --  This field is ignored if the source of the transfer is from memory. See
   --  Table 136 for details.
   type ENUM_14 is
     (
      --  Source = SPIFI
      Source_Eq_Spifi,
      --  Source = Timer 0 match 0/UART0 transmit
      Source_Eq_Timer_0_Mat,
      --  Source = Timer 0 match 1/UART0 receive
      Source_Eq_Timer_0_Mat_1,
      --  Source = Timer 1 match 0/UART1 transmit
      Source_Eq_Timer_1_Mat,
      --  Source = Timer 1 match 1/UART 1 receive
      Source_Eq_Timer_1_Mat_1,
      --  Source = Timer 2 match 0/UART 2 transmit
      Source_Eq_Timer_2_Mat,
      --  Source = Timer 2 match 1/UART 2 receive
      Source_Eq_Timer_2_Mat_1,
      --  Source = Timer 3 match 0/UART3 transmit/SCT DMA request 0
      Source_Eq_Timer_3_Mat,
      --  Source = Timer 3 match 1/UART3 receive/SCT DMA request 1
      Source_Eq_Timer_3_Mat_1,
      --  Source = SSP0 receive/I2S channel 0
      Source_Eq_Ssp0_Receiv,
      --  Source = SSP0 transmit/I2S channel 1
      Source_Eq_Ssp0_Transm,
      --  Source = SSP1 receive
      Source_Eq_Ssp1_Receiv,
      --  Source = SSP1 transmit
      Source_Eq_Ssp1_Transm,
      --  Source = ADC0
      Source_Eq_Adc0,
      --  Source = ADC1
      Source_Eq_Adc1,
      --  Source = DAC
      Source_Eq_Dac)
     with Size => 5;
   for ENUM_14 use
     (Source_Eq_Spifi => 0,
      Source_Eq_Timer_0_Mat => 1,
      Source_Eq_Timer_0_Mat_1 => 2,
      Source_Eq_Timer_1_Mat => 3,
      Source_Eq_Timer_1_Mat_1 => 4,
      Source_Eq_Timer_2_Mat => 5,
      Source_Eq_Timer_2_Mat_1 => 6,
      Source_Eq_Timer_3_Mat => 7,
      Source_Eq_Timer_3_Mat_1 => 8,
      Source_Eq_Ssp0_Receiv => 9,
      Source_Eq_Ssp0_Transm => 10,
      Source_Eq_Ssp1_Receiv => 11,
      Source_Eq_Ssp1_Transm => 12,
      Source_Eq_Adc0 => 13,
      Source_Eq_Adc1 => 14,
      Source_Eq_Dac => 15);

   --  Destination peripheral. This value selects the DMA destination request
   --  peripheral. This field is ignored if the destination of the transfer is
   --  to memory. See Table 136 for details.
   type ENUM_15 is
     (
      --  Destination = SPIFI
      Destination_Eq_Spifi,
      --  Destination = Timer 0 match 0/UART0 transmit
      Destination_Eq_Timer,
      --  Destination = Timer 0 match 1/UART0 receive
      Destination_Eq_Timer_1,
      --  Destination = Timer 1 match 0/UART1 transmit
      Destination_Eq_Timer_2,
      --  Destination = Timer 1 match 1/UART 1 receive
      Destination_Eq_Timer_3,
      --  Destination = Timer 2 match 0/UART 2 transmit
      Destination_Eq_Timer_4,
      --  Destination = Timer 2 match 1/UART 2 receive
      Destination_Eq_Timer_5,
      --  Destination = Timer 3 match 0/UART3 transmit/SCT DMA request 0
      Destination_Eq_Timer_6,
      --  Destination = Timer 3 match 1/UART3 receive/SCT DMA request 1
      Destination_Eq_Timer_7,
      --  Destination = SSP0 receive/I2S channel 0
      Destination_Eq_Ssp0_R,
      --  Destination = SSP0 transmit/I2S channel 1
      Destination_Eq_Ssp0_T,
      --  Destination = SSP1 receive
      Destination_Eq_Ssp1_R,
      --  Destination = SSP1 transmit
      Destination_Eq_Ssp1_T,
      --  Destination = ADC0
      Destination_Eq_Adc0,
      --  Destination = ADC1
      Destination_Eq_Adc1,
      --  Destination = DAC
      Destination_Eq_Dac)
     with Size => 5;
   for ENUM_15 use
     (Destination_Eq_Spifi => 0,
      Destination_Eq_Timer => 1,
      Destination_Eq_Timer_1 => 2,
      Destination_Eq_Timer_2 => 3,
      Destination_Eq_Timer_3 => 4,
      Destination_Eq_Timer_4 => 5,
      Destination_Eq_Timer_5 => 6,
      Destination_Eq_Timer_6 => 7,
      Destination_Eq_Timer_7 => 8,
      Destination_Eq_Ssp0_R => 9,
      Destination_Eq_Ssp0_T => 10,
      Destination_Eq_Ssp1_R => 11,
      Destination_Eq_Ssp1_T => 12,
      Destination_Eq_Adc0 => 13,
      Destination_Eq_Adc1 => 14,
      Destination_Eq_Dac => 15);

   --  Flow control and transfer type. This value indicates the flow controller
   --  and transfer type. The flow controller can be the DMA Controller, the
   --  source peripheral, or the destination peripheral. The transfer type can
   --  be memory-to-memory, memory-to-peripheral, peripheral-to-memory, or
   --  peripheral-to-peripheral. Refer to Table 157 for the encoding of this
   --  field.
   type ENUM_16 is
     (
      --  Memory to memory (DMA control)
      Memory_To_Memory,
      --  Memory to peripheral (DMA control)
      Memory_To_Peripheral,
      --  Peripheral to memory (DMA control)
      Peripheral_To_Memory,
      --  Source peripheral to destination peripheral (DMA control)
      Source_Peripheral_To,
      --  Source peripheral to destination peripheral (destination control)
      Source_Peripheral_To_1,
      --  Memory to peripheral (peripheral control)
      Memory_To_Peripheral_1,
      --  Peripheral to memory (peripheral control)
      Peripheral_To_Memory_1,
      --  Source peripheral to destination peripheral (source control)
      Source_Peripheral_To_2)
     with Size => 3;
   for ENUM_16 use
     (Memory_To_Memory => 0,
      Memory_To_Peripheral => 1,
      Peripheral_To_Memory => 2,
      Source_Peripheral_To => 3,
      Source_Peripheral_To_1 => 4,
      Memory_To_Peripheral_1 => 5,
      Peripheral_To_Memory_1 => 6,
      Source_Peripheral_To_2 => 7);

   subtype CCONFIG0_IE_Field is Interfaces.Bit_Types.Bit;
   subtype CCONFIG0_ITC_Field is Interfaces.Bit_Types.Bit;
   subtype CCONFIG0_L_Field is Interfaces.Bit_Types.Bit;
   subtype CCONFIG0_A_Field is Interfaces.Bit_Types.Bit;

   --  Halt: 0 = enable DMA requests. 1 = ignore further source DMA requests.
   --  The contents of the channel FIFO are drained. This value can be used
   --  with the Active and Channel Enable bits to cleanly disable a DMA
   --  channel.
   type ENUM_17 is
     (
      --  Enable DMA requests.
      Enable_Dma_Requests,
      --  Ignore further source DMA requests.
      Ignore_Further_Sourc)
     with Size => 1;
   for ENUM_17 use
     (Enable_Dma_Requests => 0,
      Ignore_Further_Sourc => 1);

   subtype CCONFIG0_RESERVED_Field is Interfaces.Bit_Types.UInt13;

   --  DMA Channel Configuration Register
   type CCONFIG_Register is record
      --  Channel enable. Reading this bit indicates whether a channel is
      --  currently enabled or disabled: The Channel Enable bit status can also
      --  be found by reading the EnbldChns Register. A channel can be disabled
      --  by clearing the Enable bit. This causes the current AHB transfer (if
      --  one is in progress) to complete and the channel is then disabled. Any
      --  data in the FIFO of the relevant channel is lost. Restarting the
      --  channel by setting the Channel Enable bit has unpredictable effects,
      --  the channel must be fully re-initialized. The channel is also
      --  disabled, and Channel Enable bit cleared, when the last LLI is
      --  reached, the DMA transfer is completed, or if a channel error is
      --  encountered. If a channel must be disabled without losing data in the
      --  FIFO, the Halt bit must be set so that further DMA requests are
      --  ignored. The Active bit must then be polled until it reaches 0,
      --  indicating that there is no data left in the FIFO. Finally, the
      --  Channel Enable bit can be cleared.
      E              : ENUM_13 := Interfaces.LPC43xxC.GPDMA.Channel_Disabled;
      --  Source peripheral. This value selects the DMA source request
      --  peripheral. This field is ignored if the source of the transfer is
      --  from memory. See Table 136 for details.
      SRCPERIPHERAL  : ENUM_14 := Interfaces.LPC43xxC.GPDMA.Source_Eq_Spifi;
      --  Destination peripheral. This value selects the DMA destination
      --  request peripheral. This field is ignored if the destination of the
      --  transfer is to memory. See Table 136 for details.
      DESTPERIPHERAL : ENUM_15 :=
                        Interfaces.LPC43xxC.GPDMA.Destination_Eq_Spifi;
      --  Flow control and transfer type. This value indicates the flow
      --  controller and transfer type. The flow controller can be the DMA
      --  Controller, the source peripheral, or the destination peripheral. The
      --  transfer type can be memory-to-memory, memory-to-peripheral,
      --  peripheral-to-memory, or peripheral-to-peripheral. Refer to Table 157
      --  for the encoding of this field.
      FLOWCNTRL      : ENUM_16 := Interfaces.LPC43xxC.GPDMA.Memory_To_Memory;
      --  Interrupt error mask. When cleared, this bit masks out the error
      --  interrupt of the relevant channel.
      IE             : CCONFIG0_IE_Field := 16#0#;
      --  Terminal count interrupt mask. When cleared, this bit masks out the
      --  terminal count interrupt of the relevant channel.
      ITC            : CCONFIG0_ITC_Field := 16#0#;
      --  Lock. When set, this bit enables locked transfers.
      L              : CCONFIG0_L_Field := 16#0#;
      --  Active: 0 = there is no data in the FIFO of the channel. 1 = the
      --  channel FIFO has data. This value can be used with the Halt and
      --  Channel Enable bits to cleanly disable a DMA channel. This is a
      --  read-only bit.
      A              : CCONFIG0_A_Field := 16#0#;
      --  Halt: 0 = enable DMA requests. 1 = ignore further source DMA
      --  requests. The contents of the channel FIFO are drained. This value
      --  can be used with the Active and Channel Enable bits to cleanly
      --  disable a DMA channel.
      H              : ENUM_17 :=
                        Interfaces.LPC43xxC.GPDMA.Enable_Dma_Requests;
      --  Reserved, do not modify, masked on read.
      RESERVED       : CCONFIG0_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCONFIG_Register use record
      E              at 0 range 0 .. 0;
      SRCPERIPHERAL  at 0 range 1 .. 5;
      DESTPERIPHERAL at 0 range 6 .. 10;
      FLOWCNTRL      at 0 range 11 .. 13;
      IE             at 0 range 14 .. 14;
      ITC            at 0 range 15 .. 15;
      L              at 0 range 16 .. 16;
      A              at 0 range 17 .. 17;
      H              at 0 range 18 .. 18;
      RESERVED       at 0 range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General Purpose DMA (GPDMA)
   type GPDMA_Peripheral is record
      --  DMA Interrupt Status Register
      INTSTAT       : INTSTAT_Register;
      --  DMA Interrupt Terminal Count Request Status Register
      INTTCSTAT     : INTTCSTAT_Register;
      --  DMA Interrupt Terminal Count Request Clear Register
      INTTCCLEAR    : INTTCCLEAR_Register;
      --  DMA Interrupt Error Status Register
      INTERRSTAT    : INTERRSTAT_Register;
      --  DMA Interrupt Error Clear Register
      INTERRCLR     : INTERRCLR_Register;
      --  DMA Raw Interrupt Terminal Count Status Register
      RAWINTTCSTAT  : RAWINTTCSTAT_Register;
      --  DMA Raw Error Interrupt Status Register
      RAWINTERRSTAT : RAWINTERRSTAT_Register;
      --  DMA Enabled Channel Register
      ENBLDCHNS     : ENBLDCHNS_Register;
      --  DMA Software Burst Request Register
      SOFTBREQ      : SOFTBREQ_Register;
      --  DMA Software Single Request Register
      SOFTSREQ      : SOFTSREQ_Register;
      --  DMA Software Last Burst Request Register
      SOFTLBREQ     : SOFTLBREQ_Register;
      --  DMA Software Last Single Request Register
      SOFTLSREQ     : SOFTLSREQ_Register;
      --  DMA Configuration Register
      CONFIG        : CONFIG_Register;
      --  DMA Synchronization Register
      SYNC          : SYNC_Register;
      --  DMA Channel Source Address Register
      CSRCADDR0     : Interfaces.Bit_Types.Word;
      --  DMA Channel Destination Address Register
      CDESTADDR0    : Interfaces.Bit_Types.Word;
      --  DMA Channel Linked List Item Register
      CLLI0         : CLLI_Register;
      --  DMA Channel Control Register
      CCONTROL0     : CCONTROL_Register;
      --  DMA Channel Configuration Register
      CCONFIG0      : CCONFIG_Register;
      --  DMA Channel Source Address Register
      CSRCADDR1     : Interfaces.Bit_Types.Word;
      --  DMA Channel Destination Address Register
      CDESTADDR1    : Interfaces.Bit_Types.Word;
      --  DMA Channel Linked List Item Register
      CLLI1         : CLLI_Register;
      --  DMA Channel Control Register
      CCONTROL1     : CCONTROL_Register;
      --  DMA Channel Configuration Register
      CCONFIG1      : CCONFIG_Register;
      --  DMA Channel Source Address Register
      CSRCADDR2     : Interfaces.Bit_Types.Word;
      --  DMA Channel Destination Address Register
      CDESTADDR2    : Interfaces.Bit_Types.Word;
      --  DMA Channel Linked List Item Register
      CLLI2         : CLLI_Register;
      --  DMA Channel Control Register
      CCONTROL2     : CCONTROL_Register;
      --  DMA Channel Configuration Register
      CCONFIG2      : CCONFIG_Register;
      --  DMA Channel Source Address Register
      CSRCADDR3     : Interfaces.Bit_Types.Word;
      --  DMA Channel Destination Address Register
      CDESTADDR3    : Interfaces.Bit_Types.Word;
      --  DMA Channel Linked List Item Register
      CLLI3         : CLLI_Register;
      --  DMA Channel Control Register
      CCONTROL3     : CCONTROL_Register;
      --  DMA Channel Configuration Register
      CCONFIG3      : CCONFIG_Register;
      --  DMA Channel Source Address Register
      CSRCADDR4     : Interfaces.Bit_Types.Word;
      --  DMA Channel Destination Address Register
      CDESTADDR4    : Interfaces.Bit_Types.Word;
      --  DMA Channel Linked List Item Register
      CLLI4         : CLLI_Register;
      --  DMA Channel Control Register
      CCONTROL4     : CCONTROL_Register;
      --  DMA Channel Configuration Register
      CCONFIG4      : CCONFIG_Register;
      --  DMA Channel Source Address Register
      CSRCADDR5     : Interfaces.Bit_Types.Word;
      --  DMA Channel Destination Address Register
      CDESTADDR5    : Interfaces.Bit_Types.Word;
      --  DMA Channel Linked List Item Register
      CLLI5         : CLLI_Register;
      --  DMA Channel Control Register
      CCONTROL5     : CCONTROL_Register;
      --  DMA Channel Configuration Register
      CCONFIG5      : CCONFIG_Register;
      --  DMA Channel Source Address Register
      CSRCADDR6     : Interfaces.Bit_Types.Word;
      --  DMA Channel Destination Address Register
      CDESTADDR6    : Interfaces.Bit_Types.Word;
      --  DMA Channel Linked List Item Register
      CLLI6         : CLLI_Register;
      --  DMA Channel Control Register
      CCONTROL6     : CCONTROL_Register;
      --  DMA Channel Configuration Register
      CCONFIG6      : CCONFIG_Register;
      --  DMA Channel Source Address Register
      CSRCADDR7     : Interfaces.Bit_Types.Word;
      --  DMA Channel Destination Address Register
      CDESTADDR7    : Interfaces.Bit_Types.Word;
      --  DMA Channel Linked List Item Register
      CLLI7         : CLLI_Register;
      --  DMA Channel Control Register
      CCONTROL7     : CCONTROL_Register;
      --  DMA Channel Configuration Register
      CCONFIG7      : CCONFIG_Register;
   end record
     with Volatile;

   for GPDMA_Peripheral use record
      INTSTAT       at 0 range 0 .. 31;
      INTTCSTAT     at 4 range 0 .. 31;
      INTTCCLEAR    at 8 range 0 .. 31;
      INTERRSTAT    at 12 range 0 .. 31;
      INTERRCLR     at 16 range 0 .. 31;
      RAWINTTCSTAT  at 20 range 0 .. 31;
      RAWINTERRSTAT at 24 range 0 .. 31;
      ENBLDCHNS     at 28 range 0 .. 31;
      SOFTBREQ      at 32 range 0 .. 31;
      SOFTSREQ      at 36 range 0 .. 31;
      SOFTLBREQ     at 40 range 0 .. 31;
      SOFTLSREQ     at 44 range 0 .. 31;
      CONFIG        at 48 range 0 .. 31;
      SYNC          at 52 range 0 .. 31;
      CSRCADDR0     at 256 range 0 .. 31;
      CDESTADDR0    at 260 range 0 .. 31;
      CLLI0         at 264 range 0 .. 31;
      CCONTROL0     at 268 range 0 .. 31;
      CCONFIG0      at 272 range 0 .. 31;
      CSRCADDR1     at 288 range 0 .. 31;
      CDESTADDR1    at 292 range 0 .. 31;
      CLLI1         at 296 range 0 .. 31;
      CCONTROL1     at 300 range 0 .. 31;
      CCONFIG1      at 304 range 0 .. 31;
      CSRCADDR2     at 320 range 0 .. 31;
      CDESTADDR2    at 324 range 0 .. 31;
      CLLI2         at 328 range 0 .. 31;
      CCONTROL2     at 332 range 0 .. 31;
      CCONFIG2      at 336 range 0 .. 31;
      CSRCADDR3     at 352 range 0 .. 31;
      CDESTADDR3    at 356 range 0 .. 31;
      CLLI3         at 360 range 0 .. 31;
      CCONTROL3     at 364 range 0 .. 31;
      CCONFIG3      at 368 range 0 .. 31;
      CSRCADDR4     at 384 range 0 .. 31;
      CDESTADDR4    at 388 range 0 .. 31;
      CLLI4         at 392 range 0 .. 31;
      CCONTROL4     at 396 range 0 .. 31;
      CCONFIG4      at 400 range 0 .. 31;
      CSRCADDR5     at 416 range 0 .. 31;
      CDESTADDR5    at 420 range 0 .. 31;
      CLLI5         at 424 range 0 .. 31;
      CCONTROL5     at 428 range 0 .. 31;
      CCONFIG5      at 432 range 0 .. 31;
      CSRCADDR6     at 448 range 0 .. 31;
      CDESTADDR6    at 452 range 0 .. 31;
      CLLI6         at 456 range 0 .. 31;
      CCONTROL6     at 460 range 0 .. 31;
      CCONFIG6      at 464 range 0 .. 31;
      CSRCADDR7     at 480 range 0 .. 31;
      CDESTADDR7    at 484 range 0 .. 31;
      CLLI7         at 488 range 0 .. 31;
      CCONTROL7     at 492 range 0 .. 31;
      CCONFIG7      at 496 range 0 .. 31;
   end record;

   --  General Purpose DMA (GPDMA)
   GPDMA_Periph : aliased GPDMA_Peripheral
     with Import, Address => GPDMA_Base;

end Interfaces.LPC43xxC.GPDMA;
