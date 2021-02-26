Clear-Host
Get-PSSession | Remove-PSSession
Remove-Variable * -ErrorAction SilentlyContinue; $Error.Clear();
$Password = ConvertTo-SecureString "Welcome11" -AsPlainText -Force
$Cred = New-Object System.Management.Automation.PSCredential ("globalnet\suhail_asrulsani-ops", $Password)
$ScriptDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
$Machinelist = @(get-content -Path "$ScriptDir\Machinelist.txt")
$datetime = Get-Date -Format G
$dt = (Get-Date).ToString("ddMMyyyy_HHmmss")
