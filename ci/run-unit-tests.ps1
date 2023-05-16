
param(
    [string]$ProjectDir = ".",
    [string]$Name,
    [hashtable]$Keys,
    [Parameter(Mandatory=$true)]
    [string]$RepoName
)

./java/run-unit-tests.ps1 -RepoName $RepoName -ProjectDir $ProjectDir -Name $Name -ExtraArgs "-DSuperResourceKey=$($Keys.TestResourceKey) -DTestResourceKey=$($Keys.TestResourceKey) -DLicenseKey=$($Keys.DeviceDetection)"


exit $LASTEXITCODE
