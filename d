; Segment type: Pure code
; Segment permissions: Read/Execute
_text segment para public 'CODE' use32
assume cs:_text
;org 401000h
assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing


; Attributes: bp-based frame

sub_401000 proc near

arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h
arg_10= dword ptr  18h
arg_14= dword ptr  1Ch

push    ebp
mov     ebp, esp
mov     eax, [ebp+arg_0]
mov     edx, [ebp+arg_8]
push    esi
mov     esi, ecx
mov     ecx, [ebp+arg_4]
mov     [esi], eax
xor     eax, eax
push    edi
mov     edi, [ebp+arg_10]
mov     [esi+8], eax
mov     [esi+14h], eax
mov     [esi+18h], eax
mov     [esi+1Ch], eax
mov     [esi+20h], eax
mov     [esi+24h], eax
mov     [esi+28h], eax
mov     [esi+2Ch], eax
lea     eax, [ebp+arg_0]
push    eax
push    40h ; '@'
push    [ebp+arg_14]
mov     [esi+0Ch], edx
mov     edx, [ebp+arg_C]
push    edi
mov     [esi+4], ecx
mov     [esi+10h], edx
call    dword ptr [ecx+18h]
test    eax, eax
jnz     short loc_401058
