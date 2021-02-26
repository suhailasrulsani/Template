Try
{
	
}

Catch
{
	Write-Warning ($_.Exception.Message)
	Continue
}

Finally
{
	$Error.Clear()
}
