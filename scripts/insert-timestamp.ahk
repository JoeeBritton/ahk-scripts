#NoEnv
#SingleInstance force
SendMode Input

; Insert timestamp with hotkey (ctrl+alt+t)
^!t::
FormatTime, SystemTimeStamp,, yyyy-MM-dd HH:mm:ss
Send %SystemTimeStamp%
return
