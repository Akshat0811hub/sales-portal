$ErrorActionPreference = "SilentlyContinue"
$createdNew = $false
$mutex = New-Object System.Threading.Mutex($true, "Global\SalesCRMAutoWatchdog", [ref]$createdNew)
if (-not $createdNew) {
  exit 0
}

$workDir = "c:\Users\D552266\Desktop\Sales-portal"
$nodeCmd = "C:\Users\D552266\AppData\Roaming\Antigravity\bin\agy-node.cmd"
$logFile = Join-Path $workDir "data\server-autostart.log"

Set-Location $workDir

while ($true) {
  $listening = Get-NetTCPConnection -LocalPort 4000 -State Listen -ErrorAction SilentlyContinue
  if (-not $listening) {
    $ts = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    Add-Content -Path $logFile -Value "[$ts] Auto-starting OrbitSales CRM Server on port 4000..."
    & $nodeCmd "$workDir\server.js" *>> $logFile
  }
  Start-Sleep -Seconds 5
}
