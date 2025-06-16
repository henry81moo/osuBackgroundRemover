$root = "C:\Users\henry\AppData\Local\osu!\Songs"

Get-ChildItem -Path $root -Filter *.osu -Recurse | ForEach-Object {
    $file = $_.FullName
    $lines = Get-Content -LiteralPath $file

    $inEventsSection = $false
    for ($i = 0; $i -lt $lines.Count; $i++) {
        if ($lines[$i] -match '^\[Events\]') {
            $inEventsSection = $true
            continue
        }
        if ($inEventsSection) {
            if ($lines[$i] -match '^\s*0,0,".*?",0,0') {
                $lines[$i] = $lines[$i] -replace '0,0,".*?",0,0', '0,0,"blankbg.jpg",0,0'
                break
            }
            if ($lines[$i] -match '^\[.*\]') {
                break
            }
        }
    }
    Set-Content -LiteralPath $file -Value $lines
    Write-Host "Updated $file"
}
