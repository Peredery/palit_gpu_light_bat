@echo off
REM This batch file will set up the scheduled tasks for ThunderMaster

REM Create the scheduled task folder and the first task
schtasks /create /tn "\Bloatware_Palit\RUN_ThunderMaster" /tr "\"C:\Program Files\Thunder Master\ThPanel.exe\"" /sc onlogon /rl highest /f
if %errorlevel% neq 0 exit /b %errorlevel%

REM Create the batch file to kill Thunder Master
set "batchFilePath=C:\Program Files\Thunder Master\kill_thunder_master.bat"
set "batchFileContent=taskkill.exe /F /IM ThPanel.exe"
echo %batchFileContent% > "%batchFilePath%"
if %errorlevel% neq 0 exit /b %errorlevel%

REM Create the second scheduled task to kill Thunder Master after a delay
schtasks /create /tn "\Bloatware_Palit\KILL_ThunderMaster" /tr "\"%batchFilePath%\"" /sc onlogon /rl highest /delay 0000:10 /f
if %errorlevel% neq 0 exit /b %errorlevel%

echo Tasks have been created successfully.
pause
