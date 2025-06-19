# Fix Image URLs with Cache-Busting Parameters
# This script adds version parameters to image URLs to force browser refresh

Write-Host "🖼️ Fixing Image URLs with Cache-Busting Parameters..." -ForegroundColor Green

# Read the HTML file
$htmlFile = "future-network-presentation.html"
$content = Get-Content $htmlFile -Raw

Write-Host "📄 Reading $htmlFile..." -ForegroundColor Yellow

# Add cache-busting parameters to image URLs
$patterns = @(
    @{Pattern = 'Images/([^"\s]+)\.png"'; Replacement = 'Images/$1.png?v=2"'},
    @{Pattern = 'Images/([^"\s]+)\.jpeg"'; Replacement = 'Images/$1.jpeg?v=2"'},
    @{Pattern = 'Images/([^"\s]+)\.jpg"'; Replacement = 'Images/$1.jpg?v=2"'}
)

$modified = $false
foreach ($pattern in $patterns) {
    if ($content -match $pattern.Pattern) {
        $content = $content -replace $pattern.Pattern, $pattern.Replacement
        $modified = $true
        Write-Host "✅ Updated image URLs with pattern: $($pattern.Pattern)" -ForegroundColor Green
    }
}

if ($modified) {
    # Backup original file
    $backupFile = "$htmlFile.backup.$(Get-Date -Format 'yyyyMMdd-HHmmss')"
    Copy-Item $htmlFile $backupFile
    Write-Host "💾 Created backup: $backupFile" -ForegroundColor Yellow
    
    # Write modified content
    $content | Set-Content $htmlFile -Encoding UTF8
    Write-Host "✅ Successfully updated $htmlFile with cache-busting parameters!" -ForegroundColor Green
    Write-Host "🔄 Please refresh your website to see the updated images." -ForegroundColor Cyan
} else {
    Write-Host "ℹ️ No image URLs found to update." -ForegroundColor Yellow
}

Write-Host "`n📋 Next Steps:" -ForegroundColor Cyan
Write-Host "1. Upload the updated HTML file to your hosting service" -ForegroundColor White
Write-Host "2. Clear your browser cache (Ctrl+F5)" -ForegroundColor White
Write-Host "3. Visit your website to see the updated images" -ForegroundColor White

Write-Host "`n🎯 Done!" -ForegroundColor Green 