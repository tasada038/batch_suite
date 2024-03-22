@echo off
chcp 65001

set "config=config.csv"
set "root=%~dp0"

REM Check if the config file exists
if not exist "%config%" (
    echo Error: Config file "%config%" not found.
    pause
    exit /b
)

REM Read the config file and rename text files
for /f "skip=2 tokens=1,2 delims=," %%i in (%config%) do (
    for %%f in ("%root%\%%i*") do (
        ren "%%f" "%%j"
        if errorlevel 1 (
            echo Failed to rename "%%~nxf" to "%%j"
        ) else (
            echo Renamed "%%~nxf" to "%%j" successfully.
        )
    )
)

pause
exit /b
