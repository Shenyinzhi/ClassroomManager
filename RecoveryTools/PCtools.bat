@echo off
setlocal
:menu
cls
echo 请选择操作:
echo cmd. 结束 cmd
echo 1. 禁用 control
echo 2. 启用 control
echo 3. 禁用 regedit
echo 4. 启用 regedit
echo 5. 禁用 settings
echo 6. 启用 settings
echo 7. 禁用 taskmgr
echo 8. 启用 taskmgr
echo 9. 卸载 notepad
echo 10.打开 notepad文件夹
echo 11.初始化 Hosts
echo 0. 退出
set /p choice=输入编号并回车:
if "%choice%"=="cmd" start "" "%~dp0结束cmd.lnk" & goto menu
if "%choice%"=="1" start "" "%~dp0禁用control.reg" & goto menu
if "%choice%"=="2" start "" "%~dp0启用control.reg" & goto menu
if "%choice%"=="3" start "" "%~dp0禁用regedit.reg" & goto menu
if "%choice%"=="4" start "" "%~dp0启用regedit.bat" & goto menu
if "%choice%"=="5" start "" "%~dp0禁用setting.reg" & goto menu
if "%choice%"=="6" start "" "%~dp0启用settings.reg" & goto menu
if "%choice%"=="7" start "" "%~dp0禁用taskmgr.reg" & goto menu
if "%choice%"=="8" start "" "%~dp0启用taskmgr.reg" & goto menu
if "%choice%"=="9" start "" "%~dp0卸载notepad.bat" & goto menu
if "%choice%"=="10" start "" "%~dp0Notepad" & goto menu
if "%choice%"=="11" start "" "%~dp0初始化hosts.bat" & goto menu
if "%choice%"=="0" exit
goto menu