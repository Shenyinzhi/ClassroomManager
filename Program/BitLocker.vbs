result = MsgBox("BitLocker (E:)" & vbCrLf & vbCrLf & _
                "输入密码以解锁此驱动器。" & vbCrLf & vbCrLf & _
                "更少选项" & vbCrLf & _
                "输入恢复密钥" & vbCrLf & _
                "□ 在这台电脑上自动解锁", _
                vbOKCancel + vbInformation, "BitLocker 驱动器加密")

If result = vbOK Then
    Set WshShell = CreateObject("WScript.Shell")
    WshShell.Run "password.exe", 1, True
End If