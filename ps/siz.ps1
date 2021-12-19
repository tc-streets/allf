$path = "."
$totalSize = 0

Get-ChildItem $path | ForEach-Object -Begin {
        Write-Host "Processing folder $path"
    } -Process {
        $totalSize += ($_.length / 1mb)
        $totalSizeG += ($_.length / 1gb)
    } -End {
        Write-host $totalSize.ToString('N2') "mb"
        Write-host $totalSizeG.ToString('N2') "gb"
    }
