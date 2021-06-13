#NoEnv
#SingleInstance force
SendMode Input

minimizedWindows:=[]

; Open File Explorer
;#e

; Show run dialog
;#r

; Close current window
#w::WinClose, a

; Maximize current window
#f::
WinGet MX, MinMax, a
if MX
    WinRestore, a
else
    WinMaximize, a
return

; Minimize current window
#m::
; get current window
WinGet AID, ID, A
WinGet MX, MinMax, ahk_id %AID%
; -1 = minimized, 0 = normal, 1 = maximized
if (MX > -1) {
    minimizedWindows.Push(AID)
    WinMinimize, ahk_id %AID%
}
return

; Restore last window
#+m::
MWL:= minimizedWindows.Length()
if MWL {
    RID := minimizedWindows[MWL]
    WinGet MX, MinMax, ahk_id %RID%
    if (MX = -1) {
        minimizedWindows.RemoveAt(MWL)
        WinRestore, ahk_id %RID%
    }
}
return
