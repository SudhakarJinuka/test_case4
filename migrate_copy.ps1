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

Write-Host "THis is your pwd."