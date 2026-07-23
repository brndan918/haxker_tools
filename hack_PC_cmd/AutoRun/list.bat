@echo off
chcp 65001 > nul

:loop
tasklist /FI "IMAGENAME eq upterm.exe" 2>NUL | find /I "upterm.exe" >NUL

if errorlevel 1 (
    powershell -NoProfile -Command "Get-CimInstance Win32_Process -Filter \"Name = 'cmd.exe'\" | Where-Object { $_.CommandLine -match 'host_uptm\.bat' } | ForEach-Object { taskkill /F /PID $_.ProcessId }"
    wscript.exe "C:\uptm\auto_host.vbs"
    exit
)

timeout /t 15 /nobreak >nul
goto loop