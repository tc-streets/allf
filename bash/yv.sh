#!/bin/bash
#utility to download you tube sound videos
# Ask the user for login details echo "Youtube Video Downloader"
echo "--JJ------------------------"
read -p 'Enter DL youtube video: ' USERVAR
echo "USERVAR IS: ${USERVAR}"
# USERVAR="https://www.youtube.com/watch?v=7LKy3lrkTRA"
cd /mnt/c/you/new
echo `date` >> /mnt/c/you/dates.txt ' - ' $USERVAR
# exit 1
# yt-dlp -f "best[height>=720]" https://www.youtube.com/watch?v=VvCytJvd4H0 -o '%(id)s.%(ext)s'
yt-dlp -f 'best[height>=720]' --embed-metadata --merge-output-format mp4 $USERVAR -o '%(title)s.mp4' >output.log 2>&1 
#yt-dlp -f 'bv[height=1080][ext=mp4]+ba[ext=m4a]' --embed-metadata --merge-output-format mp4 $USERVAR -o '%(title)s.mp4' >output.log 2>&1 

# PID=$!
# wait $PID

# COMP=$(echo "$USERVAR" | rg "=(.*)" -o | sed 's/=//') # COMP=$($USERVAR | rg "=(.*)" -o | sed 's/=//')
# echo "COMP is: ${COMP}"
# IFS=$'\n'
# ps -o cmd= -p $$    
# for i in $(find . -name "*$COMP*" );
# do
#     echo " file name is: $i"
#     touch $i
# done
# unset IFS
