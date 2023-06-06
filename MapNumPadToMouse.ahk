#Requires AutoHotkey v2.0
Numpad4::
{
    MouseClick("left")
    KeyWait("Numpad4")
}

Numpad7::
{
    MouseClick("left", , , 2)
    KeyWait("Numpad7")
}

Numpad6::
{
    MouseClick("right")
    KeyWait("Numpad6")
}

Numpad5::
{
    MouseClick("middle")
    KeyWait("Numpad5")
}

#Requires AutoHotkey v2.0

Numpad1::
{
    DllCall("mouse_event", "UInt", 0x02) ; MOUSEEVENTF_LEFTDOWN = 0x02
    KeyWait("Numpad1")
}

Numpad1 Up::
{
    DllCall("mouse_event", "UInt", 0x04) ; MOUSEEVENTF_LEFTUP = 0x04
}
return

