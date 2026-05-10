$dir = "c:\Users\Shreyas Sunil\gjpproject\eravathody-handloom-society\docs"
$htmlFiles = Get-ChildItem -Path $dir -Filter *.html
foreach ($file in $htmlFiles) {
    if ($file.Name -eq "products.html" -or $file.Name -eq "index.html") { continue }
    $content = Get-Content $file.FullName -Raw
    if ($content -notmatch 'href="products\.html"') {
        $content = $content -replace '<li><a href="artisans_filmstrip_page4\.html"[^>]*>Artisans</a></li>', "`$0`n    <li><a href=`"products.html`" class=`"nav-link`">Products</a></li>"
        $content = $content -replace '<a href="artisans_filmstrip_page4\.html">Artisans</a>', "`$0`n      <a href=`"products.html`">Products</a>"
        Set-Content $file.FullName -Value $content
        Write-Output "Added Products link to $($file.Name)"
    }
}
