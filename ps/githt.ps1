<#
.SYNOPSIS

uses GIT to create an html directory template in projects directory

.DESCRIPTION
.PARAMETER Name
.PARAMETER Extension
.INPUTS
.OUTPUTS
.EXAMPLE
githt newproject
#>


#$project = Read-Host "Enter an HTML project name"
$param1=$args[0]
#todo check for parm value
git clone https://github.com/wither7007/ht.git c:\projects\$param1
#$startcode= Read-Host "Start vscode?"
cd C:\projects\$param1
git init 
git add .
git commit -m "initial commit"
code .
