# S.S.T.G. 本地开发脚本
# 用法：在 repo 目录下运行  ./dev.ps1
#
# 作用：
#   1. 用 python -m http.server 在 8000 端口起一个静态服务器
#   2. 自动打开浏览器到 http://localhost:8000
#   3. Ctrl+C 停止

$ErrorActionPreference = 'Stop'
$port = 8000
$url  = "http://localhost:$port"

# 切到脚本所在目录，确保服务器 root 就是仓库根
Set-Location -LiteralPath $PSScriptRoot

# 检查 python
$py = Get-Command python -ErrorAction SilentlyContinue
if (-not $py) { $py = Get-Command py -ErrorAction SilentlyContinue }
if (-not $py) {
    Write-Host "[!] 未检测到 python。请先安装 Python 3 (https://www.python.org/) 后重试。" -ForegroundColor Red
    exit 1
}

Write-Host "==================================================" -ForegroundColor DarkYellow
Write-Host " S.S.T.G. dev server" -ForegroundColor Yellow
Write-Host "   root : $PSScriptRoot"
Write-Host "   url  : $url"
Write-Host "   stop : Ctrl+C"
Write-Host "==================================================" -ForegroundColor DarkYellow

# 后台起浏览器（延迟一点等 server 启起来）
Start-Job -ScriptBlock {
    param($u)
    Start-Sleep -Milliseconds 800
    Start-Process $u
} -ArgumentList $url | Out-Null

# 前台跑 http.server（阻塞在这里，Ctrl+C 结束）
& $py.Source -m http.server $port
