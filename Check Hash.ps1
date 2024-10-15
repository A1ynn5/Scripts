$fileLocation = Read-Host "Where is the program?"
$originalHash = Read-Host "What was the original hash? assume MD5"
$Filehash = get-filehash -path "$fileLocation" -a MD5
If ($Filehash.hash -eq "$originalHash") {
	Write-Output "True"
} elseif ($originalHash -like "Unknown") {
	Write-Output "Unable to compare hashes. Current filehash equals" $Filehash.Hash
	Read-Host -Prompt "Press any key..."
} elseif ($Filehash.Hash -notmatch "$originalHash") {
	Write-output "False"
}
