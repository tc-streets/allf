#utility to get the mp3 of twit webpages
#input is a twit web page that offers a download

#get URL from twit tv
$twitString= Read-Host -Prompt "enter show URL"
#put url in PS webrequest links format ("")
$twitString='"'+$twitString+'"'
Write-Host $twitString
# (invoke-webrequest -uri $twitString).links  | select-string -pattern 'mp3'
# and put the string in invokable format
$j= "(invoke-webrequest -uri $twitString).links  | select-string -pattern '\.mp3'"
$allTag=Invoke-Expression($j)
Write-Host "`n`n"
Write-Host $allTag
Write-Host "`n`n"
#convert the invoke match result into string
$t=$allTag.ToString()
#split the match and regext the http string
$t.Split(' ')[1]-match 'http.*mp3'
$ur=$Matches.0

Write-Host 'The URL is: ' $ur
#change directory and run the download
Set-Location c:\Vid
$ProgressPreference = 'SilentlyContinue'
$a=Get-Date -Format "dd_ss_MM"
$b=Get-Date -Format "MM_dd_yy"
Add-Content C:\all\ps\j  -value $b' = '$twitString

Invoke-WebRequest $ur -OutFile $a'.mp3'
$ProgressPreference = 'Continue'