ForEach($filename in $args) {
  (Get-Content -literalPath $filename).replace('<i>','').replace('</i>','').replace('<b>','').replace('</b>','') -replace'(\{[\s\S]*)}',''| Set-Content -literalPath $filename
}
