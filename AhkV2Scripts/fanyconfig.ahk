#Requires AutoHotkey v2.0

; Chrome, Powertoys's Launcher and VSCode arrow keymap
#HotIf WinActive("ahk_exe chrome.exe") || WinActive("ahk_exe PowerToys.PowerLauncher.exe") || WinActive("ahk_exe code.exe")
<!h::SendInput("{Left}")
<!j::SendInput("{Down}")
<!k::SendInput("{Up}")
<!l::SendInput("{Right}")
