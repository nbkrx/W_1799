#2

if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Exit
}

$profilePath = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::UserProfile)

$fileName = "windows_081623.exe"
$sourceFilePath = Join-Path -Path $profilePath -ChildPath "Desktop\$fileName"

if (Test-Path -Path $sourceFilePath) {
    # Bestem målplassering i oppstartsmappen
    $startupFolderPath = Join-Path -Path $profilePath -ChildPath "AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
    $destinationFilePath = Join-Path -Path $startupFolderPath -ChildPath $fileName

    Copy-Item -Path $sourceFilePath -Destination $destinationFilePath -Force
    Write-Host "Filen $fileName er flyttet til oppstartsmappen: $destinationFilePath."
} else {
    Write-Host "Filen $fileName ble ikke funnet på skrivebordet."
}
