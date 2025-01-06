@echo off
set "harena_path=%~dp0HArena"

if not exist "%harena_path%\PredefinedResolutions" (
    echo The PredefinedResolutions folder not found in the current directory. Redownload the game and start again.
    pause
    goto :exit
)

:menu
cls
echo Choose your resolution:
echo 1) 1920x1080 16x9
echo 2) 1600x900 16x9
echo 3) 1280x720 16x9
echo 4) 1024x768 4x3
echo 5) 800x600 4x3
echo.
set /p choice=Enter your choice (1-5): 

if "%choice%"=="1" goto :1920x1080
if "%choice%"=="2" goto :1600x900
if "%choice%"=="3" goto :1280x720
if "%choice%"=="4" goto :1024x768
if "%choice%"=="5" goto :800x600

echo Invalid choice. Please try again.
pause
goto :menu

:1920x1080
cls
echo Copying ubi.ini for 1920x1080...
copy "%harena_path%\PredefinedResolutions\16x9\1920x1080\ubi.ini" "C:\Windows\Ubisoft" /y
goto :16x9launch

:1600x900
cls
echo Copying ubi.ini for 1600x900...
copy "%harena_path%\PredefinedResolutions\16x9\1600x900\ubi.ini" "C:\Windows\Ubisoft" /y
goto :16x9launch

:1280x720
cls
echo Copying ubi.ini for 1280x720...
copy "%harena_path%\PredefinedResolutions\16x9\1280x720\ubi.ini" "C:\Windows\Ubisoft" /y
goto :16x9launch

:1024x768
cls
echo Copying ubi.ini for 1024x768...
copy "%harena_path%\PredefinedResolutions\4x3\1024x768\ubi.ini" "C:\Windows\Ubisoft" /y
goto :4x3launch

:800x600
cls
echo Copying ubi.ini for 800x600...
copy "%harena_path%\PredefinedResolutions\4x3\800x600\ubi.ini" "C:\Windows\Ubisoft" /y
goto :4x3launch

:4x3launch
cls
echo Launching 4x3 arena...
"%harena_path%\R_Arena4x3.exe"
goto :exit

:16x9launch
cls
echo Launching 16x9 arena...
"%harena_path%\R_Arena16x9.exe"
goto :exit

:exit