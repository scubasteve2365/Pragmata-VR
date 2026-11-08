Pragmata VR 1.1
===============
PRAGMATA in VR, third person with a gamepad. Free, by scubasteve2365.
Home page, updates and help: https://github.com/scubasteve2365/Pragmata-VR

Played on a Meta Quest 3 (Virtual Desktop, VDXR) and a Pimax Dream Air (SteamVR) well into the game.

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
Open the mod menu           Hold both thumbsticks in (L3 + R3) for about half a second, or F1
                            (a quick L3 + R3 press is the game's Overdrive)
Close the mod menu          Click both thumbsticks, B, or F1
Change tab                  LT / RT (Page Up / Page Down)
Move                        D-pad (arrow keys)
Select, edit, done          A (Enter)
Bigger steps when editing   Hold RB (Shift)
Back / close                B (Backspace)

Tabs: General (render mode, HUD mode, Picture, Recenter, HUD panel), HUD (every HUD element: Lock, Size,
Left / right, Up / down, Reset), Advanced (low health edges, Native in menus, Decoupled pitch), Experimental (Subtitles,
Reticle, Sharp textures, Max detail, Reload textures, World scale), Mod menu. Changes save instantly,
per headset.

PICTURE (General tab): how the HUD and the mod menu reach your headset. Auto (default) picks Steady on
Virtual Desktop and Panel everywhere else. Steady draws them into the view like the game picture; Panel shows
them as their own layers. If the HUD stretches or shears when you turn your head, try the other one.

EXPERIMENTAL (press A on a row to change it)
Subtitles       New (default on a new install): subtitles on their own panel, no AFW doubling.
                Original: drawn as the game does.
Reticle         Original / New / Depth-based. New: the gun reticle on its own layer at a fixed Distance, no
                AFW doubling. Depth-based (AFW only): the layer sits at the depth of what you aim at; Depth
                scale sets how much it shrinks with distance. Use Left / right and Up / down in its section
                until your shots land on it.
Sharp textures  On by default: keeps high resolution textures loaded in VR (more VRAM).
Max detail      Off by default: highest detail models and textures everywhere (more GPU time and VRAM).
World scale     1.00x by default. Above 1 the world looks smaller, below 1 bigger. Aiming is not affected.

PERFORMANCE
Recommended game settings: Windowed display mode, DLSS on Quality, Texture Quality as high as your VRAM allows,
Texture Filtering Anisotropic 16x, Mesh Quality High or higher, most other graphics settings on Low.
Turn off: path tracing, ray tracing, ray reconstruction, frame generation, dynamic resolution, V-Sync, depth of
field, motion blur, lens distortion, lens flare (and chromatic aberration / film grain if offered).
Try AFW render mode (General tab) if Native cannot hold your headset's refresh rate.

KNOWN ISSUES
- Some textures can still look soft in VR in places; Sharp textures and Max detail help.
- A button prompt can now and then still catch the edge of a HUD element's spot.
- Tested in windowed mode only. Do not change resolution or display mode while in VR.
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
HUD fixes from the community Pragmata VR fix pack. Depth-based reticle by hookmanuk.
Menu font Barlow (SIL OFL). Licences: PragmataVR_licenses folder.
PRAGMATA is a trademark of CAPCOM CO., LTD. Pragmata VR is an unofficial fan modification.
