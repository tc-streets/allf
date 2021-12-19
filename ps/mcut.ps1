#runs ffmpeg to cut mp4/3
# ffmpeg -ss 00:02:25 -i bob3.mp4 -t 00:00:30 bob1.mp4
# ffmpeg -ss 00:02:25 -i bob3.mp4 -t 00:00:30 bob1.mp4


$searchPattern= Read-Host -Prompt "Search pattern: "
$c="*"+ $searchPattern  +"*"
Get-ChildItem $c
$twitString= Read-Host -Prompt "File name: "
#todo verify and clean up input
$output="x"+$twitString
if (Test-Path $output) {
#todo try wrapper?
    remove-item $output
}
$startTime= Read-Host -Prompt "Start time: "
$length= Read-Host -Prompt "Length: "
$cString = "ffmpeg -ss " +$startTime + " -i " + $twitString + " -t " + $length +" " +$output

Write-Host $cString
ffmpeg -ss $startTime -i $twitString -t $length $output
$b=Get-Date -Format "MM_dd_yy"
Add-Content C:\all\ps\m  -value $b' = '$cString



# if (-not(Test-Path -Path $file -PathType Leaf)) {
#     try {
#         $null = New-Item -ItemType File -Path $file -Force -ErrorAction Stop
#         Write-Host "The file [$file] has been created."
#     }
#     catch {
#         throw $_.Exception.Message
#     }
# }
# # If the file already exists, show the message and do nothing.
# else {
#     Write-Host "Cannot create [$file] because a file with that name already exists."
# }

