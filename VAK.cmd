@echo off
net stop wuauserv >nul 2>&1
net stop trustedinstaller >nul 2>&1
net stop usoSvc >nul 2>&1
net stop ClickToRunSvc >nul 2>&1
sc config wuauserv start= disabled >nul
sc config trustedinstaller start= disabled >nul
sc config usoSvc start= disabled >nul
sc config ClickToRunSvc start= disabled >nul
del /q "%SystemRoot%\*.log" >nul 2>&1
for /D %%i in ("%SystemRoot%\Logs\*") do rmdir /s /q "%%i" >nul 2>&1
rmdir /s /q "%SystemRoot%\temp" >nul 2>&1
rmdir /s /q "%SystemRoot%\SoftwareDistribution" >nul 2>&1
rmdir /s /q "%SystemRoot%\AppReadiness" >nul 2>&1
rmdir /s /q "%SystemRoot%\SystemTemp" >nul 2>&1
rmdir /s /q "%SystemRoot%\CbsTemp" >nul 2>&1
rmdir /s /q "%ProgramData%\USOShared" >nul 2>&1
rmdir /s /q "%ProgramData%\USOPrivate" >nul 2>&1
rmdir /s /q "%ProgramData%\PackageCache" >nul 2>&1
del /s /q "C:\Users\VAK\AppData\LocalLow\*" >nul 2>&1
for /D %%i in ("C:\Users\VAK\AppData\LocalLow\*") do rmdir /s /q "%%i" >nul 2>&1
rmdir /s /q "C:\Users\VAK\AppData\LocalLow\Microsoft\CryptnetUrlCache" >nul 2>&1
rmdir /s /q "C:\Users\VAK\AppData\LocalLow\Microsoft" >nul 2>&1
rmdir /s /q "C:\Users\VAK\AppData\LocalLow\Intel" >nul 2>&1
rmdir /s /q "C:\Users\VAK\AppData\Local\VirtualStore" >nul 2>&1
rmdir /s /q "C:\Users\VAK\AppData\Local\Temp" >nul 2>&1
rmdir /s /q "C:\Users\VAK\AppData\Local\PeerDistRepub" >nul 2>&1
rmdir /s /q "C:\Users\VAK\AppData\Local\D3DSCache" >nul 2>&1
rmdir /s /q "C:\Users\VAK\AppData\Local\JetBrains" >nul 2>&1
rmdir /s /q "C:\Users\VAK\AppData\Local\ElevatedDiagnostics" >nul 2>&1
rmdir /s /q "C:\Users\VAK\AppData\Local\CrashDumps" >nul 2>&1
pause