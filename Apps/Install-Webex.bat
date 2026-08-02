
@echo off
setlocal EnableExtensions EnableDelayedExpansion

title Enterprise IT Toolkit - Webex Installer

:: ============================================
:: Enterprise IT Toolkit
:: Install-Webex.bat
:: Version: 0.1.0
:: ============================================

call :Banner
call :Main

echo.
echo ============================================
echo Finished.
echo ============================================
pause
exit /b

:: ------------------------------------------------
:Banner
cls
echo ============================================
echo        Enterprise IT Toolkit
echo            Webex Installer
echo ============================================
echo.
exit /b

:: ------------------------------------------------
:Main

call :CheckAdmin

echo.
echo Administrator OK!
echo.

exit /b

:: ------------------------------------------------
:CheckAdmin

net session >nul 2>&1

if %errorlevel%==0 (
    echo Running as Administrator.
    exit /b
)

echo.
echo Administrator privilege required.
echo Requesting elevation...
echo.

powershell -Command ^
"Start-Process '%~f0' -Verb RunAs"

exit
