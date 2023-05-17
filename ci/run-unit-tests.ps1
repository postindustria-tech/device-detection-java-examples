
param(
    [string]$ProjectDir = ".",
    [string]$Name,    
    [hashtable]$Keys,
    [Parameter(Mandatory=$true)]
    [string]$RepoName
)
$ExtraArgs = '"-DTestResourceKey=$($Keys.TestResourceKey)" "-DSuperResourceKey=$($Keys.TestResourceKey)" "-DLicenseKey=$($Keys.DeviceDetection)"'

Write-Output $ExtraArgs
./java/run-unit-tests.ps1 -RepoName $RepoName -ProjectDir $ProjectDir -Name $Name -ExtraArgs $ExtraArgs

exit $LASTEXITCODE
