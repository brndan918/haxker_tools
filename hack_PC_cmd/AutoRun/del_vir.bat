@echo off
chcp 65001 >nul

echo 刪除 C:\uptm...
del /s /q "C:\uptm\*"
rd /s /q "C:\uptm"

echo 刪除啟動項 VBS...
del /s /q "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\auto_host.vbs"

echo 完成
pause