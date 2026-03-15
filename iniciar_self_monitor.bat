@echo off
title Self Monitor

cd /d C:\self-monitor

echo Iniciando painel...
start powershell -NoExit -Command "py -3.11 server.py"

timeout /t 3 >nul

echo Iniciando VNC proxies...

start powershell -NoExit -Command "py -3.11 -m websockify "PORTA DA CONEXÃO" "IP DA CONEXÃO"--web C:\self-monitor\novnc"
start powershell -NoExit -Command "py -3.11 -m websockify "PORTA DA CONEXÃO" "IP DA CONEXÃO" --web C:\self-monitor\novnc"
start powershell -NoExit -Command "py -3.11 -m websockify "PORTA DA CONEXÃO" "IP DA CONEXÃO" --web C:\self-monitor\novnc"
start powershell -NoExit -Command "py -3.11 -m websockify "PORTA DA CONEXÃO" "IP DA CONEXÃO" --web C:\self-monitor\novnc"
start powershell -NoExit -Command "py -3.11 -m websockify "PORTA DA CONEXÃO" "IP DA CONEXÃO" --web C:\self-monitor\novnc"
start powershell -NoExit -Command "py -3.11 -m websockify "PORTA DA CONEXÃO" "IP DA CONEXÃO" --web C:\self-monitor\novnc"

echo Sistema iniciado
pause
