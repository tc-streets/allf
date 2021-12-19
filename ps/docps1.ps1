<#
.SYNOPSIS
inserts comment snip from into ps1 file

.DESCRIPTION
.PARAMETER Name
.PARAMETER Extension
.INPUTS
from readhost input
.OUTPUTS
.EXAMPLE
#>

$psfile=read-host -prompt "Enter file to append"
$a = Get-Content $psfile
$b= curl https://raw.githubusercontent.com/wither7007/all/main/ps/comment
$c =$b + $a
Set-Content $psfile $c

