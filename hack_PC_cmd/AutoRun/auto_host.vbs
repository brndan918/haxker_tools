Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "gsudo -s --ti cmd /c ""C:\uptm\host_uptm.bat""", 0, False
Set WshShell = Nothing
