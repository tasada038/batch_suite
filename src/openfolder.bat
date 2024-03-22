@echo off

:: TeraTerm ウィンドウの位置
set BaseX=0
set BaseY=0
set RightX=680
set BottomY=540
set Users_Name="xxxxxxxx"
set App_Name="FusionLauncher"
set fusion_path="xxxxxxxx"

REM --- Open Folder ---
start "" "C:\Users\%Users_Name%\Dropbox\zotero" /X=%BaseX% /Y=%BaseY%
start "" "C:\Users\%Users_Name%\Zotero\storage" /X=%RightX% /Y=%BaseY%

REM --- Open .exe ---
start "" "C:\Users\%Users_Name%\AppData\Local\Autodesk\webdeploy\production\%fusion_path%\%App_Name%.exe"

exit /b