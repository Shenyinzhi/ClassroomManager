Option Explicit
Call SendF5ToDesktopForWallpaper()
Sub SendF5ToDesktopForWallpaper()
    Dim psCode, WshShell
    psCode = "$code = @'" & vbCrLf & _
        "[DllImport(""user32.dll"")]" & vbCrLf & _
        "public static extern int FindWindowEx(int hWndParent, int hWndChildAfter, string lpszClass, string lpszWindow);" & vbCrLf & _
        "[DllImport(""user32.dll"")]" & vbCrLf & _
        "public static extern int SendMessage(int hWnd, int Msg, int wParam, int lParam);" & vbCrLf & _
        "'@" & vbCrLf & _
        "Add-Type -MemberDefinition $code -Name DesktopUtils;" & vbCrLf & _
        "$progman = [DesktopUtils]::FindWindowEx(0, 0, 'Progman', 0);" & vbCrLf & _
        "$defView = [DesktopUtils]::FindWindowEx($progman, 0, 'SHELLDLL_DefView', 0);" & vbCrLf & _
        "$listView = [DesktopUtils]::FindWindowEx($defView, 0, 'SysListView32', 0);" & vbCrLf & _
        "if ($listView -ne 0) {" & vbCrLf & _
        "    [DesktopUtils]::SendMessage($listView, 0x0111, 28931, 0);" & vbCrLf & _
        "}" & ""
    Set WshShell = CreateObject("WScript.Shell")
    WshShell.Run "powershell -WindowStyle Hidden -Command """ & psCode & """", 0, True
    Set WshShell = Nothing
End Sub