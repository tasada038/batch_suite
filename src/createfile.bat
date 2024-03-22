@echo off
chcp 65001

set "config=config.csv"

REM ファイルが存在するかチェック
if not exist "%config%" (
    echo Error: %config% が見つかりません。
    exit /b 1
)

REM CSVファイルの1列目に記載されているファイル名を作成
for /f "skip=2 tokens=1 delims=," %%i in (%config%) do (
    echo Creating file: %%i
    echo. > "%%i"
    if errorlevel 1 (
        echo Error: Failed to create file: %%i
    ) else (
        echo File created successfully: %%i
    )
)

pause
