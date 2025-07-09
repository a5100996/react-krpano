# 本地開發腳本 - 啟動文件伺服器
# 使用方法：在 PowerShell 中執行 .\dev-docs.ps1

Write-Host "正在檢查 docsify-cli 是否已安裝..." -ForegroundColor Yellow

# 檢查是否已安裝 docsify-cli
$docsifyInstalled = $false
try {
    $null = Get-Command docsify -ErrorAction Stop
    $docsifyInstalled = $true
    Write-Host "✓ docsify-cli 已安裝" -ForegroundColor Green
} catch {
    Write-Host "✗ docsify-cli 未安裝" -ForegroundColor Red
}

if (-not $docsifyInstalled) {
    Write-Host "正在安裝 docsify-cli..." -ForegroundColor Yellow
    npm install -g docsify-cli
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✓ docsify-cli 安裝成功" -ForegroundColor Green
    } else {
        Write-Host "✗ docsify-cli 安裝失敗，請手動執行：npm install -g docsify-cli" -ForegroundColor Red
        exit 1
    }
}

Write-Host "正在啟動文件伺服器..." -ForegroundColor Yellow
Write-Host "伺服器將在 http://localhost:3000 啟動" -ForegroundColor Cyan

# 啟動 docsify 伺服器
docsify serve docs

if ($LASTEXITCODE -ne 0) {
    Write-Host "✗ 伺服器啟動失敗" -ForegroundColor Red
    exit 1
}
