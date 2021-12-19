#finds file name or extension based on input
function finds {
    Clear-Host
    Write-Host starting
    $ext = Read-host "Enter Extension"
    #add period to extension
    Write-Host "Search for:"$ext -ForegroundColor Magenta
    $filename=""
    if ($ext.Length -gt 5) { $filename= $ext } 
    else {
    $ext = -join ('.', $ext)
    }
    Write-Host "Extension length is: "  $ext.Length
    #make sure back dates are integers so muliplication works 
    [int]$edat = Read-host "Enter date: "
    $dat= $Edat * -1
    #degugging
    write-host $dat -ForegroundColor Magenta
    #find files with extension and after date and write file
    if ($filename.Length -lt 5) {
        Get-ChildItem -Path C:\ -recurse -ErrorAction SilentlyContinue |
        Where-Object { $_.Extension -eq $ext -and $_.LastWriteTime -gt (Get-Date).AddDays($dat) } | ForEach-Object { $_.FullName } | Out-File -FilePath "C:\all\music2.txt" 
    }else {
    Get-ChildItem -Path C:\ -recurse -ErrorAction SilentlyContinue |
        Where-Object { $_.BaseName -eq $filename -and $_.LastWriteTime -gt (Get-Date).AddDays($dat) } | ForEach-Object { $_.FullName } 
        | Out-File -FilePath "C:\all\found.txt" 
       Write-Host done 
    }
}

