Pragmata VR v0.9.0 (pre-release)
================================
PRAGMATA in VR, third person with a gamepad. Free, by scubasteve2365.
Home page, updates and help: https://github.com/scubasteve2365/Pragmata-VR

v0.9.x is a pre-release: played through the opening, tutorial and hub on a Meta Quest 3 (Virtual Desktop, VDXR)
and a Pimax Dream Air (SteamVR). Later parts of the game are untested.

INSTALL
1. Extract everything in this zip into the PRAGMATA game folder (the one with PRAGMATA.exe).
   Steam: right-click PRAGMATA, Manage, Browse local files.
2. Only if you used the community Pragmata VR fix pack or HUD Controls before: run PragmataVR_install.bat once.
   It moves their scripts aside (nothing is deleted).
3. In the game's graphics options set the display mode to Windowed (any resolution; 1920 x 1080 is fine,
   the mod renders at your headset's resolution). Full screen is not supported.
4. Start your VR runtime (SteamVR, or Virtual Desktop with VDXR for Meta Quest), then launch PRAGMATA from Steam.

UPDATE: extract the new zip over the old one. Settings are kept.
UNINSTALL: run PragmataVR_uninstall.bat. Your settings in reframework\data are kept.

IN GAME
Open / close the mod menu   Both thumbsticks together (L3 + R3), or F1
Change tab                  LT / RT (Page Up / Page Down)
Move                        D-pad (arrow keys)
Select, edit, done          A (Enter)
Bigger steps when editing   Hold RB (Shift)
Back / close                B (Backspace)

Tabs: General (render mode, HUD mode, Recenter, HUD panel), HUD (every HUD element: Lock, Size,
Left / right, Up / down, Reset), Advanced (low health edges, Native in menus), Mod menu. Changes save
instantly, per headset.

PERFORMANCE
Recommended game settings: Windowed display mode, DLSS on Balanced or Quality, most graphics settings on Low.
Turn off: path tracing, ray tracing, ray reconstruction, frame generation, dynamic resolution, V-Sync, depth of
field, motion blur, lens distortion, lens flare (and chromatic aberration / film grain if offered).
Try AFW render mode (General tab) if Native cannot hold your headset's refresh rate.

KNOWN ISSUES
- Only the opening, the tutorial and the hub have been played so far.
- Tested in windowed mode only. Do not change resolution or display mode while in VR.
- The start-up splash screens can flicker for a few seconds before the title screen.
- The default HUD layout is tuned on a Meta Quest 3. On other headsets, tune each element once, then lock it.

PROBLEMS
Run PragmataVR_collect_logs.bat (before restarting the game after a crash) and attach the zip it puts on your
Desktop to an issue at https://github.com/scubasteve2365/Pragmata-VR/issues
Antivirus: mods that hook games are sometimes flagged. Only download Pragmata VR from the page above.

SUPPORT
Pragmata VR is free. If you enjoy it and want to support more VR mods, you can buy me a coffee:
https://buymeacoffee.com/scubasteve2365  Thank you!

CREDITS
REFramework by praydog. Alternate Frame Warping (PDAFWPlugin.dll) and the RE Engine VR work by PureDark.
HUD fixes from the community Pragmata VR fix pack. Menu font Barlow (SIL OFL). Licences: PragmataVR_licenses folder.
PRAGMATA is a trademark of CAPCOM CO., LTD. Pragmata VR is an unofficial fan modification.
