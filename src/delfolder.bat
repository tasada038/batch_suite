@echo off
chcp 65001

set "folder_name=テストパッケージ"
set "subfolder1_a=テストフォルダ"
set "subfolder1_b=リリースフォルダ"

REM ----- Delete subfolder 1_a -----
if exist "%folder_name%\%subfolder1_a%" (
    rmdir "%folder_name%\%subfolder1_a%" /s /q
    if %errorlevel% neq 0 (
        echo Error: Failed to delete subfolder %subfolder1_a%.
        pause
        exit /b
    ) else (
        echo Subfolder %subfolder1_a% deleted successfully.
    )
) else (
    echo Subfolder %subfolder1_a% does not exist.
)

REM ----- Delete subfolder 1_b -----
if exist "%folder_name%\%subfolder1_b%" (
    rmdir "%folder_name%\%subfolder1_b%" /s /q
    if %errorlevel% neq 0 (
        echo Error: Failed to delete subfolder %subfolder1_b%.
        pause
        exit /b
    ) else (
        echo Subfolder %subfolder1_b% deleted successfully.
    )
) else (
    echo Subfolder %subfolder1_b% does not exist.
)

REM ----- Delete main folder -----
if exist "%folder_name%" (
    rmdir "%folder_name%" /s /q
    if %errorlevel% neq 0 (
        echo Error: Failed to delete main folder.
        pause
        exit /b
    ) else (
        echo Main folder deleted successfully.
    )
) else (
    echo Main folder does not exist.
)

echo Folder deletion completed successfully.
pause
