@echo off
cd /d "%~dp0"
set /p msg="What did you do? (commit message): "
if "%msg%"=="" set msg=work in progress
git add .
git commit -m "%msg%"
git pull --rebase origin main
git push -u origin main
echo.
echo Done. Press any key to close.
pause >nul
