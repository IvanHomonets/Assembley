.586
.model flat, stdcall
include module.inc
include \masm32\include\kernel32.inc
include \masm32\include\user32.inc
includelib \lib\kernel32.lib
includelib \lib\user32.lib

.data
TextBuf db 64 dup(?)
Caption db "Lab3",0
Text1 db "Автор: ",10, 13, "Гомонець Іван Іванович ",10, 13, "ІО-62", 0
value1 db 14 
value2 db -14 
value3 dw 14
value4 dw -14
value5 dd 14
value6 dd -14
value7 dq 14
value8 dq -14
value9 dd 14.0
value10 dd -28.0
value11 dd 14.14
value12 dq 14.0
value13 dq -28.0
value14 dq 14.14
value15 dt 14.0
value16 dt -28.0
value17 dt 14.14
.code


main:
 invoke MessageBoxA, 0 , ADDR Text1  , ADDR Caption,0

 push offset TextBuf
 push offset value1
 push 8
 call StrHex_MY
 invoke MessageBoxA, 0 , ADDR TextBuf  , ADDR Caption,0

 push offset TextBuf
 push offset value2
 push 8
 call StrHex_MY
 invoke MessageBoxA, 0 , ADDR TextBuf  , ADDR Caption,0

 push offset TextBuf
 push offset value3
 push 16
 call StrHex_MY
 invoke MessageBoxA, 0 , ADDR TextBuf  , ADDR Caption,0

 push offset TextBuf
 push offset value4
 push 16
 call StrHex_MY
 invoke MessageBoxA, 0 , ADDR TextBuf  , ADDR Caption,0

 push offset TextBuf
 push offset value5
 push 32
 call StrHex_MY
 invoke MessageBoxA, 0 , ADDR TextBuf  , ADDR Caption,0

 push offset TextBuf
 push offset value6
 push 32
 call StrHex_MY
 invoke MessageBoxA, 0 , ADDR TextBuf  , ADDR Caption,0

 push offset TextBuf
 push offset value7
 push 64
 call StrHex_MY
 invoke MessageBoxA, 0 , ADDR TextBuf  , ADDR Caption,0

 push offset TextBuf
 push offset value8
 push 64
 call StrHex_MY
 invoke MessageBoxA, 0 , ADDR TextBuf  , ADDR Caption,0

 push offset TextBuf
 push offset value9
 push 32
 call StrHex_MY
 invoke MessageBoxA, 0 , ADDR TextBuf  , ADDR Caption,0

 push offset TextBuf
 push offset value10
 push 32
 call StrHex_MY
 invoke MessageBoxA, 0 , ADDR TextBuf  , ADDR Caption,0

 push offset TextBuf
 push offset value11
 push 32
 call StrHex_MY
 invoke MessageBoxA, 0 , ADDR TextBuf  , ADDR Caption,0

 push offset TextBuf
 push offset value12
 push 64
 call StrHex_MY
 invoke MessageBoxA, 0 , ADDR TextBuf  , ADDR Caption,0

 push offset TextBuf
 push offset value13
 push 64
 call StrHex_MY
 invoke MessageBoxA, 0 , ADDR TextBuf  , ADDR Caption,0

 push offset TextBuf
 push offset value14
 push 64
 call StrHex_MY
 invoke MessageBoxA, 0 , ADDR TextBuf  , ADDR Caption,0

 push offset TextBuf
 push offset value15
 push 80
 call StrHex_MY
 invoke MessageBoxA, 0 , ADDR TextBuf  , ADDR Caption,0

 push offset TextBuf
 push offset value16
 push 80
 call StrHex_MY
 invoke MessageBoxA, 0 , ADDR TextBuf  , ADDR Caption,0

 push offset TextBuf
 push offset value17
 push 80
 call StrHex_MY
 invoke MessageBoxA, 0 , ADDR TextBuf  , ADDR Caption,0

 invoke ExitProcess,0
end main