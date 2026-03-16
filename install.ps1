# Data Engineering Claude Skills — Windows Installer
# Usage: & ".\install.ps1"

$skillsDir = "$env:USERPROFILE\.claude\commands"
$sourceDir  = "$PSScriptRoot\skills"

Write-Host "`nData Engineering Claude Skills Installer" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan

# Create .claude/commands if it doesn't exist
if (-not (Test-Path $skillsDir)) {
    New-Item -ItemType Directory -Path $skillsDir -Force | Out-Null
    Write-Host "Created $skillsDir" -ForegroundColor Yellow
}

# Copy all skill files
$skills = Get-ChildItem "$sourceDir\*.md"
foreach ($skill in $skills) {
    $dest = "$skillsDir\$($skill.Name)"
    Copy-Item $skill.FullName $dest -Force
    Write-Host "  ✅ Installed: /$($skill.BaseName)" -ForegroundColor Green
}

Write-Host "`n$($skills.Count) skills installed to $skillsDir" -ForegroundColor Cyan
Write-Host "`nAvailable commands in Claude Code:" -ForegroundColor White
Write-Host "  /dbt-model          — generate a dbt model" -ForegroundColor Gray
Write-Host "  /dbt-test           — generate dbt tests" -ForegroundColor Gray
Write-Host "  /snowflake-optimize — optimize queries & costs" -ForegroundColor Gray
Write-Host "  /pipeline-scaffold  — scaffold a full pipeline" -ForegroundColor Gray
Write-Host "  /incident-response  — P0/P1 incident playbook" -ForegroundColor Gray
Write-Host "  /data-contract      — generate a data contract" -ForegroundColor Gray
Write-Host "  /schema-design      — dimensional modeling" -ForegroundColor Gray
Write-Host "  /cost-analysis      — Snowflake cost audit" -ForegroundColor Gray
Write-Host "  /code-review        — senior DE code review`n" -ForegroundColor Gray
