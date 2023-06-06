#Requires AutoHotkey v2.0
global isToggled := false

F1:: Toggle()

$f:: LeftClick()
$d:: RightClick()
$c:: DoubleClick()
$e:: MiddleClick()

$s:: DragClickStart()
$s up:: DragClickStop()

Toggle(){
    global isToggled
    isToggled := ! isToggled
}

LeftClick() {
    global isToggled
    if (isToggled){
        MouseClick("left")
        KeyWait("f")
    }
    else
        Send("f")
}

RightClick() {
    global isToggled
    if (isToggled){
        MouseClick("right")
        KeyWait("d")
    }
    else
        Send("d")
}

DoubleClick() {
    global isToggled
    if (isToggled){
        MouseClick("left", , , 2)
        KeyWait("c")
    }
    else
        Send("c")
}

MiddleClick(){
    global isToggled
    if (isToggled){
        MouseClick("middle")
        KeyWait("e")
    } 
    else 
        Send("e")
}

DragClickStart() {
    global isToggled
    if (isToggled){
        DllCall("mouse_event", "UInt", 0x02) ; MOUSEEVENTF_LEFTDOWN = 0x02
        KeyWait("s")
    }
    else
        Send("s")
}

DragClickStop() {
    global isToggled
    if (isToggled){
        DllCall("mouse_event", "UInt", 0x04) ; MOUSEEVENTF_LEFTUP = 0x04
    }
}
return
