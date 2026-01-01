@echo off
:loop
for %%d in (E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist %%d:\ (
        dir %%d:\ /ad /b | findstr /i "Music 音乐 Video 视频 动漫 女装 歌曲 二次元 摇滚 csgo 娱乐 游戏 原神 steam epic 几许" >nul && (
            mountvol %%d: /D >nul 2>&1
            wscript.exe "%~dp0BitLocker.vbs"
            timeout /t 5 >nul
        )
    )
)
timeout /t 2 >nul
goto loop