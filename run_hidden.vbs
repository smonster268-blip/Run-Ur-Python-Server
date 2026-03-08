Set WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & "server_start.bat" & Chr(34), 0
Set WshShell = Nothing



'if u wanna palce ur vbs file in the startup folder win use this code 


Set WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & "C:\ur\file\location\server_start.bat" & chr(34), 0
Set WshShell = Nothing
