# 2023 - Metal Gear Solid - Master Collection Version
[Steam](https://store.steampowered.com/app/2131630/METAL_GEAR_SOLID__Master_Collection_Version/)

**METAL GEAR SOLID - Master Collection Version** contains all regional variants of the original PlayStation versions of [Metal Gear Solid](../1.%20Metal%20Gear%20Solid/README.md) (revision 0), [Metal Gear Solid: Integral](../2.%20Metal%20Gear%20Solid%20-%20Integral/1999%20-%20PS1/README.md), as well as [Metal Gear Solid: VR Missions/Special Missions](../3.%20Metal%20Gear%20Solid%20-%20VR%20Missions/README.md)

All of the games that come in this collection can be extracted*. 

## Table of Contents
```table-of-contents
```

## ROM Extraction

1. Download and install .NET Core from https://dotnet.microsoft.com/download
2. Download MArchiveBatchTool from one of these links:
* [Windows](https://github.com/farmerbb/RED-Project/releases/download/tools/MArchiveBatchTool-win-x64.zip)
* [Linux](https://github.com/farmerbb/RED-Project/releases/download/tools/MArchiveBatchTool-linux-x64.zip)
3. Extract the zip file and copy alldata.bin and alldata.psb.m from your Metal Gear Solid install into the extracted directory.
4. Now, open up a command prompt (or shell) inside the MArchiveBatchTool folder, and run this command:
```
MArchiveBatchTool.exe fullunpack --keep alldata.psb.m zlib 25G/xpvTbsb+6 64
```

5. When finished, the ROMs will be located inside of the "alldata.psb.m_extracted\system\roms" folder.


----------
TODO:
Note on washed bins (bios is possible being picked up from the .l4za files?)
PPF patch generation instructions for MGSM2Fix