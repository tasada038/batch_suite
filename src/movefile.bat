@echo off
chcp 65001

set "folder_name=テストパッケージ"
set "subfolder1_a=テストフォルダ"
set "subfolder1_b=リリースフォルダ"
set "subfolder2_a=src include test"
set "subfolder2_b=src release"
set "root=%~dp0"

set "movefile1=README.txt"
set "movefile2=CoverLetter.txt"

REM ----- Move file to subfolder1_b -----
move "%root%\%movefile1%" "%root%\%folder_name%\%subfolder1_b%\" >nul
if %errorlevel% neq 0 (
    echo Error: Failed to move %movefile1% to %subfolder1_b%.
) else (
    echo %movefile1% moved successfully to %subfolder1_b%.
)

REM ----- Move file to subfolder1_a\subfolder2_a\test -----
move "%root%\%movefile2%" "%root%\%folder_name%\%subfolder1_a%\" >nul
if %errorlevel% neq 0 (
    echo Error: Failed to move %movefile2% to %subfolder1_a%.
) else (
    echo %movefile2% moved successfully to %subfolder1_a%.
)

pause
