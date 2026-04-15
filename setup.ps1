# ──────────────────────────────────────────────
# Dotfiles Setup Script (Windows PowerShell)
# Run: powershell -ExecutionPolicy Bypass -File .\setup.ps1
# ──────────────────────────────────────────────

$dotfilesDir = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host "Setting up dotfiles from: $dotfilesDir" -ForegroundColor Cyan
Write-Host ""

# ──────────────────────────────────────────────
# Claude Code — skills
# ──────────────────────────────────────────────
$skillsSource = "$dotfilesDir\.claude\skills"
$skillsTarget = "$HOME\.claude\skills"

# Create ~/.claude if it doesn't exist
if (-not (Test-Path "$HOME\.claude")) {
    New-Item -ItemType Directory -Path "$HOME\.claude" | Out-Null
}

# Copy skills folder (overwrite if exists)
if (Test-Path $skillsTarget) {
    Remove-Item -Recurse -Force $skillsTarget
}

Copy-Item -Recurse -Force $skillsSource $skillsTarget
Write-Host "Done: Claude skills copied" -ForegroundColor Green

# ──────────────────────────────────────────────
# Show installed skills
# ──────────────────────────────────────────────
Write-Host ""
Write-Host "Your skills:" -ForegroundColor Cyan
Write-Host ""
Get-ChildItem $skillsTarget -Directory | ForEach-Object {
    Write-Host "  /$($_.Name)" -ForegroundColor White
}
Write-Host ""
Write-Host "Open a new terminal and run 'claude' in any project." -ForegroundColor Cyan