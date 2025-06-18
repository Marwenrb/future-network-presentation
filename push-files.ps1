# PowerShell script to push files to GitHub
Write-Host "🚀 Pushing files to GitHub..." -ForegroundColor Green

# Check if git is available
try {
    $gitVersion = git --version
    Write-Host "✅ Git found: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Git not found. Please install Git first." -ForegroundColor Red
    Write-Host "Download from: https://git-scm.com/download/win" -ForegroundColor Yellow
    exit 1
}

# Add all files
Write-Host "📁 Adding files..." -ForegroundColor Blue
git add .

# Commit changes
Write-Host "💾 Committing changes..." -ForegroundColor Blue
git commit -m "Fix PDF generator and add Vercel optimizations"

# Push to GitHub
Write-Host "📤 Pushing to GitHub..." -ForegroundColor Blue
git push origin main

Write-Host "✅ Files pushed successfully!" -ForegroundColor Green
Write-Host "🌐 Your presentation should now be available on Vercel" -ForegroundColor Yellow 