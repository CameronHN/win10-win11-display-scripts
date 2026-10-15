@echo off
cls
echo Select a display mode:
echo.
echo   [e] Extend displays
echo   [d] Duplicate displays
echo   [1] Show only on display 1
echo   [2] Show only on display 2
echo.

rem choice reads a single keypress (no Enter) and ignores any key not listed
rem in /c, so an invalid key just waits for a valid one. Errorlevel is the
rem 1-based position of the key in /c, so test from highest to lowest.
choice /c ed12 /n /m "Press e, d, 1 or 2: "

if errorlevel 4 "C:\Windows\System32\DisplaySwitch.exe" /external& exit /b
if errorlevel 3 "C:\Windows\System32\DisplaySwitch.exe" /internal& exit /b
if errorlevel 2 "C:\Windows\System32\DisplaySwitch.exe" /clone& exit /b
if errorlevel 1 "C:\Windows\System32\DisplaySwitch.exe" /extend& exit /b
