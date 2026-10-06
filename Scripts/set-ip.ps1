# AvroraMU - set the server IP in every place that needs it (run SET-IP.bat).
# Changes ONLY the address players connect to:
#   MuServer\1.ConnectServer\ServerList.xml, MuServer\4.MuServer\Test-1\Data\MapServerInfo.ini,
#   Client\Data\SPK\ConnectIP.bmd (client), GetMain\GetEngine.ini, iU.spk (launcher).
# Server-to-server links (DataServer / JoinServer / ConnectServer) stay 127.0.0.1 - all servers run on this PC.
# Usage: SET-IP.bat            (menu)
#        SET-IP.bat 1.2.3.4    (no questions)
param([string]$Ip = '', [switch]$NoFirewall)
$ErrorActionPreference = 'Stop'
$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
function Say([string]$t, [string]$c = 'White') { Write-Host $t -ForegroundColor $c }
function Test-Ip([string]$s) { $p = $s.Split('.'); if ($p.Count -ne 4) { return $false }; foreach ($x in $p) { $n = 0; if (-not [int]::TryParse($x, [ref]$n) -or $n -lt 0 -or $n -gt 255 -or $x.Length -gt 3) { return $false } }; return $true }
$L1 = [Text.Encoding]::GetEncoding(28591)
$ipRe = '(?<![\d.])(?:\d{1,3}\.){3}\d{1,3}(?![\d.])'

# ---------- current value ----------
$sl = Join-Path $Root 'MuServer\1.ConnectServer\ServerList.xml'
$cur = ([xml](Get-Content $sl -Raw)).ServerList.Server | Select -First 1 | % { $_.IP }
Say ''
Say '  AvroraMU - SET IP' Cyan
Say "  Current IP / Текущо IP: $cur" Cyan
Say ''

if (-not $Ip) {
  $lan = @(Get-NetIPAddress -AddressFamily IPv4 -ErrorAction SilentlyContinue | ? { $_.IPAddress -notlike '127.*' -and $_.IPAddress -notlike '169.254.*' -and $_.PrefixOrigin -ne 'WellKnown' } | % IPAddress)
  $pub = ''; try { $pub = (Invoke-RestMethod -Uri 'https://api.ipify.org' -TimeoutSec 5).ToString().Trim() } catch { }
  $menu = @(@('127.0.0.1', 'Only this PC / Само този компютър'))
  foreach ($a in $lan) { $menu += ,@($a, 'Local network (LAN) / Локална мрежа') }
  if ($pub -and (Test-Ip $pub)) { $menu += ,@($pub, 'Internet (public IP, needs port forwarding on the router) / Интернет (публично IP, трябва пренасочване на портове в рутера)') }
  for ($i = 0; $i -lt $menu.Count; $i++) { Say ("  [{0}] {1,-16} {2}" -f ($i + 1), $menu[$i][0], $menu[$i][1]) }
  Say ("  [{0}] Type another IP / Въведи друго IP" -f ($menu.Count + 1))
  Say ''
  $ch = Read-Host '  Choose / Избери'
  $k = 0; if ([int]::TryParse($ch, [ref]$k) -and $k -ge 1 -and $k -le $menu.Count) { $Ip = $menu[$k - 1][0] }
  elseif ($k -eq $menu.Count + 1) { $Ip = (Read-Host '  IP').Trim() }
  else { Say '  Cancelled / Отказано' Yellow; exit 1 }
}
if (-not (Test-Ip $Ip)) { Say "  '$Ip' is not a valid IPv4 address / не е валиден IPv4 адрес" Red; exit 1 }

# ---------- write ----------
$done = @()
# 1) ConnectServer server list
$x = [xml](Get-Content $sl -Raw); foreach ($s in $x.ServerList.Server) { $s.SetAttribute('IP', $Ip) }; $x.Save($sl); $done += 'MuServer\1.ConnectServer\ServerList.xml'
# 2) map server info (IP is written with an 'S' in front)
foreach ($f in Get-ChildItem (Join-Path $Root 'MuServer\4.MuServer') -Recurse -File -Filter 'MapServerInfo.ini') {
  $t = $L1.GetString([IO.File]::ReadAllBytes($f.FullName)); $t2 = [regex]::Replace($t, "S$ipRe", "S$Ip")
  if ($t2 -ne $t) { [IO.File]::WriteAllBytes($f.FullName, $L1.GetBytes($t2)) }; $done += $f.FullName.Substring($Root.Length + 1) }
# 3) client: ConnectIP.bmd = XOR 0x20 { char IpAddress[32]; WORD Port; WORD AntiPort }
$ci = Join-Path $Root 'Client\Data\SPK\ConnectIP.bmd'
$b = [IO.File]::ReadAllBytes($ci); $ib = [Text.Encoding]::ASCII.GetBytes($Ip)
for ($i = 0; $i -lt 32; $i++) { $v = $(if ($i -lt $ib.Length) { $ib[$i] } else { 0 }); $b[$i] = $v -bxor 0x20 }
[IO.File]::WriteAllBytes($ci, $b); $done += 'Client\Data\SPK\ConnectIP.bmd'
# 4) GetMain settings (so a later GetMainInfo run keeps the same IP)
$ge = Join-Path $Root 'GetMain\GetEngine.ini'
if (Test-Path $ge) { $t = $L1.GetString([IO.File]::ReadAllBytes($ge)); $t2 = [regex]::Replace($t, '(?m)^(\s*IpAddress\s*=\s*)\S+', "`${1}$Ip"); [IO.File]::WriteAllBytes($ge, $L1.GetBytes($t2)); $done += 'GetMain\GetEngine.ini' }
# 5) launcher links (iU.spk = UTF-8 lines XOR 04 10 19 85)
$k4 = [byte[]](0x04, 0x10, 0x19, 0x85)
foreach ($f in Get-ChildItem $Root -Recurse -File -Filter 'iU.spk' | ? { $_.FullName -notmatch '\\\.git\\' }) {
  $b = [IO.File]::ReadAllBytes($f.FullName); for ($i = 0; $i -lt $b.Length; $i++) { $b[$i] = $b[$i] -bxor $k4[$i % 4] }
  $t = [Text.Encoding]::UTF8.GetString($b); $t2 = [regex]::Replace($t, $ipRe, $Ip)
  if ($t2 -ne $t) { $e = [Text.Encoding]::UTF8.GetBytes($t2); for ($i = 0; $i -lt $e.Length; $i++) { $e[$i] = $e[$i] -bxor $k4[$i % 4] }; [IO.File]::WriteAllBytes($f.FullName, $e) }
  $done += $f.FullName.Substring($Root.Length + 1) }

Say ''; Say "  IP set to / IP е сменено на: $Ip" Green; $done | % { Say "   - $_" }

# ---------- firewall (only when the server must be reachable from other PCs) ----------
if ($Ip -ne '127.0.0.1' -and -not $NoFirewall) {
  $admin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
  if ($admin) {
    $rules = @(@('AvroraMU ConnectServer TCP', 'TCP', 44495), @('AvroraMU ConnectServer UDP', 'UDP', 55562), @('AvroraMU GameServer TCP', 'TCP', 56132))
    foreach ($r in $rules) { if (-not (Get-NetFirewallRule -DisplayName $r[0] -ErrorAction SilentlyContinue)) { New-NetFirewallRule -DisplayName $r[0] -Direction Inbound -Protocol $r[1] -LocalPort $r[2] -Action Allow | Out-Null } }
    Say '  Windows Firewall: ports 44495/TCP, 55562/UDP, 56132/TCP opened / портовете са отворени' Green
  } else { Say '  Run SET-IP.bat as Administrator to open the firewall ports 44495/TCP, 55562/UDP, 56132/TCP' Yellow }
  if ($Ip -notmatch '^(10\.|192\.168\.|172\.(1[6-9]|2\d|3[01])\.)') { Say '  Internet IP: forward the same 3 ports on your router to this PC / пренасочи същите 3 порта в рутера към този компютър' Yellow }
}
Say ''
Say '  Next: restart the servers (START-SERVER.bat). Give the players the "Client" folder - it already connects to this IP.' Cyan
Say '  Следва: рестартирай сървърите (START-SERVER.bat). Дай на играчите папка "Client" - тя вече се свързва към това IP.' Cyan
