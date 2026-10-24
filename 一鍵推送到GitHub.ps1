# 一鍵推送到 GitHub 腳本
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$git = "$env:LOCALAPPDATA\Programs\MinGit\cmd\git.exe"
if (!(Test-Path $git)) { $git = "git" }

Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "  多國語言語音播放器 - 一鍵推送到 GitHub" -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""

$currentRemote = (& $git remote get-url origin 2>$null)
if ($currentRemote) {
    Write-Host "目前已綁定倉庫：" -ForegroundColor Green
    Write-Host "  $currentRemote" -ForegroundColor Yellow
    Write-Host ""
    $choice = Read-Host "直接推送到此倉庫請直接按 [Enter]，若要變更網址請輸入新網址"
    if (![string]::IsNullOrWhiteSpace($choice)) {
        & $git remote set-url origin $choice
        $currentRemote = $choice
    }
} else {
    $currentRemote = Read-Host "請輸入您的 GitHub 倉庫網址 (例如: https://github.com/prc174vrc174-oss/dialogue-player.git)"
    if ([string]::IsNullOrWhiteSpace($currentRemote)) {
        Write-Host "❌ 網址不能為空，已取消操作。" -ForegroundColor Red
        pause
        exit
    }
    & $git remote add origin $currentRemote
}

Write-Host "正在推送到 GitHub main 分支..." -ForegroundColor Yellow
& $git branch -M main
& $git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "🎉 推送成功！" -ForegroundColor Green
    Write-Host "您的專屬網頁將於 1 分鐘內在下列網址更新：" -ForegroundColor Green
    Write-Host "👉 https://prc174vrc174-oss.github.io/dialogue-player/" -ForegroundColor Cyan
} else {
    Write-Host ""
    Write-Host "❌ 推送遇到問題，請確認已登入 GitHub 且具備倉庫寫入權限。" -ForegroundColor Red
}

pause
