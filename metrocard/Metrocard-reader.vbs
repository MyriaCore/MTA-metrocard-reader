' /usr/bin/bash

' Decode MTA MetroCard Raw And Parsed Data
' Version 1.1
' Written in 2017 by Linxin <.>
' wulinxin304115735@gmail.com

' Permission is hereby granted, free of charge, to any person obtaining a copy
' of this software and associated documentation files (the "Software"), to deal
' in the Software without restriction, including without limitation the rights
' to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
' copies of the Software, and to permit persons to whom the Software is
' furnished to do so, subject to the following conditions:

' The above copyright notice and this permission notice shall be included in
' all copies or substantial portions of the Software.

' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
' IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
' FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
' AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
' LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
' OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
' SOFTWARE.


' Notes on input:
' A line that begins with a '#' is not processed and not printed
' A line that begins with a '%' is printed as a comment

Dim WshShell, Init
Set WshShell = WScript.CreateObject("WScript.Shell")

Init = WshShell.Popup("MTA Metrocard Decoding System V1.1" +vbNewLine + "Written in 2017 by Linxin" +vbNewLine+ "Ported to Windows in 2018 by MyriaCore" +vbNewLine+vbNewLine+vbNewLine+ "Press ok to read...", 60, "MTA Metrocard Reader", vbOKOnly)

Select Case Init
    case 1
        Read()
End Select

Function Read()
    cwd = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
    MsgBox cwd
    ' WshShell.run Replace("python {0}\rcd.py", "{0}", cwd )
    WshShell.run Replace( "cmd /K cd {0} & python dab.py metrocard.wav >> cards.txt", "{0}", cwd), 0
    ' MsgBox Replace("python {0}\dab.py {0}\metrocard.wav > c:\cards.txt", "{0}", cwd)
    Continue = WshShell.Popup "Press ok to read another card...", 60, "MTA Metrocard Reader"
    
    Select Case Continue
        case 1 Read()
        default exit()
    End Select
End Function