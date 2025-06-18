@echo off
echo Setting up Git repository for Future Network Presentation...
echo.

REM Check if Git is installed
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Git is not installed. Please install Git from https://git-scm.com/download/win
    echo Then run this script again.
    pause
    exit /b 1
)

echo Git is installed. Setting up repository...
echo.

REM Initialize Git repository
git init
if %errorlevel% neq 0 (
    echo Failed to initialize Git repository.
    pause
    exit /b 1
)

REM Configure Git user
git config user.email "rbmarwenrb@gmail.com"
git config user.name "Marwen Rabai"

REM Add all files
git add .
if %errorlevel% neq 0 (
    echo Failed to add files to Git.
    pause
    exit /b 1
)

REM Commit files
git commit -m "Initial commit: Future Network Logo Presentation with premium UI/UX design"
if %errorlevel% neq 0 (
    echo Failed to commit files.
    pause
    exit /b 1
)

REM Set main branch
git branch -M main

REM Add remote origin
git remote add origin https://github.com/Marwenrb/future-network-presentation.git
if %errorlevel% neq 0 (
    echo Failed to add remote origin.
    pause
    exit /b 1
)

echo.
echo Repository setup complete!
echo.
echo Next steps:
echo 1. You will be prompted to authenticate with GitHub
echo 2. Enter your GitHub username: Marwenrb
echo 3. For password, use a GitHub Personal Access Token
echo.
echo To create a Personal Access Token:
echo 1. Go to GitHub.com → Settings → Developer settings → Personal access tokens
echo 2. Generate new token (classic)
echo 3. Select repo scope
echo 4. Copy the token and use it as password when prompted
echo.

REM Push to GitHub
echo Pushing to GitHub...
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo Success! Your presentation has been pushed to GitHub.
    echo Visit: https://github.com/Marwenrb/future-network-presentation
) else (
    echo.
    echo Push failed. You may need to authenticate with GitHub.
    echo Please run: git push -u origin main
)

echo.
pause 