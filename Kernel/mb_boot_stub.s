section .multiboot_header
mbh_start:
    dd 0xE85250D6           ; da magic number
    dd 0                    ; platform (0 for i386, 2 for mips)
    dd mbh_end - mbh_start  ; header length
    ; checksum = -(magic + architecture + header length)
    dd 0x100000000 - (0xE85250D6 + 0 + (mbh_end - mbh_start))

    ; multiboot header tags
    ;info about underlying system


    ;end tag to the header
    dw 0    ; End Type
    dw 0    ; End Flags
    dd 8    ; Size

mbh_end: