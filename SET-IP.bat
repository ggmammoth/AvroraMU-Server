@echo off
rem AvroraMU - set the server IP (menu). Optional: SET-IP.bat 1.2.3.4
net session >nul 2>&1 || (powershell -NoProfile -Command "Start-Process '%~f0' -ArgumentList '%*' -Verb RunAs" & exit /b)
cd /d "%~dp0"
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0Scripts\set-ip.ps1" %*
pause
