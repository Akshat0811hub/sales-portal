@echo off
cd /d "%~dp0"
title OrbitSales CRM Server (Port 4000)
echo ===============================================================
echo  🚀 OrbitSales CRM Server Starting on Port 4000...
echo ===============================================================
echo  Local PC Dashboard:    http://localhost:4000
echo  Frozen IP Dashboard:   http://192.168.1.34:4000
echo  Hostname Dashboard:    http://%COMPUTERNAME%:4000
echo  Extension Webhook:     http://192.168.1.34:4000/api/webhook
echo  Mobile Call Webhook:   http://192.168.1.34:4000/api/calls/log
echo  Recording Upload API:  http://192.168.1.34:4000/api/calls/recording
echo ===============================================================
echo  Sales Team Accounts:
echo   - Jinendra  : 8010264508           (jinendra@orbitouch-hr.com)
echo   - Vishal    : 7701969169, 9211711371 (vishal@orbitouch-hr.com)
echo   - Rahul     : 9211711370           (hello@orbitouch-hr.com / hello@orbitverify.com)
echo   - Archana   : 9211711376           (archana@orbitouch-hr.com / archana@orbitverify.com)
echo ===============================================================
echo  Keep this window open while using OrbitSales CRM!
echo ===============================================================

start "" "http://localhost:4000"
call "C:\Users\D552266\AppData\Roaming\Antigravity\bin\agy-node.cmd" server.js
pause
