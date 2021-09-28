Get-ChildItem -path c:\ -recurse -ErrorAction SilentlyContinue  |  Where-Object {$_.LastWriteTime -gt (Get-Date).AddDays(-1)}
