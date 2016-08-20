MEMORY
{
  flash (rx)  : ORIGIN = 0x00000000, LENGTH = 256K
  sram (rwx)  : ORIGIN = 0x20000000, LENGTH = 112K
}

REGION_ALIAS("sram_tx", sram)
REGION_ALIAS("sram_ro", sram)
REGION_ALIAS("sram_bs", sram)
REGION_ALIAS("sram_da", sram)
