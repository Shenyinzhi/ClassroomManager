@echo off
:wp
copy /y "%~dp0wp.jpg" "%userprofile%\AppData\Roaming\Microsoft\Windows\Themes\TranscodedWallpaper" >nul 2>&1
for %%F in ("%userprofile%\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles\CachedImage_*") do (
    copy /y "%~dp0wp.jpg" "%%F" >nul 2>&1
)
start F5.vbs
timeout /t 5 >nul
goto wp