# foreach ($file in Get-ChildItem)
# {
#   if ($file.length -gt 100KB)
#   {
#     Write-Host $file
#     Write-Host $file.length
#     Write-Host $file.lastaccesstime
#   }
# }

# $searchPattern= Read-Host -Prompt "Search pattern: "
# $c="*"+ $searchPattern  +"*"
# Get-ChildItem $c
$twitString= Read-Host -Prompt "File name: "
# $twitString='song'
for (($i = 0); $i -lt 3; $i++)
{
    # "`$i:$i" + ":      `$j:$j" + "write jim   "
    $str='ffmpeg -i "concat:' +"$twitString$i.mp3|$twitString$i.mp3`" -acodec copy "+$twitString+($i+1)+".mp3"
    Invoke-Expression($str)
    Write-Host($str)
    # $i.GetType()
}
#ffmpeg -i "concat:ap2.mp3|ap2.mp3" -acodec copy ap3.mp3
#ffmpeg -1 "concat:aa1.mp3|aa1.mp3" -acodec copy aa2.mp3
#ffmpeg -ss 1:00 -i autumnPretty.mp4 -t 16 xautumnPretty.mp4