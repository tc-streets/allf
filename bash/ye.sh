#!/usr/bin/env bash
#utility to download you tube  videos
# Ask the user for login details
echo "Youtube audio downloader"
echo "-----------------------------"
read -p 'Enter DL youtube audio: ' USERVAR
# export USERVAR="https://www.youtube.com/watch\?v\=ZO0PXYMVGSU"
echo "USERVAR IS: ${USERVAR}"
# cd /mnt/c/you/tech

cd /mnt/c/you/king
echo `date` >> /mnt/c/you/dates.txt ' - ' $USERVAR
yt-dlp -f 'ba' --embed-metadata -x --audio-format mp3 $USERVAR -o '%(title)s.mp3'  >output.log 2>&1 &

# > /dev/null 2>&1 &
# youtube-dl -x --audio-format mp3 $USERVAR > /dev/null 2>&1 & 
# exit 1
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
# exit 1

echo "done with $COMP"
#cd /mnt/c/you/kb
#echo `date` >> /mnt/c/you/dates.txt ' - ' $USERVAR
#youtube-dl -x --audio-format mp3 $USERVAR > /dev/null 2>&1 & 


# $USERVAR | rg "=(.*)" -o | sed 's/=//'
# echo "COMP is: ${COMP}"
# TFILE=$(ls | rg $COMP) 
# # TFILE=$(ls)
# echo "TFILE is: ${TFILE}"
# echo $TFILE
# find ~/docs -name "*.txt" -exec touch {}
# find  -name "*.txt" -exec touch {} \;
# find  -name "*.txt" -exec touch {} \;
# find -name "*Gs4*" -exec echo  {} \;
