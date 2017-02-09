#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#NoTrayIcon
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
WinWait, SopCast 4.2.0 Setup ahk_class #32770
WinActivate
BlockInput On
Send {Enter}
Send, {Enter}
WinActivate, SopCast 4.2.0 Setup ahk_class #32770
Send, {LAlt Down}
Sleep, 125
Send, {n}
Sleep, 234
WinActivate, SopCast 4.2.0 Setup  ahk_class #32770
Send, {LAlt Up}
Sleep, 1829
Send, {LAlt Down}
Sleep, 656
Send, {a}
Sleep, 156
Send, {LAlt Up}
Sleep, 1734
Send, {LAlt Down}
Sleep, 797
Send, {LAlt Up}
Sleep, 2078
Send, {LAlt Down}
Sleep, 141
Send, {a}
Sleep, 94
Send, {LAlt Up}
Sleep, 765
Send, {Enter}
Sleep, 10860
Send, {Enter}
BlockInput Off
WinWait, Agent Ransack x64 Setup,Click the Finish button to exit the Setup Wizard
WinActivate
