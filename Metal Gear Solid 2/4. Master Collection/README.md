# mgsdevwiki

---

D:\Projects\nht\vol_1\nht3_win32\MGS_HD_BP_Perforce\MGS3\x64\Steam_Release\METAL GEAR SOLID3.pdb"

The settings used to define what internal resolution & internal upscaling method the game are to use on launch are stored in 
MGS2\mgs2_savedata_win\[USER'S STEAMID]\launcher\launcher_sv

[CTXR Texture Editing](CTXR%20-%20Texture%20Editing/README.md)



--------------------

WIP: 

Info dump below this line. 

LT2 from OG PS2 are directly compatible

1. Bluepoint converted all the textures to ctxr and models to cmdl, but for some reason they kept all the original model files as well (evm, kms, cv2, zms, etc)
    
2. _[_12:08 PM_]_
    
    Well, shipped the game with them I mean.
    
3. _[_12:09 PM_]_
    
    They kept the .tri files too but where the texture data should be was made null so they're only using the header info.
Microsoft VisualC v14 64bit runtime



cutscene active flag (includes fmv's, pad demos, demos, force codec calls)
METAL GEAR SOLID2.unpacked.exe+AA9F94
7FF72C163BB6 - 44 39 35 D763A900  - cmp [7FF72CBF9F94],r14d
^ CAN'T USE FOR SOLIDUS SINCE HE HAS A BRIEF CUTSCENE DURING THE FIGHT

demo active flag
METAL GEAR SOLID2.unpacked.exe"+16CB5D8
7FF72C318661 - C7 05 6D2F5001 01000000 - mov [7FF72D81B5D8],00000001 // sets to TRUE
7FF72C318305 - 89 2D CD325001  - mov [7FF72D81B5D8],ebp // sets to FALSE

C7 05 6D 2F 50 01 01 00 00 00 = 1
89 2D CD 32 50 01 = 0


7FF72D6A2100 = DEMO FLAG 2
7FF72C9A2788 = DEMO FLAG 3

7FF72D6A2100

METAL GEAR SOLID2.unpacked.exe+1C8661 - C7 05 6D2F5001 01000000 - mov ["METAL GEAR SOLID2.unpacked.exe"+16CB5D8],00000001



MGS2_WEAPON_RBG_FireAct = +4E77D0  / 48 81 EC A8 00 00 00 48 8B 05 CF 20 4A 00 48 33 C4 48 89 45 1F
MGS2_INT_ActiveRGBGrenadeCount in +4E7B9B
MAX RGB GRENADE VALUES TO CHANGE: 4E7D55 & 4B7EED