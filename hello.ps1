
$Array =  17200,17292

if(Get-Process -Id $Array)
{
	Write-Host ("This PID are Present in TaskList " + $Array)
	Stop-Process -Id $Array
	Write-Host ("This PID are Stopped" + $Array)
}


