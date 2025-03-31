for %%f in (*.png) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_kaiser.dpf" "%%f"
for %%f in (*.psd) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_kaiser.dpf" "%%f"
for %%f in (*.tga) do "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools\nvtt_export.exe" -p "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs_kaiser.dpf" "%%f"
set curr_directory=%cd%
cd /d "J:\Mega\Games\MG Master Collection\Self made mods\Tooling\CTXR File Conversion\mgs3-param"
timeout 1 /nobreak
for %%f in ("%curr_directory%\*.dds") do "CtxrTool.exe" "%%f"
timeout 1 /nobreak
for %%f in (*.ctxr) do MOVE "%%f" "%curr_directory%\%%f"
for %%f in ("%curr_directory%\*.dds") do del "%%f"