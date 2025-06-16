@echo off
setlocal enabledelayedexpansion

rem Set path to osu! Songs folder
set "folder=C:\Users\henry\AppData\Local\osu!\Songs"

rem Loop through each subfolder
for /d %%D in ("%folder%\*") do (
    rem Loop through image files (common types)
    for %%I in ("%%D\*.jpg" "%%D\*.jpeg" "%%D\*.png") do (
        rem Skip blankbg.jpg
        if /I not "%%~nxI"=="blankbg.jpg" (
            del "%%I"
        )
    )
)
