@echo off
setlocal EnableExtensions
title Pragmata VR - install
cd /d "%~dp0"

echo.
echo  Pragmata VR - install step
echo  ==========================
echo.

if not exist "PRAGMATA.exe" (
    echo  This file must be in the PRAGMATA game folder, next to PRAGMATA.exe.
    echo  In Steam: right-click PRAGMATA, Manage, Browse local files.
    echo  Extract the whole Pragmata VR zip there, then run this again.
    goto :done
)

set "MISSING="
for %%F in (dinput8.dll openxr_loader.dll PDAFWPlugin.dll) do (
    if not exist "%%F" set "MISSING=1" & echo  Missing: %%F
)
if defined MISSING (
    echo.
    echo  Some Pragmata VR files are missing. Extract the whole zip into this folder again.
    echo  If Windows Defender or your antivirus removed dinput8.dll, restore it and add an exception
    echo  only if you downloaded Pragmata VR from github.com/scubasteve2365/Pragmata-VR.
    goto :done
)

rem Older HUD scripts (community VR fix pack, HUD Controls, early Pragmata VR test scripts) fight
rem Pragmata VR's own HUD. Move them aside; nothing is deleted. The uninstall step puts them back.
set "AUTORUN=reframework\autorun"
set "AWAY=reframework\autorun\pragmatavr_disabled"
set "MOVED=0"
if exist "%AUTORUN%" (
    for %%S in (
        zz_pragmata_transform_probe.lua
        zzzz_pragmata_capture_screen_test.lua
        zzzzz_pragmata_cinematic_probe.lua
        zzzzz_pragmata_label_probe.lua
        zzzzz_pragmata_priority_ui_probe.lua
        zzzzzz_pragmata_door_hack_inspect.lua
        zzzzzzzz_pragmata_hud_orange_test.lua
        hud_controls.lua
        zz_pragmatavr_hide_ghost.lua
        zz_pragmatavr_hud2_to_hud1.lua
        zz_pragmatavr_gui_probe.lua
    ) do (
        if exist "%AUTORUN%\%%S" (
            if not exist "%AWAY%" mkdir "%AWAY%"
            move /y "%AUTORUN%\%%S" "%AWAY%\%%S" >nul
            echo  Moved aside: %%S
            set /a MOVED+=1
        )
    )
)

echo.
if "%MOVED%"=="0" (
    echo  No old HUD scripts found. Nothing to do.
) else (
    echo  Old HUD scripts moved to %AWAY%.
)
echo.
echo  Pragmata VR is ready. Start your VR runtime, then launch PRAGMATA from Steam.
echo  In game: click both thumbsticks (or press F1) to open the mod menu.

:done
echo.
pause
