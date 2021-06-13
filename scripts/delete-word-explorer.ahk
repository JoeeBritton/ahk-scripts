#NoEnv
#SingleInstance force
SendMode Input

; Override ctrl+backspace control character behavior in Explorer to delete whole word
#IfWinActive ahk_exe explorer.exe
    ^Backspace:: Send ^+{left}{del}
