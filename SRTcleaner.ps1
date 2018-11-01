ForEach($filename in $args) {
  # detect file encoding
  [byte[]]$byte = get-content -Encoding byte -ReadCount 4 -TotalCount 4 -Path $filename
  if ( $byte[0] -eq 0xef -and $byte[1] -eq 0xbb -and $byte[2] -eq 0xbf ) {  # UTF-8
    (Get-Content -literalPath $filename).replace('<i>','').replace('</i>','').replace('<b>','').replace('</b>','').replace('♪','') -replace'(\{[\s\S]*)}',''| Set-Content -Encoding UTF8 -literalPath $filename
  } else { # default = ANSI
    (Get-Content -literalPath $filename).replace('<i>','').replace('</i>','').replace('<b>','').replace('</b>','').replace('♪','') -replace'(\{[\s\S]*)}',''| Set-Content -literalPath $filename
  }
}
