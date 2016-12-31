#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#NoTrayIcon
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


WinWait, TheWonderfulIcon Setup 1.16, , 60
WinActivate
BlockInput On
Send !a
Send !n
Send !n
Send !i
BlockInput Off
WinWait, TheWonderfulIcon Setup ahk_class #32770
WinActivate
IfWinActive
  Send {Enter}
Sleep, 100
Send !f
WinWait, TheWonderfulIcon Setup ahk_class #32770
WinActivate
IfWinActive
  Send !n