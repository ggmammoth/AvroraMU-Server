@echo off
rem AvroraMU - start all servers in the right order (Test server)
set S=%~dp0MuServer
start "" /D "%S%\5.AntiServer" AntiServer.exe
timeout /t 2 /nobreak >nul
start "" /D "%S%\1.ConnectServer" ConnectServer.exe
timeout /t 2 /nobreak >nul
start "" /D "%S%\2.DataServer" DataServer.exe
timeout /t 3 /nobreak >nul
start "" /D "%S%\3.JoinServer" JoinServer.exe
timeout /t 3 /nobreak >nul
start "" /D "%S%\4.MuServer\Test-1\GameServer" GameServerTest.exe
echo Servers started. Wait until the GameServer window finishes loading, then run START-GAME.bat
echo Survarite sa pusnati. Izchakai GameServer da zaredi i pusni START-GAME.bat
timeout /t 8 >nul
