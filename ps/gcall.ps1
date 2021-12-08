# Read-Host -Prompt "File name: "

foreach ($a in (gci))
{
echo $a.fullname
echo  "----------------------------------------------"
gc $a.name
}

#{write-host $a.fullname  " " $a.length}
