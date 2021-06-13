REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Run /t REG_SZ /v ahk.deleteword /d "%~dp0scripts\delete-word-explorer.ahk" /f
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Run /t REG_SZ /v ahk.timestamp /d "%~dp0scripts\insert-timestamp.ahk" /f
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Run /t REG_SZ /v ahk.wmkeys /d "%~dp0scripts\wm-keys.ahk" /f
