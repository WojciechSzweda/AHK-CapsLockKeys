; Setup environment
; #NoEnv; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode("Input")  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir(A_ScriptDir)  ; Ensures a consistent starting directory.

; CapsLock as a layer modifier key
A_HotkeyModifierTimeout := 100 ; prevents sticking of layer key

;CapsLock is turned off, can be toggled with CapsLock + Esc
SetCapsLockState("AlwaysOff")

CapsLock & Esc::
{ ; V1toV2: Added bracket
CapsLockState := GetKeyState("CapsLock", "T") ? "D" : "U"
if (CapsLockState = "D")
	SetCapsLockState("AlwaysOff")
else
	SetCapsLockState("AlwaysOn")
KeyWait("Esc")
return
} ; V1toV2: Added bracket in the end

#HotIf GetKeyState("CapsLock", "P")
; The symbols are: ! = Alt, ^ = Ctrl, + = Shift
i::Up
j::Left
l::Right
k::Down

; Ctrl + direction key for faster moves
w::^Up
a::^Left
s::^Down
d::^Right

o::Backspace
p::^Backspace
n::Delete
m::^Delete

h::Home
`;::End
[::PgUp
'::PgDn

u::Enter
c::`

q::Esc


{ ; V1toV2: Added bracket
#InputLevel 1
; Backspace::Return ; this disables the backspace in case you want train your muscle memory
#InputLevel 0 0

} ; V1toV2: Added bracket in the end
