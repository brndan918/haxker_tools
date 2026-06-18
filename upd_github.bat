@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

:: GitHub 倉庫網址
set "REPO_URL=https://github.com/brndan918/haxker_tools.git"

:: 取得批次檔所在的資料夾
set "THIS_DIR=%~dp0"

:: 切換到批次檔所在的資料夾
cd /d "%THIS_DIR%"

:: 初始化 Git（如果已經是 git repo，會忽略）
git init

:: 添加所有檔案
git add .

:: 提交變更
git commit -m "初始化提交"

:: 設定遠端倉庫 URL
git remote get-url origin >nul 2>&1
if %errorlevel%==0 (
    git remote set-url origin "%REPO_URL%"
) else (
    git remote add origin "%REPO_URL%"
)

:: 切換主分支
git branch -M main

:: 推送
git push -u origin main

pause