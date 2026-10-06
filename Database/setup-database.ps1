# AvroraMU - one-time database setup (run SETUP-DATABASE.bat as Administrator).
# 1) finds your SQL Server, 2) creates database SPK5.2 from AvroraMU-database.sql, 3) creates the ODBC DSN "SPK5.2" the servers use.
$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
function Say([string]$t, [string]$c = 'White') { Write-Host $t -ForegroundColor $c }
$sqlcmd = (Get-Command sqlcmd -ErrorAction SilentlyContinue).Source
if (-not $sqlcmd) { $sqlcmd = Get-ChildItem 'C:\Program Files\Microsoft SQL Server', 'C:\Program Files (x86)\Microsoft SQL Server' -Recurse -Filter SQLCMD.EXE -ErrorAction SilentlyContinue | Select -First 1 -ExpandProperty FullName }
if (-not $sqlcmd) { Say 'SQL Server was not found. Install SQL Server Express (free) first: https://www.microsoft.com/sql-server/sql-server-downloads' Red; Say 'SQL Server не е намерен. Първо инсталирай SQL Server Express (безплатен) от линка горе.' Red; exit 1 }
# find a running instance: default (local) or .\SQLEXPRESS
$inst = $null
foreach ($s in '(local)', '.\SQLEXPRESS') { & $sqlcmd -S $s -E -b -l 5 -Q 'SELECT 1' *> $null; if ($LASTEXITCODE -eq 0) { $inst = $s; break } }
if (-not $inst) { Say 'No running SQL Server instance ((local) or .\SQLEXPRESS). Start the "SQL Server" service and try again.' Red; Say 'Няма пуснат SQL Server. Пусни услугата "SQL Server" и опитай пак.' Red; exit 1 }
Say "SQL Server: $inst" Green
& $sqlcmd -S $inst -E -b -h -1 -Q "SET NOCOUNT ON; IF DB_ID('SPK5.2') IS NOT NULL SELECT 'EXISTS'" | Tee-Object -Variable ex | Out-Null
if (($ex -join '') -match 'EXISTS') { Say 'Database SPK5.2 already exists - nothing changed in it. / Базата SPK5.2 вече съществува - не е променяна.' Yellow }
else {
  & $sqlcmd -S $inst -E -b -Q "CREATE DATABASE [SPK5.2] COLLATE Latin1_General_CI_AS"; if ($LASTEXITCODE) { throw 'CREATE DATABASE failed' }
  & $sqlcmd -S $inst -E -b -d 'SPK5.2' -i (Join-Path $here 'AvroraMU-database.sql') | Out-Null; if ($LASTEXITCODE) { throw 'database script failed' }
  Say 'Database SPK5.2 created (test account: test / test123). / Базата SPK5.2 е създадена (тестов акаунт: test / test123).' Green }
# ODBC DSN for the 32-bit servers (and 64-bit for tools)
$srvName = $(if ($inst -eq '(local)') { '(local)' } else { $inst })
foreach ($pf in '32-bit', '64-bit') {
  if (Get-OdbcDsn -Name 'SPK5.2' -DsnType System -Platform $pf -ErrorAction SilentlyContinue) { Remove-OdbcDsn -Name 'SPK5.2' -DsnType System -Platform $pf }
  Add-OdbcDsn -Name 'SPK5.2' -DriverName 'SQL Server' -DsnType System -Platform $pf -SetPropertyValue @("Server=$srvName", 'Trusted_Connection=Yes', 'Database=SPK5.2') }
Say 'ODBC DSN "SPK5.2" ready. Next: START-SERVER.bat, then START-GAME.bat' Green
Say 'ODBC "SPK5.2" е готов. Следва: START-SERVER.bat, после START-GAME.bat' Green
