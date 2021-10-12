#this is a utility to get the mp3 of twit webpages
#the input is a twit web page that offers a download

#get URL from twit tv
cd c:\Vid
$ur='https://talkpython.fm/episodes/download/334/microsoft-planetary-computer.mp3'

#$ur="https://talkpython.fm/episodes/show/246/practices-of-the-python-pro.mp3"
Write-Host 'The URL is: ' $ur
cd c:\Vid
$ProgressPreference = 'SilentlyContinue'
$a=Get-Date -Format "dd_mm_ss_MM"
Invoke-WebRequest $ur -OutFile $a'.mp3'
$ProgressPreference = 'Continue'
