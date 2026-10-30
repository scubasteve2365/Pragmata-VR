@echo off
setlocal EnableExtensions
title Pragmata VR - collect logs
cd /d "%~dp0"

echo.
echo  Pragmata VR - collect logs for a problem report
echo  ===============================================
echo.

if not exist "PRAGMATA.exe" (
    echo  This file must be in the PRAGMATA game folder, next to PRAGMATA.exe.
    goto :done
)

for /f %%T in ('powershell -NoProfile -Command "Get-Date -Format yyyyMMdd_HHmmss"') do set "STAMP=%%T"
set "WORK=%TEMP%\PragmataVR_logs_%STAMP%"
set "ZIP=%USERPROFILE%\Desktop\PragmataVR_logs_%STAMP%.zip"
mkdir "%WORK%" >nul 2>&1

for %%F in (re2_framework_log.txt re2_framework_log_prev.txt reframework_crash.dmp re2_fw_config.txt config.ini) do (
    if exist "%%F" copy /y "%%F" "%WORK%\" >nul && echo  Added: %%F
)
if exist "reframework\data" (
    for %%F in ("reframework\data\pragmatavr_*") do (
        copy /y "%%~fF" "%WORK%\" >nul && echo  Added: %%~nxF
    )
)
if exist "reframework\autorun" (
    dir /b /s "reframework\autorun" > "%WORK%\autorun_files.txt" 2>nul
    echo  Added: list of REFramework scripts
)
for %%F in (dinput8.dll openxr_loader.dll PDAFWPlugin.dll PRAGMATA.exe) do (
    if exist "%%F" powershell -NoProfile -Command "$h=(Get-FileHash -Algorithm SHA256 '%%F').Hash; $s=(Get-Item '%%F').Length; '%%F  ' + $s + ' bytes  SHA256 ' + $h" >> "%WORK%\file_versions.txt"
)
echo  Added: file versions

powershell -NoProfile -Command "Compress-Archive -Path '%WORK%\*' -DestinationPath '%ZIP%' -Force"
rmdir /s /q "%WORK%" >nul 2>&1

echo.
if exist "%ZIP%" (
    echo  Done. Attach this file to your GitHub issue:
    echo    %ZIP%
    echo  It contains game and mod logs and settings only, no personal files.
) else (
    echo  Could not create the zip. Attach re2_framework_log.txt and reframework_crash.dmp from
    echo  this folder to your GitHub issue instead.
)

:done
echo.
pause
