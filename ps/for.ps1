$fruits = @('apple','pear','banana','lemon','lime','mango')

# Foreach - Loads all the fruits in the memory and process it
# Takes 21,4553 miliseconds
Foreach ($fruit in $fruits) {
    Write-Host $fruit;
}

#Shorthand for foreach
# Takes 14,3926 miliseconds
$fruits.foreach( {
    Write-Host $fruit;
}) 

# ForEach-Object 
# Takes 7,8812 miliseconds
$fruits | ForEach-Object {Write-Host $_}

# Shorthand for ForEach-Object
# Takes 7.3507 miliseconds
$fruits | ForEach {Write-Host $_}

# Also a Shorthand for ForEach-Object
# Takes 7,2982 miliseconds
$fruits | % {Write-Host $_}
