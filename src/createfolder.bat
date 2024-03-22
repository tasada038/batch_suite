@echo off
chcp 65001

set "folder_name=テストパッケージ"
set "subfolder1_a=テストフォルダ"
set "subfolder1_b=リリースフォルダ"
set "subfolder2_a=src include test"
set "subfolder2_b=src release"

REM ----- Create the main folder -----
mkdir "%folder_name%"
if %errorlevel% neq 0 (
    echo Error: Failed to create main folder.
    pause
    exit /b
) else (
    echo Main folder created successfully.
    goto :create_subfolders
)

:create_subfolders
REM ----- Create subfolder 1_a -----
for %%i in (%subfolder2_a%) do (
    mkdir "%folder_name%\%subfolder1_a%\%%i"
    if %errorlevel% neq 0 (
        echo Error: Failed to create subfolder %%i%subfolder1_a%.
        pause
        exit /b
    ) else (
        echo Subfolder %%i created successfully%subfolder1_a%.
    )
)

REM ----- Create subfolder 1_b -----
for %%i in (%subfolder2_b%) do (
    mkdir "%folder_name%\%subfolder1_b%\%%i"
    if %errorlevel% neq 0 (
        echo Error: Failed to create subfolder %%i%subfolder1_b%.
        pause
        exit /b
    ) else (
        echo Subfolder %%i created successfully%subfolder1_b%.
    )
)

echo Folder creation completed successfully.
pause
