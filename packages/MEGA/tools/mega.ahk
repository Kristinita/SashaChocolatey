#NoEnv
#NoTrayIcon

SendMode Input
SetWorkingDir %A_ScriptDir%
WinWait, MEGAsync 2.9.10 Setup  ahk_class #32770
WinActivate

BlockInput On

Send, !a
Sleep, 100
Send, {LShift Down}
Sleep, 100
Send, {Tab}
Sleep, 100
Send, {Tab}
Sleep, 100
Send, {LShift Up}
Sleep, 100
Send, {Up}
Sleep, 100
Send, {LAlt Down}
Sleep, 100
Send, {n}
Sleep, 100
Send, {LAlt Up}
Sleep, 100
Send, {Enter}
Sleep, 100
Send, {Enter}

BlockInput Off


