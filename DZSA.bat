@ECHO OFF
SET SERVERIP=104.143.3.62
SET QUERYPORT=27016

:START
ECHO Querying Server %SERVERIP%:%QUERYPORT%
powershell.exe -Command (new-object System.Net.WebClient).DownloadString('http://dayzsalauncher.com/api/v1/query/%SERVERIP%/%QUERYPORT%')
TIMEOUT 120
GOTO START