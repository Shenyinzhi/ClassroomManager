@echo off
set hosts=%windir%\system32\drivers\etc\hosts
copy /y nul "%hosts%" >nul
ipconfig /flushdns