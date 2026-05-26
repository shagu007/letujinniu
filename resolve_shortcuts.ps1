$WshShell = New-Object -ComObject WScript.Shell
$shortcuts = @("速记本", "业务文档", "素材库")
foreach ($name in $shortcuts) {
    $path = "c:/Users/Administrator/Desktop/$name.lnk"
    if (Test-Path $path) {
        $s = $WshShell.CreateShortcut($path)
        Write-Host "$name -> $($s.TargetPath)"
    } else {
        Write-Host "$name : not found"
    }
}
