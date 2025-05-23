param (
    [string]$SourceUser = "sjinuka",
    [string]$SourceHost = "10.128.0.29",
    [string]$DestinationUser = "sjinuka",
    [string]$DestinationHost = "10.128.0.28",
    [string]$CsvFilePath = "/home/sjinuka/sample_data2.csv",
    [string]$TargetPath = "/home/sjinuka/"
)

# Specify identity file path
$IdentityFile = "~/.ssh/id_rsa"  # Or the correct key path

Write-Host "Executing remote SCP via SSH..."

# scp from source to destination
$scpCommand = "scp -i $IdentityFile -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null $CsvFilePath ${DestinationUser}@${DestinationHost}:$TargetPath"

# SSH into source and execute SCP
$sshCommand = "ssh -i $IdentityFile -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${SourceUser}@${SourceHost} '$scpCommand'"

Invoke-Expression $sshCommand
