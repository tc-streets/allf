$searchPattern= Read-Host -Prompt "Search pattern: "
$c="*"+ $searchPattern  +"*"
Get-ChildItem $c
$twitString= Read-Host -Prompt "File name: "
Write-Information