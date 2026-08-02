
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

echo Program Started...

exit /b
