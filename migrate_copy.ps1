param (
    [string]$SourceUser = "sjinuka",
    [string]$SourceHost = "10.128.0.29",
    [string]$DestinationUser = "sjinuka",
    [string]$DestinationHost = "10.128.0.28",
    [string]$CsvFilePath = "/home/sjinuka/sample_data3.csv",
    [string]$TargetPath = "/home/sjinuka/"
    [string]$pwd = "pwd"
)

# Specify identity file path
$IdentityFile = "~/.ssh/id_rsa"  # Or the correct key path

Write-Host "Executing remote SCP via SSH..."
ssh -i $IdentityFile -o StrictHostKeyChecking=no ${DestinationUser}@${DestinationHost}:$pwd"

Write-Host "Abive is PWD."

# scp from source to destination
#$scpCommand = "scp -i $IdentityFile -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null $CsvFilePath ${DestinationUser}@${DestinationHost}:$TargetPath"
#scp sample_data2.csv sjinuka@10.128.0.28:/home/sjinuka/
# SSH into source and execute SCP
#$sshCommand = "ssh -i $IdentityFile -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${SourceUser}@${SourceHost} '$scpCommand'"

#Invoke-Expression $sshCommand
