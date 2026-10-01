@echo off
chcp 65001 > nul
echo ====================================================
echo  GitHub Upload Script
echo ====================================================
echo.

cd /d "c:\Users\star1\.gemini\antigravity-ide\scratch\OsanHeritageXI"

"F:\Git\cmd\git.exe" add .
"F:\Git\cmd\git.exe" commit -m "Auto update"
"F:\Git\cmd\git.exe" push origin main

echo.
if %errorlevel% equ 0 (
    echo [SUCCESS] Upload completed!
    echo URL: https://star13535.github.io/OsanHeritageXI/index_preview.html
) else (
    echo [ERROR] Upload failed.
)
echo.
pause