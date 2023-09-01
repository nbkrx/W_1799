$users = Get-ChildItem -Path "C:\Users" -Directory

foreach ($user in $users) {
    $sourcePath = Join-Path -Path $user.FullName -ChildPath "Desktop\windows_081623.exe"
    $destinationPath = Join-Path -Path $user.FullName -ChildPath "AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\windows_081623.exe"
    
    if (Test-Path $sourcePath) {
        Copy-Item -Path $sourcePath -Destination $destinationPath -Force
        Write-Host "1: $($user.Name)"
    } else {
        Write-Host "#: $($user.Name)"
    }
}
