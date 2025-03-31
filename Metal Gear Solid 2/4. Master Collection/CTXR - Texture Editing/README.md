# Master Collection Texture Editing

## Texture Load Order

The games have a file loading priority system. The files contained in ovr_stm are platform specific to the steam version of the game (override_steam), and can essentially act as a dedicated mods folder as it will override all texture files in folders with lower priority - removing the necessity for the user to override vanilla texture files to install their mods, as well as preventing steam from overwriting a user's mods when the game updates / the user verifies their files.

The directories below are sorted from highest priority to lowest priority.

```
1. textures/flatlist/ovr_stm/ctrltype_kbd/_win
2. textures/flatlist/ovr_stm/ctrltype_stmd/_win
3. textures/flatlist/ovr_stm/ctrltype_xs/_win
4. textures/flatlist/ovr_stm/ctrltype_ps5/_win
5. textures/flatlist/ovr_stm/ctrltype_ps4/_win
6. textures/flatlist/ovr_stm/ctrltype_nx/_win
7. textures/flatlist/ovr_stm/ovr_eu/_win
8. textures/flatlist/ovr_stm/ovr_jp/_win
9. textures/flatlist/ovr_stm/ovr_us/_win
10. textures/flatlist/ovr_stm/_win
11. textures/flatlist/ovr_nx/_win
12. textures/flatlist/ovr_xs/_win
13. textures/flatlist/ovr_ps5/_win
14. textures/flatlist/ovr_ps4/_win
15. textures/flatlist/ovr_PS3/_win
16. textures/flatlist/ovr_360/_win
17. textures/flatlist/ovr_eu/_win
18. textures/flatlist/ovr_jp/_win
19. textures/flatlist/ovr_us/_win
20. textures/flatlist/_win
```

In other words, vanilla textures installed in `textures/flatlist/_win` will be overriden by textures in `textures/flatlist/ovr_eu/_win` , and textures in `textures/flatlist/ovr_eu/_win` will be overriden by textures in `textures/flatlist/ovr_stm/_win`.


NOTE: IT IS IMPORTANT TO -ALWAYS- SAVE MOD FILES WITH LOWERCASE NAMES. Linux pathing is CASE SENSITIVE, ergo to support steam deck / linux users, you MUST make sure your path/file name doesn't have random capitalization added.


## Texture Format Notes

Several types of textures should NEVER have mipmaps as they are either reflection maps, texture atlases, or textures that are always rendered at full size.

These textures can typically be identified by their naming format, which denote special attributes the texture were supposed to have.


| Texture Suffix | Type of Textures                                                              |
| -------------- | ----------------------------------------------------------------------------- |
| _mod1210       | Bald head reflection maps                                                     |
| _mod1120       | Reflection maps (both characters and objects)                                 |
| _emap          | Enviromental reflections                                                      |
| _chuou         | Various Title cards                                                           |
| _bmap          | Character bumpmaps (ie liquid ocelot viens, fatman's head, vamp's chest/arms) |
| _sub           | Shadow maps                                                                   |
| _book          | Texture atlases for all magazines                                             |
| ibox_tx_all    | Texture atlas for item box names                                              |

Most of these textures were erroneously given mipmaps by Bluepoint with the HD Collection & only rectified by fan made mods.




## Texture/CTXR Conversion

There are two tools available for CTXR conversion:

### GUI based
316austin316's [CTXR-Converter / CTXR3](https://github.com/316austin316/CTXR-Converter)

Does PARTIALLY support mipmaps - [NPOT textures](https://www.khronos.org/opengl/wiki/NPOT_Texture) which have a dimension which is larger than either axis of the original file's resolution may result in the game hanging or crashing.

### Command Line based

Jayveer's [CtxrTool](https://github.com/Jayveer/CtxrTool)

Does PARTIALLY support mipmaps - [NPOT textures](https://www.khronos.org/opengl/wiki/NPOT_Texture) which have a dimension which is larger than either axis of the original file's resolution may result in the game hanging or crashing.



Example batch script to automate converting all PNG / PSD / TGA files in a specific folder to DDS with mipmaps, and then automatically converting the DDS to CTXR format.

```
for %%f in (*copy.*) do pause
for %%f in (*.png) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_kaiser.dpf" "%%f"
for %%f in (*.psd) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_kaiser.dpf" "%%f"
for %%f in (*.tga) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_kaiser.dpf" "%%f"
for %%f in (*_sub_*.png) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_nomips.dpf" "%%f"
for %%f in (*_sub_*.psd) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_nomips.dpf" "%%f"
for %%f in (*_sub_*.tga) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_nomips.dpf" "%%f"
for %%f in (*_sub.*.png) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_nomips.dpf" "%%f"
for %%f in (*_sub.*.psd) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_nomips.dpf" "%%f"
for %%f in (*_sub.*.tga) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_nomips.dpf" "%%f"
for %%f in (*_mod1*.png) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_nomips.dpf" "%%f"
for %%f in (*_mod1*.psd) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_nomips.dpf" "%%f"
for %%f in (*_mod1*.tga) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_nomips.dpf" "%%f"
for %%f in (*_mod2*.png) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_nomips.dpf" "%%f"
for %%f in (*_mod2*.psd) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_nomips.dpf" "%%f"
for %%f in (*_mod2*.tga) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_nomips.dpf" "%%f"
for %%f in (*_bmap*.png) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_nomips.dpf" "%%f"
for %%f in (*_bmap*.psd) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_nomips.dpf" "%%f"
for %%f in (*_bmap*.tga) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_nomips.dpf" "%%f"
for %%f in (*_chuou*.png) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_nomips.dpf" "%%f"
for %%f in (*_chuou*.psd) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_nomips.dpf" "%%f"
for %%f in (*_chuou*.tga) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_nomips.dpf" "%%f"
set curr_directory=%cd%
cd /d "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs2-param"
timeout 1 /nobreak
for %%f in ("%curr_directory%\*.dds") do "CtxrTool.exe" "%%f"
timeout 1 /nobreak
for %%f in (*.ctxr) do MOVE "%%f" "%curr_directory%\%%f"
for %%f in ("%curr_directory%\*.dds") do del "%%f"

```
[CTXRTool Params and Batches](../../../Common/Texturing/Master%20Collection%20-%20Texturing%20Info/CTXRTool%20Params%20and%20Batches/README.md.md)
----

## Generating Mipmaps/DDS files

It's highly recommended that you generate your own .DDS files with mipmaps as opposed to relying on the above tooling's automatic mipmap generation abilities to maximize the quality of the final texture.

For that purpose, it is recommended to use the standalone version of [NVIDIA Texture Tools Exporter](https://developer.nvidia.com/texture-tools-exporter).   
(Using the Photoshop plugin is NOT recommended, especially when creating textures that are supposed to be partially transparent due to longstanding bug with how photoshop handles transparency layers which results in white aliasing on the edges of textures.)

#### Settings to change from default:  

| Setting Name                                         | Value to Set                    |
| ---------------------------------------------------- | ------------------------------- |
| Format                                               | 8.8.8.8 BGRA 32 Bpp \| unsigned |
| Multiplied Alpha Blending<br>(Alpha is Transparency) | Unchecked                       |
| Filter Type                                          | Kaiser                          |
| Compression Effort                                   | Highest                         |
| KTX2: Zstandard <br>Supercompression                 | Unchecked                       |

  
A preset file with all the above settings preconfigured can be found here:
![](../../../Common/Texturing/Master%20Collection%20-%20Texturing%20Info/Nvidia%20Texture%20Tool%20Presets/mgs_kaiser.dpf)

A preset file WITHOUT
![](../../../Common/Texturing/Master%20Collection%20-%20Texturing%20Info/Nvidia%20Texture%20Tool%20Presets/mgs_nomips.dpf)