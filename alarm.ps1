# USES 24-HOUR TIME!!!
$Wakeup = Get-Date -Hour 00 -Minute 00 -Second 0

# If arguments provided, overwrite hard-coded time
if (-NOT ($Null -eq $Args[0])) {
	$Minute = 0
	if ($Args[1]) {
		$Minute = $Args[1]
	}
	$Wakeup = Get-Date -Hour $Args[0] -Minute $Minute -Second 0
}

# If current time is 22:00 and wakeup time is 10:00,
#	it'll trigger as it's still the same day.
# Wakeup time needs to rollover to the next day
if((Get-Date).TimeOfDay -gt $Wakeup.TimeOfDay){
	$Wakeup = $Wakeup.AddDays(1)
}

Clear-Host
Write-Host "Wakeup scheduled for: $Wakeup`n"
Write-Host "Arguments:"
Write-Host "[HH [mm]]`t- Hours are in 24 format"

# Loop until computer time has passed wakeup time
while((Get-Date) -lt $Wakeup){
	timeout /t 30 /nobreak | Out-Null
}
(new-object -com wscript.shell).SendKeys([char]179)