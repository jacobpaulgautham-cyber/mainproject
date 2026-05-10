$dir = "c:\Users\Shreyas Sunil\gjpproject\eravathody-handloom-society\docs"
$files = Get-ChildItem -Path $dir -File | Where-Object { $_.Extension -match "\.(jpg|jpeg|png|gif|svg|mp4|ico)$" }
$htmlCssFiles = Get-ChildItem -Path $dir -File | Where-Object { $_.Extension -match "\.(html|css|js)$" }

foreach ($hc in $htmlCssFiles) {
    $content = Get-Content -Path $hc.FullName -Raw
    $changed = $false
    foreach ($img in $files) {
        $pattern = "(?i)" + [regex]::Escape($img.Name)
        $matches = [regex]::Matches($content, $pattern)
        foreach ($m in $matches) {
            if ($m.Value -cne $img.Name) {
                # Found case mismatch!
                $content = $content.Replace($m.Value, $img.Name)
                $changed = $true
            }
        }
    }
    if ($changed) {
        Set-Content -Path $hc.FullName -Value $content
        Write-Output "Fixed casing in $($hc.Name)"
    }
}
Write-Output "Case match fix complete."
