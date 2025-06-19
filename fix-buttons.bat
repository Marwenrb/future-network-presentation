@echo off
echo ========================================
echo Future Network - Fix Button Overlap
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
echo Step 1: Adding the fixed files...
git add future-network-presentation.html

echo.
echo Step 2: Committing the button fix...
git commit -m "Fix PDF and Back to Top button overlap"

echo.
echo Step 3: Pushing to GitHub...
echo You may be prompted for your GitHub credentials.
echo Use your GitHub username and Personal Access Token as password.
git push origin main

echo.
echo ========================================
echo Button fix completed!
echo ========================================
echo The PDF and Back to Top buttons should now be properly spaced.
echo Your site will update automatically on Netlify.
echo.
pause 