# get Firefox process
Get-Process | Where-Object {$_.WorkingSet -gt 200000000}
$Age = Read-Host "Please enter your age"
$proc = Get-Process firefox -ErrorAction SilentlyContinue
$proc = Get-Process xampp-control -ErrorAction SilentlyContinue
if ($firefox) {
  # try gracefully first
  $proc.CloseMainWindow()
  # kill after five seconds
  Sleep 5
  if (!$firefox.HasExited) {
    $proc | Stop-Process -Force
  }
}
