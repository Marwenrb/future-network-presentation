# Automated Git Push Script for Future Network Presentation
Write-Host "🚀 Future Network Presentation - Auto Push Script" -ForegroundColor Green
Write-Host "=================================================" -ForegroundColor Green
Write-Host ""

# Check if Git is installed
try {
    $gitVersion = git --version
    Write-Host "✅ Git found: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Git not found!" -ForegroundColor Red
    Write-Host "Please install Git from: https://git-scm.com/download/win" -ForegroundColor Yellow
    Write-Host "After installation, restart this script." -ForegroundColor Yellow
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-Host "Step 1: Initializing Git repository..." -ForegroundColor Blue
git init

Write-Host ""
Write-Host "Step 2: Configuring Git user..." -ForegroundColor Blue
git config user.name "Marwen Rabai"
git config user.email "rbmarwenrb@gmail.com"

Write-Host ""
Write-Host "Step 3: Adding all files..." -ForegroundColor Blue
git add .

Write-Host ""
Write-Host "Step 4: Committing changes..." -ForegroundColor Blue
git commit -m "Add Future Network presentation with fixed PDF generator"

Write-Host ""
Write-Host "Step 5: Adding remote repository..." -ForegroundColor Blue
git remote add origin https://github.com/Marwenrb/future-network-presentation.git

Write-Host ""
Write-Host "Step 6: Renaming branch to main..." -ForegroundColor Blue
git branch -M main

Write-Host ""
Write-Host "Step 7: Pushing to GitHub..." -ForegroundColor Blue
Write-Host "You may be prompted for your GitHub credentials." -ForegroundColor Yellow
Write-Host "Use your GitHub username and Personal Access Token as password." -ForegroundColor Yellow
Write-Host ""

try {
    git push -u origin main
    Write-Host ""
    Write-Host "✅ SUCCESS! Files pushed to GitHub!" -ForegroundColor Green
    Write-Host ""
    Write-Host "🎉 Your presentation is now live!" -ForegroundColor Green
    Write-Host "📄 PDF generator should now work correctly" -ForegroundColor Green
    Write-Host "🖼️ Images should load properly on Vercel" -ForegroundColor Green
    Write-Host ""
    Write-Host "Next steps:" -ForegroundColor Yellow
    Write-Host "1. Check your Vercel dashboard for automatic deployment" -ForegroundColor White
    Write-Host "2. Test the PDF generator on your live site" -ForegroundColor White
    Write-Host "3. Verify all images are loading correctly" -ForegroundColor White
} catch {
    Write-Host ""
    Write-Host "❌ Error pushing to GitHub!" -ForegroundColor Red
    Write-Host "Possible causes:" -ForegroundColor Yellow
    Write-Host "1. Authentication failed - check your GitHub credentials" -ForegroundColor White
    Write-Host "2. Network issues - check your internet connection" -ForegroundColor White
    Write-Host "3. Repository not found - make sure the repository exists on GitHub" -ForegroundColor White
    Write-Host ""
    Write-Host "Manual steps:" -ForegroundColor Yellow
    Write-Host "1. Go to https://github.com/Marwenrb/future-network-presentation" -ForegroundColor White
    Write-Host "2. Click 'Add file' > 'Upload files'" -ForegroundColor White
    Write-Host "3. Drag all your files and commit" -ForegroundColor White
}

Write-Host ""
Read-Host "Press Enter to exit" 