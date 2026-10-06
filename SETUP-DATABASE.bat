@echo off
rem AvroraMU - one-time database setup (needs Administrator for the ODBC DSN)
net session >nul 2>&1 || (powershell -NoProfile -Command "Start-Process '%~f0' -Verb RunAs" & exit /b)
cd /d "%~dp0"
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0Database\setup-database.ps1"
pause
