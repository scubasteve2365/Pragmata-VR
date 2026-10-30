@echo off
setlocal EnableExtensions
title Pragmata VR - uninstall
cd /d "%~dp0"

echo.
echo  Pragmata VR - uninstall
echo  =======================
echo.

if not exist "PRAGMATA.exe" (
    echo  This file must be in the PRAGMATA game folder, next to PRAGMATA.exe.
    goto :done
)

echo  This removes Pragmata VR's files from the game folder:
echo    dinput8.dll, openxr_loader.dll, PDAFWPlugin.dll, the Pragmata VR batch files,
echo    README and licence files.
echo  Your settings in reframework\data (pragmatavr_*) are kept.
echo.
choice /c YN /m "  Uninstall Pragmata VR now"
if errorlevel 2 goto :done

for %%F in (dinput8.dll openxr_loader.dll PDAFWPlugin.dll PragmataVR_README.txt PragmataVR_install.bat PragmataVR_collect_logs.bat) do (
    if exist "%%F" del /f /q "%%F" && echo  Removed: %%F
)
if exist "PragmataVR_licenses" rmdir /s /q "PragmataVR_licenses" && echo  Removed: PragmataVR_licenses

rem Put back any older HUD scripts the install step moved aside.
set "AWAY=reframework\autorun\pragmatavr_disabled"
if exist "%AWAY%" (
    for %%S in ("%AWAY%\*.lua") do (
        move /y "%%~fS" "reframework\autorun\%%~nxS" >nul
        echo  Restored: %%~nxS
    )
    rmdir "%AWAY%" 2>nul
)

echo.
echo  Pragmata VR is uninstalled. PRAGMATA now runs without VR.
echo  To remove your Pragmata VR settings as well, delete reframework\data\pragmatavr_* files.
echo  REFramework's own files (re2_fw_config.txt, the reframework folder) are left in place.

rem This batch file removes itself last.
(goto) 2>nul & del /f /q "%~f0"

:done
echo.
pause
