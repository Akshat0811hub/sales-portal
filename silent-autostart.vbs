Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "powershell.exe -ExecutionPolicy Bypass -WindowStyle Hidden -File ""c:\Users\D552266\Desktop\Sales-portal\keep-crm-running.ps1""", 0, False
