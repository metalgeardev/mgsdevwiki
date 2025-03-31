@echo off
set Source=J:\Dropbox\Games\MG Master Collection\Self made mods\Texture Output\Alphas\processed
set Target=J:\Dropbox\Games\MG Master Collection\Self made mods\Texture Output\Alphas\needs_confirmation
set FileList=J:\Dropbox\Games\MG Master Collection\Self made mods\Texture Output\Alphas\proccessed_textures.txt
echo.

if not exist "%Source%" echo Source folder "%Source%" not found & goto Exit
if not exist "%FileList%" echo File list "%FileList%" not found & goto Exit
if not exist "%Target%" md "%Target%"

for /F "delims=" %%a in ('type "%FileList%"') do move "%Source%\%%a" "%Target%"

:Exit
echo.
echo press the Space Bar to close this window.
pause > nul