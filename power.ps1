powershell Start-Process powershell -Get-ChildItem runAs  
Start-Process powershell -ArgumentList "-noexit", "-noprofile", "-command &{Get-Location}" -Verb RunAs
gci c:\
#Stop-Process -id 2564
