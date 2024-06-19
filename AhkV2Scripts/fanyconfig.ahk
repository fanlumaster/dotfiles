#Requires AutoHotkey v2.0

; 方向键映射相关
; Chrome, Powertoys's Launcher and VSCode arrow keymap
#HotIf WinActive("ahk_exe chrome.exe") || WinActive("ahk_exe PowerToys.PowerLauncher.exe") || WinActive("ahk_exe code.exe")
<!h::SendInput("{Left}")
<!j::SendInput("{Down}")
<!k::SendInput("{Up}")
<!l::SendInput("{Right}")
#HotIf

; 窗口的 resize 和移动相关

global stretchStepSize := 1
global moveStepSize := 10

; Ctrl + Shift + Alt + hjkl
^+!h:: stretch_left()
^+!l:: stretch_right()
^+!k:: stretch_up()
^+!j:: stretch_down()

; Ctrl + Win + Shift + Alt + hjkl
^#+!h:: move_left()
^#+!j:: move_down()
^#+!k:: move_up()
^#+!l:: move_right()

stretch_right() {
    id := 'ahk_id ' WinActive('A')
    WinGetPos(&x, &y, &w, &h, id)
    WinMove(x, y, w + stretchStepSize, h, id)
}

stretch_left() {
    id := 'ahk_id ' WinActive('A')
    WinGetPos(&x, &y, &w, &h, id)
    WinMove(x, y, w - stretchStepSize, h, id)
}

stretch_up() {
    id := 'ahk_id ' WinActive('A')
    WinGetPos(&x, &y, &w, &h, id)
    WinMove(x, y, w, h - stretchStepSize, id)
}

stretch_down() {
    id := 'ahk_id ' WinActive('A')
    WinGetPos(&x, &y, &w, &h, id)
    WinMove(x, y, w, h + stretchStepSize, id)
}

move_right() {
    global moveStepSize
    id := 'ahk_id ' WinActive('A')
    WinGetPos(&x, &y, &w, &h, id)
    WinMove(x + moveStepSize, y, w, h, id)
}

move_left() {
    global moveStepSize
    id := 'ahk_id ' WinActive('A')
    WinGetPos(&x, &y, &w, &h, id)
    WinMove(x - moveStepSize, y, w, h, id)
}

move_up() {
    global moveStepSize
    id := 'ahk_id ' WinActive('A')
    WinGetPos(&x, &y, &w, &h, id)
    WinMove(x, y - moveStepSize, w, h, id)
}

move_down() {
    global moveStepSize
    id := 'ahk_id ' WinActive('A')
    WinGetPos(&x, &y, &w, &h, id)
    WinMove(x, y + moveStepSize, w, h, id)
}