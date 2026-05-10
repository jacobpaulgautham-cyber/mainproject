$dir = "c:\Users\Shreyas Sunil\gjpproject\eravathody-handloom-society\docs"
$files = Get-ChildItem -Path $dir -File | Where-Object { $_.Name -match "\s|\(|\)" }
$htmlCssFiles = Get-ChildItem -Path $dir -File | Where-Object { $_.Extension -match "\.(html|css|js)$" }

$renames = @{}

foreach ($f in $files) {
    $newName = $f.Name -replace '[\s\(\)]', '-' -replace '-+', '-'
    $renames[$f.Name] = $newName
    Rename-Item -Path $f.FullName -NewName $newName -Force
}

foreach ($hc in $htmlCssFiles) {
    if ($renames.Count -eq 0) { break }
    $content = Get-Content -Path $hc.FullName -Raw
    $changed = $false
    foreach ($oldName in $renames.Keys) {
        $newName = $renames[$oldName]
        if ($content -match [regex]::Escape($oldName)) {
            $content = $content -replace [regex]::Escape($oldName), $newName
            $changed = $true
        }
    }
    if ($changed) {
        Set-Content -Path $hc.FullName -Value $content
        Write-Output "Updated references in $($hc.Name)"
    }
}
Write-Output "Renamed spaced files and updated references."
