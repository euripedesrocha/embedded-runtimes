--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.ATSAM4L.USBC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -------------------------
   -- USBC_UDCON_Register --
   -------------------------

   subtype UDCON_UADD_Field is Interfaces.Bit_Types.UInt7;
   subtype UDCON_ADDEN_Field is Interfaces.Bit_Types.Bit;
   subtype UDCON_DETACH_Field is Interfaces.Bit_Types.Bit;
   subtype UDCON_RMWKUP_Field is Interfaces.Bit_Types.Bit;
   subtype UDCON_SPDCONF_Field is Interfaces.Bit_Types.UInt2;
   subtype UDCON_LS_Field is Interfaces.Bit_Types.Bit;
   subtype UDCON_TSTJ_Field is Interfaces.Bit_Types.Bit;
   subtype UDCON_TSTK_Field is Interfaces.Bit_Types.Bit;
   subtype UDCON_TSTPCKT_Field is Interfaces.Bit_Types.Bit;
   subtype UDCON_OPMODE2_Field is Interfaces.Bit_Types.Bit;
   subtype UDCON_GNAK_Field is Interfaces.Bit_Types.Bit;

   --  Device General Control Register
   type USBC_UDCON_Register is record
      --  USB Address
      UADD           : UDCON_UADD_Field := 16#0#;
      --  Address Enable
      ADDEN          : UDCON_ADDEN_Field := 16#0#;
      --  Detach
      DETACH         : UDCON_DETACH_Field := 16#1#;
      --  Remote Wake-Up
      RMWKUP         : UDCON_RMWKUP_Field := 16#0#;
      --  Speed configuration
      SPDCONF        : UDCON_SPDCONF_Field := 16#0#;
      --  Low Speed Mode Force
      LS             : UDCON_LS_Field := 16#0#;
      --  Test mode J
      TSTJ           : UDCON_TSTJ_Field := 16#0#;
      --  Test mode K
      TSTK           : UDCON_TSTK_Field := 16#0#;
      --  Test Packet mode
      TSTPCKT        : UDCON_TSTPCKT_Field := 16#0#;
      --  Specific Operational mode
      OPMODE2        : UDCON_OPMODE2_Field := 16#0#;
      --  Global NAK
      GNAK           : UDCON_GNAK_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UDCON_Register use record
      UADD           at 0 range 0 .. 6;
      ADDEN          at 0 range 7 .. 7;
      DETACH         at 0 range 8 .. 8;
      RMWKUP         at 0 range 9 .. 9;
      SPDCONF        at 0 range 10 .. 11;
      LS             at 0 range 12 .. 12;
      TSTJ           at 0 range 13 .. 13;
      TSTK           at 0 range 14 .. 14;
      TSTPCKT        at 0 range 15 .. 15;
      OPMODE2        at 0 range 16 .. 16;
      GNAK           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   -------------------------
   -- USBC_UDINT_Register --
   -------------------------

   subtype UDINT_SUSP_Field is Interfaces.Bit_Types.Bit;
   subtype UDINT_MSOF_Field is Interfaces.Bit_Types.Bit;
   subtype UDINT_SOF_Field is Interfaces.Bit_Types.Bit;
   subtype UDINT_EORST_Field is Interfaces.Bit_Types.Bit;
   subtype UDINT_WAKEUP_Field is Interfaces.Bit_Types.Bit;
   subtype UDINT_EORSM_Field is Interfaces.Bit_Types.Bit;
   subtype UDINT_UPRSM_Field is Interfaces.Bit_Types.Bit;
   subtype UDINT_EP0INT_Field is Interfaces.Bit_Types.Bit;
   subtype UDINT_EP1INT_Field is Interfaces.Bit_Types.Bit;
   subtype UDINT_EP2INT_Field is Interfaces.Bit_Types.Bit;
   subtype UDINT_EP3INT_Field is Interfaces.Bit_Types.Bit;
   subtype UDINT_EP4INT_Field is Interfaces.Bit_Types.Bit;
   subtype UDINT_EP5INT_Field is Interfaces.Bit_Types.Bit;
   subtype UDINT_EP6INT_Field is Interfaces.Bit_Types.Bit;
   subtype UDINT_EP7INT_Field is Interfaces.Bit_Types.Bit;

   --  Device Global Interupt Register
   type USBC_UDINT_Register is record
      --  Read-only. Suspend Interrupt
      SUSP           : UDINT_SUSP_Field;
      --  Read-only. Micro Start of Frame Interrupt
      MSOF           : UDINT_MSOF_Field;
      --  Read-only. Start of Frame Interrupt
      SOF            : UDINT_SOF_Field;
      --  Read-only. End of Reset Interrupt
      EORST          : UDINT_EORST_Field;
      --  Read-only. Wake-Up Interrupt
      WAKEUP         : UDINT_WAKEUP_Field;
      --  Read-only. End Of Resume Interrupt
      EORSM          : UDINT_EORSM_Field;
      --  Read-only. Upstream Resume Interrupt
      UPRSM          : UDINT_UPRSM_Field;
      --  unspecified
      Reserved_7_11  : Interfaces.Bit_Types.UInt5;
      --  Read-only. Endpoint 0 Interrupt
      EP0INT         : UDINT_EP0INT_Field;
      --  Read-only. Endpoint 1 Interrupt
      EP1INT         : UDINT_EP1INT_Field;
      --  Read-only. Endpoint 2 Interrupt
      EP2INT         : UDINT_EP2INT_Field;
      --  Read-only. Endpoint 3 Interrupt
      EP3INT         : UDINT_EP3INT_Field;
      --  Read-only. Endpoint 4 Interrupt
      EP4INT         : UDINT_EP4INT_Field;
      --  Read-only. Endpoint 5 Interrupt
      EP5INT         : UDINT_EP5INT_Field;
      --  Read-only. Endpoint 6 Interrupt
      EP6INT         : UDINT_EP6INT_Field;
      --  Read-only. Endpoint 7 Interrupt
      EP7INT         : UDINT_EP7INT_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UDINT_Register use record
      SUSP           at 0 range 0 .. 0;
      MSOF           at 0 range 1 .. 1;
      SOF            at 0 range 2 .. 2;
      EORST          at 0 range 3 .. 3;
      WAKEUP         at 0 range 4 .. 4;
      EORSM          at 0 range 5 .. 5;
      UPRSM          at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      EP0INT         at 0 range 12 .. 12;
      EP1INT         at 0 range 13 .. 13;
      EP2INT         at 0 range 14 .. 14;
      EP3INT         at 0 range 15 .. 15;
      EP4INT         at 0 range 16 .. 16;
      EP5INT         at 0 range 17 .. 17;
      EP6INT         at 0 range 18 .. 18;
      EP7INT         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ----------------------------
   -- USBC_UDINTCLR_Register --
   ----------------------------

   subtype UDINTCLR_SUSPC_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTCLR_MSOFC_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTCLR_SOFC_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTCLR_EORSTC_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTCLR_WAKEUPC_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTCLR_EORSMC_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTCLR_UPRSMC_Field is Interfaces.Bit_Types.Bit;

   --  Device Global Interrupt Clear Register
   type USBC_UDINTCLR_Register is record
      --  Write-only. SUSP Interrupt Clear
      SUSPC         : UDINTCLR_SUSPC_Field := 16#0#;
      --  Write-only. MSOF Interrupt Clear
      MSOFC         : UDINTCLR_MSOFC_Field := 16#0#;
      --  Write-only. SOF Interrupt Clear
      SOFC          : UDINTCLR_SOFC_Field := 16#0#;
      --  Write-only. EORST Interrupt Clear
      EORSTC        : UDINTCLR_EORSTC_Field := 16#0#;
      --  Write-only. WAKEUP Interrupt Clear
      WAKEUPC       : UDINTCLR_WAKEUPC_Field := 16#0#;
      --  Write-only. EORSM Interrupt Clear
      EORSMC        : UDINTCLR_EORSMC_Field := 16#0#;
      --  Write-only. UPRSM Interrupt Clear
      UPRSMC        : UDINTCLR_UPRSMC_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UDINTCLR_Register use record
      SUSPC         at 0 range 0 .. 0;
      MSOFC         at 0 range 1 .. 1;
      SOFC          at 0 range 2 .. 2;
      EORSTC        at 0 range 3 .. 3;
      WAKEUPC       at 0 range 4 .. 4;
      EORSMC        at 0 range 5 .. 5;
      UPRSMC        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   ----------------------------
   -- USBC_UDINTSET_Register --
   ----------------------------

   subtype UDINTSET_SUSPS_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTSET_MSOFS_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTSET_SOFS_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTSET_EORSTS_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTSET_WAKEUPS_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTSET_EORSMS_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTSET_UPRSMS_Field is Interfaces.Bit_Types.Bit;

   --  Device Global Interrupt Set Regsiter
   type USBC_UDINTSET_Register is record
      --  Write-only. SUSP Interrupt Set
      SUSPS         : UDINTSET_SUSPS_Field := 16#0#;
      --  Write-only. MSOF Interrupt Set
      MSOFS         : UDINTSET_MSOFS_Field := 16#0#;
      --  Write-only. SOF Interrupt Set
      SOFS          : UDINTSET_SOFS_Field := 16#0#;
      --  Write-only. EORST Interrupt Set
      EORSTS        : UDINTSET_EORSTS_Field := 16#0#;
      --  Write-only. WAKEUP Interrupt Set
      WAKEUPS       : UDINTSET_WAKEUPS_Field := 16#0#;
      --  Write-only. EORSM Interrupt Set
      EORSMS        : UDINTSET_EORSMS_Field := 16#0#;
      --  Write-only. UPRSM Interrupt Set
      UPRSMS        : UDINTSET_UPRSMS_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UDINTSET_Register use record
      SUSPS         at 0 range 0 .. 0;
      MSOFS         at 0 range 1 .. 1;
      SOFS          at 0 range 2 .. 2;
      EORSTS        at 0 range 3 .. 3;
      WAKEUPS       at 0 range 4 .. 4;
      EORSMS        at 0 range 5 .. 5;
      UPRSMS        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --------------------------
   -- USBC_UDINTE_Register --
   --------------------------

   subtype UDINTE_SUSPE_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTE_MSOFE_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTE_SOFE_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTE_EORSTE_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTE_WAKEUPE_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTE_EORSME_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTE_UPRSME_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTE_EP0INTE_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTE_EP1INTE_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTE_EP2INTE_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTE_EP3INTE_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTE_EP4INTE_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTE_EP5INTE_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTE_EP6INTE_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTE_EP7INTE_Field is Interfaces.Bit_Types.Bit;

   --  Device Global Interrupt Enable Register
   type USBC_UDINTE_Register is record
      --  Read-only. SUSP Interrupt Enable
      SUSPE          : UDINTE_SUSPE_Field;
      --  Read-only. MSOF Interrupt Enable
      MSOFE          : UDINTE_MSOFE_Field;
      --  Read-only. SOF Interrupt Enable
      SOFE           : UDINTE_SOFE_Field;
      --  Read-only. EORST Interrupt Enable
      EORSTE         : UDINTE_EORSTE_Field;
      --  Read-only. WAKEUP Interrupt Enable
      WAKEUPE        : UDINTE_WAKEUPE_Field;
      --  Read-only. EORSM Interrupt Enable
      EORSME         : UDINTE_EORSME_Field;
      --  Read-only. UPRSM Interrupt Enable
      UPRSME         : UDINTE_UPRSME_Field;
      --  unspecified
      Reserved_7_11  : Interfaces.Bit_Types.UInt5;
      --  Read-only. EP0INT Interrupt Enable
      EP0INTE        : UDINTE_EP0INTE_Field;
      --  Read-only. EP1INT Interrupt Enable
      EP1INTE        : UDINTE_EP1INTE_Field;
      --  Read-only. EP2INT Interrupt Enable
      EP2INTE        : UDINTE_EP2INTE_Field;
      --  Read-only. EP3INT Interrupt Enable
      EP3INTE        : UDINTE_EP3INTE_Field;
      --  Read-only. EP4INT Interrupt Enable
      EP4INTE        : UDINTE_EP4INTE_Field;
      --  Read-only. EP5INT Interrupt Enable
      EP5INTE        : UDINTE_EP5INTE_Field;
      --  Read-only. EP6INT Interrupt Enable
      EP6INTE        : UDINTE_EP6INTE_Field;
      --  Read-only. EP7INT Interrupt Enable
      EP7INTE        : UDINTE_EP7INTE_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UDINTE_Register use record
      SUSPE          at 0 range 0 .. 0;
      MSOFE          at 0 range 1 .. 1;
      SOFE           at 0 range 2 .. 2;
      EORSTE         at 0 range 3 .. 3;
      WAKEUPE        at 0 range 4 .. 4;
      EORSME         at 0 range 5 .. 5;
      UPRSME         at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      EP0INTE        at 0 range 12 .. 12;
      EP1INTE        at 0 range 13 .. 13;
      EP2INTE        at 0 range 14 .. 14;
      EP3INTE        at 0 range 15 .. 15;
      EP4INTE        at 0 range 16 .. 16;
      EP5INTE        at 0 range 17 .. 17;
      EP6INTE        at 0 range 18 .. 18;
      EP7INTE        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------
   -- USBC_UDINTECLR_Register --
   -----------------------------

   subtype UDINTECLR_SUSPEC_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTECLR_MSOFEC_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTECLR_SOFEC_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTECLR_EORSTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTECLR_WAKEUPEC_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTECLR_EORSMEC_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTECLR_UPRSMEC_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTECLR_EP0INTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTECLR_EP1INTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTECLR_EP2INTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTECLR_EP3INTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTECLR_EP4INTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTECLR_EP5INTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTECLR_EP6INTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTECLR_EP7INTEC_Field is Interfaces.Bit_Types.Bit;

   --  Device Global Interrupt Enable Clear Register
   type USBC_UDINTECLR_Register is record
      --  Write-only. SUSP Interrupt Enable Clear
      SUSPEC         : UDINTECLR_SUSPEC_Field := 16#0#;
      --  Write-only. MSOF Interrupt Enable Clear
      MSOFEC         : UDINTECLR_MSOFEC_Field := 16#0#;
      --  Write-only. SOF Interrupt Enable Clear
      SOFEC          : UDINTECLR_SOFEC_Field := 16#0#;
      --  Write-only. EORST Interrupt Enable Clear
      EORSTEC        : UDINTECLR_EORSTEC_Field := 16#0#;
      --  Write-only. WAKEUP Interrupt Enable Clear
      WAKEUPEC       : UDINTECLR_WAKEUPEC_Field := 16#0#;
      --  Write-only. EORSM Interrupt Enable Clear
      EORSMEC        : UDINTECLR_EORSMEC_Field := 16#0#;
      --  Write-only. UPRSM Interrupt Enable Clear
      UPRSMEC        : UDINTECLR_UPRSMEC_Field := 16#0#;
      --  unspecified
      Reserved_7_11  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. EP0INT Interrupt Enable Clear
      EP0INTEC       : UDINTECLR_EP0INTEC_Field := 16#0#;
      --  Write-only. EP1INT Interrupt Enable Clear
      EP1INTEC       : UDINTECLR_EP1INTEC_Field := 16#0#;
      --  Write-only. EP2INT Interrupt Enable Clear
      EP2INTEC       : UDINTECLR_EP2INTEC_Field := 16#0#;
      --  Write-only. EP3INT Interrupt Enable Clear
      EP3INTEC       : UDINTECLR_EP3INTEC_Field := 16#0#;
      --  Write-only. EP4INT Interrupt Enable Clear
      EP4INTEC       : UDINTECLR_EP4INTEC_Field := 16#0#;
      --  Write-only. EP5INT Interrupt Enable Clear
      EP5INTEC       : UDINTECLR_EP5INTEC_Field := 16#0#;
      --  Write-only. EP6INT Interrupt Enable Clear
      EP6INTEC       : UDINTECLR_EP6INTEC_Field := 16#0#;
      --  Write-only. EP7INT Interrupt Enable Clear
      EP7INTEC       : UDINTECLR_EP7INTEC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UDINTECLR_Register use record
      SUSPEC         at 0 range 0 .. 0;
      MSOFEC         at 0 range 1 .. 1;
      SOFEC          at 0 range 2 .. 2;
      EORSTEC        at 0 range 3 .. 3;
      WAKEUPEC       at 0 range 4 .. 4;
      EORSMEC        at 0 range 5 .. 5;
      UPRSMEC        at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      EP0INTEC       at 0 range 12 .. 12;
      EP1INTEC       at 0 range 13 .. 13;
      EP2INTEC       at 0 range 14 .. 14;
      EP3INTEC       at 0 range 15 .. 15;
      EP4INTEC       at 0 range 16 .. 16;
      EP5INTEC       at 0 range 17 .. 17;
      EP6INTEC       at 0 range 18 .. 18;
      EP7INTEC       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------
   -- USBC_UDINTESET_Register --
   -----------------------------

   subtype UDINTESET_SUSPES_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTESET_MSOFES_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTESET_SOFES_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTESET_EORSTES_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTESET_WAKEUPES_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTESET_EORSMES_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTESET_UPRSMES_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTESET_EP0INTES_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTESET_EP1INTES_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTESET_EP2INTES_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTESET_EP3INTES_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTESET_EP4INTES_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTESET_EP5INTES_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTESET_EP6INTES_Field is Interfaces.Bit_Types.Bit;
   subtype UDINTESET_EP7INTES_Field is Interfaces.Bit_Types.Bit;

   --  Device Global Interrupt Enable Set Register
   type USBC_UDINTESET_Register is record
      --  Write-only. SUSP Interrupt Enable Set
      SUSPES         : UDINTESET_SUSPES_Field := 16#0#;
      --  Write-only. MSOF Interrupt Enable Set
      MSOFES         : UDINTESET_MSOFES_Field := 16#0#;
      --  Write-only. SOF Interrupt Enable Set
      SOFES          : UDINTESET_SOFES_Field := 16#0#;
      --  Write-only. EORST Interrupt Enable Set
      EORSTES        : UDINTESET_EORSTES_Field := 16#0#;
      --  Write-only. WAKEUP Interrupt Enable Set
      WAKEUPES       : UDINTESET_WAKEUPES_Field := 16#0#;
      --  Write-only. EORSM Interrupt Enable Set
      EORSMES        : UDINTESET_EORSMES_Field := 16#0#;
      --  Write-only. UPRSM Interrupt Enable Set
      UPRSMES        : UDINTESET_UPRSMES_Field := 16#0#;
      --  unspecified
      Reserved_7_11  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. EP0INT Interrupt Enable Set
      EP0INTES       : UDINTESET_EP0INTES_Field := 16#0#;
      --  Write-only. EP1INT Interrupt Enable Set
      EP1INTES       : UDINTESET_EP1INTES_Field := 16#0#;
      --  Write-only. EP2INT Interrupt Enable Set
      EP2INTES       : UDINTESET_EP2INTES_Field := 16#0#;
      --  Write-only. EP3INT Interrupt Enable Set
      EP3INTES       : UDINTESET_EP3INTES_Field := 16#0#;
      --  Write-only. EP4INT Interrupt Enable Set
      EP4INTES       : UDINTESET_EP4INTES_Field := 16#0#;
      --  Write-only. EP5INT Interrupt Enable Set
      EP5INTES       : UDINTESET_EP5INTES_Field := 16#0#;
      --  Write-only. EP6INT Interrupt Enable Set
      EP6INTES       : UDINTESET_EP6INTES_Field := 16#0#;
      --  Write-only. EP7INT Interrupt Enable Set
      EP7INTES       : UDINTESET_EP7INTES_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UDINTESET_Register use record
      SUSPES         at 0 range 0 .. 0;
      MSOFES         at 0 range 1 .. 1;
      SOFES          at 0 range 2 .. 2;
      EORSTES        at 0 range 3 .. 3;
      WAKEUPES       at 0 range 4 .. 4;
      EORSMES        at 0 range 5 .. 5;
      UPRSMES        at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      EP0INTES       at 0 range 12 .. 12;
      EP1INTES       at 0 range 13 .. 13;
      EP2INTES       at 0 range 14 .. 14;
      EP3INTES       at 0 range 15 .. 15;
      EP4INTES       at 0 range 16 .. 16;
      EP5INTES       at 0 range 17 .. 17;
      EP6INTES       at 0 range 18 .. 18;
      EP7INTES       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -------------------------
   -- USBC_UERST_Register --
   -------------------------

   ----------------
   -- UERST.EPEN --
   ----------------

   --  UERST_EPEN array element
   subtype UERST_EPEN_Element is Interfaces.Bit_Types.Bit;

   --  UERST_EPEN array
   type UERST_EPEN_Field_Array is array (0 .. 7) of UERST_EPEN_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for UERST_EPEN
   type UERST_EPEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EPEN as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  EPEN as an array
            Arr : UERST_EPEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for UERST_EPEN_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Endpoint Enable/Reset Register
   type USBC_UERST_Register is record
      --  Endpoint0 Enable
      EPEN          : UERST_EPEN_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UERST_Register use record
      EPEN          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --------------------------
   -- USBC_UDFNUM_Register --
   --------------------------

   subtype UDFNUM_MFNUM_Field is Interfaces.Bit_Types.UInt3;
   subtype UDFNUM_FNUM_Field is Interfaces.Bit_Types.UInt11;
   subtype UDFNUM_FNCERR_Field is Interfaces.Bit_Types.Bit;

   --  Device Frame Number Register
   type USBC_UDFNUM_Register is record
      --  Read-only. Micro Frame Number
      MFNUM          : UDFNUM_MFNUM_Field;
      --  Read-only. Frame Number
      FNUM           : UDFNUM_FNUM_Field;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit;
      --  Read-only. Frame Number CRC Error
      FNCERR         : UDFNUM_FNCERR_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UDFNUM_Register use record
      MFNUM          at 0 range 0 .. 2;
      FNUM           at 0 range 3 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      FNCERR         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --------------------
   -- UECFG_Register --
   --------------------

   --  Endpoint Bank
   type EPBKSelect is
     (
      Single,
      Double)
     with Size => 1;
   for EPBKSelect use
     (Single => 0,
      Double => 1);

   --  Endpoint Size
   type EPSIZESelect is
     (
      EPSIZESelect_8,
      EPSIZESelect_16,
      EPSIZESelect_32,
      EPSIZESelect_64,
      EPSIZESelect_128,
      EPSIZESelect_256,
      EPSIZESelect_512,
      EPSIZESelect_1024)
     with Size => 3;
   for EPSIZESelect use
     (EPSIZESelect_8 => 0,
      EPSIZESelect_16 => 1,
      EPSIZESelect_32 => 2,
      EPSIZESelect_64 => 3,
      EPSIZESelect_128 => 4,
      EPSIZESelect_256 => 5,
      EPSIZESelect_512 => 6,
      EPSIZESelect_1024 => 7);

   --  Endpoint Direction
   type EPDIRSelect is
     (
      Out_k,
      In_k)
     with Size => 1;
   for EPDIRSelect use
     (Out_k => 0,
      In_k => 1);

   --  Endpoint Type
   type EPTYPESelect is
     (
      Control,
      Isochronous,
      Bulk,
      Interrupt)
     with Size => 2;
   for EPTYPESelect use
     (Control => 0,
      Isochronous => 1,
      Bulk => 2,
      Interrupt => 3);

   subtype UECFG0_REPNB_Field is Interfaces.Bit_Types.UInt4;

   --  Endpoint Configuration Register
   type UECFG_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Endpoint Bank
      EPBK           : EPBKSelect := Interfaces.ATSAM4L.USBC.Single;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Endpoint Size
      EPSIZE         : EPSIZESelect := Interfaces.ATSAM4L.USBC.EPSIZESelect_8;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Endpoint Direction
      EPDIR          : EPDIRSelect := Interfaces.ATSAM4L.USBC.Out_k;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Endpoint Type
      EPTYPE         : EPTYPESelect := Interfaces.ATSAM4L.USBC.Control;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Redirected Endpoint Number
      REPNB          : UECFG0_REPNB_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UECFG_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      EPBK           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      EPSIZE         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      EPDIR          at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      EPTYPE         at 0 range 11 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      REPNB          at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --------------------
   -- UESTA_Register --
   --------------------

   subtype UESTA0_TXINI_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA0_RXOUTI_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA0_RXSTPI_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA0_NAKOUTI_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA0_NAKINI_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA0_STALLEDI_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA0_DTSEQ_Field is Interfaces.Bit_Types.UInt2;
   subtype UESTA0_RAMACERI_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA0_NBUSYBK_Field is Interfaces.Bit_Types.UInt2;
   subtype UESTA0_CURRBK_Field is Interfaces.Bit_Types.UInt2;

   --  Control Direction
   type CTRLDIRSelect is
     (
      Out_k,
      In_k)
     with Size => 1;
   for CTRLDIRSelect use
     (Out_k => 0,
      In_k => 1);

   --  Endpoint Status Register
   type UESTA_Register is record
      --  Read-only. Transmitted IN Data Interrupt
      TXINI          : UESTA0_TXINI_Field;
      --  Read-only. Received OUT Data Interrupt
      RXOUTI         : UESTA0_RXOUTI_Field;
      --  Read-only. Received SETUP Interrupt
      RXSTPI         : UESTA0_RXSTPI_Field;
      --  Read-only. NAKed OUT Interrupt
      NAKOUTI        : UESTA0_NAKOUTI_Field;
      --  Read-only. NAKed IN Interrupt
      NAKINI         : UESTA0_NAKINI_Field;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit;
      --  Read-only. STALLed Interrupt
      STALLEDI       : UESTA0_STALLEDI_Field;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit;
      --  Read-only. Data Toggle Sequence
      DTSEQ          : UESTA0_DTSEQ_Field;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit;
      --  Read-only. Ram Access Error Interrupt
      RAMACERI       : UESTA0_RAMACERI_Field;
      --  Read-only. Number Of Busy Banks
      NBUSYBK        : UESTA0_NBUSYBK_Field;
      --  Read-only. Current Bank
      CURRBK         : UESTA0_CURRBK_Field;
      --  unspecified
      Reserved_16_16 : Interfaces.Bit_Types.Bit;
      --  Read-only. Control Direction
      CTRLDIR        : CTRLDIRSelect;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UESTA_Register use record
      TXINI          at 0 range 0 .. 0;
      RXOUTI         at 0 range 1 .. 1;
      RXSTPI         at 0 range 2 .. 2;
      NAKOUTI        at 0 range 3 .. 3;
      NAKINI         at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDI       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DTSEQ          at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      RAMACERI       at 0 range 11 .. 11;
      NBUSYBK        at 0 range 12 .. 13;
      CURRBK         at 0 range 14 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      CTRLDIR        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   -----------------------------
   -- USBC_UESTA0CLR_Register --
   -----------------------------

   subtype UESTA0CLR_TXINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA0CLR_RXOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA0CLR_RXSTPIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA0CLR_NAKOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA0CLR_NAKINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA0CLR_STALLEDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA0CLR_RAMACERIC_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Status Clear Register
   type USBC_UESTA0CLR_Register is record
      --  Write-only. TXINI Clear
      TXINIC         : UESTA0CLR_TXINIC_Field := 16#0#;
      --  Write-only. RXOUTI Clear
      RXOUTIC        : UESTA0CLR_RXOUTIC_Field := 16#0#;
      --  Write-only. RXSTPI Clear
      RXSTPIC        : UESTA0CLR_RXSTPIC_Field := 16#0#;
      --  Write-only. NAKOUTI Clear
      NAKOUTIC       : UESTA0CLR_NAKOUTIC_Field := 16#0#;
      --  Write-only. NAKINI Clear
      NAKINIC        : UESTA0CLR_NAKINIC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDI Clear
      STALLEDIC      : UESTA0CLR_STALLEDIC_Field := 16#0#;
      --  unspecified
      Reserved_7_10  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : UESTA0CLR_RAMACERIC_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA0CLR_Register use record
      TXINIC         at 0 range 0 .. 0;
      RXOUTIC        at 0 range 1 .. 1;
      RXSTPIC        at 0 range 2 .. 2;
      NAKOUTIC       at 0 range 3 .. 3;
      NAKINIC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIC      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIC      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------------------
   -- USBC_UESTA1CLR_Register --
   -----------------------------

   subtype UESTA1CLR_TXINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA1CLR_RXOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA1CLR_RXSTPIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA1CLR_NAKOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA1CLR_NAKINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA1CLR_STALLEDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA1CLR_RAMACERIC_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Status Clear Register
   type USBC_UESTA1CLR_Register is record
      --  Write-only. TXINI Clear
      TXINIC         : UESTA1CLR_TXINIC_Field := 16#0#;
      --  Write-only. RXOUTI Clear
      RXOUTIC        : UESTA1CLR_RXOUTIC_Field := 16#0#;
      --  Write-only. RXSTPI Clear
      RXSTPIC        : UESTA1CLR_RXSTPIC_Field := 16#0#;
      --  Write-only. NAKOUTI Clear
      NAKOUTIC       : UESTA1CLR_NAKOUTIC_Field := 16#0#;
      --  Write-only. NAKINI Clear
      NAKINIC        : UESTA1CLR_NAKINIC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDI Clear
      STALLEDIC      : UESTA1CLR_STALLEDIC_Field := 16#0#;
      --  unspecified
      Reserved_7_10  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : UESTA1CLR_RAMACERIC_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA1CLR_Register use record
      TXINIC         at 0 range 0 .. 0;
      RXOUTIC        at 0 range 1 .. 1;
      RXSTPIC        at 0 range 2 .. 2;
      NAKOUTIC       at 0 range 3 .. 3;
      NAKINIC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIC      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIC      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------------------
   -- USBC_UESTA2CLR_Register --
   -----------------------------

   subtype UESTA2CLR_TXINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA2CLR_RXOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA2CLR_RXSTPIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA2CLR_NAKOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA2CLR_NAKINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA2CLR_STALLEDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA2CLR_RAMACERIC_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Status Clear Register
   type USBC_UESTA2CLR_Register is record
      --  Write-only. TXINI Clear
      TXINIC         : UESTA2CLR_TXINIC_Field := 16#0#;
      --  Write-only. RXOUTI Clear
      RXOUTIC        : UESTA2CLR_RXOUTIC_Field := 16#0#;
      --  Write-only. RXSTPI Clear
      RXSTPIC        : UESTA2CLR_RXSTPIC_Field := 16#0#;
      --  Write-only. NAKOUTI Clear
      NAKOUTIC       : UESTA2CLR_NAKOUTIC_Field := 16#0#;
      --  Write-only. NAKINI Clear
      NAKINIC        : UESTA2CLR_NAKINIC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDI Clear
      STALLEDIC      : UESTA2CLR_STALLEDIC_Field := 16#0#;
      --  unspecified
      Reserved_7_10  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : UESTA2CLR_RAMACERIC_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA2CLR_Register use record
      TXINIC         at 0 range 0 .. 0;
      RXOUTIC        at 0 range 1 .. 1;
      RXSTPIC        at 0 range 2 .. 2;
      NAKOUTIC       at 0 range 3 .. 3;
      NAKINIC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIC      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIC      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------------------
   -- USBC_UESTA3CLR_Register --
   -----------------------------

   subtype UESTA3CLR_TXINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA3CLR_RXOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA3CLR_RXSTPIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA3CLR_NAKOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA3CLR_NAKINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA3CLR_STALLEDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA3CLR_RAMACERIC_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Status Clear Register
   type USBC_UESTA3CLR_Register is record
      --  Write-only. TXINI Clear
      TXINIC         : UESTA3CLR_TXINIC_Field := 16#0#;
      --  Write-only. RXOUTI Clear
      RXOUTIC        : UESTA3CLR_RXOUTIC_Field := 16#0#;
      --  Write-only. RXSTPI Clear
      RXSTPIC        : UESTA3CLR_RXSTPIC_Field := 16#0#;
      --  Write-only. NAKOUTI Clear
      NAKOUTIC       : UESTA3CLR_NAKOUTIC_Field := 16#0#;
      --  Write-only. NAKINI Clear
      NAKINIC        : UESTA3CLR_NAKINIC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDI Clear
      STALLEDIC      : UESTA3CLR_STALLEDIC_Field := 16#0#;
      --  unspecified
      Reserved_7_10  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : UESTA3CLR_RAMACERIC_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA3CLR_Register use record
      TXINIC         at 0 range 0 .. 0;
      RXOUTIC        at 0 range 1 .. 1;
      RXSTPIC        at 0 range 2 .. 2;
      NAKOUTIC       at 0 range 3 .. 3;
      NAKINIC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIC      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIC      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------------------
   -- USBC_UESTA4CLR_Register --
   -----------------------------

   subtype UESTA4CLR_TXINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA4CLR_RXOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA4CLR_RXSTPIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA4CLR_NAKOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA4CLR_NAKINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA4CLR_STALLEDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA4CLR_RAMACERIC_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Status Clear Register
   type USBC_UESTA4CLR_Register is record
      --  Write-only. TXINI Clear
      TXINIC         : UESTA4CLR_TXINIC_Field := 16#0#;
      --  Write-only. RXOUTI Clear
      RXOUTIC        : UESTA4CLR_RXOUTIC_Field := 16#0#;
      --  Write-only. RXSTPI Clear
      RXSTPIC        : UESTA4CLR_RXSTPIC_Field := 16#0#;
      --  Write-only. NAKOUTI Clear
      NAKOUTIC       : UESTA4CLR_NAKOUTIC_Field := 16#0#;
      --  Write-only. NAKINI Clear
      NAKINIC        : UESTA4CLR_NAKINIC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDI Clear
      STALLEDIC      : UESTA4CLR_STALLEDIC_Field := 16#0#;
      --  unspecified
      Reserved_7_10  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : UESTA4CLR_RAMACERIC_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA4CLR_Register use record
      TXINIC         at 0 range 0 .. 0;
      RXOUTIC        at 0 range 1 .. 1;
      RXSTPIC        at 0 range 2 .. 2;
      NAKOUTIC       at 0 range 3 .. 3;
      NAKINIC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIC      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIC      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------------------
   -- USBC_UESTA5CLR_Register --
   -----------------------------

   subtype UESTA5CLR_TXINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA5CLR_RXOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA5CLR_RXSTPIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA5CLR_NAKOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA5CLR_NAKINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA5CLR_STALLEDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA5CLR_RAMACERIC_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Status Clear Register
   type USBC_UESTA5CLR_Register is record
      --  Write-only. TXINI Clear
      TXINIC         : UESTA5CLR_TXINIC_Field := 16#0#;
      --  Write-only. RXOUTI Clear
      RXOUTIC        : UESTA5CLR_RXOUTIC_Field := 16#0#;
      --  Write-only. RXSTPI Clear
      RXSTPIC        : UESTA5CLR_RXSTPIC_Field := 16#0#;
      --  Write-only. NAKOUTI Clear
      NAKOUTIC       : UESTA5CLR_NAKOUTIC_Field := 16#0#;
      --  Write-only. NAKINI Clear
      NAKINIC        : UESTA5CLR_NAKINIC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDI Clear
      STALLEDIC      : UESTA5CLR_STALLEDIC_Field := 16#0#;
      --  unspecified
      Reserved_7_10  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : UESTA5CLR_RAMACERIC_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA5CLR_Register use record
      TXINIC         at 0 range 0 .. 0;
      RXOUTIC        at 0 range 1 .. 1;
      RXSTPIC        at 0 range 2 .. 2;
      NAKOUTIC       at 0 range 3 .. 3;
      NAKINIC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIC      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIC      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------------------
   -- USBC_UESTA6CLR_Register --
   -----------------------------

   subtype UESTA6CLR_TXINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA6CLR_RXOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA6CLR_RXSTPIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA6CLR_NAKOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA6CLR_NAKINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA6CLR_STALLEDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA6CLR_RAMACERIC_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Status Clear Register
   type USBC_UESTA6CLR_Register is record
      --  Write-only. TXINI Clear
      TXINIC         : UESTA6CLR_TXINIC_Field := 16#0#;
      --  Write-only. RXOUTI Clear
      RXOUTIC        : UESTA6CLR_RXOUTIC_Field := 16#0#;
      --  Write-only. RXSTPI Clear
      RXSTPIC        : UESTA6CLR_RXSTPIC_Field := 16#0#;
      --  Write-only. NAKOUTI Clear
      NAKOUTIC       : UESTA6CLR_NAKOUTIC_Field := 16#0#;
      --  Write-only. NAKINI Clear
      NAKINIC        : UESTA6CLR_NAKINIC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDI Clear
      STALLEDIC      : UESTA6CLR_STALLEDIC_Field := 16#0#;
      --  unspecified
      Reserved_7_10  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : UESTA6CLR_RAMACERIC_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA6CLR_Register use record
      TXINIC         at 0 range 0 .. 0;
      RXOUTIC        at 0 range 1 .. 1;
      RXSTPIC        at 0 range 2 .. 2;
      NAKOUTIC       at 0 range 3 .. 3;
      NAKINIC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIC      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIC      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------------------
   -- USBC_UESTA7CLR_Register --
   -----------------------------

   subtype UESTA7CLR_TXINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA7CLR_RXOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA7CLR_RXSTPIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA7CLR_NAKOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA7CLR_NAKINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA7CLR_STALLEDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA7CLR_RAMACERIC_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Status Clear Register
   type USBC_UESTA7CLR_Register is record
      --  Write-only. TXINI Clear
      TXINIC         : UESTA7CLR_TXINIC_Field := 16#0#;
      --  Write-only. RXOUTI Clear
      RXOUTIC        : UESTA7CLR_RXOUTIC_Field := 16#0#;
      --  Write-only. RXSTPI Clear
      RXSTPIC        : UESTA7CLR_RXSTPIC_Field := 16#0#;
      --  Write-only. NAKOUTI Clear
      NAKOUTIC       : UESTA7CLR_NAKOUTIC_Field := 16#0#;
      --  Write-only. NAKINI Clear
      NAKINIC        : UESTA7CLR_NAKINIC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDI Clear
      STALLEDIC      : UESTA7CLR_STALLEDIC_Field := 16#0#;
      --  unspecified
      Reserved_7_10  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : UESTA7CLR_RAMACERIC_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA7CLR_Register use record
      TXINIC         at 0 range 0 .. 0;
      RXOUTIC        at 0 range 1 .. 1;
      RXSTPIC        at 0 range 2 .. 2;
      NAKOUTIC       at 0 range 3 .. 3;
      NAKINIC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIC      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIC      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------------------
   -- USBC_UESTA0SET_Register --
   -----------------------------

   subtype UESTA0SET_TXINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA0SET_RXOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA0SET_RXSTPIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA0SET_NAKOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA0SET_NAKINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA0SET_STALLEDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA0SET_RAMACERIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA0SET_NBUSYBKS_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Status Set Register
   type USBC_UESTA0SET_Register is record
      --  Write-only. TXINI Set
      TXINIS         : UESTA0SET_TXINIS_Field := 16#0#;
      --  Write-only. RXOUTI Set
      RXOUTIS        : UESTA0SET_RXOUTIS_Field := 16#0#;
      --  Write-only. RXSTPI Set
      RXSTPIS        : UESTA0SET_RXSTPIS_Field := 16#0#;
      --  Write-only. NAKOUTI Set
      NAKOUTIS       : UESTA0SET_NAKOUTIS_Field := 16#0#;
      --  Write-only. NAKINI Set
      NAKINIS        : UESTA0SET_NAKINIS_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDI Set
      STALLEDIS      : UESTA0SET_STALLEDIS_Field := 16#0#;
      --  unspecified
      Reserved_7_10  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : UESTA0SET_RAMACERIS_Field := 16#0#;
      --  Write-only. NBUSYBK Set
      NBUSYBKS       : UESTA0SET_NBUSYBKS_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA0SET_Register use record
      TXINIS         at 0 range 0 .. 0;
      RXOUTIS        at 0 range 1 .. 1;
      RXSTPIS        at 0 range 2 .. 2;
      NAKOUTIS       at 0 range 3 .. 3;
      NAKINIS        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIS      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIS      at 0 range 11 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   -----------------------------
   -- USBC_UESTA1SET_Register --
   -----------------------------

   subtype UESTA1SET_TXINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA1SET_RXOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA1SET_RXSTPIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA1SET_NAKOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA1SET_NAKINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA1SET_STALLEDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA1SET_RAMACERIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA1SET_NBUSYBKS_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Status Set Register
   type USBC_UESTA1SET_Register is record
      --  Write-only. TXINI Set
      TXINIS         : UESTA1SET_TXINIS_Field := 16#0#;
      --  Write-only. RXOUTI Set
      RXOUTIS        : UESTA1SET_RXOUTIS_Field := 16#0#;
      --  Write-only. RXSTPI Set
      RXSTPIS        : UESTA1SET_RXSTPIS_Field := 16#0#;
      --  Write-only. NAKOUTI Set
      NAKOUTIS       : UESTA1SET_NAKOUTIS_Field := 16#0#;
      --  Write-only. NAKINI Set
      NAKINIS        : UESTA1SET_NAKINIS_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDI Set
      STALLEDIS      : UESTA1SET_STALLEDIS_Field := 16#0#;
      --  unspecified
      Reserved_7_10  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : UESTA1SET_RAMACERIS_Field := 16#0#;
      --  Write-only. NBUSYBK Set
      NBUSYBKS       : UESTA1SET_NBUSYBKS_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA1SET_Register use record
      TXINIS         at 0 range 0 .. 0;
      RXOUTIS        at 0 range 1 .. 1;
      RXSTPIS        at 0 range 2 .. 2;
      NAKOUTIS       at 0 range 3 .. 3;
      NAKINIS        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIS      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIS      at 0 range 11 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   -----------------------------
   -- USBC_UESTA2SET_Register --
   -----------------------------

   subtype UESTA2SET_TXINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA2SET_RXOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA2SET_RXSTPIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA2SET_NAKOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA2SET_NAKINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA2SET_STALLEDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA2SET_RAMACERIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA2SET_NBUSYBKS_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Status Set Register
   type USBC_UESTA2SET_Register is record
      --  Write-only. TXINI Set
      TXINIS         : UESTA2SET_TXINIS_Field := 16#0#;
      --  Write-only. RXOUTI Set
      RXOUTIS        : UESTA2SET_RXOUTIS_Field := 16#0#;
      --  Write-only. RXSTPI Set
      RXSTPIS        : UESTA2SET_RXSTPIS_Field := 16#0#;
      --  Write-only. NAKOUTI Set
      NAKOUTIS       : UESTA2SET_NAKOUTIS_Field := 16#0#;
      --  Write-only. NAKINI Set
      NAKINIS        : UESTA2SET_NAKINIS_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDI Set
      STALLEDIS      : UESTA2SET_STALLEDIS_Field := 16#0#;
      --  unspecified
      Reserved_7_10  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : UESTA2SET_RAMACERIS_Field := 16#0#;
      --  Write-only. NBUSYBK Set
      NBUSYBKS       : UESTA2SET_NBUSYBKS_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA2SET_Register use record
      TXINIS         at 0 range 0 .. 0;
      RXOUTIS        at 0 range 1 .. 1;
      RXSTPIS        at 0 range 2 .. 2;
      NAKOUTIS       at 0 range 3 .. 3;
      NAKINIS        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIS      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIS      at 0 range 11 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   -----------------------------
   -- USBC_UESTA3SET_Register --
   -----------------------------

   subtype UESTA3SET_TXINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA3SET_RXOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA3SET_RXSTPIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA3SET_NAKOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA3SET_NAKINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA3SET_STALLEDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA3SET_RAMACERIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA3SET_NBUSYBKS_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Status Set Register
   type USBC_UESTA3SET_Register is record
      --  Write-only. TXINI Set
      TXINIS         : UESTA3SET_TXINIS_Field := 16#0#;
      --  Write-only. RXOUTI Set
      RXOUTIS        : UESTA3SET_RXOUTIS_Field := 16#0#;
      --  Write-only. RXSTPI Set
      RXSTPIS        : UESTA3SET_RXSTPIS_Field := 16#0#;
      --  Write-only. NAKOUTI Set
      NAKOUTIS       : UESTA3SET_NAKOUTIS_Field := 16#0#;
      --  Write-only. NAKINI Set
      NAKINIS        : UESTA3SET_NAKINIS_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDI Set
      STALLEDIS      : UESTA3SET_STALLEDIS_Field := 16#0#;
      --  unspecified
      Reserved_7_10  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : UESTA3SET_RAMACERIS_Field := 16#0#;
      --  Write-only. NBUSYBK Set
      NBUSYBKS       : UESTA3SET_NBUSYBKS_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA3SET_Register use record
      TXINIS         at 0 range 0 .. 0;
      RXOUTIS        at 0 range 1 .. 1;
      RXSTPIS        at 0 range 2 .. 2;
      NAKOUTIS       at 0 range 3 .. 3;
      NAKINIS        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIS      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIS      at 0 range 11 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   -----------------------------
   -- USBC_UESTA4SET_Register --
   -----------------------------

   subtype UESTA4SET_TXINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA4SET_RXOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA4SET_RXSTPIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA4SET_NAKOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA4SET_NAKINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA4SET_STALLEDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA4SET_RAMACERIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA4SET_NBUSYBKS_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Status Set Register
   type USBC_UESTA4SET_Register is record
      --  Write-only. TXINI Set
      TXINIS         : UESTA4SET_TXINIS_Field := 16#0#;
      --  Write-only. RXOUTI Set
      RXOUTIS        : UESTA4SET_RXOUTIS_Field := 16#0#;
      --  Write-only. RXSTPI Set
      RXSTPIS        : UESTA4SET_RXSTPIS_Field := 16#0#;
      --  Write-only. NAKOUTI Set
      NAKOUTIS       : UESTA4SET_NAKOUTIS_Field := 16#0#;
      --  Write-only. NAKINI Set
      NAKINIS        : UESTA4SET_NAKINIS_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDI Set
      STALLEDIS      : UESTA4SET_STALLEDIS_Field := 16#0#;
      --  unspecified
      Reserved_7_10  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : UESTA4SET_RAMACERIS_Field := 16#0#;
      --  Write-only. NBUSYBK Set
      NBUSYBKS       : UESTA4SET_NBUSYBKS_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA4SET_Register use record
      TXINIS         at 0 range 0 .. 0;
      RXOUTIS        at 0 range 1 .. 1;
      RXSTPIS        at 0 range 2 .. 2;
      NAKOUTIS       at 0 range 3 .. 3;
      NAKINIS        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIS      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIS      at 0 range 11 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   -----------------------------
   -- USBC_UESTA5SET_Register --
   -----------------------------

   subtype UESTA5SET_TXINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA5SET_RXOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA5SET_RXSTPIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA5SET_NAKOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA5SET_NAKINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA5SET_STALLEDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA5SET_RAMACERIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA5SET_NBUSYBKS_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Status Set Register
   type USBC_UESTA5SET_Register is record
      --  Write-only. TXINI Set
      TXINIS         : UESTA5SET_TXINIS_Field := 16#0#;
      --  Write-only. RXOUTI Set
      RXOUTIS        : UESTA5SET_RXOUTIS_Field := 16#0#;
      --  Write-only. RXSTPI Set
      RXSTPIS        : UESTA5SET_RXSTPIS_Field := 16#0#;
      --  Write-only. NAKOUTI Set
      NAKOUTIS       : UESTA5SET_NAKOUTIS_Field := 16#0#;
      --  Write-only. NAKINI Set
      NAKINIS        : UESTA5SET_NAKINIS_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDI Set
      STALLEDIS      : UESTA5SET_STALLEDIS_Field := 16#0#;
      --  unspecified
      Reserved_7_10  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : UESTA5SET_RAMACERIS_Field := 16#0#;
      --  Write-only. NBUSYBK Set
      NBUSYBKS       : UESTA5SET_NBUSYBKS_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA5SET_Register use record
      TXINIS         at 0 range 0 .. 0;
      RXOUTIS        at 0 range 1 .. 1;
      RXSTPIS        at 0 range 2 .. 2;
      NAKOUTIS       at 0 range 3 .. 3;
      NAKINIS        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIS      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIS      at 0 range 11 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   -----------------------------
   -- USBC_UESTA6SET_Register --
   -----------------------------

   subtype UESTA6SET_TXINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA6SET_RXOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA6SET_RXSTPIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA6SET_NAKOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA6SET_NAKINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA6SET_STALLEDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA6SET_RAMACERIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA6SET_NBUSYBKS_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Status Set Register
   type USBC_UESTA6SET_Register is record
      --  Write-only. TXINI Set
      TXINIS         : UESTA6SET_TXINIS_Field := 16#0#;
      --  Write-only. RXOUTI Set
      RXOUTIS        : UESTA6SET_RXOUTIS_Field := 16#0#;
      --  Write-only. RXSTPI Set
      RXSTPIS        : UESTA6SET_RXSTPIS_Field := 16#0#;
      --  Write-only. NAKOUTI Set
      NAKOUTIS       : UESTA6SET_NAKOUTIS_Field := 16#0#;
      --  Write-only. NAKINI Set
      NAKINIS        : UESTA6SET_NAKINIS_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDI Set
      STALLEDIS      : UESTA6SET_STALLEDIS_Field := 16#0#;
      --  unspecified
      Reserved_7_10  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : UESTA6SET_RAMACERIS_Field := 16#0#;
      --  Write-only. NBUSYBK Set
      NBUSYBKS       : UESTA6SET_NBUSYBKS_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA6SET_Register use record
      TXINIS         at 0 range 0 .. 0;
      RXOUTIS        at 0 range 1 .. 1;
      RXSTPIS        at 0 range 2 .. 2;
      NAKOUTIS       at 0 range 3 .. 3;
      NAKINIS        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIS      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIS      at 0 range 11 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   -----------------------------
   -- USBC_UESTA7SET_Register --
   -----------------------------

   subtype UESTA7SET_TXINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA7SET_RXOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA7SET_RXSTPIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA7SET_NAKOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA7SET_NAKINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA7SET_STALLEDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA7SET_RAMACERIS_Field is Interfaces.Bit_Types.Bit;
   subtype UESTA7SET_NBUSYBKS_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Status Set Register
   type USBC_UESTA7SET_Register is record
      --  Write-only. TXINI Set
      TXINIS         : UESTA7SET_TXINIS_Field := 16#0#;
      --  Write-only. RXOUTI Set
      RXOUTIS        : UESTA7SET_RXOUTIS_Field := 16#0#;
      --  Write-only. RXSTPI Set
      RXSTPIS        : UESTA7SET_RXSTPIS_Field := 16#0#;
      --  Write-only. NAKOUTI Set
      NAKOUTIS       : UESTA7SET_NAKOUTIS_Field := 16#0#;
      --  Write-only. NAKINI Set
      NAKINIS        : UESTA7SET_NAKINIS_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDI Set
      STALLEDIS      : UESTA7SET_STALLEDIS_Field := 16#0#;
      --  unspecified
      Reserved_7_10  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : UESTA7SET_RAMACERIS_Field := 16#0#;
      --  Write-only. NBUSYBK Set
      NBUSYBKS       : UESTA7SET_NBUSYBKS_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA7SET_Register use record
      TXINIS         at 0 range 0 .. 0;
      RXOUTIS        at 0 range 1 .. 1;
      RXSTPIS        at 0 range 2 .. 2;
      NAKOUTIS       at 0 range 3 .. 3;
      NAKINIS        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIS      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIS      at 0 range 11 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --------------------
   -- UECON_Register --
   --------------------

   subtype UECON0_TXINE_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0_RXOUTE_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0_RXSTPE_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0_NAKOUTE_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0_NAKINE_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0_STALLEDE_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0_NREPLY_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0_RAMACERE_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0_NBUSYBKE_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0_KILLBK_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0_FIFOCON_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0_NYETDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0_RSTDT_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0_STALLRQ_Field is Interfaces.Bit_Types.Bit;

   -----------------
   -- UECON0.BUSY --
   -----------------

   --  UECON0_BUSY array element
   subtype UECON0_BUSY_Element is Interfaces.Bit_Types.Bit;

   --  UECON0_BUSY array
   type UECON0_BUSY_Field_Array is array (0 .. 1) of UECON0_BUSY_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for UECON0_BUSY
   type UECON0_BUSY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BUSY as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  BUSY as an array
            Arr : UECON0_BUSY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for UECON0_BUSY_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Endpoint Control Register
   type UECON_Register is record
      --  Read-only. TXIN Interrupt Enable
      TXINE          : UECON0_TXINE_Field;
      --  Read-only. RXOUT Interrupt Enable
      RXOUTE         : UECON0_RXOUTE_Field;
      --  Read-only. RXSTP Interrupt Enable
      RXSTPE         : UECON0_RXSTPE_Field;
      --  Read-only. NAKOUT Interrupt Enable
      NAKOUTE        : UECON0_NAKOUTE_Field;
      --  Read-only. NAKIN Interrupt Enable
      NAKINE         : UECON0_NAKINE_Field;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit;
      --  Read-only. STALLED Interrupt Enable
      STALLEDE       : UECON0_STALLEDE_Field;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit;
      --  Read-only. No Reply
      NREPLY         : UECON0_NREPLY_Field;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2;
      --  Read-only. RAMACER Interrupt Enable
      RAMACERE       : UECON0_RAMACERE_Field;
      --  Read-only. Number of Busy Banks Interrupt Enable
      NBUSYBKE       : UECON0_NBUSYBKE_Field;
      --  Read-only. Kill IN Bank
      KILLBK         : UECON0_KILLBK_Field;
      --  Read-only. FIFO Control
      FIFOCON        : UECON0_FIFOCON_Field;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2;
      --  Read-only. NYET token disable
      NYETDIS        : UECON0_NYETDIS_Field;
      --  Read-only. Reset Data Toggle
      RSTDT          : UECON0_RSTDT_Field;
      --  Read-only. STALL Request
      STALLRQ        : UECON0_STALLRQ_Field;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Busy Bank1 Enable
      BUSY           : UECON0_BUSY_Field;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UECON_Register use record
      TXINE          at 0 range 0 .. 0;
      RXOUTE         at 0 range 1 .. 1;
      RXSTPE         at 0 range 2 .. 2;
      NAKOUTE        at 0 range 3 .. 3;
      NAKINE         at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDE       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLY         at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACERE       at 0 range 11 .. 11;
      NBUSYBKE       at 0 range 12 .. 12;
      KILLBK         at 0 range 13 .. 13;
      FIFOCON        at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      NYETDIS        at 0 range 17 .. 17;
      RSTDT          at 0 range 18 .. 18;
      STALLRQ        at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY           at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------------------
   -- USBC_UECON0SET_Register --
   -----------------------------

   subtype UECON0SET_TXINES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0SET_RXOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0SET_RXSTPES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0SET_NAKOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0SET_NAKINES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0SET_STALLEDES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0SET_NREPLYS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0SET_RAMACERES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0SET_NBUSYBKES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0SET_KILLBKS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0SET_NYETDISS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0SET_RSTDTS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0SET_STALLRQS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0SET_BUSY0S_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0SET_BUSY1S_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Control Set Register
   type USBC_UECON0SET_Register is record
      --  Write-only. TXINE Set
      TXINES         : UECON0SET_TXINES_Field := 16#0#;
      --  Write-only. RXOUTE Set
      RXOUTES        : UECON0SET_RXOUTES_Field := 16#0#;
      --  Write-only. RXSTPE Set
      RXSTPES        : UECON0SET_RXSTPES_Field := 16#0#;
      --  Write-only. NAKOUTE Set
      NAKOUTES       : UECON0SET_NAKOUTES_Field := 16#0#;
      --  Write-only. NAKINE Set
      NAKINES        : UECON0SET_NAKINES_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDE Set
      STALLEDES      : UECON0SET_STALLEDES_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NREPLY Set
      NREPLYS        : UECON0SET_NREPLYS_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : UECON0SET_RAMACERES_Field := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : UECON0SET_NBUSYBKES_Field := 16#0#;
      --  Write-only. KILLBK Set
      KILLBKS        : UECON0SET_KILLBKS_Field := 16#0#;
      --  unspecified
      Reserved_14_16 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. NYETDIS Set
      NYETDISS       : UECON0SET_NYETDISS_Field := 16#0#;
      --  Write-only. RSTDT Set
      RSTDTS         : UECON0SET_RSTDTS_Field := 16#0#;
      --  Write-only. STALLRQ Set
      STALLRQS       : UECON0SET_STALLRQS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. BUSY0 Set
      BUSY0S         : UECON0SET_BUSY0S_Field := 16#0#;
      --  Write-only. BUSY1 Set
      BUSY1S         : UECON0SET_BUSY1S_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON0SET_Register use record
      TXINES         at 0 range 0 .. 0;
      RXOUTES        at 0 range 1 .. 1;
      RXSTPES        at 0 range 2 .. 2;
      NAKOUTES       at 0 range 3 .. 3;
      NAKINES        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDES      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYS        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACERES      at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      KILLBKS        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      NYETDISS       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      STALLRQS       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0S         at 0 range 24 .. 24;
      BUSY1S         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------------------
   -- USBC_UECON1SET_Register --
   -----------------------------

   subtype UECON1SET_TXINES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1SET_RXOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1SET_RXSTPES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1SET_NAKOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1SET_NAKINES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1SET_STALLEDES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1SET_NREPLYS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1SET_RAMACERES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1SET_NBUSYBKES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1SET_KILLBKS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1SET_NYETDISS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1SET_RSTDTS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1SET_STALLRQS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1SET_BUSY0S_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1SET_BUSY1S_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Control Set Register
   type USBC_UECON1SET_Register is record
      --  Write-only. TXINE Set
      TXINES         : UECON1SET_TXINES_Field := 16#0#;
      --  Write-only. RXOUTE Set
      RXOUTES        : UECON1SET_RXOUTES_Field := 16#0#;
      --  Write-only. RXSTPE Set
      RXSTPES        : UECON1SET_RXSTPES_Field := 16#0#;
      --  Write-only. NAKOUTE Set
      NAKOUTES       : UECON1SET_NAKOUTES_Field := 16#0#;
      --  Write-only. NAKINE Set
      NAKINES        : UECON1SET_NAKINES_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDE Set
      STALLEDES      : UECON1SET_STALLEDES_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NREPLY Set
      NREPLYS        : UECON1SET_NREPLYS_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : UECON1SET_RAMACERES_Field := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : UECON1SET_NBUSYBKES_Field := 16#0#;
      --  Write-only. KILLBK Set
      KILLBKS        : UECON1SET_KILLBKS_Field := 16#0#;
      --  unspecified
      Reserved_14_16 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. NYETDIS Set
      NYETDISS       : UECON1SET_NYETDISS_Field := 16#0#;
      --  Write-only. RSTDT Set
      RSTDTS         : UECON1SET_RSTDTS_Field := 16#0#;
      --  Write-only. STALLRQ Set
      STALLRQS       : UECON1SET_STALLRQS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. BUSY0 Set
      BUSY0S         : UECON1SET_BUSY0S_Field := 16#0#;
      --  Write-only. BUSY1 Set
      BUSY1S         : UECON1SET_BUSY1S_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON1SET_Register use record
      TXINES         at 0 range 0 .. 0;
      RXOUTES        at 0 range 1 .. 1;
      RXSTPES        at 0 range 2 .. 2;
      NAKOUTES       at 0 range 3 .. 3;
      NAKINES        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDES      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYS        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACERES      at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      KILLBKS        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      NYETDISS       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      STALLRQS       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0S         at 0 range 24 .. 24;
      BUSY1S         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------------------
   -- USBC_UECON2SET_Register --
   -----------------------------

   subtype UECON2SET_TXINES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2SET_RXOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2SET_RXSTPES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2SET_NAKOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2SET_NAKINES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2SET_STALLEDES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2SET_NREPLYS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2SET_RAMACERES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2SET_NBUSYBKES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2SET_KILLBKS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2SET_NYETDISS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2SET_RSTDTS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2SET_STALLRQS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2SET_BUSY0S_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2SET_BUSY1S_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Control Set Register
   type USBC_UECON2SET_Register is record
      --  Write-only. TXINE Set
      TXINES         : UECON2SET_TXINES_Field := 16#0#;
      --  Write-only. RXOUTE Set
      RXOUTES        : UECON2SET_RXOUTES_Field := 16#0#;
      --  Write-only. RXSTPE Set
      RXSTPES        : UECON2SET_RXSTPES_Field := 16#0#;
      --  Write-only. NAKOUTE Set
      NAKOUTES       : UECON2SET_NAKOUTES_Field := 16#0#;
      --  Write-only. NAKINE Set
      NAKINES        : UECON2SET_NAKINES_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDE Set
      STALLEDES      : UECON2SET_STALLEDES_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NREPLY Set
      NREPLYS        : UECON2SET_NREPLYS_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : UECON2SET_RAMACERES_Field := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : UECON2SET_NBUSYBKES_Field := 16#0#;
      --  Write-only. KILLBK Set
      KILLBKS        : UECON2SET_KILLBKS_Field := 16#0#;
      --  unspecified
      Reserved_14_16 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. NYETDIS Set
      NYETDISS       : UECON2SET_NYETDISS_Field := 16#0#;
      --  Write-only. RSTDT Set
      RSTDTS         : UECON2SET_RSTDTS_Field := 16#0#;
      --  Write-only. STALLRQ Set
      STALLRQS       : UECON2SET_STALLRQS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. BUSY0 Set
      BUSY0S         : UECON2SET_BUSY0S_Field := 16#0#;
      --  Write-only. BUSY1 Set
      BUSY1S         : UECON2SET_BUSY1S_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON2SET_Register use record
      TXINES         at 0 range 0 .. 0;
      RXOUTES        at 0 range 1 .. 1;
      RXSTPES        at 0 range 2 .. 2;
      NAKOUTES       at 0 range 3 .. 3;
      NAKINES        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDES      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYS        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACERES      at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      KILLBKS        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      NYETDISS       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      STALLRQS       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0S         at 0 range 24 .. 24;
      BUSY1S         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------------------
   -- USBC_UECON3SET_Register --
   -----------------------------

   subtype UECON3SET_TXINES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3SET_RXOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3SET_RXSTPES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3SET_NAKOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3SET_NAKINES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3SET_STALLEDES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3SET_NREPLYS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3SET_RAMACERES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3SET_NBUSYBKES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3SET_KILLBKS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3SET_NYETDISS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3SET_RSTDTS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3SET_STALLRQS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3SET_BUSY0S_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3SET_BUSY1S_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Control Set Register
   type USBC_UECON3SET_Register is record
      --  Write-only. TXINE Set
      TXINES         : UECON3SET_TXINES_Field := 16#0#;
      --  Write-only. RXOUTE Set
      RXOUTES        : UECON3SET_RXOUTES_Field := 16#0#;
      --  Write-only. RXSTPE Set
      RXSTPES        : UECON3SET_RXSTPES_Field := 16#0#;
      --  Write-only. NAKOUTE Set
      NAKOUTES       : UECON3SET_NAKOUTES_Field := 16#0#;
      --  Write-only. NAKINE Set
      NAKINES        : UECON3SET_NAKINES_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDE Set
      STALLEDES      : UECON3SET_STALLEDES_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NREPLY Set
      NREPLYS        : UECON3SET_NREPLYS_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : UECON3SET_RAMACERES_Field := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : UECON3SET_NBUSYBKES_Field := 16#0#;
      --  Write-only. KILLBK Set
      KILLBKS        : UECON3SET_KILLBKS_Field := 16#0#;
      --  unspecified
      Reserved_14_16 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. NYETDIS Set
      NYETDISS       : UECON3SET_NYETDISS_Field := 16#0#;
      --  Write-only. RSTDT Set
      RSTDTS         : UECON3SET_RSTDTS_Field := 16#0#;
      --  Write-only. STALLRQ Set
      STALLRQS       : UECON3SET_STALLRQS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. BUSY0 Set
      BUSY0S         : UECON3SET_BUSY0S_Field := 16#0#;
      --  Write-only. BUSY1 Set
      BUSY1S         : UECON3SET_BUSY1S_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON3SET_Register use record
      TXINES         at 0 range 0 .. 0;
      RXOUTES        at 0 range 1 .. 1;
      RXSTPES        at 0 range 2 .. 2;
      NAKOUTES       at 0 range 3 .. 3;
      NAKINES        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDES      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYS        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACERES      at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      KILLBKS        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      NYETDISS       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      STALLRQS       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0S         at 0 range 24 .. 24;
      BUSY1S         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------------------
   -- USBC_UECON4SET_Register --
   -----------------------------

   subtype UECON4SET_TXINES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4SET_RXOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4SET_RXSTPES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4SET_NAKOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4SET_NAKINES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4SET_STALLEDES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4SET_NREPLYS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4SET_RAMACERES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4SET_NBUSYBKES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4SET_KILLBKS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4SET_NYETDISS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4SET_RSTDTS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4SET_STALLRQS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4SET_BUSY0S_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4SET_BUSY1S_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Control Set Register
   type USBC_UECON4SET_Register is record
      --  Write-only. TXINE Set
      TXINES         : UECON4SET_TXINES_Field := 16#0#;
      --  Write-only. RXOUTE Set
      RXOUTES        : UECON4SET_RXOUTES_Field := 16#0#;
      --  Write-only. RXSTPE Set
      RXSTPES        : UECON4SET_RXSTPES_Field := 16#0#;
      --  Write-only. NAKOUTE Set
      NAKOUTES       : UECON4SET_NAKOUTES_Field := 16#0#;
      --  Write-only. NAKINE Set
      NAKINES        : UECON4SET_NAKINES_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDE Set
      STALLEDES      : UECON4SET_STALLEDES_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NREPLY Set
      NREPLYS        : UECON4SET_NREPLYS_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : UECON4SET_RAMACERES_Field := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : UECON4SET_NBUSYBKES_Field := 16#0#;
      --  Write-only. KILLBK Set
      KILLBKS        : UECON4SET_KILLBKS_Field := 16#0#;
      --  unspecified
      Reserved_14_16 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. NYETDIS Set
      NYETDISS       : UECON4SET_NYETDISS_Field := 16#0#;
      --  Write-only. RSTDT Set
      RSTDTS         : UECON4SET_RSTDTS_Field := 16#0#;
      --  Write-only. STALLRQ Set
      STALLRQS       : UECON4SET_STALLRQS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. BUSY0 Set
      BUSY0S         : UECON4SET_BUSY0S_Field := 16#0#;
      --  Write-only. BUSY1 Set
      BUSY1S         : UECON4SET_BUSY1S_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON4SET_Register use record
      TXINES         at 0 range 0 .. 0;
      RXOUTES        at 0 range 1 .. 1;
      RXSTPES        at 0 range 2 .. 2;
      NAKOUTES       at 0 range 3 .. 3;
      NAKINES        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDES      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYS        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACERES      at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      KILLBKS        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      NYETDISS       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      STALLRQS       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0S         at 0 range 24 .. 24;
      BUSY1S         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------------------
   -- USBC_UECON5SET_Register --
   -----------------------------

   subtype UECON5SET_TXINES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5SET_RXOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5SET_RXSTPES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5SET_NAKOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5SET_NAKINES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5SET_STALLEDES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5SET_NREPLYS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5SET_RAMACERES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5SET_NBUSYBKES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5SET_KILLBKS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5SET_NYETDISS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5SET_RSTDTS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5SET_STALLRQS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5SET_BUSY0S_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5SET_BUSY1S_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Control Set Register
   type USBC_UECON5SET_Register is record
      --  Write-only. TXINE Set
      TXINES         : UECON5SET_TXINES_Field := 16#0#;
      --  Write-only. RXOUTE Set
      RXOUTES        : UECON5SET_RXOUTES_Field := 16#0#;
      --  Write-only. RXSTPE Set
      RXSTPES        : UECON5SET_RXSTPES_Field := 16#0#;
      --  Write-only. NAKOUTE Set
      NAKOUTES       : UECON5SET_NAKOUTES_Field := 16#0#;
      --  Write-only. NAKINE Set
      NAKINES        : UECON5SET_NAKINES_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDE Set
      STALLEDES      : UECON5SET_STALLEDES_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NREPLY Set
      NREPLYS        : UECON5SET_NREPLYS_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : UECON5SET_RAMACERES_Field := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : UECON5SET_NBUSYBKES_Field := 16#0#;
      --  Write-only. KILLBK Set
      KILLBKS        : UECON5SET_KILLBKS_Field := 16#0#;
      --  unspecified
      Reserved_14_16 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. NYETDIS Set
      NYETDISS       : UECON5SET_NYETDISS_Field := 16#0#;
      --  Write-only. RSTDT Set
      RSTDTS         : UECON5SET_RSTDTS_Field := 16#0#;
      --  Write-only. STALLRQ Set
      STALLRQS       : UECON5SET_STALLRQS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. BUSY0 Set
      BUSY0S         : UECON5SET_BUSY0S_Field := 16#0#;
      --  Write-only. BUSY1 Set
      BUSY1S         : UECON5SET_BUSY1S_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON5SET_Register use record
      TXINES         at 0 range 0 .. 0;
      RXOUTES        at 0 range 1 .. 1;
      RXSTPES        at 0 range 2 .. 2;
      NAKOUTES       at 0 range 3 .. 3;
      NAKINES        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDES      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYS        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACERES      at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      KILLBKS        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      NYETDISS       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      STALLRQS       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0S         at 0 range 24 .. 24;
      BUSY1S         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------------------
   -- USBC_UECON6SET_Register --
   -----------------------------

   subtype UECON6SET_TXINES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6SET_RXOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6SET_RXSTPES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6SET_NAKOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6SET_NAKINES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6SET_STALLEDES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6SET_NREPLYS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6SET_RAMACERES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6SET_NBUSYBKES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6SET_KILLBKS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6SET_NYETDISS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6SET_RSTDTS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6SET_STALLRQS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6SET_BUSY0S_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6SET_BUSY1S_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Control Set Register
   type USBC_UECON6SET_Register is record
      --  Write-only. TXINE Set
      TXINES         : UECON6SET_TXINES_Field := 16#0#;
      --  Write-only. RXOUTE Set
      RXOUTES        : UECON6SET_RXOUTES_Field := 16#0#;
      --  Write-only. RXSTPE Set
      RXSTPES        : UECON6SET_RXSTPES_Field := 16#0#;
      --  Write-only. NAKOUTE Set
      NAKOUTES       : UECON6SET_NAKOUTES_Field := 16#0#;
      --  Write-only. NAKINE Set
      NAKINES        : UECON6SET_NAKINES_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDE Set
      STALLEDES      : UECON6SET_STALLEDES_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NREPLY Set
      NREPLYS        : UECON6SET_NREPLYS_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : UECON6SET_RAMACERES_Field := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : UECON6SET_NBUSYBKES_Field := 16#0#;
      --  Write-only. KILLBK Set
      KILLBKS        : UECON6SET_KILLBKS_Field := 16#0#;
      --  unspecified
      Reserved_14_16 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. NYETDIS Set
      NYETDISS       : UECON6SET_NYETDISS_Field := 16#0#;
      --  Write-only. RSTDT Set
      RSTDTS         : UECON6SET_RSTDTS_Field := 16#0#;
      --  Write-only. STALLRQ Set
      STALLRQS       : UECON6SET_STALLRQS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. BUSY0 Set
      BUSY0S         : UECON6SET_BUSY0S_Field := 16#0#;
      --  Write-only. BUSY1 Set
      BUSY1S         : UECON6SET_BUSY1S_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON6SET_Register use record
      TXINES         at 0 range 0 .. 0;
      RXOUTES        at 0 range 1 .. 1;
      RXSTPES        at 0 range 2 .. 2;
      NAKOUTES       at 0 range 3 .. 3;
      NAKINES        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDES      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYS        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACERES      at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      KILLBKS        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      NYETDISS       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      STALLRQS       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0S         at 0 range 24 .. 24;
      BUSY1S         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------------------
   -- USBC_UECON7SET_Register --
   -----------------------------

   subtype UECON7SET_TXINES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7SET_RXOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7SET_RXSTPES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7SET_NAKOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7SET_NAKINES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7SET_STALLEDES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7SET_NREPLYS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7SET_RAMACERES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7SET_NBUSYBKES_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7SET_KILLBKS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7SET_NYETDISS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7SET_RSTDTS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7SET_STALLRQS_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7SET_BUSY0S_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7SET_BUSY1S_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Control Set Register
   type USBC_UECON7SET_Register is record
      --  Write-only. TXINE Set
      TXINES         : UECON7SET_TXINES_Field := 16#0#;
      --  Write-only. RXOUTE Set
      RXOUTES        : UECON7SET_RXOUTES_Field := 16#0#;
      --  Write-only. RXSTPE Set
      RXSTPES        : UECON7SET_RXSTPES_Field := 16#0#;
      --  Write-only. NAKOUTE Set
      NAKOUTES       : UECON7SET_NAKOUTES_Field := 16#0#;
      --  Write-only. NAKINE Set
      NAKINES        : UECON7SET_NAKINES_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDE Set
      STALLEDES      : UECON7SET_STALLEDES_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NREPLY Set
      NREPLYS        : UECON7SET_NREPLYS_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : UECON7SET_RAMACERES_Field := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : UECON7SET_NBUSYBKES_Field := 16#0#;
      --  Write-only. KILLBK Set
      KILLBKS        : UECON7SET_KILLBKS_Field := 16#0#;
      --  unspecified
      Reserved_14_16 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. NYETDIS Set
      NYETDISS       : UECON7SET_NYETDISS_Field := 16#0#;
      --  Write-only. RSTDT Set
      RSTDTS         : UECON7SET_RSTDTS_Field := 16#0#;
      --  Write-only. STALLRQ Set
      STALLRQS       : UECON7SET_STALLRQS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. BUSY0 Set
      BUSY0S         : UECON7SET_BUSY0S_Field := 16#0#;
      --  Write-only. BUSY1 Set
      BUSY1S         : UECON7SET_BUSY1S_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON7SET_Register use record
      TXINES         at 0 range 0 .. 0;
      RXOUTES        at 0 range 1 .. 1;
      RXSTPES        at 0 range 2 .. 2;
      NAKOUTES       at 0 range 3 .. 3;
      NAKINES        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDES      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYS        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACERES      at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      KILLBKS        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      NYETDISS       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      STALLRQS       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0S         at 0 range 24 .. 24;
      BUSY1S         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------------------
   -- USBC_UECON0CLR_Register --
   -----------------------------

   subtype UECON0CLR_TXINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0CLR_RXOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0CLR_RXSTPEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0CLR_NAKOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0CLR_NAKINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0CLR_STALLEDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0CLR_NREPLYC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0CLR_RAMACEREC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0CLR_NBUSYBKEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0CLR_FIFOCONC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0CLR_NYETDISC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0CLR_STALLRQC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0CLR_BUSY0C_Field is Interfaces.Bit_Types.Bit;
   subtype UECON0CLR_BUSY1C_Field is Interfaces.Bit_Types.Bit;

   --  Endpoint Control Clear Register
   type USBC_UECON0CLR_Register is record
      --  Write-only. TXINE Clear
      TXINEC         : UECON0CLR_TXINEC_Field := 16#0#;
      --  Write-only. RXOUTE Clear
      RXOUTEC        : UECON0CLR_RXOUTEC_Field := 16#0#;
      --  Write-only. RXSTPE Clear
      RXSTPEC        : UECON0CLR_RXSTPEC_Field := 16#0#;
      --  Write-only. NAKOUTE Clear
      NAKOUTEC       : UECON0CLR_NAKOUTEC_Field := 16#0#;
      --  Write-only. NAKINE Clear
      NAKINEC        : UECON0CLR_NAKINEC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDE Clear
      STALLEDEC      : UECON0CLR_STALLEDEC_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NREPLY Clear
      NREPLYC        : UECON0CLR_NREPLYC_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : UECON0CLR_RAMACEREC_Field := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : UECON0CLR_NBUSYBKEC_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : UECON0CLR_FIFOCONC_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. NYETDIS Clear
      NYETDISC       : UECON0CLR_NYETDISC_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLRQ Clear
      STALLRQC       : UECON0CLR_STALLRQC_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. BUSY0 Clear
      BUSY0C         : UECON0CLR_BUSY0C_Field := 16#0#;
      --  Write-only. BUSY1 Clear
      BUSY1C         : UECON0CLR_BUSY1C_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON0CLR_Register use record
      TXINEC         at 0 range 0 .. 0;
      RXOUTEC        at 0 range 1 .. 1;
      RXSTPEC        at 0 range 2 .. 2;
      NAKOUTEC       at 0 range 3 .. 3;
      NAKINEC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDEC      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYC        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACEREC      at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      NYETDISC       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      STALLRQC       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0C         at 0 range 24 .. 24;
      BUSY1C         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------------------
   -- USBC_UECON1CLR_Register --
   -----------------------------

   subtype UECON1CLR_TXINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1CLR_RXOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1CLR_RXSTPEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1CLR_NAKOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1CLR_NAKINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1CLR_STALLEDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1CLR_NREPLYC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1CLR_RAMACEREC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1CLR_NBUSYBKEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1CLR_FIFOCONC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1CLR_NYETDISC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1CLR_STALLRQC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1CLR_BUSY0C_Field is Interfaces.Bit_Types.Bit;
   subtype UECON1CLR_BUSY1C_Field is Interfaces.Bit_Types.Bit;

   --  TXINE Clear
   type USBC_UECON1CLR_Register is record
      --  Write-only. TXINE Clear
      TXINEC         : UECON1CLR_TXINEC_Field := 16#0#;
      --  Write-only. RXOUTE Clear
      RXOUTEC        : UECON1CLR_RXOUTEC_Field := 16#0#;
      --  Write-only. RXOUTE Clear
      RXSTPEC        : UECON1CLR_RXSTPEC_Field := 16#0#;
      --  Write-only. NAKOUTE Clear
      NAKOUTEC       : UECON1CLR_NAKOUTEC_Field := 16#0#;
      --  Write-only. NAKINE Clear
      NAKINEC        : UECON1CLR_NAKINEC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. RXSTPE Clear
      STALLEDEC      : UECON1CLR_STALLEDEC_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NREPLY Clear
      NREPLYC        : UECON1CLR_NREPLYC_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : UECON1CLR_RAMACEREC_Field := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : UECON1CLR_NBUSYBKEC_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : UECON1CLR_FIFOCONC_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. NYETDIS Clear
      NYETDISC       : UECON1CLR_NYETDISC_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDE Clear
      STALLRQC       : UECON1CLR_STALLRQC_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. BUSY0 Clear
      BUSY0C         : UECON1CLR_BUSY0C_Field := 16#0#;
      --  Write-only. BUSY1 Clear
      BUSY1C         : UECON1CLR_BUSY1C_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON1CLR_Register use record
      TXINEC         at 0 range 0 .. 0;
      RXOUTEC        at 0 range 1 .. 1;
      RXSTPEC        at 0 range 2 .. 2;
      NAKOUTEC       at 0 range 3 .. 3;
      NAKINEC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDEC      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYC        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACEREC      at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      NYETDISC       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      STALLRQC       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0C         at 0 range 24 .. 24;
      BUSY1C         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------------------
   -- USBC_UECON2CLR_Register --
   -----------------------------

   subtype UECON2CLR_TXINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2CLR_RXOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2CLR_RXSTPEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2CLR_NAKOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2CLR_NAKINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2CLR_STALLEDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2CLR_NREPLYC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2CLR_RAMACEREC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2CLR_NBUSYBKEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2CLR_FIFOCONC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2CLR_NYETDISC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2CLR_STALLRQC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2CLR_BUSY0C_Field is Interfaces.Bit_Types.Bit;
   subtype UECON2CLR_BUSY1C_Field is Interfaces.Bit_Types.Bit;

   --  TXINE Clear
   type USBC_UECON2CLR_Register is record
      --  Write-only. TXINE Clear
      TXINEC         : UECON2CLR_TXINEC_Field := 16#0#;
      --  Write-only. RXOUTE Clear
      RXOUTEC        : UECON2CLR_RXOUTEC_Field := 16#0#;
      --  Write-only. RXOUTE Clear
      RXSTPEC        : UECON2CLR_RXSTPEC_Field := 16#0#;
      --  Write-only. NAKOUTE Clear
      NAKOUTEC       : UECON2CLR_NAKOUTEC_Field := 16#0#;
      --  Write-only. NAKINE Clear
      NAKINEC        : UECON2CLR_NAKINEC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. RXSTPE Clear
      STALLEDEC      : UECON2CLR_STALLEDEC_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NREPLY Clear
      NREPLYC        : UECON2CLR_NREPLYC_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : UECON2CLR_RAMACEREC_Field := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : UECON2CLR_NBUSYBKEC_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : UECON2CLR_FIFOCONC_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. NYETDIS Clear
      NYETDISC       : UECON2CLR_NYETDISC_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDE Clear
      STALLRQC       : UECON2CLR_STALLRQC_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. BUSY0 Clear
      BUSY0C         : UECON2CLR_BUSY0C_Field := 16#0#;
      --  Write-only. BUSY1 Clear
      BUSY1C         : UECON2CLR_BUSY1C_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON2CLR_Register use record
      TXINEC         at 0 range 0 .. 0;
      RXOUTEC        at 0 range 1 .. 1;
      RXSTPEC        at 0 range 2 .. 2;
      NAKOUTEC       at 0 range 3 .. 3;
      NAKINEC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDEC      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYC        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACEREC      at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      NYETDISC       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      STALLRQC       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0C         at 0 range 24 .. 24;
      BUSY1C         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------------------
   -- USBC_UECON3CLR_Register --
   -----------------------------

   subtype UECON3CLR_TXINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3CLR_RXOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3CLR_RXSTPEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3CLR_NAKOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3CLR_NAKINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3CLR_STALLEDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3CLR_NREPLYC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3CLR_RAMACEREC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3CLR_NBUSYBKEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3CLR_FIFOCONC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3CLR_NYETDISC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3CLR_STALLRQC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3CLR_BUSY0C_Field is Interfaces.Bit_Types.Bit;
   subtype UECON3CLR_BUSY1C_Field is Interfaces.Bit_Types.Bit;

   --  TXINE Clear
   type USBC_UECON3CLR_Register is record
      --  Write-only. TXINE Clear
      TXINEC         : UECON3CLR_TXINEC_Field := 16#0#;
      --  Write-only. RXOUTE Clear
      RXOUTEC        : UECON3CLR_RXOUTEC_Field := 16#0#;
      --  Write-only. RXOUTE Clear
      RXSTPEC        : UECON3CLR_RXSTPEC_Field := 16#0#;
      --  Write-only. NAKOUTE Clear
      NAKOUTEC       : UECON3CLR_NAKOUTEC_Field := 16#0#;
      --  Write-only. NAKINE Clear
      NAKINEC        : UECON3CLR_NAKINEC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. RXSTPE Clear
      STALLEDEC      : UECON3CLR_STALLEDEC_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NREPLY Clear
      NREPLYC        : UECON3CLR_NREPLYC_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : UECON3CLR_RAMACEREC_Field := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : UECON3CLR_NBUSYBKEC_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : UECON3CLR_FIFOCONC_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. NYETDIS Clear
      NYETDISC       : UECON3CLR_NYETDISC_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDE Clear
      STALLRQC       : UECON3CLR_STALLRQC_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. BUSY0 Clear
      BUSY0C         : UECON3CLR_BUSY0C_Field := 16#0#;
      --  Write-only. BUSY1 Clear
      BUSY1C         : UECON3CLR_BUSY1C_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON3CLR_Register use record
      TXINEC         at 0 range 0 .. 0;
      RXOUTEC        at 0 range 1 .. 1;
      RXSTPEC        at 0 range 2 .. 2;
      NAKOUTEC       at 0 range 3 .. 3;
      NAKINEC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDEC      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYC        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACEREC      at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      NYETDISC       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      STALLRQC       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0C         at 0 range 24 .. 24;
      BUSY1C         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------------------
   -- USBC_UECON4CLR_Register --
   -----------------------------

   subtype UECON4CLR_TXINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4CLR_RXOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4CLR_RXSTPEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4CLR_NAKOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4CLR_NAKINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4CLR_STALLEDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4CLR_NREPLYC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4CLR_RAMACEREC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4CLR_NBUSYBKEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4CLR_FIFOCONC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4CLR_NYETDISC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4CLR_STALLRQC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4CLR_BUSY0C_Field is Interfaces.Bit_Types.Bit;
   subtype UECON4CLR_BUSY1C_Field is Interfaces.Bit_Types.Bit;

   --  TXINE Clear
   type USBC_UECON4CLR_Register is record
      --  Write-only. TXINE Clear
      TXINEC         : UECON4CLR_TXINEC_Field := 16#0#;
      --  Write-only. RXOUTE Clear
      RXOUTEC        : UECON4CLR_RXOUTEC_Field := 16#0#;
      --  Write-only. RXOUTE Clear
      RXSTPEC        : UECON4CLR_RXSTPEC_Field := 16#0#;
      --  Write-only. NAKOUTE Clear
      NAKOUTEC       : UECON4CLR_NAKOUTEC_Field := 16#0#;
      --  Write-only. NAKINE Clear
      NAKINEC        : UECON4CLR_NAKINEC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. RXSTPE Clear
      STALLEDEC      : UECON4CLR_STALLEDEC_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NREPLY Clear
      NREPLYC        : UECON4CLR_NREPLYC_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : UECON4CLR_RAMACEREC_Field := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : UECON4CLR_NBUSYBKEC_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : UECON4CLR_FIFOCONC_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. NYETDIS Clear
      NYETDISC       : UECON4CLR_NYETDISC_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDE Clear
      STALLRQC       : UECON4CLR_STALLRQC_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. BUSY0 Clear
      BUSY0C         : UECON4CLR_BUSY0C_Field := 16#0#;
      --  Write-only. BUSY1 Clear
      BUSY1C         : UECON4CLR_BUSY1C_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON4CLR_Register use record
      TXINEC         at 0 range 0 .. 0;
      RXOUTEC        at 0 range 1 .. 1;
      RXSTPEC        at 0 range 2 .. 2;
      NAKOUTEC       at 0 range 3 .. 3;
      NAKINEC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDEC      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYC        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACEREC      at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      NYETDISC       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      STALLRQC       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0C         at 0 range 24 .. 24;
      BUSY1C         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------------------
   -- USBC_UECON5CLR_Register --
   -----------------------------

   subtype UECON5CLR_TXINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5CLR_RXOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5CLR_RXSTPEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5CLR_NAKOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5CLR_NAKINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5CLR_STALLEDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5CLR_NREPLYC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5CLR_RAMACEREC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5CLR_NBUSYBKEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5CLR_FIFOCONC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5CLR_NYETDISC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5CLR_STALLRQC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5CLR_BUSY0C_Field is Interfaces.Bit_Types.Bit;
   subtype UECON5CLR_BUSY1C_Field is Interfaces.Bit_Types.Bit;

   --  TXINE Clear
   type USBC_UECON5CLR_Register is record
      --  Write-only. TXINE Clear
      TXINEC         : UECON5CLR_TXINEC_Field := 16#0#;
      --  Write-only. RXOUTE Clear
      RXOUTEC        : UECON5CLR_RXOUTEC_Field := 16#0#;
      --  Write-only. RXOUTE Clear
      RXSTPEC        : UECON5CLR_RXSTPEC_Field := 16#0#;
      --  Write-only. NAKOUTE Clear
      NAKOUTEC       : UECON5CLR_NAKOUTEC_Field := 16#0#;
      --  Write-only. NAKINE Clear
      NAKINEC        : UECON5CLR_NAKINEC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. RXSTPE Clear
      STALLEDEC      : UECON5CLR_STALLEDEC_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NREPLY Clear
      NREPLYC        : UECON5CLR_NREPLYC_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : UECON5CLR_RAMACEREC_Field := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : UECON5CLR_NBUSYBKEC_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : UECON5CLR_FIFOCONC_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. NYETDIS Clear
      NYETDISC       : UECON5CLR_NYETDISC_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDE Clear
      STALLRQC       : UECON5CLR_STALLRQC_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. BUSY0 Clear
      BUSY0C         : UECON5CLR_BUSY0C_Field := 16#0#;
      --  Write-only. BUSY1 Clear
      BUSY1C         : UECON5CLR_BUSY1C_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON5CLR_Register use record
      TXINEC         at 0 range 0 .. 0;
      RXOUTEC        at 0 range 1 .. 1;
      RXSTPEC        at 0 range 2 .. 2;
      NAKOUTEC       at 0 range 3 .. 3;
      NAKINEC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDEC      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYC        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACEREC      at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      NYETDISC       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      STALLRQC       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0C         at 0 range 24 .. 24;
      BUSY1C         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------------------
   -- USBC_UECON6CLR_Register --
   -----------------------------

   subtype UECON6CLR_TXINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6CLR_RXOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6CLR_RXSTPEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6CLR_NAKOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6CLR_NAKINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6CLR_STALLEDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6CLR_NREPLYC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6CLR_RAMACEREC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6CLR_NBUSYBKEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6CLR_FIFOCONC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6CLR_NYETDISC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6CLR_STALLRQC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6CLR_BUSY0C_Field is Interfaces.Bit_Types.Bit;
   subtype UECON6CLR_BUSY1C_Field is Interfaces.Bit_Types.Bit;

   --  TXINE Clear
   type USBC_UECON6CLR_Register is record
      --  Write-only. TXINE Clear
      TXINEC         : UECON6CLR_TXINEC_Field := 16#0#;
      --  Write-only. RXOUTE Clear
      RXOUTEC        : UECON6CLR_RXOUTEC_Field := 16#0#;
      --  Write-only. RXOUTE Clear
      RXSTPEC        : UECON6CLR_RXSTPEC_Field := 16#0#;
      --  Write-only. NAKOUTE Clear
      NAKOUTEC       : UECON6CLR_NAKOUTEC_Field := 16#0#;
      --  Write-only. NAKINE Clear
      NAKINEC        : UECON6CLR_NAKINEC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. RXSTPE Clear
      STALLEDEC      : UECON6CLR_STALLEDEC_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NREPLY Clear
      NREPLYC        : UECON6CLR_NREPLYC_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : UECON6CLR_RAMACEREC_Field := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : UECON6CLR_NBUSYBKEC_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : UECON6CLR_FIFOCONC_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. NYETDIS Clear
      NYETDISC       : UECON6CLR_NYETDISC_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDE Clear
      STALLRQC       : UECON6CLR_STALLRQC_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. BUSY0 Clear
      BUSY0C         : UECON6CLR_BUSY0C_Field := 16#0#;
      --  Write-only. BUSY1 Clear
      BUSY1C         : UECON6CLR_BUSY1C_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON6CLR_Register use record
      TXINEC         at 0 range 0 .. 0;
      RXOUTEC        at 0 range 1 .. 1;
      RXSTPEC        at 0 range 2 .. 2;
      NAKOUTEC       at 0 range 3 .. 3;
      NAKINEC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDEC      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYC        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACEREC      at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      NYETDISC       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      STALLRQC       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0C         at 0 range 24 .. 24;
      BUSY1C         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------------------
   -- USBC_UECON7CLR_Register --
   -----------------------------

   subtype UECON7CLR_TXINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7CLR_RXOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7CLR_RXSTPEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7CLR_NAKOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7CLR_NAKINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7CLR_STALLEDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7CLR_NREPLYC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7CLR_RAMACEREC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7CLR_NBUSYBKEC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7CLR_FIFOCONC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7CLR_NYETDISC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7CLR_STALLRQC_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7CLR_BUSY0C_Field is Interfaces.Bit_Types.Bit;
   subtype UECON7CLR_BUSY1C_Field is Interfaces.Bit_Types.Bit;

   --  TXINE Clear
   type USBC_UECON7CLR_Register is record
      --  Write-only. TXINE Clear
      TXINEC         : UECON7CLR_TXINEC_Field := 16#0#;
      --  Write-only. RXOUTE Clear
      RXOUTEC        : UECON7CLR_RXOUTEC_Field := 16#0#;
      --  Write-only. RXOUTE Clear
      RXSTPEC        : UECON7CLR_RXSTPEC_Field := 16#0#;
      --  Write-only. NAKOUTE Clear
      NAKOUTEC       : UECON7CLR_NAKOUTEC_Field := 16#0#;
      --  Write-only. NAKINE Clear
      NAKINEC        : UECON7CLR_NAKINEC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. RXSTPE Clear
      STALLEDEC      : UECON7CLR_STALLEDEC_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NREPLY Clear
      NREPLYC        : UECON7CLR_NREPLYC_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : UECON7CLR_RAMACEREC_Field := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : UECON7CLR_NBUSYBKEC_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : UECON7CLR_FIFOCONC_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. NYETDIS Clear
      NYETDISC       : UECON7CLR_NYETDISC_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. STALLEDE Clear
      STALLRQC       : UECON7CLR_STALLRQC_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. BUSY0 Clear
      BUSY0C         : UECON7CLR_BUSY0C_Field := 16#0#;
      --  Write-only. BUSY1 Clear
      BUSY1C         : UECON7CLR_BUSY1C_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON7CLR_Register use record
      TXINEC         at 0 range 0 .. 0;
      RXOUTEC        at 0 range 1 .. 1;
      RXSTPEC        at 0 range 2 .. 2;
      NAKOUTEC       at 0 range 3 .. 3;
      NAKINEC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDEC      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYC        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACEREC      at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      NYETDISC       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      STALLRQC       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0C         at 0 range 24 .. 24;
      BUSY1C         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -------------------------
   -- USBC_UHCON_Register --
   -------------------------

   subtype UHCON_SOFE_Field is Interfaces.Bit_Types.Bit;
   subtype UHCON_RESET_Field is Interfaces.Bit_Types.Bit;
   subtype UHCON_RESUME_Field is Interfaces.Bit_Types.Bit;
   subtype UHCON_SPDCONF_Field is Interfaces.Bit_Types.UInt2;
   subtype UHCON_TSTJ_Field is Interfaces.Bit_Types.Bit;
   subtype UHCON_TSTK_Field is Interfaces.Bit_Types.Bit;

   --  Host General Control Register
   type USBC_UHCON_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  SOF Enable
      SOFE           : UHCON_SOFE_Field := 16#0#;
      --  Send USB Reset
      RESET          : UHCON_RESET_Field := 16#0#;
      --  Send USB Resume
      RESUME         : UHCON_RESUME_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Speed Configuration
      SPDCONF        : UHCON_SPDCONF_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Test J
      TSTJ           : UHCON_TSTJ_Field := 16#0#;
      --  Test K
      TSTK           : UHCON_TSTK_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UHCON_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      SOFE           at 0 range 8 .. 8;
      RESET          at 0 range 9 .. 9;
      RESUME         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SPDCONF        at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      TSTJ           at 0 range 16 .. 16;
      TSTK           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   -------------------------
   -- USBC_UHINT_Register --
   -------------------------

   subtype UHINT_DCONNI_Field is Interfaces.Bit_Types.Bit;
   subtype UHINT_DDISCI_Field is Interfaces.Bit_Types.Bit;
   subtype UHINT_RSTI_Field is Interfaces.Bit_Types.Bit;
   subtype UHINT_RSMEDI_Field is Interfaces.Bit_Types.Bit;
   subtype UHINT_RXRSMI_Field is Interfaces.Bit_Types.Bit;
   subtype UHINT_HSOFI_Field is Interfaces.Bit_Types.Bit;
   subtype UHINT_HWUPI_Field is Interfaces.Bit_Types.Bit;
   subtype UHINT_P0INT_Field is Interfaces.Bit_Types.Bit;
   subtype UHINT_P1INT_Field is Interfaces.Bit_Types.Bit;
   subtype UHINT_P2INT_Field is Interfaces.Bit_Types.Bit;
   subtype UHINT_P3INT_Field is Interfaces.Bit_Types.Bit;
   subtype UHINT_P4INT_Field is Interfaces.Bit_Types.Bit;
   subtype UHINT_P5INT_Field is Interfaces.Bit_Types.Bit;
   subtype UHINT_P6INT_Field is Interfaces.Bit_Types.Bit;

   --  Host Global Interrupt Register
   type USBC_UHINT_Register is record
      --  Read-only. Device Connection Interrupt
      DCONNI         : UHINT_DCONNI_Field;
      --  Read-only. Device Disconnection Interrupt
      DDISCI         : UHINT_DDISCI_Field;
      --  Read-only. USB Reset Sent Interrupt
      RSTI           : UHINT_RSTI_Field;
      --  Read-only. Downstream Resume Sent Interrupt
      RSMEDI         : UHINT_RSMEDI_Field;
      --  Read-only. Upstream Resume Received Interrupt
      RXRSMI         : UHINT_RXRSMI_Field;
      --  Read-only. Host SOF Interrupt
      HSOFI          : UHINT_HSOFI_Field;
      --  Read-only. Host Wake-Up Interrupt
      HWUPI          : UHINT_HWUPI_Field;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit;
      --  Read-only. Pipe 0 Interrupt
      P0INT          : UHINT_P0INT_Field;
      --  Read-only. Pipe 1 Interrupt
      P1INT          : UHINT_P1INT_Field;
      --  Read-only. Pipe 2 Interrupt
      P2INT          : UHINT_P2INT_Field;
      --  Read-only. Pipe 3 Interrupt
      P3INT          : UHINT_P3INT_Field;
      --  Read-only. Pipe 4 Interrupt
      P4INT          : UHINT_P4INT_Field;
      --  Read-only. Pipe 5 Interrupt
      P5INT          : UHINT_P5INT_Field;
      --  Read-only. Pipe 6 Interrupt
      P6INT          : UHINT_P6INT_Field;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UHINT_Register use record
      DCONNI         at 0 range 0 .. 0;
      DDISCI         at 0 range 1 .. 1;
      RSTI           at 0 range 2 .. 2;
      RSMEDI         at 0 range 3 .. 3;
      RXRSMI         at 0 range 4 .. 4;
      HSOFI          at 0 range 5 .. 5;
      HWUPI          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      P0INT          at 0 range 8 .. 8;
      P1INT          at 0 range 9 .. 9;
      P2INT          at 0 range 10 .. 10;
      P3INT          at 0 range 11 .. 11;
      P4INT          at 0 range 12 .. 12;
      P5INT          at 0 range 13 .. 13;
      P6INT          at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   ----------------------------
   -- USBC_UHINTCLR_Register --
   ----------------------------

   subtype UHINTCLR_DCONNIC_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTCLR_DDISCIC_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTCLR_RSTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTCLR_RSMEDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTCLR_RXRSMIC_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTCLR_HSOFIC_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTCLR_HWUPIC_Field is Interfaces.Bit_Types.Bit;

   --  Host Global Interrrupt Clear Register
   type USBC_UHINTCLR_Register is record
      --  Write-only. DCONNI Clear
      DCONNIC       : UHINTCLR_DCONNIC_Field := 16#0#;
      --  Write-only. DDISCI Clear
      DDISCIC       : UHINTCLR_DDISCIC_Field := 16#0#;
      --  Write-only. RSTI Clear
      RSTIC         : UHINTCLR_RSTIC_Field := 16#0#;
      --  Write-only. RSMEDI Clear
      RSMEDIC       : UHINTCLR_RSMEDIC_Field := 16#0#;
      --  Write-only. RXRSMI Clear
      RXRSMIC       : UHINTCLR_RXRSMIC_Field := 16#0#;
      --  Write-only. HSOFI Clear
      HSOFIC        : UHINTCLR_HSOFIC_Field := 16#0#;
      --  Write-only. HWUPI Clear
      HWUPIC        : UHINTCLR_HWUPIC_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UHINTCLR_Register use record
      DCONNIC       at 0 range 0 .. 0;
      DDISCIC       at 0 range 1 .. 1;
      RSTIC         at 0 range 2 .. 2;
      RSMEDIC       at 0 range 3 .. 3;
      RXRSMIC       at 0 range 4 .. 4;
      HSOFIC        at 0 range 5 .. 5;
      HWUPIC        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   ----------------------------
   -- USBC_UHINTSET_Register --
   ----------------------------

   subtype UHINTSET_DCONNIS_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTSET_DDISCIS_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTSET_RSTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTSET_RSMEDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTSET_RXRSMIS_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTSET_HSOFIS_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTSET_HWUPIS_Field is Interfaces.Bit_Types.Bit;

   --  Host Global Interrupt Set Register
   type USBC_UHINTSET_Register is record
      --  Write-only. DCONNI Set
      DCONNIS       : UHINTSET_DCONNIS_Field := 16#0#;
      --  Write-only. DDISCI Set
      DDISCIS       : UHINTSET_DDISCIS_Field := 16#0#;
      --  Write-only. RSTI Set
      RSTIS         : UHINTSET_RSTIS_Field := 16#0#;
      --  Write-only. RSMEDI Set
      RSMEDIS       : UHINTSET_RSMEDIS_Field := 16#0#;
      --  Write-only. RXRSMI Set
      RXRSMIS       : UHINTSET_RXRSMIS_Field := 16#0#;
      --  Write-only. HSOFI Set
      HSOFIS        : UHINTSET_HSOFIS_Field := 16#0#;
      --  Write-only. HWUPI Set
      HWUPIS        : UHINTSET_HWUPIS_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UHINTSET_Register use record
      DCONNIS       at 0 range 0 .. 0;
      DDISCIS       at 0 range 1 .. 1;
      RSTIS         at 0 range 2 .. 2;
      RSMEDIS       at 0 range 3 .. 3;
      RXRSMIS       at 0 range 4 .. 4;
      HSOFIS        at 0 range 5 .. 5;
      HWUPIS        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --------------------------
   -- USBC_UHINTE_Register --
   --------------------------

   subtype UHINTE_DCONNIE_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTE_DDISCIE_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTE_RSTIE_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTE_RSMEDIE_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTE_RXRSMIE_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTE_HSOFIE_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTE_HWUPIE_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTE_P0INTE_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTE_P1INTE_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTE_P2INTE_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTE_P3INTE_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTE_P4INTE_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTE_P5INTE_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTE_P6INTE_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTE_P7INTE_Field is Interfaces.Bit_Types.Bit;

   --  Host Global Interrupt Enable Register
   type USBC_UHINTE_Register is record
      --  Read-only. DCONNI Enable
      DCONNIE        : UHINTE_DCONNIE_Field;
      --  Read-only. DDISCI Enable
      DDISCIE        : UHINTE_DDISCIE_Field;
      --  Read-only. RSTI Enable
      RSTIE          : UHINTE_RSTIE_Field;
      --  Read-only. RSMEDI Enable
      RSMEDIE        : UHINTE_RSMEDIE_Field;
      --  Read-only. RXRSMI Enable
      RXRSMIE        : UHINTE_RXRSMIE_Field;
      --  Read-only. HSOFI Enable
      HSOFIE         : UHINTE_HSOFIE_Field;
      --  Read-only. HWUPI Enable
      HWUPIE         : UHINTE_HWUPIE_Field;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit;
      --  Read-only. P0INT Enable
      P0INTE         : UHINTE_P0INTE_Field;
      --  Read-only. P1INT Enable
      P1INTE         : UHINTE_P1INTE_Field;
      --  Read-only. P2INT Enable
      P2INTE         : UHINTE_P2INTE_Field;
      --  Read-only. P3INT Enable
      P3INTE         : UHINTE_P3INTE_Field;
      --  Read-only. P4INT Enable
      P4INTE         : UHINTE_P4INTE_Field;
      --  Read-only. P5INT Enable
      P5INTE         : UHINTE_P5INTE_Field;
      --  Read-only. P6INT Enable
      P6INTE         : UHINTE_P6INTE_Field;
      --  Read-only. P7INT Enable
      P7INTE         : UHINTE_P7INTE_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UHINTE_Register use record
      DCONNIE        at 0 range 0 .. 0;
      DDISCIE        at 0 range 1 .. 1;
      RSTIE          at 0 range 2 .. 2;
      RSMEDIE        at 0 range 3 .. 3;
      RXRSMIE        at 0 range 4 .. 4;
      HSOFIE         at 0 range 5 .. 5;
      HWUPIE         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      P0INTE         at 0 range 8 .. 8;
      P1INTE         at 0 range 9 .. 9;
      P2INTE         at 0 range 10 .. 10;
      P3INTE         at 0 range 11 .. 11;
      P4INTE         at 0 range 12 .. 12;
      P5INTE         at 0 range 13 .. 13;
      P6INTE         at 0 range 14 .. 14;
      P7INTE         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------------------
   -- USBC_UHINTECLR_Register --
   -----------------------------

   subtype UHINTECLR_DCONNIEC_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTECLR_DDISCIEC_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTECLR_RSTIEC_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTECLR_RSMEDIEC_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTECLR_RXRSMIEC_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTECLR_HSOFIEC_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTECLR_HWUPIEC_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTECLR_P0INTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTECLR_P1INTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTECLR_P2INTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTECLR_P3INTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTECLR_P4INTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTECLR_P5INTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTECLR_P6INTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTECLR_P7INTEC_Field is Interfaces.Bit_Types.Bit;

   --  Host Global Interrupt Enable Clear Register
   type USBC_UHINTECLR_Register is record
      --  Write-only. DCONNIE Clear
      DCONNIEC       : UHINTECLR_DCONNIEC_Field := 16#0#;
      --  Write-only. DDISCIE Clear
      DDISCIEC       : UHINTECLR_DDISCIEC_Field := 16#0#;
      --  Write-only. RSTIE Clear
      RSTIEC         : UHINTECLR_RSTIEC_Field := 16#0#;
      --  Write-only. RSMEDIE Clear
      RSMEDIEC       : UHINTECLR_RSMEDIEC_Field := 16#0#;
      --  Write-only. RXRSMIE Clear
      RXRSMIEC       : UHINTECLR_RXRSMIEC_Field := 16#0#;
      --  Write-only. HSOFIE Clear
      HSOFIEC        : UHINTECLR_HSOFIEC_Field := 16#0#;
      --  Write-only. HWUPIE Clear
      HWUPIEC        : UHINTECLR_HWUPIEC_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. P0INTE Clear
      P0INTEC        : UHINTECLR_P0INTEC_Field := 16#0#;
      --  Write-only. P1INTE Clear
      P1INTEC        : UHINTECLR_P1INTEC_Field := 16#0#;
      --  Write-only. P2INTE Clear
      P2INTEC        : UHINTECLR_P2INTEC_Field := 16#0#;
      --  Write-only. P3INTE Clear
      P3INTEC        : UHINTECLR_P3INTEC_Field := 16#0#;
      --  Write-only. P4INTE Clear
      P4INTEC        : UHINTECLR_P4INTEC_Field := 16#0#;
      --  Write-only. P5INTE Clear
      P5INTEC        : UHINTECLR_P5INTEC_Field := 16#0#;
      --  Write-only. P6INTE Clear
      P6INTEC        : UHINTECLR_P6INTEC_Field := 16#0#;
      --  Write-only. P7INTE Clear
      P7INTEC        : UHINTECLR_P7INTEC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UHINTECLR_Register use record
      DCONNIEC       at 0 range 0 .. 0;
      DDISCIEC       at 0 range 1 .. 1;
      RSTIEC         at 0 range 2 .. 2;
      RSMEDIEC       at 0 range 3 .. 3;
      RXRSMIEC       at 0 range 4 .. 4;
      HSOFIEC        at 0 range 5 .. 5;
      HWUPIEC        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      P0INTEC        at 0 range 8 .. 8;
      P1INTEC        at 0 range 9 .. 9;
      P2INTEC        at 0 range 10 .. 10;
      P3INTEC        at 0 range 11 .. 11;
      P4INTEC        at 0 range 12 .. 12;
      P5INTEC        at 0 range 13 .. 13;
      P6INTEC        at 0 range 14 .. 14;
      P7INTEC        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------------------
   -- USBC_UHINTESET_Register --
   -----------------------------

   subtype UHINTESET_DCONNIES_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTESET_DDISCIES_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTESET_RSTIES_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTESET_RSMEDIES_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTESET_RXRSMIES_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTESET_HSOFIES_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTESET_HWUPIES_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTESET_P0INTES_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTESET_P1INTES_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTESET_P2INTES_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTESET_P3INTES_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTESET_P4INTES_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTESET_P5INTES_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTESET_P6INTES_Field is Interfaces.Bit_Types.Bit;
   subtype UHINTESET_P7INTES_Field is Interfaces.Bit_Types.Bit;

   --  Host Global Interrupt Enable Set Register
   type USBC_UHINTESET_Register is record
      --  Write-only. DCONNIE Set
      DCONNIES       : UHINTESET_DCONNIES_Field := 16#0#;
      --  Write-only. DDISCIE Set
      DDISCIES       : UHINTESET_DDISCIES_Field := 16#0#;
      --  Write-only. RSTIE Set
      RSTIES         : UHINTESET_RSTIES_Field := 16#0#;
      --  Write-only. RSMEDIE Set
      RSMEDIES       : UHINTESET_RSMEDIES_Field := 16#0#;
      --  Write-only. RXRSMIE Set
      RXRSMIES       : UHINTESET_RXRSMIES_Field := 16#0#;
      --  Write-only. HSOFIE Set
      HSOFIES        : UHINTESET_HSOFIES_Field := 16#0#;
      --  Write-only. HWUPIE Set
      HWUPIES        : UHINTESET_HWUPIES_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. P0INTE Set
      P0INTES        : UHINTESET_P0INTES_Field := 16#0#;
      --  Write-only. P1INTE Set
      P1INTES        : UHINTESET_P1INTES_Field := 16#0#;
      --  Write-only. P2INTE Set
      P2INTES        : UHINTESET_P2INTES_Field := 16#0#;
      --  Write-only. P3INTE Set
      P3INTES        : UHINTESET_P3INTES_Field := 16#0#;
      --  Write-only. P4INTE Set
      P4INTES        : UHINTESET_P4INTES_Field := 16#0#;
      --  Write-only. P5INTE Set
      P5INTES        : UHINTESET_P5INTES_Field := 16#0#;
      --  Write-only. P6INTE Set
      P6INTES        : UHINTESET_P6INTES_Field := 16#0#;
      --  Write-only. P7INTE Set
      P7INTES        : UHINTESET_P7INTES_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UHINTESET_Register use record
      DCONNIES       at 0 range 0 .. 0;
      DDISCIES       at 0 range 1 .. 1;
      RSTIES         at 0 range 2 .. 2;
      RSMEDIES       at 0 range 3 .. 3;
      RXRSMIES       at 0 range 4 .. 4;
      HSOFIES        at 0 range 5 .. 5;
      HWUPIES        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      P0INTES        at 0 range 8 .. 8;
      P1INTES        at 0 range 9 .. 9;
      P2INTES        at 0 range 10 .. 10;
      P3INTES        at 0 range 11 .. 11;
      P4INTES        at 0 range 12 .. 12;
      P5INTES        at 0 range 13 .. 13;
      P6INTES        at 0 range 14 .. 14;
      P7INTES        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -------------------------
   -- USBC_UPRST_Register --
   -------------------------

   ---------------
   -- UPRST.PEN --
   ---------------

   --  UPRST_PEN array element
   subtype UPRST_PEN_Element is Interfaces.Bit_Types.Bit;

   --  UPRST_PEN array
   type UPRST_PEN_Field_Array is array (0 .. 7) of UPRST_PEN_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for UPRST_PEN
   type UPRST_PEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PEN as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  PEN as an array
            Arr : UPRST_PEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for UPRST_PEN_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Pipe Reset Register
   type USBC_UPRST_Register is record
      --  Pipe0 Enable
      PEN           : UPRST_PEN_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPRST_Register use record
      PEN           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --------------------------
   -- USBC_UHFNUM_Register --
   --------------------------

   subtype UHFNUM_MFNUM_Field is Interfaces.Bit_Types.UInt3;
   subtype UHFNUM_FNUM_Field is Interfaces.Bit_Types.UInt11;
   subtype UHFNUM_FLENHIGH_Field is Interfaces.Bit_Types.Byte;

   --  Host Frame Number Register
   type USBC_UHFNUM_Register is record
      --  Read-only. Micro Frame Number
      MFNUM          : UHFNUM_MFNUM_Field := 16#0#;
      --  Frame Number
      FNUM           : UHFNUM_FNUM_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Read-only. Frame Length
      FLENHIGH       : UHFNUM_FLENHIGH_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UHFNUM_Register use record
      MFNUM          at 0 range 0 .. 2;
      FNUM           at 0 range 3 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FLENHIGH       at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --------------------------
   -- USBC_UHSOFC_Register --
   --------------------------

   subtype UHSOFC_FLENC_Field is Interfaces.Bit_Types.UInt14;
   subtype UHSOFC_FLENCE_Field is Interfaces.Bit_Types.Bit;

   --  Host Start of Frame Control Register
   type USBC_UHSOFC_Register is record
      --  Frame Length Control
      FLENC          : UHSOFC_FLENC_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Frame Length Control Enable
      FLENCE         : UHSOFC_FLENCE_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UHSOFC_Register use record
      FLENC          at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FLENCE         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --------------------
   -- UPCFG_Register --
   --------------------

   --  Pipe Banks
   type PBKSelect is
     (
      Single,
      Double)
     with Size => 1;
   for PBKSelect use
     (Single => 0,
      Double => 1);

   --  Pipe Size
   type PSIZESelect is
     (
      PSIZESelect_8,
      PSIZESelect_16,
      PSIZESelect_32,
      PSIZESelect_64,
      PSIZESelect_128,
      PSIZESelect_256,
      PSIZESelect_512,
      PSIZESelect_1024)
     with Size => 3;
   for PSIZESelect use
     (PSIZESelect_8 => 0,
      PSIZESelect_16 => 1,
      PSIZESelect_32 => 2,
      PSIZESelect_64 => 3,
      PSIZESelect_128 => 4,
      PSIZESelect_256 => 5,
      PSIZESelect_512 => 6,
      PSIZESelect_1024 => 7);

   --  Pipe Token
   type PTOKENSelect is
     (
      Setup,
      In_k,
      Out_k)
     with Size => 2;
   for PTOKENSelect use
     (Setup => 0,
      In_k => 1,
      Out_k => 2);

   --  Pipe Type
   type PTYPESelect is
     (
      Control,
      Isochronous,
      Bulk,
      Interrupt)
     with Size => 2;
   for PTYPESelect use
     (Control => 0,
      Isochronous => 1,
      Bulk => 2,
      Interrupt => 3);

   subtype UPCFG0_PINGEN_Field is Interfaces.Bit_Types.Bit;
   subtype UPCFG0_BINTERVAL_Field is Interfaces.Bit_Types.Byte;

   --  Pipe Configuration Register
   type UPCFG_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Pipe Banks
      PBK            : PBKSelect := Interfaces.ATSAM4L.USBC.Single;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Pipe Size
      PSIZE          : PSIZESelect := Interfaces.ATSAM4L.USBC.PSIZESelect_8;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Pipe Token
      PTOKEN         : PTOKENSelect := Interfaces.ATSAM4L.USBC.Setup;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Pipe Type
      PTYPE          : PTYPESelect := Interfaces.ATSAM4L.USBC.Control;
      --  unspecified
      Reserved_14_19 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Ping Enable
      PINGEN         : UPCFG0_PINGEN_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  binterval parameter
      BINTERVAL      : UPCFG0_BINTERVAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UPCFG_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      PBK            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PSIZE          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PTOKEN         at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      PTYPE          at 0 range 12 .. 13;
      Reserved_14_19 at 0 range 14 .. 19;
      PINGEN         at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      BINTERVAL      at 0 range 24 .. 31;
   end record;

   --------------------
   -- UPSTA_Register --
   --------------------

   subtype UPSTA0_RXINI_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0_TXOUTI_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0_TXSTPI_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0_PERRI_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0_NAKEDI_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0_ERRORFI_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0_RXSTALLDI_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0_DTSEQ_Field is Interfaces.Bit_Types.UInt2;
   subtype UPSTA0_RAMACERI_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0_NBUSYBK_Field is Interfaces.Bit_Types.UInt2;
   subtype UPSTA0_CURRBK_Field is Interfaces.Bit_Types.UInt2;

   --  Pipe Status Register
   type UPSTA_Register is record
      --  Read-only. Received IN Data Interrupt
      RXINI          : UPSTA0_RXINI_Field;
      --  Read-only. Transmitted OUT Data Interrupt
      TXOUTI         : UPSTA0_TXOUTI_Field;
      --  Read-only. Transmitted SETUP Interrupt
      TXSTPI         : UPSTA0_TXSTPI_Field;
      --  Read-only. Pipe Error Interrupt
      PERRI          : UPSTA0_PERRI_Field;
      --  Read-only. NAKed Interrupt
      NAKEDI         : UPSTA0_NAKEDI_Field;
      --  Read-only. Errorflow Interrupt
      ERRORFI        : UPSTA0_ERRORFI_Field;
      --  Read-only. Received STALLed Interrupt
      RXSTALLDI      : UPSTA0_RXSTALLDI_Field;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit;
      --  Read-only. Data Toggle Sequence
      DTSEQ          : UPSTA0_DTSEQ_Field;
      --  Read-only. Ram Access Error Interrupt
      RAMACERI       : UPSTA0_RAMACERI_Field;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit;
      --  Read-only. Number of Busy Bank
      NBUSYBK        : UPSTA0_NBUSYBK_Field;
      --  Read-only. Current Bank
      CURRBK         : UPSTA0_CURRBK_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UPSTA_Register use record
      RXINI          at 0 range 0 .. 0;
      TXOUTI         at 0 range 1 .. 1;
      TXSTPI         at 0 range 2 .. 2;
      PERRI          at 0 range 3 .. 3;
      NAKEDI         at 0 range 4 .. 4;
      ERRORFI        at 0 range 5 .. 5;
      RXSTALLDI      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DTSEQ          at 0 range 8 .. 9;
      RAMACERI       at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBK        at 0 range 12 .. 13;
      CURRBK         at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------------------
   -- USBC_UPSTA0CLR_Register --
   -----------------------------

   subtype UPSTA0CLR_RXINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0CLR_TXOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0CLR_TXSTPIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0CLR_PERRIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0CLR_NAKEDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0CLR_ERRORFIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0CLR_RXSTALLDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0CLR_RAMACERIC_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Status Clear Register
   type USBC_UPSTA0CLR_Register is record
      --  Write-only. RXINI Clear
      RXINIC         : UPSTA0CLR_RXINIC_Field := 16#0#;
      --  Write-only. TXOUTI Clear
      TXOUTIC        : UPSTA0CLR_TXOUTIC_Field := 16#0#;
      --  Write-only. TXSTPI Clear
      TXSTPIC        : UPSTA0CLR_TXSTPIC_Field := 16#0#;
      --  Write-only. PERRI Clear
      PERRIC         : UPSTA0CLR_PERRIC_Field := 16#0#;
      --  Write-only. NAKEDI Clear
      NAKEDIC        : UPSTA0CLR_NAKEDIC_Field := 16#0#;
      --  Write-only. ERRORFI Clear
      ERRORFIC       : UPSTA0CLR_ERRORFIC_Field := 16#0#;
      --  Write-only. RXSTALLDI Clear
      RXSTALLDIC     : UPSTA0CLR_RXSTALLDIC_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : UPSTA0CLR_RAMACERIC_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA0CLR_Register use record
      RXINIC         at 0 range 0 .. 0;
      TXOUTIC        at 0 range 1 .. 1;
      TXSTPIC        at 0 range 2 .. 2;
      PERRIC         at 0 range 3 .. 3;
      NAKEDIC        at 0 range 4 .. 4;
      ERRORFIC       at 0 range 5 .. 5;
      RXSTALLDIC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIC      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------------------
   -- USBC_UPSTA1CLR_Register --
   -----------------------------

   subtype UPSTA1CLR_RXINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA1CLR_TXOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA1CLR_TXSTPIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA1CLR_PERRIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA1CLR_NAKEDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA1CLR_ERRORFIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA1CLR_RXSTALLDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA1CLR_RAMACERIC_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Status Clear Register
   type USBC_UPSTA1CLR_Register is record
      --  Write-only. RXINI Clear
      RXINIC         : UPSTA1CLR_RXINIC_Field := 16#0#;
      --  Write-only. TXOUTI Clear
      TXOUTIC        : UPSTA1CLR_TXOUTIC_Field := 16#0#;
      --  Write-only. TXSTPI Clear
      TXSTPIC        : UPSTA1CLR_TXSTPIC_Field := 16#0#;
      --  Write-only. PERRI Clear
      PERRIC         : UPSTA1CLR_PERRIC_Field := 16#0#;
      --  Write-only. NAKEDI Clear
      NAKEDIC        : UPSTA1CLR_NAKEDIC_Field := 16#0#;
      --  Write-only. ERRORFI Clear
      ERRORFIC       : UPSTA1CLR_ERRORFIC_Field := 16#0#;
      --  Write-only. RXSTALLDI Clear
      RXSTALLDIC     : UPSTA1CLR_RXSTALLDIC_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : UPSTA1CLR_RAMACERIC_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA1CLR_Register use record
      RXINIC         at 0 range 0 .. 0;
      TXOUTIC        at 0 range 1 .. 1;
      TXSTPIC        at 0 range 2 .. 2;
      PERRIC         at 0 range 3 .. 3;
      NAKEDIC        at 0 range 4 .. 4;
      ERRORFIC       at 0 range 5 .. 5;
      RXSTALLDIC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIC      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------------------
   -- USBC_UPSTA2CLR_Register --
   -----------------------------

   subtype UPSTA2CLR_RXINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA2CLR_TXOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA2CLR_TXSTPIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA2CLR_PERRIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA2CLR_NAKEDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA2CLR_ERRORFIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA2CLR_RXSTALLDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA2CLR_RAMACERIC_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Status Clear Register
   type USBC_UPSTA2CLR_Register is record
      --  Write-only. RXINI Clear
      RXINIC         : UPSTA2CLR_RXINIC_Field := 16#0#;
      --  Write-only. TXOUTI Clear
      TXOUTIC        : UPSTA2CLR_TXOUTIC_Field := 16#0#;
      --  Write-only. TXSTPI Clear
      TXSTPIC        : UPSTA2CLR_TXSTPIC_Field := 16#0#;
      --  Write-only. PERRI Clear
      PERRIC         : UPSTA2CLR_PERRIC_Field := 16#0#;
      --  Write-only. NAKEDI Clear
      NAKEDIC        : UPSTA2CLR_NAKEDIC_Field := 16#0#;
      --  Write-only. ERRORFI Clear
      ERRORFIC       : UPSTA2CLR_ERRORFIC_Field := 16#0#;
      --  Write-only. RXSTALLDI Clear
      RXSTALLDIC     : UPSTA2CLR_RXSTALLDIC_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : UPSTA2CLR_RAMACERIC_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA2CLR_Register use record
      RXINIC         at 0 range 0 .. 0;
      TXOUTIC        at 0 range 1 .. 1;
      TXSTPIC        at 0 range 2 .. 2;
      PERRIC         at 0 range 3 .. 3;
      NAKEDIC        at 0 range 4 .. 4;
      ERRORFIC       at 0 range 5 .. 5;
      RXSTALLDIC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIC      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------------------
   -- USBC_UPSTA3CLR_Register --
   -----------------------------

   subtype UPSTA3CLR_RXINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA3CLR_TXOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA3CLR_TXSTPIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA3CLR_PERRIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA3CLR_NAKEDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA3CLR_ERRORFIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA3CLR_RXSTALLDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA3CLR_RAMACERIC_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Status Clear Register
   type USBC_UPSTA3CLR_Register is record
      --  Write-only. RXINI Clear
      RXINIC         : UPSTA3CLR_RXINIC_Field := 16#0#;
      --  Write-only. TXOUTI Clear
      TXOUTIC        : UPSTA3CLR_TXOUTIC_Field := 16#0#;
      --  Write-only. TXSTPI Clear
      TXSTPIC        : UPSTA3CLR_TXSTPIC_Field := 16#0#;
      --  Write-only. PERRI Clear
      PERRIC         : UPSTA3CLR_PERRIC_Field := 16#0#;
      --  Write-only. NAKEDI Clear
      NAKEDIC        : UPSTA3CLR_NAKEDIC_Field := 16#0#;
      --  Write-only. ERRORFI Clear
      ERRORFIC       : UPSTA3CLR_ERRORFIC_Field := 16#0#;
      --  Write-only. RXSTALLDI Clear
      RXSTALLDIC     : UPSTA3CLR_RXSTALLDIC_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : UPSTA3CLR_RAMACERIC_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA3CLR_Register use record
      RXINIC         at 0 range 0 .. 0;
      TXOUTIC        at 0 range 1 .. 1;
      TXSTPIC        at 0 range 2 .. 2;
      PERRIC         at 0 range 3 .. 3;
      NAKEDIC        at 0 range 4 .. 4;
      ERRORFIC       at 0 range 5 .. 5;
      RXSTALLDIC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIC      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------------------
   -- USBC_UPSTA4CLR_Register --
   -----------------------------

   subtype UPSTA4CLR_RXINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA4CLR_TXOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA4CLR_TXSTPIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA4CLR_PERRIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA4CLR_NAKEDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA4CLR_ERRORFIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA4CLR_RXSTALLDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA4CLR_RAMACERIC_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Status Clear Register
   type USBC_UPSTA4CLR_Register is record
      --  Write-only. RXINI Clear
      RXINIC         : UPSTA4CLR_RXINIC_Field := 16#0#;
      --  Write-only. TXOUTI Clear
      TXOUTIC        : UPSTA4CLR_TXOUTIC_Field := 16#0#;
      --  Write-only. TXSTPI Clear
      TXSTPIC        : UPSTA4CLR_TXSTPIC_Field := 16#0#;
      --  Write-only. PERRI Clear
      PERRIC         : UPSTA4CLR_PERRIC_Field := 16#0#;
      --  Write-only. NAKEDI Clear
      NAKEDIC        : UPSTA4CLR_NAKEDIC_Field := 16#0#;
      --  Write-only. ERRORFI Clear
      ERRORFIC       : UPSTA4CLR_ERRORFIC_Field := 16#0#;
      --  Write-only. RXSTALLDI Clear
      RXSTALLDIC     : UPSTA4CLR_RXSTALLDIC_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : UPSTA4CLR_RAMACERIC_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA4CLR_Register use record
      RXINIC         at 0 range 0 .. 0;
      TXOUTIC        at 0 range 1 .. 1;
      TXSTPIC        at 0 range 2 .. 2;
      PERRIC         at 0 range 3 .. 3;
      NAKEDIC        at 0 range 4 .. 4;
      ERRORFIC       at 0 range 5 .. 5;
      RXSTALLDIC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIC      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------------------
   -- USBC_UPSTA5CLR_Register --
   -----------------------------

   subtype UPSTA5CLR_RXINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA5CLR_TXOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA5CLR_TXSTPIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA5CLR_PERRIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA5CLR_NAKEDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA5CLR_ERRORFIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA5CLR_RXSTALLDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA5CLR_RAMACERIC_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Status Clear Register
   type USBC_UPSTA5CLR_Register is record
      --  Write-only. RXINI Clear
      RXINIC         : UPSTA5CLR_RXINIC_Field := 16#0#;
      --  Write-only. TXOUTI Clear
      TXOUTIC        : UPSTA5CLR_TXOUTIC_Field := 16#0#;
      --  Write-only. TXSTPI Clear
      TXSTPIC        : UPSTA5CLR_TXSTPIC_Field := 16#0#;
      --  Write-only. PERRI Clear
      PERRIC         : UPSTA5CLR_PERRIC_Field := 16#0#;
      --  Write-only. NAKEDI Clear
      NAKEDIC        : UPSTA5CLR_NAKEDIC_Field := 16#0#;
      --  Write-only. ERRORFI Clear
      ERRORFIC       : UPSTA5CLR_ERRORFIC_Field := 16#0#;
      --  Write-only. RXSTALLDI Clear
      RXSTALLDIC     : UPSTA5CLR_RXSTALLDIC_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : UPSTA5CLR_RAMACERIC_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA5CLR_Register use record
      RXINIC         at 0 range 0 .. 0;
      TXOUTIC        at 0 range 1 .. 1;
      TXSTPIC        at 0 range 2 .. 2;
      PERRIC         at 0 range 3 .. 3;
      NAKEDIC        at 0 range 4 .. 4;
      ERRORFIC       at 0 range 5 .. 5;
      RXSTALLDIC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIC      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------------------
   -- USBC_UPSTA6CLR_Register --
   -----------------------------

   subtype UPSTA6CLR_RXINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA6CLR_TXOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA6CLR_TXSTPIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA6CLR_PERRIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA6CLR_NAKEDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA6CLR_ERRORFIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA6CLR_RXSTALLDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA6CLR_RAMACERIC_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Status Clear Register
   type USBC_UPSTA6CLR_Register is record
      --  Write-only. RXINI Clear
      RXINIC         : UPSTA6CLR_RXINIC_Field := 16#0#;
      --  Write-only. TXOUTI Clear
      TXOUTIC        : UPSTA6CLR_TXOUTIC_Field := 16#0#;
      --  Write-only. TXSTPI Clear
      TXSTPIC        : UPSTA6CLR_TXSTPIC_Field := 16#0#;
      --  Write-only. PERRI Clear
      PERRIC         : UPSTA6CLR_PERRIC_Field := 16#0#;
      --  Write-only. NAKEDI Clear
      NAKEDIC        : UPSTA6CLR_NAKEDIC_Field := 16#0#;
      --  Write-only. ERRORFI Clear
      ERRORFIC       : UPSTA6CLR_ERRORFIC_Field := 16#0#;
      --  Write-only. RXSTALLDI Clear
      RXSTALLDIC     : UPSTA6CLR_RXSTALLDIC_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : UPSTA6CLR_RAMACERIC_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA6CLR_Register use record
      RXINIC         at 0 range 0 .. 0;
      TXOUTIC        at 0 range 1 .. 1;
      TXSTPIC        at 0 range 2 .. 2;
      PERRIC         at 0 range 3 .. 3;
      NAKEDIC        at 0 range 4 .. 4;
      ERRORFIC       at 0 range 5 .. 5;
      RXSTALLDIC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIC      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------------------
   -- USBC_UPSTA7CLR_Register --
   -----------------------------

   subtype UPSTA7CLR_RXINIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA7CLR_TXOUTIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA7CLR_TXSTPIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA7CLR_PERRIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA7CLR_NAKEDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA7CLR_ERRORFIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA7CLR_RXSTALLDIC_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA7CLR_RAMACERIC_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Status Clear Register
   type USBC_UPSTA7CLR_Register is record
      --  Write-only. RXINI Clear
      RXINIC         : UPSTA7CLR_RXINIC_Field := 16#0#;
      --  Write-only. TXOUTI Clear
      TXOUTIC        : UPSTA7CLR_TXOUTIC_Field := 16#0#;
      --  Write-only. TXSTPI Clear
      TXSTPIC        : UPSTA7CLR_TXSTPIC_Field := 16#0#;
      --  Write-only. PERRI Clear
      PERRIC         : UPSTA7CLR_PERRIC_Field := 16#0#;
      --  Write-only. NAKEDI Clear
      NAKEDIC        : UPSTA7CLR_NAKEDIC_Field := 16#0#;
      --  Write-only. ERRORFI Clear
      ERRORFIC       : UPSTA7CLR_ERRORFIC_Field := 16#0#;
      --  Write-only. RXSTALLDI Clear
      RXSTALLDIC     : UPSTA7CLR_RXSTALLDIC_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : UPSTA7CLR_RAMACERIC_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA7CLR_Register use record
      RXINIC         at 0 range 0 .. 0;
      TXOUTIC        at 0 range 1 .. 1;
      TXSTPIC        at 0 range 2 .. 2;
      PERRIC         at 0 range 3 .. 3;
      NAKEDIC        at 0 range 4 .. 4;
      ERRORFIC       at 0 range 5 .. 5;
      RXSTALLDIC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIC      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------------------
   -- USBC_UPSTA0SET_Register --
   -----------------------------

   subtype UPSTA0SET_RXINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0SET_TXOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0SET_TXSTPIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0SET_PERRIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0SET_NAKEDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0SET_ERRORFIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0SET_RXSTALLDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA0SET_RAMACERIS_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Status Set Register
   type USBC_UPSTA0SET_Register is record
      --  Write-only. RXINI Set
      RXINIS         : UPSTA0SET_RXINIS_Field := 16#0#;
      --  Write-only. TXOUTI Set
      TXOUTIS        : UPSTA0SET_TXOUTIS_Field := 16#0#;
      --  Write-only. TXSTPI Set
      TXSTPIS        : UPSTA0SET_TXSTPIS_Field := 16#0#;
      --  Write-only. PERRI Set
      PERRIS         : UPSTA0SET_PERRIS_Field := 16#0#;
      --  Write-only. NAKEDI Set
      NAKEDIS        : UPSTA0SET_NAKEDIS_Field := 16#0#;
      --  Write-only. ERRORFI Set
      ERRORFIS       : UPSTA0SET_ERRORFIS_Field := 16#0#;
      --  Write-only. RXSTALLDI Set
      RXSTALLDIS     : UPSTA0SET_RXSTALLDIS_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : UPSTA0SET_RAMACERIS_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA0SET_Register use record
      RXINIS         at 0 range 0 .. 0;
      TXOUTIS        at 0 range 1 .. 1;
      TXSTPIS        at 0 range 2 .. 2;
      PERRIS         at 0 range 3 .. 3;
      NAKEDIS        at 0 range 4 .. 4;
      ERRORFIS       at 0 range 5 .. 5;
      RXSTALLDIS     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIS      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------------------
   -- USBC_UPSTA1SET_Register --
   -----------------------------

   subtype UPSTA1SET_RXINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA1SET_TXOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA1SET_TXSTPIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA1SET_PERRIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA1SET_NAKEDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA1SET_ERRORFIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA1SET_RXSTALLDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA1SET_RAMACERIS_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Status Set Register
   type USBC_UPSTA1SET_Register is record
      --  Write-only. RXINI Set
      RXINIS         : UPSTA1SET_RXINIS_Field := 16#0#;
      --  Write-only. TXOUTI Set
      TXOUTIS        : UPSTA1SET_TXOUTIS_Field := 16#0#;
      --  Write-only. TXSTPI Set
      TXSTPIS        : UPSTA1SET_TXSTPIS_Field := 16#0#;
      --  Write-only. PERRI Set
      PERRIS         : UPSTA1SET_PERRIS_Field := 16#0#;
      --  Write-only. NAKEDI Set
      NAKEDIS        : UPSTA1SET_NAKEDIS_Field := 16#0#;
      --  Write-only. ERRORFI Set
      ERRORFIS       : UPSTA1SET_ERRORFIS_Field := 16#0#;
      --  Write-only. RXSTALLDI Set
      RXSTALLDIS     : UPSTA1SET_RXSTALLDIS_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : UPSTA1SET_RAMACERIS_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA1SET_Register use record
      RXINIS         at 0 range 0 .. 0;
      TXOUTIS        at 0 range 1 .. 1;
      TXSTPIS        at 0 range 2 .. 2;
      PERRIS         at 0 range 3 .. 3;
      NAKEDIS        at 0 range 4 .. 4;
      ERRORFIS       at 0 range 5 .. 5;
      RXSTALLDIS     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIS      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------------------
   -- USBC_UPSTA2SET_Register --
   -----------------------------

   subtype UPSTA2SET_RXINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA2SET_TXOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA2SET_TXSTPIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA2SET_PERRIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA2SET_NAKEDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA2SET_ERRORFIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA2SET_RXSTALLDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA2SET_RAMACERIS_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Status Set Register
   type USBC_UPSTA2SET_Register is record
      --  Write-only. RXINI Set
      RXINIS         : UPSTA2SET_RXINIS_Field := 16#0#;
      --  Write-only. TXOUTI Set
      TXOUTIS        : UPSTA2SET_TXOUTIS_Field := 16#0#;
      --  Write-only. TXSTPI Set
      TXSTPIS        : UPSTA2SET_TXSTPIS_Field := 16#0#;
      --  Write-only. PERRI Set
      PERRIS         : UPSTA2SET_PERRIS_Field := 16#0#;
      --  Write-only. NAKEDI Set
      NAKEDIS        : UPSTA2SET_NAKEDIS_Field := 16#0#;
      --  Write-only. ERRORFI Set
      ERRORFIS       : UPSTA2SET_ERRORFIS_Field := 16#0#;
      --  Write-only. RXSTALLDI Set
      RXSTALLDIS     : UPSTA2SET_RXSTALLDIS_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : UPSTA2SET_RAMACERIS_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA2SET_Register use record
      RXINIS         at 0 range 0 .. 0;
      TXOUTIS        at 0 range 1 .. 1;
      TXSTPIS        at 0 range 2 .. 2;
      PERRIS         at 0 range 3 .. 3;
      NAKEDIS        at 0 range 4 .. 4;
      ERRORFIS       at 0 range 5 .. 5;
      RXSTALLDIS     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIS      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------------------
   -- USBC_UPSTA3SET_Register --
   -----------------------------

   subtype UPSTA3SET_RXINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA3SET_TXOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA3SET_TXSTPIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA3SET_PERRIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA3SET_NAKEDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA3SET_ERRORFIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA3SET_RXSTALLDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA3SET_RAMACERIS_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Status Set Register
   type USBC_UPSTA3SET_Register is record
      --  Write-only. RXINI Set
      RXINIS         : UPSTA3SET_RXINIS_Field := 16#0#;
      --  Write-only. TXOUTI Set
      TXOUTIS        : UPSTA3SET_TXOUTIS_Field := 16#0#;
      --  Write-only. TXSTPI Set
      TXSTPIS        : UPSTA3SET_TXSTPIS_Field := 16#0#;
      --  Write-only. PERRI Set
      PERRIS         : UPSTA3SET_PERRIS_Field := 16#0#;
      --  Write-only. NAKEDI Set
      NAKEDIS        : UPSTA3SET_NAKEDIS_Field := 16#0#;
      --  Write-only. ERRORFI Set
      ERRORFIS       : UPSTA3SET_ERRORFIS_Field := 16#0#;
      --  Write-only. RXSTALLDI Set
      RXSTALLDIS     : UPSTA3SET_RXSTALLDIS_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : UPSTA3SET_RAMACERIS_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA3SET_Register use record
      RXINIS         at 0 range 0 .. 0;
      TXOUTIS        at 0 range 1 .. 1;
      TXSTPIS        at 0 range 2 .. 2;
      PERRIS         at 0 range 3 .. 3;
      NAKEDIS        at 0 range 4 .. 4;
      ERRORFIS       at 0 range 5 .. 5;
      RXSTALLDIS     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIS      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------------------
   -- USBC_UPSTA4SET_Register --
   -----------------------------

   subtype UPSTA4SET_RXINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA4SET_TXOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA4SET_TXSTPIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA4SET_PERRIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA4SET_NAKEDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA4SET_ERRORFIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA4SET_RXSTALLDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA4SET_RAMACERIS_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Status Set Register
   type USBC_UPSTA4SET_Register is record
      --  Write-only. RXINI Set
      RXINIS         : UPSTA4SET_RXINIS_Field := 16#0#;
      --  Write-only. TXOUTI Set
      TXOUTIS        : UPSTA4SET_TXOUTIS_Field := 16#0#;
      --  Write-only. TXSTPI Set
      TXSTPIS        : UPSTA4SET_TXSTPIS_Field := 16#0#;
      --  Write-only. PERRI Set
      PERRIS         : UPSTA4SET_PERRIS_Field := 16#0#;
      --  Write-only. NAKEDI Set
      NAKEDIS        : UPSTA4SET_NAKEDIS_Field := 16#0#;
      --  Write-only. ERRORFI Set
      ERRORFIS       : UPSTA4SET_ERRORFIS_Field := 16#0#;
      --  Write-only. RXSTALLDI Set
      RXSTALLDIS     : UPSTA4SET_RXSTALLDIS_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : UPSTA4SET_RAMACERIS_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA4SET_Register use record
      RXINIS         at 0 range 0 .. 0;
      TXOUTIS        at 0 range 1 .. 1;
      TXSTPIS        at 0 range 2 .. 2;
      PERRIS         at 0 range 3 .. 3;
      NAKEDIS        at 0 range 4 .. 4;
      ERRORFIS       at 0 range 5 .. 5;
      RXSTALLDIS     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIS      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------------------
   -- USBC_UPSTA5SET_Register --
   -----------------------------

   subtype UPSTA5SET_RXINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA5SET_TXOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA5SET_TXSTPIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA5SET_PERRIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA5SET_NAKEDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA5SET_ERRORFIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA5SET_RXSTALLDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA5SET_RAMACERIS_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Status Set Register
   type USBC_UPSTA5SET_Register is record
      --  Write-only. RXINI Set
      RXINIS         : UPSTA5SET_RXINIS_Field := 16#0#;
      --  Write-only. TXOUTI Set
      TXOUTIS        : UPSTA5SET_TXOUTIS_Field := 16#0#;
      --  Write-only. TXSTPI Set
      TXSTPIS        : UPSTA5SET_TXSTPIS_Field := 16#0#;
      --  Write-only. PERRI Set
      PERRIS         : UPSTA5SET_PERRIS_Field := 16#0#;
      --  Write-only. NAKEDI Set
      NAKEDIS        : UPSTA5SET_NAKEDIS_Field := 16#0#;
      --  Write-only. ERRORFI Set
      ERRORFIS       : UPSTA5SET_ERRORFIS_Field := 16#0#;
      --  Write-only. RXSTALLDI Set
      RXSTALLDIS     : UPSTA5SET_RXSTALLDIS_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : UPSTA5SET_RAMACERIS_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA5SET_Register use record
      RXINIS         at 0 range 0 .. 0;
      TXOUTIS        at 0 range 1 .. 1;
      TXSTPIS        at 0 range 2 .. 2;
      PERRIS         at 0 range 3 .. 3;
      NAKEDIS        at 0 range 4 .. 4;
      ERRORFIS       at 0 range 5 .. 5;
      RXSTALLDIS     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIS      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------------------
   -- USBC_UPSTA6SET_Register --
   -----------------------------

   subtype UPSTA6SET_RXINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA6SET_TXOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA6SET_TXSTPIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA6SET_PERRIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA6SET_NAKEDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA6SET_ERRORFIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA6SET_RXSTALLDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA6SET_RAMACERIS_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Status Set Register
   type USBC_UPSTA6SET_Register is record
      --  Write-only. RXINI Set
      RXINIS         : UPSTA6SET_RXINIS_Field := 16#0#;
      --  Write-only. TXOUTI Set
      TXOUTIS        : UPSTA6SET_TXOUTIS_Field := 16#0#;
      --  Write-only. TXSTPI Set
      TXSTPIS        : UPSTA6SET_TXSTPIS_Field := 16#0#;
      --  Write-only. PERRI Set
      PERRIS         : UPSTA6SET_PERRIS_Field := 16#0#;
      --  Write-only. NAKEDI Set
      NAKEDIS        : UPSTA6SET_NAKEDIS_Field := 16#0#;
      --  Write-only. ERRORFI Set
      ERRORFIS       : UPSTA6SET_ERRORFIS_Field := 16#0#;
      --  Write-only. RXSTALLDI Set
      RXSTALLDIS     : UPSTA6SET_RXSTALLDIS_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : UPSTA6SET_RAMACERIS_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA6SET_Register use record
      RXINIS         at 0 range 0 .. 0;
      TXOUTIS        at 0 range 1 .. 1;
      TXSTPIS        at 0 range 2 .. 2;
      PERRIS         at 0 range 3 .. 3;
      NAKEDIS        at 0 range 4 .. 4;
      ERRORFIS       at 0 range 5 .. 5;
      RXSTALLDIS     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIS      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------------------
   -- USBC_UPSTA7SET_Register --
   -----------------------------

   subtype UPSTA7SET_RXINIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA7SET_TXOUTIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA7SET_TXSTPIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA7SET_PERRIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA7SET_NAKEDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA7SET_ERRORFIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA7SET_RXSTALLDIS_Field is Interfaces.Bit_Types.Bit;
   subtype UPSTA7SET_RAMACERIS_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Status Set Register
   type USBC_UPSTA7SET_Register is record
      --  Write-only. RXINI Set
      RXINIS         : UPSTA7SET_RXINIS_Field := 16#0#;
      --  Write-only. TXOUTI Set
      TXOUTIS        : UPSTA7SET_TXOUTIS_Field := 16#0#;
      --  Write-only. TXSTPI Set
      TXSTPIS        : UPSTA7SET_TXSTPIS_Field := 16#0#;
      --  Write-only. PERRI Set
      PERRIS         : UPSTA7SET_PERRIS_Field := 16#0#;
      --  Write-only. NAKEDI Set
      NAKEDIS        : UPSTA7SET_NAKEDIS_Field := 16#0#;
      --  Write-only. ERRORFI Set
      ERRORFIS       : UPSTA7SET_ERRORFIS_Field := 16#0#;
      --  Write-only. RXSTALLDI Set
      RXSTALLDIS     : UPSTA7SET_RXSTALLDIS_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : UPSTA7SET_RAMACERIS_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA7SET_Register use record
      RXINIS         at 0 range 0 .. 0;
      TXOUTIS        at 0 range 1 .. 1;
      TXSTPIS        at 0 range 2 .. 2;
      PERRIS         at 0 range 3 .. 3;
      NAKEDIS        at 0 range 4 .. 4;
      ERRORFIS       at 0 range 5 .. 5;
      RXSTALLDIS     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIS      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --------------------
   -- UPCON_Register --
   --------------------

   subtype UPCON0_RXINE_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0_TXOUTE_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0_TXSTPE_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0_PERRE_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0_NAKEDE_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0_ERRORFIE_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0_RXSTALLDE_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0_RAMACERE_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0_NBUSYBKE_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0_FIFOCON_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0_PFREEZE_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0_INITDTGL_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0_INITBK_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Control Register
   type UPCON_Register is record
      --  Read-only. RXIN Interrupt Enable
      RXINE          : UPCON0_RXINE_Field;
      --  Read-only. TXOUT Interrupt Enable
      TXOUTE         : UPCON0_TXOUTE_Field;
      --  Read-only. TXSTP Interrupt Enable
      TXSTPE         : UPCON0_TXSTPE_Field;
      --  Read-only. PERR Interrupt Enable
      PERRE          : UPCON0_PERRE_Field;
      --  Read-only. NAKED Interrupt Enable
      NAKEDE         : UPCON0_NAKEDE_Field;
      --  Read-only. ERRORFI Interrupt Enable
      ERRORFIE       : UPCON0_ERRORFIE_Field;
      --  Read-only. RXTALLD Interrupt Enable
      RXSTALLDE      : UPCON0_RXSTALLDE_Field;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3;
      --  Read-only. RAMACER Interrupt Enable
      RAMACERE       : UPCON0_RAMACERE_Field;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit;
      --  Read-only. NBUSYBKInterrupt Enable
      NBUSYBKE       : UPCON0_NBUSYBKE_Field;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit;
      --  Read-only. FIFO Control
      FIFOCON        : UPCON0_FIFOCON_Field;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2;
      --  Read-only. Pipe Freeze
      PFREEZE        : UPCON0_PFREEZE_Field;
      --  Read-only. Data Toggle Initialization
      INITDTGL       : UPCON0_INITDTGL_Field;
      --  Read-only. Bank Initialization
      INITBK         : UPCON0_INITBK_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UPCON_Register use record
      RXINE          at 0 range 0 .. 0;
      TXOUTE         at 0 range 1 .. 1;
      TXSTPE         at 0 range 2 .. 2;
      PERRE          at 0 range 3 .. 3;
      NAKEDE         at 0 range 4 .. 4;
      ERRORFIE       at 0 range 5 .. 5;
      RXSTALLDE      at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERE       at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKE       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCON        at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZE        at 0 range 17 .. 17;
      INITDTGL       at 0 range 18 .. 18;
      INITBK         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------
   -- USBC_UPCON0SET_Register --
   -----------------------------

   subtype UPCON0SET_RXINES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0SET_TXOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0SET_TXSTPES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0SET_PERRES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0SET_NAKEDES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0SET_ERRORFIES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0SET_RXSTALLDES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0SET_RAMACERES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0SET_NBUSYBKES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0SET_FIFOCONS_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0SET_PFREEZES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0SET_INITDTGLS_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0SET_INITBKS_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Control Set Register
   type USBC_UPCON0SET_Register is record
      --  Write-only. RXINE Set
      RXINES         : UPCON0SET_RXINES_Field := 16#0#;
      --  Write-only. TXOUTE Set
      TXOUTES        : UPCON0SET_TXOUTES_Field := 16#0#;
      --  Write-only. TXSTPE Set
      TXSTPES        : UPCON0SET_TXSTPES_Field := 16#0#;
      --  Write-only. PERRE Set
      PERRES         : UPCON0SET_PERRES_Field := 16#0#;
      --  Write-only. NAKEDE Set
      NAKEDES        : UPCON0SET_NAKEDES_Field := 16#0#;
      --  Write-only. ERRORFIE Set
      ERRORFIES      : UPCON0SET_ERRORFIES_Field := 16#0#;
      --  Write-only. RXSTALLDE Set
      RXSTALLDES     : UPCON0SET_RXSTALLDES_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : UPCON0SET_RAMACERES_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : UPCON0SET_NBUSYBKES_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Set
      FIFOCONS       : UPCON0SET_FIFOCONS_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PFREEZE Set
      PFREEZES       : UPCON0SET_PFREEZES_Field := 16#0#;
      --  Write-only. INITDTGL Set
      INITDTGLS      : UPCON0SET_INITDTGLS_Field := 16#0#;
      --  Write-only. INITBK Set
      INITBKS        : UPCON0SET_INITBKS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON0SET_Register use record
      RXINES         at 0 range 0 .. 0;
      TXOUTES        at 0 range 1 .. 1;
      TXSTPES        at 0 range 2 .. 2;
      PERRES         at 0 range 3 .. 3;
      NAKEDES        at 0 range 4 .. 4;
      ERRORFIES      at 0 range 5 .. 5;
      RXSTALLDES     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERES      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONS       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZES       at 0 range 17 .. 17;
      INITDTGLS      at 0 range 18 .. 18;
      INITBKS        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------
   -- USBC_UPCON1SET_Register --
   -----------------------------

   subtype UPCON1SET_RXINES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1SET_TXOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1SET_TXSTPES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1SET_PERRES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1SET_NAKEDES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1SET_ERRORFIES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1SET_RXSTALLDES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1SET_RAMACERES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1SET_NBUSYBKES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1SET_FIFOCONS_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1SET_PFREEZES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1SET_INITDTGLS_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1SET_INITBKS_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Control Set Register
   type USBC_UPCON1SET_Register is record
      --  Write-only. RXINE Set
      RXINES         : UPCON1SET_RXINES_Field := 16#0#;
      --  Write-only. TXOUTE Set
      TXOUTES        : UPCON1SET_TXOUTES_Field := 16#0#;
      --  Write-only. TXSTPE Set
      TXSTPES        : UPCON1SET_TXSTPES_Field := 16#0#;
      --  Write-only. PERRE Set
      PERRES         : UPCON1SET_PERRES_Field := 16#0#;
      --  Write-only. NAKEDE Set
      NAKEDES        : UPCON1SET_NAKEDES_Field := 16#0#;
      --  Write-only. ERRORFIE Set
      ERRORFIES      : UPCON1SET_ERRORFIES_Field := 16#0#;
      --  Write-only. RXSTALLDE Set
      RXSTALLDES     : UPCON1SET_RXSTALLDES_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : UPCON1SET_RAMACERES_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : UPCON1SET_NBUSYBKES_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Set
      FIFOCONS       : UPCON1SET_FIFOCONS_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PFREEZE Set
      PFREEZES       : UPCON1SET_PFREEZES_Field := 16#0#;
      --  Write-only. INITDTGL Set
      INITDTGLS      : UPCON1SET_INITDTGLS_Field := 16#0#;
      --  Write-only. INITBK Set
      INITBKS        : UPCON1SET_INITBKS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON1SET_Register use record
      RXINES         at 0 range 0 .. 0;
      TXOUTES        at 0 range 1 .. 1;
      TXSTPES        at 0 range 2 .. 2;
      PERRES         at 0 range 3 .. 3;
      NAKEDES        at 0 range 4 .. 4;
      ERRORFIES      at 0 range 5 .. 5;
      RXSTALLDES     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERES      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONS       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZES       at 0 range 17 .. 17;
      INITDTGLS      at 0 range 18 .. 18;
      INITBKS        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------
   -- USBC_UPCON2SET_Register --
   -----------------------------

   subtype UPCON2SET_RXINES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2SET_TXOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2SET_TXSTPES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2SET_PERRES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2SET_NAKEDES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2SET_ERRORFIES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2SET_RXSTALLDES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2SET_RAMACERES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2SET_NBUSYBKES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2SET_FIFOCONS_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2SET_PFREEZES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2SET_INITDTGLS_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2SET_INITBKS_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Control Set Register
   type USBC_UPCON2SET_Register is record
      --  Write-only. RXINE Set
      RXINES         : UPCON2SET_RXINES_Field := 16#0#;
      --  Write-only. TXOUTE Set
      TXOUTES        : UPCON2SET_TXOUTES_Field := 16#0#;
      --  Write-only. TXSTPE Set
      TXSTPES        : UPCON2SET_TXSTPES_Field := 16#0#;
      --  Write-only. PERRE Set
      PERRES         : UPCON2SET_PERRES_Field := 16#0#;
      --  Write-only. NAKEDE Set
      NAKEDES        : UPCON2SET_NAKEDES_Field := 16#0#;
      --  Write-only. ERRORFIE Set
      ERRORFIES      : UPCON2SET_ERRORFIES_Field := 16#0#;
      --  Write-only. RXSTALLDE Set
      RXSTALLDES     : UPCON2SET_RXSTALLDES_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : UPCON2SET_RAMACERES_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : UPCON2SET_NBUSYBKES_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Set
      FIFOCONS       : UPCON2SET_FIFOCONS_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PFREEZE Set
      PFREEZES       : UPCON2SET_PFREEZES_Field := 16#0#;
      --  Write-only. INITDTGL Set
      INITDTGLS      : UPCON2SET_INITDTGLS_Field := 16#0#;
      --  Write-only. INITBK Set
      INITBKS        : UPCON2SET_INITBKS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON2SET_Register use record
      RXINES         at 0 range 0 .. 0;
      TXOUTES        at 0 range 1 .. 1;
      TXSTPES        at 0 range 2 .. 2;
      PERRES         at 0 range 3 .. 3;
      NAKEDES        at 0 range 4 .. 4;
      ERRORFIES      at 0 range 5 .. 5;
      RXSTALLDES     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERES      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONS       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZES       at 0 range 17 .. 17;
      INITDTGLS      at 0 range 18 .. 18;
      INITBKS        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------
   -- USBC_UPCON3SET_Register --
   -----------------------------

   subtype UPCON3SET_RXINES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3SET_TXOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3SET_TXSTPES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3SET_PERRES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3SET_NAKEDES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3SET_ERRORFIES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3SET_RXSTALLDES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3SET_RAMACERES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3SET_NBUSYBKES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3SET_FIFOCONS_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3SET_PFREEZES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3SET_INITDTGLS_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3SET_INITBKS_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Control Set Register
   type USBC_UPCON3SET_Register is record
      --  Write-only. RXINE Set
      RXINES         : UPCON3SET_RXINES_Field := 16#0#;
      --  Write-only. TXOUTE Set
      TXOUTES        : UPCON3SET_TXOUTES_Field := 16#0#;
      --  Write-only. TXSTPE Set
      TXSTPES        : UPCON3SET_TXSTPES_Field := 16#0#;
      --  Write-only. PERRE Set
      PERRES         : UPCON3SET_PERRES_Field := 16#0#;
      --  Write-only. NAKEDE Set
      NAKEDES        : UPCON3SET_NAKEDES_Field := 16#0#;
      --  Write-only. ERRORFIE Set
      ERRORFIES      : UPCON3SET_ERRORFIES_Field := 16#0#;
      --  Write-only. RXSTALLDE Set
      RXSTALLDES     : UPCON3SET_RXSTALLDES_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : UPCON3SET_RAMACERES_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : UPCON3SET_NBUSYBKES_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Set
      FIFOCONS       : UPCON3SET_FIFOCONS_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PFREEZE Set
      PFREEZES       : UPCON3SET_PFREEZES_Field := 16#0#;
      --  Write-only. INITDTGL Set
      INITDTGLS      : UPCON3SET_INITDTGLS_Field := 16#0#;
      --  Write-only. INITBK Set
      INITBKS        : UPCON3SET_INITBKS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON3SET_Register use record
      RXINES         at 0 range 0 .. 0;
      TXOUTES        at 0 range 1 .. 1;
      TXSTPES        at 0 range 2 .. 2;
      PERRES         at 0 range 3 .. 3;
      NAKEDES        at 0 range 4 .. 4;
      ERRORFIES      at 0 range 5 .. 5;
      RXSTALLDES     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERES      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONS       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZES       at 0 range 17 .. 17;
      INITDTGLS      at 0 range 18 .. 18;
      INITBKS        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------
   -- USBC_UPCON4SET_Register --
   -----------------------------

   subtype UPCON4SET_RXINES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4SET_TXOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4SET_TXSTPES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4SET_PERRES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4SET_NAKEDES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4SET_ERRORFIES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4SET_RXSTALLDES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4SET_RAMACERES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4SET_NBUSYBKES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4SET_FIFOCONS_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4SET_PFREEZES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4SET_INITDTGLS_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4SET_INITBKS_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Control Set Register
   type USBC_UPCON4SET_Register is record
      --  Write-only. RXINE Set
      RXINES         : UPCON4SET_RXINES_Field := 16#0#;
      --  Write-only. TXOUTE Set
      TXOUTES        : UPCON4SET_TXOUTES_Field := 16#0#;
      --  Write-only. TXSTPE Set
      TXSTPES        : UPCON4SET_TXSTPES_Field := 16#0#;
      --  Write-only. PERRE Set
      PERRES         : UPCON4SET_PERRES_Field := 16#0#;
      --  Write-only. NAKEDE Set
      NAKEDES        : UPCON4SET_NAKEDES_Field := 16#0#;
      --  Write-only. ERRORFIE Set
      ERRORFIES      : UPCON4SET_ERRORFIES_Field := 16#0#;
      --  Write-only. RXSTALLDE Set
      RXSTALLDES     : UPCON4SET_RXSTALLDES_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : UPCON4SET_RAMACERES_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : UPCON4SET_NBUSYBKES_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Set
      FIFOCONS       : UPCON4SET_FIFOCONS_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PFREEZE Set
      PFREEZES       : UPCON4SET_PFREEZES_Field := 16#0#;
      --  Write-only. INITDTGL Set
      INITDTGLS      : UPCON4SET_INITDTGLS_Field := 16#0#;
      --  Write-only. INITBK Set
      INITBKS        : UPCON4SET_INITBKS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON4SET_Register use record
      RXINES         at 0 range 0 .. 0;
      TXOUTES        at 0 range 1 .. 1;
      TXSTPES        at 0 range 2 .. 2;
      PERRES         at 0 range 3 .. 3;
      NAKEDES        at 0 range 4 .. 4;
      ERRORFIES      at 0 range 5 .. 5;
      RXSTALLDES     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERES      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONS       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZES       at 0 range 17 .. 17;
      INITDTGLS      at 0 range 18 .. 18;
      INITBKS        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------
   -- USBC_UPCON5SET_Register --
   -----------------------------

   subtype UPCON5SET_RXINES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5SET_TXOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5SET_TXSTPES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5SET_PERRES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5SET_NAKEDES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5SET_ERRORFIES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5SET_RXSTALLDES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5SET_RAMACERES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5SET_NBUSYBKES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5SET_FIFOCONS_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5SET_PFREEZES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5SET_INITDTGLS_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5SET_INITBKS_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Control Set Register
   type USBC_UPCON5SET_Register is record
      --  Write-only. RXINE Set
      RXINES         : UPCON5SET_RXINES_Field := 16#0#;
      --  Write-only. TXOUTE Set
      TXOUTES        : UPCON5SET_TXOUTES_Field := 16#0#;
      --  Write-only. TXSTPE Set
      TXSTPES        : UPCON5SET_TXSTPES_Field := 16#0#;
      --  Write-only. PERRE Set
      PERRES         : UPCON5SET_PERRES_Field := 16#0#;
      --  Write-only. NAKEDE Set
      NAKEDES        : UPCON5SET_NAKEDES_Field := 16#0#;
      --  Write-only. ERRORFIE Set
      ERRORFIES      : UPCON5SET_ERRORFIES_Field := 16#0#;
      --  Write-only. RXSTALLDE Set
      RXSTALLDES     : UPCON5SET_RXSTALLDES_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : UPCON5SET_RAMACERES_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : UPCON5SET_NBUSYBKES_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Set
      FIFOCONS       : UPCON5SET_FIFOCONS_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PFREEZE Set
      PFREEZES       : UPCON5SET_PFREEZES_Field := 16#0#;
      --  Write-only. INITDTGL Set
      INITDTGLS      : UPCON5SET_INITDTGLS_Field := 16#0#;
      --  Write-only. INITBK Set
      INITBKS        : UPCON5SET_INITBKS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON5SET_Register use record
      RXINES         at 0 range 0 .. 0;
      TXOUTES        at 0 range 1 .. 1;
      TXSTPES        at 0 range 2 .. 2;
      PERRES         at 0 range 3 .. 3;
      NAKEDES        at 0 range 4 .. 4;
      ERRORFIES      at 0 range 5 .. 5;
      RXSTALLDES     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERES      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONS       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZES       at 0 range 17 .. 17;
      INITDTGLS      at 0 range 18 .. 18;
      INITBKS        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------
   -- USBC_UPCON6SET_Register --
   -----------------------------

   subtype UPCON6SET_RXINES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6SET_TXOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6SET_TXSTPES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6SET_PERRES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6SET_NAKEDES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6SET_ERRORFIES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6SET_RXSTALLDES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6SET_RAMACERES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6SET_NBUSYBKES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6SET_FIFOCONS_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6SET_PFREEZES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6SET_INITDTGLS_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6SET_INITBKS_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Control Set Register
   type USBC_UPCON6SET_Register is record
      --  Write-only. RXINE Set
      RXINES         : UPCON6SET_RXINES_Field := 16#0#;
      --  Write-only. TXOUTE Set
      TXOUTES        : UPCON6SET_TXOUTES_Field := 16#0#;
      --  Write-only. TXSTPE Set
      TXSTPES        : UPCON6SET_TXSTPES_Field := 16#0#;
      --  Write-only. PERRE Set
      PERRES         : UPCON6SET_PERRES_Field := 16#0#;
      --  Write-only. NAKEDE Set
      NAKEDES        : UPCON6SET_NAKEDES_Field := 16#0#;
      --  Write-only. ERRORFIE Set
      ERRORFIES      : UPCON6SET_ERRORFIES_Field := 16#0#;
      --  Write-only. RXSTALLDE Set
      RXSTALLDES     : UPCON6SET_RXSTALLDES_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : UPCON6SET_RAMACERES_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : UPCON6SET_NBUSYBKES_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Set
      FIFOCONS       : UPCON6SET_FIFOCONS_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PFREEZE Set
      PFREEZES       : UPCON6SET_PFREEZES_Field := 16#0#;
      --  Write-only. INITDTGL Set
      INITDTGLS      : UPCON6SET_INITDTGLS_Field := 16#0#;
      --  Write-only. INITBK Set
      INITBKS        : UPCON6SET_INITBKS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON6SET_Register use record
      RXINES         at 0 range 0 .. 0;
      TXOUTES        at 0 range 1 .. 1;
      TXSTPES        at 0 range 2 .. 2;
      PERRES         at 0 range 3 .. 3;
      NAKEDES        at 0 range 4 .. 4;
      ERRORFIES      at 0 range 5 .. 5;
      RXSTALLDES     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERES      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONS       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZES       at 0 range 17 .. 17;
      INITDTGLS      at 0 range 18 .. 18;
      INITBKS        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------
   -- USBC_UPCON7SET_Register --
   -----------------------------

   subtype UPCON7SET_RXINES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7SET_TXOUTES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7SET_TXSTPES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7SET_PERRES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7SET_NAKEDES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7SET_ERRORFIES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7SET_RXSTALLDES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7SET_RAMACERES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7SET_NBUSYBKES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7SET_FIFOCONS_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7SET_PFREEZES_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7SET_INITDTGLS_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7SET_INITBKS_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Control Set Register
   type USBC_UPCON7SET_Register is record
      --  Write-only. RXINE Set
      RXINES         : UPCON7SET_RXINES_Field := 16#0#;
      --  Write-only. TXOUTE Set
      TXOUTES        : UPCON7SET_TXOUTES_Field := 16#0#;
      --  Write-only. TXSTPE Set
      TXSTPES        : UPCON7SET_TXSTPES_Field := 16#0#;
      --  Write-only. PERRE Set
      PERRES         : UPCON7SET_PERRES_Field := 16#0#;
      --  Write-only. NAKEDE Set
      NAKEDES        : UPCON7SET_NAKEDES_Field := 16#0#;
      --  Write-only. ERRORFIE Set
      ERRORFIES      : UPCON7SET_ERRORFIES_Field := 16#0#;
      --  Write-only. RXSTALLDE Set
      RXSTALLDES     : UPCON7SET_RXSTALLDES_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : UPCON7SET_RAMACERES_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : UPCON7SET_NBUSYBKES_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Set
      FIFOCONS       : UPCON7SET_FIFOCONS_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PFREEZE Set
      PFREEZES       : UPCON7SET_PFREEZES_Field := 16#0#;
      --  Write-only. INITDTGL Set
      INITDTGLS      : UPCON7SET_INITDTGLS_Field := 16#0#;
      --  Write-only. INITBK Set
      INITBKS        : UPCON7SET_INITBKS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON7SET_Register use record
      RXINES         at 0 range 0 .. 0;
      TXOUTES        at 0 range 1 .. 1;
      TXSTPES        at 0 range 2 .. 2;
      PERRES         at 0 range 3 .. 3;
      NAKEDES        at 0 range 4 .. 4;
      ERRORFIES      at 0 range 5 .. 5;
      RXSTALLDES     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERES      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONS       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZES       at 0 range 17 .. 17;
      INITDTGLS      at 0 range 18 .. 18;
      INITBKS        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------
   -- USBC_UPCON0CLR_Register --
   -----------------------------

   subtype UPCON0CLR_RXINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0CLR_TXOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0CLR_TXSTPEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0CLR_PERREC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0CLR_NAKEDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0CLR_ERRORFIEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0CLR_RXSTALLDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0CLR_RAMACEREC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0CLR_NBUSYBKEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0CLR_FIFOCONC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0CLR_PFREEZEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0CLR_INITDTGLC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON0CLR_INITBKC_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Control Clear Register
   type USBC_UPCON0CLR_Register is record
      --  Write-only. RXINE Clear
      RXINEC         : UPCON0CLR_RXINEC_Field := 16#0#;
      --  Write-only. TXOUTE Clear
      TXOUTEC        : UPCON0CLR_TXOUTEC_Field := 16#0#;
      --  Write-only. TXSTPE Clear
      TXSTPEC        : UPCON0CLR_TXSTPEC_Field := 16#0#;
      --  Write-only. PERRE Clear
      PERREC         : UPCON0CLR_PERREC_Field := 16#0#;
      --  Write-only. NAKEDE Clear
      NAKEDEC        : UPCON0CLR_NAKEDEC_Field := 16#0#;
      --  Write-only. ERRORFIE Clear
      ERRORFIEC      : UPCON0CLR_ERRORFIEC_Field := 16#0#;
      --  Write-only. RXTALLDE Clear
      RXSTALLDEC     : UPCON0CLR_RXSTALLDEC_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : UPCON0CLR_RAMACEREC_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : UPCON0CLR_NBUSYBKEC_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : UPCON0CLR_FIFOCONC_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PFREEZE Clear
      PFREEZEC       : UPCON0CLR_PFREEZEC_Field := 16#0#;
      --  Read-only. INITDTGL Clear
      INITDTGLC      : UPCON0CLR_INITDTGLC_Field := 16#0#;
      --  Write-only. INITBK Clear
      INITBKC        : UPCON0CLR_INITBKC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON0CLR_Register use record
      RXINEC         at 0 range 0 .. 0;
      TXOUTEC        at 0 range 1 .. 1;
      TXSTPEC        at 0 range 2 .. 2;
      PERREC         at 0 range 3 .. 3;
      NAKEDEC        at 0 range 4 .. 4;
      ERRORFIEC      at 0 range 5 .. 5;
      RXSTALLDEC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACEREC      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZEC       at 0 range 17 .. 17;
      INITDTGLC      at 0 range 18 .. 18;
      INITBKC        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------
   -- USBC_UPCON1CLR_Register --
   -----------------------------

   subtype UPCON1CLR_RXINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1CLR_TXOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1CLR_TXSTPEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1CLR_PERREC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1CLR_NAKEDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1CLR_ERRORFIEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1CLR_RXSTALLDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1CLR_RAMACEREC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1CLR_NBUSYBKEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1CLR_FIFOCONC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1CLR_PFREEZEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1CLR_INITDTGLC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON1CLR_INITBKC_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Control Clear Register
   type USBC_UPCON1CLR_Register is record
      --  Write-only. RXINE Clear
      RXINEC         : UPCON1CLR_RXINEC_Field := 16#0#;
      --  Write-only. TXOUTE Clear
      TXOUTEC        : UPCON1CLR_TXOUTEC_Field := 16#0#;
      --  Write-only. TXSTPE Clear
      TXSTPEC        : UPCON1CLR_TXSTPEC_Field := 16#0#;
      --  Write-only. PERRE Clear
      PERREC         : UPCON1CLR_PERREC_Field := 16#0#;
      --  Write-only. NAKEDE Clear
      NAKEDEC        : UPCON1CLR_NAKEDEC_Field := 16#0#;
      --  Write-only. ERRORFIE Clear
      ERRORFIEC      : UPCON1CLR_ERRORFIEC_Field := 16#0#;
      --  Write-only. RXTALLDE Clear
      RXSTALLDEC     : UPCON1CLR_RXSTALLDEC_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : UPCON1CLR_RAMACEREC_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : UPCON1CLR_NBUSYBKEC_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : UPCON1CLR_FIFOCONC_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PFREEZE Clear
      PFREEZEC       : UPCON1CLR_PFREEZEC_Field := 16#0#;
      --  Read-only. INITDTGL Clear
      INITDTGLC      : UPCON1CLR_INITDTGLC_Field := 16#0#;
      --  Write-only. INITBK Clear
      INITBKC        : UPCON1CLR_INITBKC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON1CLR_Register use record
      RXINEC         at 0 range 0 .. 0;
      TXOUTEC        at 0 range 1 .. 1;
      TXSTPEC        at 0 range 2 .. 2;
      PERREC         at 0 range 3 .. 3;
      NAKEDEC        at 0 range 4 .. 4;
      ERRORFIEC      at 0 range 5 .. 5;
      RXSTALLDEC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACEREC      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZEC       at 0 range 17 .. 17;
      INITDTGLC      at 0 range 18 .. 18;
      INITBKC        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------
   -- USBC_UPCON2CLR_Register --
   -----------------------------

   subtype UPCON2CLR_RXINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2CLR_TXOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2CLR_TXSTPEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2CLR_PERREC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2CLR_NAKEDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2CLR_ERRORFIEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2CLR_RXSTALLDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2CLR_RAMACEREC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2CLR_NBUSYBKEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2CLR_FIFOCONC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2CLR_PFREEZEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2CLR_INITDTGLC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON2CLR_INITBKC_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Control Clear Register
   type USBC_UPCON2CLR_Register is record
      --  Write-only. RXINE Clear
      RXINEC         : UPCON2CLR_RXINEC_Field := 16#0#;
      --  Write-only. TXOUTE Clear
      TXOUTEC        : UPCON2CLR_TXOUTEC_Field := 16#0#;
      --  Write-only. TXSTPE Clear
      TXSTPEC        : UPCON2CLR_TXSTPEC_Field := 16#0#;
      --  Write-only. PERRE Clear
      PERREC         : UPCON2CLR_PERREC_Field := 16#0#;
      --  Write-only. NAKEDE Clear
      NAKEDEC        : UPCON2CLR_NAKEDEC_Field := 16#0#;
      --  Write-only. ERRORFIE Clear
      ERRORFIEC      : UPCON2CLR_ERRORFIEC_Field := 16#0#;
      --  Write-only. RXTALLDE Clear
      RXSTALLDEC     : UPCON2CLR_RXSTALLDEC_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : UPCON2CLR_RAMACEREC_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : UPCON2CLR_NBUSYBKEC_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : UPCON2CLR_FIFOCONC_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PFREEZE Clear
      PFREEZEC       : UPCON2CLR_PFREEZEC_Field := 16#0#;
      --  Read-only. INITDTGL Clear
      INITDTGLC      : UPCON2CLR_INITDTGLC_Field := 16#0#;
      --  Write-only. INITBK Clear
      INITBKC        : UPCON2CLR_INITBKC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON2CLR_Register use record
      RXINEC         at 0 range 0 .. 0;
      TXOUTEC        at 0 range 1 .. 1;
      TXSTPEC        at 0 range 2 .. 2;
      PERREC         at 0 range 3 .. 3;
      NAKEDEC        at 0 range 4 .. 4;
      ERRORFIEC      at 0 range 5 .. 5;
      RXSTALLDEC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACEREC      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZEC       at 0 range 17 .. 17;
      INITDTGLC      at 0 range 18 .. 18;
      INITBKC        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------
   -- USBC_UPCON3CLR_Register --
   -----------------------------

   subtype UPCON3CLR_RXINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3CLR_TXOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3CLR_TXSTPEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3CLR_PERREC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3CLR_NAKEDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3CLR_ERRORFIEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3CLR_RXSTALLDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3CLR_RAMACEREC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3CLR_NBUSYBKEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3CLR_FIFOCONC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3CLR_PFREEZEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3CLR_INITDTGLC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON3CLR_INITBKC_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Control Clear Register
   type USBC_UPCON3CLR_Register is record
      --  Write-only. RXINE Clear
      RXINEC         : UPCON3CLR_RXINEC_Field := 16#0#;
      --  Write-only. TXOUTE Clear
      TXOUTEC        : UPCON3CLR_TXOUTEC_Field := 16#0#;
      --  Write-only. TXSTPE Clear
      TXSTPEC        : UPCON3CLR_TXSTPEC_Field := 16#0#;
      --  Write-only. PERRE Clear
      PERREC         : UPCON3CLR_PERREC_Field := 16#0#;
      --  Write-only. NAKEDE Clear
      NAKEDEC        : UPCON3CLR_NAKEDEC_Field := 16#0#;
      --  Write-only. ERRORFIE Clear
      ERRORFIEC      : UPCON3CLR_ERRORFIEC_Field := 16#0#;
      --  Write-only. RXTALLDE Clear
      RXSTALLDEC     : UPCON3CLR_RXSTALLDEC_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : UPCON3CLR_RAMACEREC_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : UPCON3CLR_NBUSYBKEC_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : UPCON3CLR_FIFOCONC_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PFREEZE Clear
      PFREEZEC       : UPCON3CLR_PFREEZEC_Field := 16#0#;
      --  Read-only. INITDTGL Clear
      INITDTGLC      : UPCON3CLR_INITDTGLC_Field := 16#0#;
      --  Write-only. INITBK Clear
      INITBKC        : UPCON3CLR_INITBKC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON3CLR_Register use record
      RXINEC         at 0 range 0 .. 0;
      TXOUTEC        at 0 range 1 .. 1;
      TXSTPEC        at 0 range 2 .. 2;
      PERREC         at 0 range 3 .. 3;
      NAKEDEC        at 0 range 4 .. 4;
      ERRORFIEC      at 0 range 5 .. 5;
      RXSTALLDEC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACEREC      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZEC       at 0 range 17 .. 17;
      INITDTGLC      at 0 range 18 .. 18;
      INITBKC        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------
   -- USBC_UPCON4CLR_Register --
   -----------------------------

   subtype UPCON4CLR_RXINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4CLR_TXOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4CLR_TXSTPEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4CLR_PERREC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4CLR_NAKEDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4CLR_ERRORFIEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4CLR_RXSTALLDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4CLR_RAMACEREC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4CLR_NBUSYBKEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4CLR_FIFOCONC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4CLR_PFREEZEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4CLR_INITDTGLC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON4CLR_INITBKC_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Control Clear Register
   type USBC_UPCON4CLR_Register is record
      --  Write-only. RXINE Clear
      RXINEC         : UPCON4CLR_RXINEC_Field := 16#0#;
      --  Write-only. TXOUTE Clear
      TXOUTEC        : UPCON4CLR_TXOUTEC_Field := 16#0#;
      --  Write-only. TXSTPE Clear
      TXSTPEC        : UPCON4CLR_TXSTPEC_Field := 16#0#;
      --  Write-only. PERRE Clear
      PERREC         : UPCON4CLR_PERREC_Field := 16#0#;
      --  Write-only. NAKEDE Clear
      NAKEDEC        : UPCON4CLR_NAKEDEC_Field := 16#0#;
      --  Write-only. ERRORFIE Clear
      ERRORFIEC      : UPCON4CLR_ERRORFIEC_Field := 16#0#;
      --  Write-only. RXTALLDE Clear
      RXSTALLDEC     : UPCON4CLR_RXSTALLDEC_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : UPCON4CLR_RAMACEREC_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : UPCON4CLR_NBUSYBKEC_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : UPCON4CLR_FIFOCONC_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PFREEZE Clear
      PFREEZEC       : UPCON4CLR_PFREEZEC_Field := 16#0#;
      --  Read-only. INITDTGL Clear
      INITDTGLC      : UPCON4CLR_INITDTGLC_Field := 16#0#;
      --  Write-only. INITBK Clear
      INITBKC        : UPCON4CLR_INITBKC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON4CLR_Register use record
      RXINEC         at 0 range 0 .. 0;
      TXOUTEC        at 0 range 1 .. 1;
      TXSTPEC        at 0 range 2 .. 2;
      PERREC         at 0 range 3 .. 3;
      NAKEDEC        at 0 range 4 .. 4;
      ERRORFIEC      at 0 range 5 .. 5;
      RXSTALLDEC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACEREC      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZEC       at 0 range 17 .. 17;
      INITDTGLC      at 0 range 18 .. 18;
      INITBKC        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------
   -- USBC_UPCON5CLR_Register --
   -----------------------------

   subtype UPCON5CLR_RXINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5CLR_TXOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5CLR_TXSTPEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5CLR_PERREC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5CLR_NAKEDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5CLR_ERRORFIEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5CLR_RXSTALLDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5CLR_RAMACEREC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5CLR_NBUSYBKEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5CLR_FIFOCONC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5CLR_PFREEZEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5CLR_INITDTGLC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON5CLR_INITBKC_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Control Clear Register
   type USBC_UPCON5CLR_Register is record
      --  Write-only. RXINE Clear
      RXINEC         : UPCON5CLR_RXINEC_Field := 16#0#;
      --  Write-only. TXOUTE Clear
      TXOUTEC        : UPCON5CLR_TXOUTEC_Field := 16#0#;
      --  Write-only. TXSTPE Clear
      TXSTPEC        : UPCON5CLR_TXSTPEC_Field := 16#0#;
      --  Write-only. PERRE Clear
      PERREC         : UPCON5CLR_PERREC_Field := 16#0#;
      --  Write-only. NAKEDE Clear
      NAKEDEC        : UPCON5CLR_NAKEDEC_Field := 16#0#;
      --  Write-only. ERRORFIE Clear
      ERRORFIEC      : UPCON5CLR_ERRORFIEC_Field := 16#0#;
      --  Write-only. RXTALLDE Clear
      RXSTALLDEC     : UPCON5CLR_RXSTALLDEC_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : UPCON5CLR_RAMACEREC_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : UPCON5CLR_NBUSYBKEC_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : UPCON5CLR_FIFOCONC_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PFREEZE Clear
      PFREEZEC       : UPCON5CLR_PFREEZEC_Field := 16#0#;
      --  Read-only. INITDTGL Clear
      INITDTGLC      : UPCON5CLR_INITDTGLC_Field := 16#0#;
      --  Write-only. INITBK Clear
      INITBKC        : UPCON5CLR_INITBKC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON5CLR_Register use record
      RXINEC         at 0 range 0 .. 0;
      TXOUTEC        at 0 range 1 .. 1;
      TXSTPEC        at 0 range 2 .. 2;
      PERREC         at 0 range 3 .. 3;
      NAKEDEC        at 0 range 4 .. 4;
      ERRORFIEC      at 0 range 5 .. 5;
      RXSTALLDEC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACEREC      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZEC       at 0 range 17 .. 17;
      INITDTGLC      at 0 range 18 .. 18;
      INITBKC        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------
   -- USBC_UPCON6CLR_Register --
   -----------------------------

   subtype UPCON6CLR_RXINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6CLR_TXOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6CLR_TXSTPEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6CLR_PERREC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6CLR_NAKEDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6CLR_ERRORFIEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6CLR_RXSTALLDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6CLR_RAMACEREC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6CLR_NBUSYBKEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6CLR_FIFOCONC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6CLR_PFREEZEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6CLR_INITDTGLC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON6CLR_INITBKC_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Control Clear Register
   type USBC_UPCON6CLR_Register is record
      --  Write-only. RXINE Clear
      RXINEC         : UPCON6CLR_RXINEC_Field := 16#0#;
      --  Write-only. TXOUTE Clear
      TXOUTEC        : UPCON6CLR_TXOUTEC_Field := 16#0#;
      --  Write-only. TXSTPE Clear
      TXSTPEC        : UPCON6CLR_TXSTPEC_Field := 16#0#;
      --  Write-only. PERRE Clear
      PERREC         : UPCON6CLR_PERREC_Field := 16#0#;
      --  Write-only. NAKEDE Clear
      NAKEDEC        : UPCON6CLR_NAKEDEC_Field := 16#0#;
      --  Write-only. ERRORFIE Clear
      ERRORFIEC      : UPCON6CLR_ERRORFIEC_Field := 16#0#;
      --  Write-only. RXTALLDE Clear
      RXSTALLDEC     : UPCON6CLR_RXSTALLDEC_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : UPCON6CLR_RAMACEREC_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : UPCON6CLR_NBUSYBKEC_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : UPCON6CLR_FIFOCONC_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PFREEZE Clear
      PFREEZEC       : UPCON6CLR_PFREEZEC_Field := 16#0#;
      --  Read-only. INITDTGL Clear
      INITDTGLC      : UPCON6CLR_INITDTGLC_Field := 16#0#;
      --  Write-only. INITBK Clear
      INITBKC        : UPCON6CLR_INITBKC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON6CLR_Register use record
      RXINEC         at 0 range 0 .. 0;
      TXOUTEC        at 0 range 1 .. 1;
      TXSTPEC        at 0 range 2 .. 2;
      PERREC         at 0 range 3 .. 3;
      NAKEDEC        at 0 range 4 .. 4;
      ERRORFIEC      at 0 range 5 .. 5;
      RXSTALLDEC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACEREC      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZEC       at 0 range 17 .. 17;
      INITDTGLC      at 0 range 18 .. 18;
      INITBKC        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------------------
   -- USBC_UPCON7CLR_Register --
   -----------------------------

   subtype UPCON7CLR_RXINEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7CLR_TXOUTEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7CLR_TXSTPEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7CLR_PERREC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7CLR_NAKEDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7CLR_ERRORFIEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7CLR_RXSTALLDEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7CLR_RAMACEREC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7CLR_NBUSYBKEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7CLR_FIFOCONC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7CLR_PFREEZEC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7CLR_INITDTGLC_Field is Interfaces.Bit_Types.Bit;
   subtype UPCON7CLR_INITBKC_Field is Interfaces.Bit_Types.Bit;

   --  Pipe Control Clear Register
   type USBC_UPCON7CLR_Register is record
      --  Write-only. RXINE Clear
      RXINEC         : UPCON7CLR_RXINEC_Field := 16#0#;
      --  Write-only. TXOUTE Clear
      TXOUTEC        : UPCON7CLR_TXOUTEC_Field := 16#0#;
      --  Write-only. TXSTPE Clear
      TXSTPEC        : UPCON7CLR_TXSTPEC_Field := 16#0#;
      --  Write-only. PERRE Clear
      PERREC         : UPCON7CLR_PERREC_Field := 16#0#;
      --  Write-only. NAKEDE Clear
      NAKEDEC        : UPCON7CLR_NAKEDEC_Field := 16#0#;
      --  Write-only. ERRORFIE Clear
      ERRORFIEC      : UPCON7CLR_ERRORFIEC_Field := 16#0#;
      --  Write-only. RXTALLDE Clear
      RXSTALLDEC     : UPCON7CLR_RXSTALLDEC_Field := 16#0#;
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : UPCON7CLR_RAMACEREC_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : UPCON7CLR_NBUSYBKEC_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : UPCON7CLR_FIFOCONC_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. PFREEZE Clear
      PFREEZEC       : UPCON7CLR_PFREEZEC_Field := 16#0#;
      --  Read-only. INITDTGL Clear
      INITDTGLC      : UPCON7CLR_INITDTGLC_Field := 16#0#;
      --  Write-only. INITBK Clear
      INITBKC        : UPCON7CLR_INITBKC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON7CLR_Register use record
      RXINEC         at 0 range 0 .. 0;
      TXOUTEC        at 0 range 1 .. 1;
      TXSTPEC        at 0 range 2 .. 2;
      PERREC         at 0 range 3 .. 3;
      NAKEDEC        at 0 range 4 .. 4;
      ERRORFIEC      at 0 range 5 .. 5;
      RXSTALLDEC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACEREC      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZEC       at 0 range 17 .. 17;
      INITDTGLC      at 0 range 18 .. 18;
      INITBKC        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   ---------------------
   -- UPINRQ_Register --
   ---------------------

   subtype UPINRQ0_INRQ_Field is Interfaces.Bit_Types.Byte;
   subtype UPINRQ0_INMODE_Field is Interfaces.Bit_Types.Bit;

   --  Pipe In Request
   type UPINRQ_Register is record
      --  IN Request Number before Freeze
      INRQ          : UPINRQ0_INRQ_Field := 16#1#;
      --  IN Request Mode
      INMODE        : UPINRQ0_INMODE_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UPINRQ_Register use record
      INRQ          at 0 range 0 .. 7;
      INMODE        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --------------------------
   -- USBC_USBCON_Register --
   --------------------------

   subtype USBCON_FRZCLK_Field is Interfaces.Bit_Types.Bit;
   subtype USBCON_USBE_Field is Interfaces.Bit_Types.Bit;
   subtype USBCON_UIMOD_Field is Interfaces.Bit_Types.Bit;

   --  General Control Register
   type USBC_USBCON_Register is record
      --  unspecified
      Reserved_0_13  : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  Freeze USB Clock
      FRZCLK         : USBCON_FRZCLK_Field := 16#1#;
      --  USBC Enable
      USBE           : USBCON_USBE_Field := 16#0#;
      --  unspecified
      Reserved_16_23 : Interfaces.Bit_Types.Byte := 16#0#;
      --  USBC Mode
      UIMOD          : USBCON_UIMOD_Field := 16#1#;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_USBCON_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      FRZCLK         at 0 range 14 .. 14;
      USBE           at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      UIMOD          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --------------------------
   -- USBC_USBSTA_Register --
   --------------------------

   subtype USBSTA_VBUSRQ_Field is Interfaces.Bit_Types.Bit;

   --  Speed Status
   type SPEEDSelect is
     (
      Full,
      High,
      Low)
     with Size => 2;
   for SPEEDSelect use
     (Full => 0,
      High => 1,
      Low => 2);

   subtype USBSTA_CLKUSABLE_Field is Interfaces.Bit_Types.Bit;
   subtype USBSTA_SUSPEND_Field is Interfaces.Bit_Types.Bit;

   --  General Status Register
   type USBC_USBSTA_Register is record
      --  unspecified
      Reserved_0_8   : Interfaces.Bit_Types.UInt9;
      --  Read-only. VBus Request
      VBUSRQ         : USBSTA_VBUSRQ_Field;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2;
      --  Read-only. Speed Status
      SPEED          : SPEEDSelect;
      --  Read-only. USB Clock Usable
      CLKUSABLE      : USBSTA_CLKUSABLE_Field;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit;
      --  Read-only. Suspend module state
      SUSPEND        : USBSTA_SUSPEND_Field;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_USBSTA_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      VBUSRQ         at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      SPEED          at 0 range 12 .. 13;
      CLKUSABLE      at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SUSPEND        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   -----------------------------
   -- USBC_USBSTACLR_Register --
   -----------------------------

   subtype USBSTACLR_RAMACERIC_Field is Interfaces.Bit_Types.Bit;
   subtype USBSTACLR_VBUSRQC_Field is Interfaces.Bit_Types.Bit;

   --  General Status Clear Register
   type USBC_USBSTACLR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : USBSTACLR_RAMACERIC_Field := 16#0#;
      --  Write-only. VBUSRQ Clear
      VBUSRQC        : USBSTACLR_VBUSRQC_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_USBSTACLR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      RAMACERIC      at 0 range 8 .. 8;
      VBUSRQC        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   -----------------------------
   -- USBC_USBSTASET_Register --
   -----------------------------

   subtype USBSTASET_RAMACERIS_Field is Interfaces.Bit_Types.Bit;
   subtype USBSTASET_VBUSRQS_Field is Interfaces.Bit_Types.Bit;

   --  General Status Set Register
   type USBC_USBSTASET_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : USBSTASET_RAMACERIS_Field := 16#0#;
      --  Write-only. VBUSRQ Set
      VBUSRQS        : USBSTASET_VBUSRQS_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_USBSTASET_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      RAMACERIS      at 0 range 8 .. 8;
      VBUSRQS        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   -------------------------
   -- USBC_UVERS_Register --
   -------------------------

   subtype UVERS_VERSION_Field is Interfaces.Bit_Types.UInt12;
   subtype UVERS_VARIANT_Field is Interfaces.Bit_Types.UInt3;

   --  IP Version Register
   type USBC_UVERS_Register is record
      --  Read-only. Version Number
      VERSION        : UVERS_VERSION_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Variant Number
      VARIANT        : UVERS_VARIANT_Field;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UVERS_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------------------
   -- USBC_UFEATURES_Register --
   -----------------------------

   subtype UFEATURES_EPTNBRMAX_Field is Interfaces.Bit_Types.UInt4;
   subtype UFEATURES_UTMIMODE_Field is Interfaces.Bit_Types.Bit;

   --  IP Features Register
   type USBC_UFEATURES_Register is record
      --  Read-only. Maximum Number of Pipes/Endpints
      EPTNBRMAX     : UFEATURES_EPTNBRMAX_Field;
      --  unspecified
      Reserved_4_7  : Interfaces.Bit_Types.UInt4;
      --  Read-only. UTMI Mode
      UTMIMODE      : UFEATURES_UTMIMODE_Field;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UFEATURES_Register use record
      EPTNBRMAX     at 0 range 0 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      UTMIMODE      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --------------------------
   -- USBC_USBFSM_Register --
   --------------------------

   --  DualRoleDevice state
   type DRDSTATESelect is
     (
      A_Idle,
      A_Wait_Vrise,
      A_Wait_Bcon,
      A_Host,
      A_Suspend,
      A_Peripheral,
      A_Wait_Vfall,
      A_Vbus_Err,
      A_Wait_Discharge,
      B_Idle,
      B_Peripheral,
      B_Wait_Begin_Hnp,
      B_Wait_Discharge,
      B_Wait_Acon,
      B_Host,
      B_Srp_Init)
     with Size => 4;
   for DRDSTATESelect use
     (A_Idle => 0,
      A_Wait_Vrise => 1,
      A_Wait_Bcon => 2,
      A_Host => 3,
      A_Suspend => 4,
      A_Peripheral => 5,
      A_Wait_Vfall => 6,
      A_Vbus_Err => 7,
      A_Wait_Discharge => 8,
      B_Idle => 9,
      B_Peripheral => 10,
      B_Wait_Begin_Hnp => 11,
      B_Wait_Discharge => 12,
      B_Wait_Acon => 13,
      B_Host => 14,
      B_Srp_Init => 15);

   --  USB internal finite state machine
   type USBC_USBFSM_Register is record
      --  Read-only. DualRoleDevice state
      DRDSTATE      : DRDSTATESelect;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_USBFSM_Register use record
      DRDSTATE      at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  USB 2.0 Interface
   type USBC_Peripheral is record
      --  Device General Control Register
      UDCON     : USBC_UDCON_Register;
      --  Device Global Interupt Register
      UDINT     : USBC_UDINT_Register;
      --  Device Global Interrupt Clear Register
      UDINTCLR  : USBC_UDINTCLR_Register;
      --  Device Global Interrupt Set Regsiter
      UDINTSET  : USBC_UDINTSET_Register;
      --  Device Global Interrupt Enable Register
      UDINTE    : USBC_UDINTE_Register;
      --  Device Global Interrupt Enable Clear Register
      UDINTECLR : USBC_UDINTECLR_Register;
      --  Device Global Interrupt Enable Set Register
      UDINTESET : USBC_UDINTESET_Register;
      --  Endpoint Enable/Reset Register
      UERST     : USBC_UERST_Register;
      --  Device Frame Number Register
      UDFNUM    : USBC_UDFNUM_Register;
      --  Endpoint Configuration Register
      UECFG0    : UECFG_Register;
      --  Endpoint Configuration Register
      UECFG1    : UECFG_Register;
      --  Endpoint Configuration Register
      UECFG2    : UECFG_Register;
      --  Endpoint Configuration Register
      UECFG3    : UECFG_Register;
      --  Endpoint Configuration Register
      UECFG4    : UECFG_Register;
      --  Endpoint Configuration Register
      UECFG5    : UECFG_Register;
      --  Endpoint Configuration Register
      UECFG6    : UECFG_Register;
      --  Endpoint Configuration Register
      UECFG7    : UECFG_Register;
      --  Endpoint Status Register
      UESTA0    : UESTA_Register;
      --  Endpoint Status Register
      UESTA1    : UESTA_Register;
      --  Endpoint Status Register
      UESTA2    : UESTA_Register;
      --  Endpoint Status Register
      UESTA3    : UESTA_Register;
      --  Endpoint Status Register
      UESTA4    : UESTA_Register;
      --  Endpoint Status Register
      UESTA5    : UESTA_Register;
      --  Endpoint Status Register
      UESTA6    : UESTA_Register;
      --  Endpoint Status Register
      UESTA7    : UESTA_Register;
      --  Endpoint Status Clear Register
      UESTA0CLR : USBC_UESTA0CLR_Register;
      --  Endpoint Status Clear Register
      UESTA1CLR : USBC_UESTA1CLR_Register;
      --  Endpoint Status Clear Register
      UESTA2CLR : USBC_UESTA2CLR_Register;
      --  Endpoint Status Clear Register
      UESTA3CLR : USBC_UESTA3CLR_Register;
      --  Endpoint Status Clear Register
      UESTA4CLR : USBC_UESTA4CLR_Register;
      --  Endpoint Status Clear Register
      UESTA5CLR : USBC_UESTA5CLR_Register;
      --  Endpoint Status Clear Register
      UESTA6CLR : USBC_UESTA6CLR_Register;
      --  Endpoint Status Clear Register
      UESTA7CLR : USBC_UESTA7CLR_Register;
      --  Endpoint Status Set Register
      UESTA0SET : USBC_UESTA0SET_Register;
      --  Endpoint Status Set Register
      UESTA1SET : USBC_UESTA1SET_Register;
      --  Endpoint Status Set Register
      UESTA2SET : USBC_UESTA2SET_Register;
      --  Endpoint Status Set Register
      UESTA3SET : USBC_UESTA3SET_Register;
      --  Endpoint Status Set Register
      UESTA4SET : USBC_UESTA4SET_Register;
      --  Endpoint Status Set Register
      UESTA5SET : USBC_UESTA5SET_Register;
      --  Endpoint Status Set Register
      UESTA6SET : USBC_UESTA6SET_Register;
      --  Endpoint Status Set Register
      UESTA7SET : USBC_UESTA7SET_Register;
      --  Endpoint Control Register
      UECON0    : UECON_Register;
      --  Endpoint Control Register
      UECON1    : UECON_Register;
      --  Endpoint Control Register
      UECON2    : UECON_Register;
      --  Endpoint Control Register
      UECON3    : UECON_Register;
      --  Endpoint Control Register
      UECON4    : UECON_Register;
      --  Endpoint Control Register
      UECON5    : UECON_Register;
      --  Endpoint Control Register
      UECON6    : UECON_Register;
      --  Endpoint Control Register
      UECON7    : UECON_Register;
      --  Endpoint Control Set Register
      UECON0SET : USBC_UECON0SET_Register;
      --  Endpoint Control Set Register
      UECON1SET : USBC_UECON1SET_Register;
      --  Endpoint Control Set Register
      UECON2SET : USBC_UECON2SET_Register;
      --  Endpoint Control Set Register
      UECON3SET : USBC_UECON3SET_Register;
      --  Endpoint Control Set Register
      UECON4SET : USBC_UECON4SET_Register;
      --  Endpoint Control Set Register
      UECON5SET : USBC_UECON5SET_Register;
      --  Endpoint Control Set Register
      UECON6SET : USBC_UECON6SET_Register;
      --  Endpoint Control Set Register
      UECON7SET : USBC_UECON7SET_Register;
      --  Endpoint Control Clear Register
      UECON0CLR : USBC_UECON0CLR_Register;
      --  TXINE Clear
      UECON1CLR : USBC_UECON1CLR_Register;
      --  TXINE Clear
      UECON2CLR : USBC_UECON2CLR_Register;
      --  TXINE Clear
      UECON3CLR : USBC_UECON3CLR_Register;
      --  TXINE Clear
      UECON4CLR : USBC_UECON4CLR_Register;
      --  TXINE Clear
      UECON5CLR : USBC_UECON5CLR_Register;
      --  TXINE Clear
      UECON6CLR : USBC_UECON6CLR_Register;
      --  TXINE Clear
      UECON7CLR : USBC_UECON7CLR_Register;
      --  Host General Control Register
      UHCON     : USBC_UHCON_Register;
      --  Host Global Interrupt Register
      UHINT     : USBC_UHINT_Register;
      --  Host Global Interrrupt Clear Register
      UHINTCLR  : USBC_UHINTCLR_Register;
      --  Host Global Interrupt Set Register
      UHINTSET  : USBC_UHINTSET_Register;
      --  Host Global Interrupt Enable Register
      UHINTE    : USBC_UHINTE_Register;
      --  Host Global Interrupt Enable Clear Register
      UHINTECLR : USBC_UHINTECLR_Register;
      --  Host Global Interrupt Enable Set Register
      UHINTESET : USBC_UHINTESET_Register;
      --  Pipe Reset Register
      UPRST     : USBC_UPRST_Register;
      --  Host Frame Number Register
      UHFNUM    : USBC_UHFNUM_Register;
      --  Host Start of Frame Control Register
      UHSOFC    : USBC_UHSOFC_Register;
      --  Pipe Configuration Register
      UPCFG0    : UPCFG_Register;
      --  Pipe Configuration Register
      UPCFG1    : UPCFG_Register;
      --  Pipe Configuration Register
      UPCFG2    : UPCFG_Register;
      --  Pipe Configuration Register
      UPCFG3    : UPCFG_Register;
      --  Pipe Configuration Register
      UPCFG4    : UPCFG_Register;
      --  Pipe Configuration Register
      UPCFG5    : UPCFG_Register;
      --  Pipe Configuration Register
      UPCFG6    : UPCFG_Register;
      --  Pipe Configuration Register
      UPCFG7    : UPCFG_Register;
      --  Pipe Status Register
      UPSTA0    : UPSTA_Register;
      --  Pipe Status Register
      UPSTA1    : UPSTA_Register;
      --  Pipe Status Register
      UPSTA2    : UPSTA_Register;
      --  Pipe Status Register
      UPSTA3    : UPSTA_Register;
      --  Pipe Status Register
      UPSTA4    : UPSTA_Register;
      --  Pipe Status Register
      UPSTA5    : UPSTA_Register;
      --  Pipe Status Register
      UPSTA6    : UPSTA_Register;
      --  Pipe Status Register
      UPSTA7    : UPSTA_Register;
      --  Pipe Status Clear Register
      UPSTA0CLR : USBC_UPSTA0CLR_Register;
      --  Pipe Status Clear Register
      UPSTA1CLR : USBC_UPSTA1CLR_Register;
      --  Pipe Status Clear Register
      UPSTA2CLR : USBC_UPSTA2CLR_Register;
      --  Pipe Status Clear Register
      UPSTA3CLR : USBC_UPSTA3CLR_Register;
      --  Pipe Status Clear Register
      UPSTA4CLR : USBC_UPSTA4CLR_Register;
      --  Pipe Status Clear Register
      UPSTA5CLR : USBC_UPSTA5CLR_Register;
      --  Pipe Status Clear Register
      UPSTA6CLR : USBC_UPSTA6CLR_Register;
      --  Pipe Status Clear Register
      UPSTA7CLR : USBC_UPSTA7CLR_Register;
      --  Pipe Status Set Register
      UPSTA0SET : USBC_UPSTA0SET_Register;
      --  Pipe Status Set Register
      UPSTA1SET : USBC_UPSTA1SET_Register;
      --  Pipe Status Set Register
      UPSTA2SET : USBC_UPSTA2SET_Register;
      --  Pipe Status Set Register
      UPSTA3SET : USBC_UPSTA3SET_Register;
      --  Pipe Status Set Register
      UPSTA4SET : USBC_UPSTA4SET_Register;
      --  Pipe Status Set Register
      UPSTA5SET : USBC_UPSTA5SET_Register;
      --  Pipe Status Set Register
      UPSTA6SET : USBC_UPSTA6SET_Register;
      --  Pipe Status Set Register
      UPSTA7SET : USBC_UPSTA7SET_Register;
      --  Pipe Control Register
      UPCON0    : UPCON_Register;
      --  Pipe Control Register
      UPCON1    : UPCON_Register;
      --  Pipe Control Register
      UPCON2    : UPCON_Register;
      --  Pipe Control Register
      UPCON3    : UPCON_Register;
      --  Pipe Control Register
      UPCON4    : UPCON_Register;
      --  Pipe Control Register
      UPCON5    : UPCON_Register;
      --  Pipe Control Register
      UPCON6    : UPCON_Register;
      --  Pipe Control Register
      UPCON7    : UPCON_Register;
      --  Pipe Control Set Register
      UPCON0SET : USBC_UPCON0SET_Register;
      --  Pipe Control Set Register
      UPCON1SET : USBC_UPCON1SET_Register;
      --  Pipe Control Set Register
      UPCON2SET : USBC_UPCON2SET_Register;
      --  Pipe Control Set Register
      UPCON3SET : USBC_UPCON3SET_Register;
      --  Pipe Control Set Register
      UPCON4SET : USBC_UPCON4SET_Register;
      --  Pipe Control Set Register
      UPCON5SET : USBC_UPCON5SET_Register;
      --  Pipe Control Set Register
      UPCON6SET : USBC_UPCON6SET_Register;
      --  Pipe Control Set Register
      UPCON7SET : USBC_UPCON7SET_Register;
      --  Pipe Control Clear Register
      UPCON0CLR : USBC_UPCON0CLR_Register;
      --  Pipe Control Clear Register
      UPCON1CLR : USBC_UPCON1CLR_Register;
      --  Pipe Control Clear Register
      UPCON2CLR : USBC_UPCON2CLR_Register;
      --  Pipe Control Clear Register
      UPCON3CLR : USBC_UPCON3CLR_Register;
      --  Pipe Control Clear Register
      UPCON4CLR : USBC_UPCON4CLR_Register;
      --  Pipe Control Clear Register
      UPCON5CLR : USBC_UPCON5CLR_Register;
      --  Pipe Control Clear Register
      UPCON6CLR : USBC_UPCON6CLR_Register;
      --  Pipe Control Clear Register
      UPCON7CLR : USBC_UPCON7CLR_Register;
      --  Pipe In Request
      UPINRQ0   : UPINRQ_Register;
      --  Pipe In Request
      UPINRQ1   : UPINRQ_Register;
      --  Pipe In Request
      UPINRQ2   : UPINRQ_Register;
      --  Pipe In Request
      UPINRQ3   : UPINRQ_Register;
      --  Pipe In Request
      UPINRQ4   : UPINRQ_Register;
      --  Pipe In Request
      UPINRQ5   : UPINRQ_Register;
      --  Pipe In Request
      UPINRQ6   : UPINRQ_Register;
      --  Pipe In Request
      UPINRQ7   : UPINRQ_Register;
      --  General Control Register
      USBCON    : USBC_USBCON_Register;
      --  General Status Register
      USBSTA    : USBC_USBSTA_Register;
      --  General Status Clear Register
      USBSTACLR : USBC_USBSTACLR_Register;
      --  General Status Set Register
      USBSTASET : USBC_USBSTASET_Register;
      --  IP Version Register
      UVERS     : USBC_UVERS_Register;
      --  IP Features Register
      UFEATURES : USBC_UFEATURES_Register;
      --  IP PB address size Register
      UADDRSIZE : Interfaces.Bit_Types.Word;
      --  IP Name Part One: HUSB
      UNAME1    : Interfaces.Bit_Types.Word;
      --  IP Name Part Two: HOST
      UNAME2    : Interfaces.Bit_Types.Word;
      --  USB internal finite state machine
      USBFSM    : USBC_USBFSM_Register;
      --  Endpoint descriptor table
      UDESC     : Interfaces.Bit_Types.Word;
   end record
     with Volatile;

   for USBC_Peripheral use record
      UDCON     at 0 range 0 .. 31;
      UDINT     at 4 range 0 .. 31;
      UDINTCLR  at 8 range 0 .. 31;
      UDINTSET  at 12 range 0 .. 31;
      UDINTE    at 16 range 0 .. 31;
      UDINTECLR at 20 range 0 .. 31;
      UDINTESET at 24 range 0 .. 31;
      UERST     at 28 range 0 .. 31;
      UDFNUM    at 32 range 0 .. 31;
      UECFG0    at 256 range 0 .. 31;
      UECFG1    at 260 range 0 .. 31;
      UECFG2    at 264 range 0 .. 31;
      UECFG3    at 268 range 0 .. 31;
      UECFG4    at 272 range 0 .. 31;
      UECFG5    at 276 range 0 .. 31;
      UECFG6    at 280 range 0 .. 31;
      UECFG7    at 284 range 0 .. 31;
      UESTA0    at 304 range 0 .. 31;
      UESTA1    at 308 range 0 .. 31;
      UESTA2    at 312 range 0 .. 31;
      UESTA3    at 316 range 0 .. 31;
      UESTA4    at 320 range 0 .. 31;
      UESTA5    at 324 range 0 .. 31;
      UESTA6    at 328 range 0 .. 31;
      UESTA7    at 332 range 0 .. 31;
      UESTA0CLR at 352 range 0 .. 31;
      UESTA1CLR at 356 range 0 .. 31;
      UESTA2CLR at 360 range 0 .. 31;
      UESTA3CLR at 364 range 0 .. 31;
      UESTA4CLR at 368 range 0 .. 31;
      UESTA5CLR at 372 range 0 .. 31;
      UESTA6CLR at 376 range 0 .. 31;
      UESTA7CLR at 380 range 0 .. 31;
      UESTA0SET at 400 range 0 .. 31;
      UESTA1SET at 404 range 0 .. 31;
      UESTA2SET at 408 range 0 .. 31;
      UESTA3SET at 412 range 0 .. 31;
      UESTA4SET at 416 range 0 .. 31;
      UESTA5SET at 420 range 0 .. 31;
      UESTA6SET at 424 range 0 .. 31;
      UESTA7SET at 428 range 0 .. 31;
      UECON0    at 448 range 0 .. 31;
      UECON1    at 452 range 0 .. 31;
      UECON2    at 456 range 0 .. 31;
      UECON3    at 460 range 0 .. 31;
      UECON4    at 464 range 0 .. 31;
      UECON5    at 468 range 0 .. 31;
      UECON6    at 472 range 0 .. 31;
      UECON7    at 476 range 0 .. 31;
      UECON0SET at 496 range 0 .. 31;
      UECON1SET at 500 range 0 .. 31;
      UECON2SET at 504 range 0 .. 31;
      UECON3SET at 508 range 0 .. 31;
      UECON4SET at 512 range 0 .. 31;
      UECON5SET at 516 range 0 .. 31;
      UECON6SET at 520 range 0 .. 31;
      UECON7SET at 524 range 0 .. 31;
      UECON0CLR at 544 range 0 .. 31;
      UECON1CLR at 548 range 0 .. 31;
      UECON2CLR at 552 range 0 .. 31;
      UECON3CLR at 556 range 0 .. 31;
      UECON4CLR at 560 range 0 .. 31;
      UECON5CLR at 564 range 0 .. 31;
      UECON6CLR at 568 range 0 .. 31;
      UECON7CLR at 572 range 0 .. 31;
      UHCON     at 1024 range 0 .. 31;
      UHINT     at 1028 range 0 .. 31;
      UHINTCLR  at 1032 range 0 .. 31;
      UHINTSET  at 1036 range 0 .. 31;
      UHINTE    at 1040 range 0 .. 31;
      UHINTECLR at 1044 range 0 .. 31;
      UHINTESET at 1048 range 0 .. 31;
      UPRST     at 1052 range 0 .. 31;
      UHFNUM    at 1056 range 0 .. 31;
      UHSOFC    at 1060 range 0 .. 31;
      UPCFG0    at 1280 range 0 .. 31;
      UPCFG1    at 1284 range 0 .. 31;
      UPCFG2    at 1288 range 0 .. 31;
      UPCFG3    at 1292 range 0 .. 31;
      UPCFG4    at 1296 range 0 .. 31;
      UPCFG5    at 1300 range 0 .. 31;
      UPCFG6    at 1304 range 0 .. 31;
      UPCFG7    at 1308 range 0 .. 31;
      UPSTA0    at 1328 range 0 .. 31;
      UPSTA1    at 1332 range 0 .. 31;
      UPSTA2    at 1336 range 0 .. 31;
      UPSTA3    at 1340 range 0 .. 31;
      UPSTA4    at 1344 range 0 .. 31;
      UPSTA5    at 1348 range 0 .. 31;
      UPSTA6    at 1352 range 0 .. 31;
      UPSTA7    at 1356 range 0 .. 31;
      UPSTA0CLR at 1376 range 0 .. 31;
      UPSTA1CLR at 1380 range 0 .. 31;
      UPSTA2CLR at 1384 range 0 .. 31;
      UPSTA3CLR at 1388 range 0 .. 31;
      UPSTA4CLR at 1392 range 0 .. 31;
      UPSTA5CLR at 1396 range 0 .. 31;
      UPSTA6CLR at 1400 range 0 .. 31;
      UPSTA7CLR at 1404 range 0 .. 31;
      UPSTA0SET at 1424 range 0 .. 31;
      UPSTA1SET at 1428 range 0 .. 31;
      UPSTA2SET at 1432 range 0 .. 31;
      UPSTA3SET at 1436 range 0 .. 31;
      UPSTA4SET at 1440 range 0 .. 31;
      UPSTA5SET at 1444 range 0 .. 31;
      UPSTA6SET at 1448 range 0 .. 31;
      UPSTA7SET at 1452 range 0 .. 31;
      UPCON0    at 1472 range 0 .. 31;
      UPCON1    at 1476 range 0 .. 31;
      UPCON2    at 1480 range 0 .. 31;
      UPCON3    at 1484 range 0 .. 31;
      UPCON4    at 1488 range 0 .. 31;
      UPCON5    at 1492 range 0 .. 31;
      UPCON6    at 1496 range 0 .. 31;
      UPCON7    at 1500 range 0 .. 31;
      UPCON0SET at 1520 range 0 .. 31;
      UPCON1SET at 1524 range 0 .. 31;
      UPCON2SET at 1528 range 0 .. 31;
      UPCON3SET at 1532 range 0 .. 31;
      UPCON4SET at 1536 range 0 .. 31;
      UPCON5SET at 1540 range 0 .. 31;
      UPCON6SET at 1544 range 0 .. 31;
      UPCON7SET at 1548 range 0 .. 31;
      UPCON0CLR at 1568 range 0 .. 31;
      UPCON1CLR at 1572 range 0 .. 31;
      UPCON2CLR at 1576 range 0 .. 31;
      UPCON3CLR at 1580 range 0 .. 31;
      UPCON4CLR at 1584 range 0 .. 31;
      UPCON5CLR at 1588 range 0 .. 31;
      UPCON6CLR at 1592 range 0 .. 31;
      UPCON7CLR at 1596 range 0 .. 31;
      UPINRQ0   at 1616 range 0 .. 31;
      UPINRQ1   at 1620 range 0 .. 31;
      UPINRQ2   at 1624 range 0 .. 31;
      UPINRQ3   at 1628 range 0 .. 31;
      UPINRQ4   at 1632 range 0 .. 31;
      UPINRQ5   at 1636 range 0 .. 31;
      UPINRQ6   at 1640 range 0 .. 31;
      UPINRQ7   at 1644 range 0 .. 31;
      USBCON    at 2048 range 0 .. 31;
      USBSTA    at 2052 range 0 .. 31;
      USBSTACLR at 2056 range 0 .. 31;
      USBSTASET at 2060 range 0 .. 31;
      UVERS     at 2072 range 0 .. 31;
      UFEATURES at 2076 range 0 .. 31;
      UADDRSIZE at 2080 range 0 .. 31;
      UNAME1    at 2084 range 0 .. 31;
      UNAME2    at 2088 range 0 .. 31;
      USBFSM    at 2092 range 0 .. 31;
      UDESC     at 2096 range 0 .. 31;
   end record;

   --  USB 2.0 Interface
   USBC_Periph : aliased USBC_Peripheral
     with Import, Address => USBC_Base;

end Interfaces.ATSAM4L.USBC;
