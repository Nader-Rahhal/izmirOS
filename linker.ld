ENTRY(_start)
SECTIONS
{
    . = 1M;                     /* Kernel loaded at 1MB */
    
    .text BLOCK(4K) : ALIGN(4K)
    {
        *(.text)
    }
    
    .rodata BLOCK(4K) : ALIGN(4K)
    {
        *(.rodata)
    }
    
    .data BLOCK(4K) : ALIGN(4K)
    {
        *(.data)
    }
    
    .bss BLOCK(4K) : ALIGN(4K)
    {
        *(COMMON)
        *(.bss)
    }
}