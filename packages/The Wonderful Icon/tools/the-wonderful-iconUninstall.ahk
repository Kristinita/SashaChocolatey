#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#NoTrayIcon
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


WinWait, TheWonderfulIcon Setup ahk_class TheWonderfulIconCustomDlg, , 60
BlockInput On
WinActivate
ControlClick, &Uninstall, ahk_class TheWonderfulIconCustomDlg
BlockInput Off

WinWait, TheWonderfulIcon Setup ahk_class #32770, , 60
BlockInput On
WinActivate
Send {Enter}
BlockInput Off

WinWait, TheWonderfulIcon Setup ahk_class TheWonderfulIconCustomDlg, , 60
BlockInput On
WinActivate
ControlClick, &Finish, ahk_class TheWonderfulIconCustomDlg
BlockInput Off