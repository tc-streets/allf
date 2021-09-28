$my = Read-Host -Prompt "enter word"
if ($my -eq "jim")

$twitString= Read-Host -Promp "enter show URL"
$twitString='"'+$twitString+'"'
Write-Host $twitString
# (invoke-webrequest -uri $twitString).links  | select-string -pattern 'mp3'
$j= "(invoke-webrequest -uri $twitString).links  | select-string -pattern '\.mp3'"
Invoke-Expression $j

{Write-Host $my}

Get-ChildItem  | % { ($_.fullname)}
whereis gcm

Get-Command pss | Select -ExpandProperty ScriptBlock
function pss() {
Get-Process | sort-object cpu -descending | vim -
}


Function Format-FileSize() {
    Param ([int]$size)
    If     ($size -gt 1TB) {[string]::Format("{0:0.00} TB", $size / 1TB)}
    ElseIf ($size -gt 1GB) {[string]::Format("{0:0.00} GB", $size / 1GB)}
    ElseIf ($size -gt 1MB) {[string]::Format("{0:0.00} MB", $size / 1MB)}
    ElseIf ($size -gt 1KB) {[string]::Format("{0:0.00} kB", $size / 1KB)}
    ElseIf ($size -gt 0)   {[string]::Format("{0:0.00} B", $size)}
    Else                   {""}
}

Get-ChildItem | Select-Object Name, @{Name="Size";Expression={Format-FileSize($_.Length)}}
Get-ChildItem -Filter *~* | % {del ($_.fullname)}
Get-ChildItem -Filter *~* | % {($_.fullname)}