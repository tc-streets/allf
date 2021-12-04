#SingleInstance Force
!a::run, C:\tools\neovim\Neovim\bin\nvim.exe -c "cd c:\all"      ; Correct
!t::run, C:\Program Files\WindowsApps\Microsoft.WindowsTerminal_1.11.2921.0_x64__8wekyb3d8bbwe\wt.exe
^SPACE::  Winset, Alwaysontop, , A
#z:: Send, `%paste
return

!d::run, C:\tools\neovim\Neovim\bin\nvim.exe "c:\all\note\notes"

!c::run,  C:\tools\neovim\Neovim\bin\nvim.exe -p c:\all\note\notes c:\all\note\power c:\all\note\work

!q:: Send !{f4}
return

!h::
Send, The Queen of Hearts, she made some tarts,  All on a summers day, The knave of Hearts, he stole the tarts, And took them clean away.
return

!j::
Send, The thing that hath been, it is that which shall be; and that which is done is that which shall be done: and there is no new thing under the sun.
return

!k::
Send, Beware the Jabberwock, my son The jaws that bite the claws that catch Beware the Jubjub bird, and shun The frumious Bandersnatch  He took his vorpal sword in hand;  Long time the manxome foe he sought  So rested he by the Tumtum tree  And stood awhile in thought.
return


!l::
Send, O Tannenbaum, o Tannenbaum, Wie treu sind deine Blatter. Du grunst nicht nur zur Sommerzeit, Nein, auch im Winter, wenn es schneit. O Tannenbaum, o Tannenbaum, Wie treu sind deine Blatter.  O Tannenbaum, o Tannenbaum, Du kannst mir sehr gefallen. Wie oft hat nicht zur Weihnachtszeit. Ein Baum von dir mich hoch erfreut. O Tannenbaum, o Tannenbaum, Du kannst mir sehr gefallen.
return


!b::
Send, Those who are hardest to love, need it the most- Be kind, for every one you meet is fighting a hard battle.  bumblescum North dakot - Simplicity is the final achievement. After one has played a vast quantity of notes and more notes, it is simplicity that emerges as the crowning reward of art
return

!m::
Send, The lady doth protest too much, methinks
return


!s::
SendRaw, `%run vsc.py
return


!1::
SendRaw, `%run vsc1.py
return

!2::
SendRaw, `%run vsc2.py
return

