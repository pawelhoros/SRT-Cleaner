﻿$filename = $($args[0])
(Get-Content -literalPath $filename).replace('<i>','').replace('</i>','').replace('<b>','').replace('</b>','') -replace'(\{[\s\S]*)}',''| Set-Content -literalPath $filename
