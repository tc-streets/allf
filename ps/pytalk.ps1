#powershell gets mp3's from Links file
$links=Get-Content C:\all\ps\links
# Write-Output $k
Set-Location C:\music\pytalk
foreach ($ur in $links)
{
    $a=Get-Date -Format "dd_ss_MM"
    $com='Invoke-WebRequest '+ $ur +' -OutFile ' +$a+'.mp3'
    Write-Host $com
    $ProgressPreference = 'SilentlyContinue'
    Invoke-Expression($com)
    $ProgressPreference = 'Continue'

}