# wrapper to ffmpeg cutt
$twitString= Read-Host -Prompt "Enter song to cut"
$start_time= Read-Host -Prompt "Enter start time"
$length= Read-Host -Prompt "Enter length"


ffmpeg -ss 00:02:05 -i x.mp4 -t 00:00:30 z.mp4



