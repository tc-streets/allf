# get process and kill it
Get-Process | Where-Object {$_.WorkingSet -gt 20000000} | more
$proc = Read-Host "Enter proc to kill"
$proc = Get-Process -ErrorAction SilentlyContinue
$proc = Get-Process $proc -ErrorAction SilentlyContinue
$proc = Get-Process 'yourphone' -ErrorAction SilentlyContinue
if ($proc) {
  # try gracefully first
  $proc.CloseMainWindow()
  # kill after five seconds
  Sleep 5
  if (!$proc.HasExited) {
    $proc | Stop-Process -Force
  }
}
