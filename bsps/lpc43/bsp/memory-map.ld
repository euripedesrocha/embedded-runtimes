MEMORY
{
  flasha     (rx)  : ORIGIN = 0x1A000000, LENGTH = 512K
  flashb     (rx)  : ORIGIN = 0x1B000000, LENGTH = 512K
  sram0     (rwx)  : ORIGIN = 0x10000000, LENGTH = 32K
  sram1     (rwx)  : ORIGIN = 0x10080000, LENGTH = 40K
  ahb_sram0 (rwx)  : ORIGIN = 0x20000000, LENGTH = 32K
  ahb_sram1 (rwx)  : ORIGIN = 0x20008000, LENGTH = 16K
  etb_srami (rwx)  : ORIGIN = 0x20008000, LENGTH = 16K
}

REGION_ALIAS("flash", flasha)
REGION_ALIAS("ccm_da", flasha)
REGION_ALIAS("sram_ro", sram0)
REGION_ALIAS("sram_da", sram0)
REGION_ALIAS("sram_tx", sram1)
REGION_ALIAS("sram_bs", sram1)
