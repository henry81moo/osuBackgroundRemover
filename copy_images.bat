@echo off
setlocal

set "main_folder=C:\Users\henry\AppData\Local\osu!\Songs"
set "source_file=%main_folder%\blankbg.jpg"

if not exist "%source_file%" (
    echo Source file blankbg.jpg not found in %main_folder%.
    pause
    exit /b
)

for /d %%D in ("%main_folder%\*") do (
    if exist "%%D" (
        if not exist "%%D\blankbg.jpg" (
            copy /y "%source_file%" "%%D\blankbg.jpg" >nul
            echo Copied blankbg.jpg to %%D
        ) else (
            echo blankbg.jpg already exists in %%D, skipping.
        )
    )
)

echo Done.
pause
