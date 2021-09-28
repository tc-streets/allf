#check if autohot key is running before starting again
$autohotkey = Get-Process autohotkey -ErrorAction SilentlyContinue
if ($autohotkey) {
  # try gracefully first
  Write-host 'Autohotkey is running'
} else {
    Start-Process "C:\all\note\first.ahk"
}
Remove-Variable autohotkey 
