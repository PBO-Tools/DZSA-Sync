@echo off
set "SERVERIP=YOURSERVERIP"
set "QUERYPORT=YOURSERVERPORT"

:START
echo Querying Server %SERVERIP%:%QUERYPORT%
powershell.exe -Command "(New-Object System.Net.WebClient).DownloadString('http://dayzsalauncher.com/api/v1/query/%SERVERIP%/%QUERYPORT%')" || (
    echo Error: Failed to query server.
    timeout 5
)
timeout 120 >nul
goto START
