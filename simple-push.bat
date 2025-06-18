@echo off
echo ========================================
echo Future Network - Push to GitHub
echo ========================================
echo.

echo Checking Git installation...
git --version
if %errorlevel% neq 0 (
    echo Git is not installed. Please install Git first.
    echo Download from: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo.
echo Step 1: Initializing Git repository...
git init

echo.
echo Step 2: Configuring Git user...
git config user.name "Marwen Rabai"
git config user.email "rbmarwenrb@gmail.com"

echo.
echo Step 3: Adding all files...
git add .

echo.
echo Step 4: Committing changes...
git commit -m "Fix PDF generator - use jsPDF directly"

echo.
echo Step 5: Adding remote repository...
git remote add origin https://github.com/Marwenrb/future-network-presentation.git

echo.
echo Step 6: Renaming branch to main...
git branch -M main

echo.
echo Step 7: Pushing to GitHub...
echo You may be prompted for your GitHub credentials.
echo Use your GitHub username and Personal Access Token as password.
git push -u origin main

echo.
echo ========================================
echo Push completed!
echo ========================================
echo Your site will update automatically on Netlify.
echo Test the PDF generator now!
echo.
pause 