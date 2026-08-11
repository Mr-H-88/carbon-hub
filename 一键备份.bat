@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo ==========================================
echo   碳智汇 - 一键备份
echo   自动提交所有更改并推送到 GitHub
echo ==========================================
echo.

git add -A

set MSG=backup %date% %time%
git commit -m "%MSG%"

if %errorlevel% neq 0 (
    echo.
    echo [!] 没有需要备份的更改，或提交失败。
    echo     检查上方输出。
    echo.
    pause
    exit /b 1
)

git push

if %errorlevel% neq 0 (
    echo.
    echo [!] 推送失败，请确认已关联 GitHub 远程仓库。
    echo     可用命令: git remote add origin 你的仓库地址
    echo.
) else (
    echo.
    echo [OK] 备份完成，已推送到 GitHub！
)

echo.
pause
