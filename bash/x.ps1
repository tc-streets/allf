$fruit = @('apple','pear','banana','lemon','lime','mango')

# -le means less or equal to
For ($i = 0; $i -le $fruit.length; $i++) {
    Write-Host $i $fruit[$i];    
}
