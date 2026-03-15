@echo off
title Self Monitor

cd /d C:\self-monitor

echo Iniciando painel...
start powershell -NoExit -Command "py -3.11 server.py"

timeout /t 3 >nul

echo Iniciando VNC proxies...

start powershell -NoExit -Command "py -3.11 -m websockify 6080 172.24.1.5:5900 --web C:\self-monitor\novnc"
start powershell -NoExit -Command "py -3.11 -m websockify 6081 172.24.1.6:5900 --web C:\self-monitor\novnc"
start powershell -NoExit -Command "py -3.11 -m websockify 6082 172.24.1.7:5900 --web C:\self-monitor\novnc"
start powershell -NoExit -Command "py -3.11 -m websockify 6083 172.24.1.8:5900 --web C:\self-monitor\novnc"
start powershell -NoExit -Command "py -3.11 -m websockify 6084 172.24.1.9:5900 --web C:\self-monitor\novnc"
start powershell -NoExit -Command "py -3.11 -m websockify 6085 172.24.1.10:5900 --web C:\self-monitor\novnc"

echo Sistema iniciado
pause