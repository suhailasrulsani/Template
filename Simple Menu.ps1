Clear-Host

#region Functions
Function Function_One
{
	Write-Host "This is function One"
}

Function Function_Two
{
	Write-Host "This is function Two"
}
#endregion Functions

#region Menu
function Show-Menu
{
	param ([string]$Title = 'Menu')
	Clear-Host
	Write-Host "Please select"
	Write-Host "`n"
	Write-Host " [1]"
	Write-Host " [2]"
	Write-Host "`n"
	Write-Host " [Q] Exit"
	Write-Host "`n"
}

Do
{
	Show-Menu
	Write-Host "Please make a selection: " -ForegroundColor Yellow -NoNewline
	$input = Read-Host
	Write-Host "`n"
	switch ($input)
	{
		'1' { Function_One }
		'2' { Function_Two }
		'q' { Write-Host "The script has been canceled" -BackgroundColor Red -ForegroundColor White }
		Default { Write-Host "Your selection = $input, is not valid. Please try again." -BackgroundColor Red -ForegroundColor White }
	}
	pause
}
until ($input -eq 'q')
Get-PSSession | Remove-PSSession
#endregion Menu
