Get-ChildItem c:\*.txt -ErrorAction 'SilentlyContinue'  |   Where-Object {$_.LastWriteTime -lt (Get-Date).AddDays(-30)}

Get-ChildItem -Path C:\ -Recurse -ErrorAction SilentlyContinue |
  Where-Object { $_.Extension -eq '.java' -and $_.LastWriteTime -gt (Get-Date).AddDays(-1)}

Get-Childitem –Path C:\ -Include start.ps1 -Exclude *.JPG,*.MP3,*.TMP -File -Recurse -ErrorAction SilentlyContinue

Get-ChildItem -path C:\ Recurse -ErrorAction SilentlyContinue | ForEach-Object { "$_.FileName" }

ps | sort-object cpu -descending | vim -

Get-Process | Where-Object {$_.CPU -gt 10} | Sort-Object -Property CPU -Descending | Select-Object ProcessName, CPU

 (Invoke-WebRequest -Uri "https://docs.microsoft.com" -UseBasicParsing).Links.Href | vim -

 Set-Alias command ''

g C:\Users\jayst\OneDrive\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
cp C:\Users\jayst\OneDrive\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 c:\all\h

function his(){
dos2Unix "C:\Users\jayst\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"
Copy-Item "C:\Users\jayst\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt" -destination "c:\all\his"

g C:\all\his
}
gcm whereis

#Unique all lines in a file
function unq(){
$hash = @{}      # define a new empty hash table
Get-Content c:\all\his | %{if($hash.$_ -eq $null) { $_ }; $hash.$_ = 1} > nhis #get content hash file
dos2unix.exe nhis
