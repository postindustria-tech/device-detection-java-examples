
param(
    [string]$ProjectDir = ".",
    [string]$Name,    
    [hashtable]$Keys,
    [Parameter(Mandatory=$true)]
    [string]$RepoName
)
$ExtraArgs = @'
-DTestResourceKey={0} -DSuperResourceKey={1} -DLicenseKey={2}
'@ -f $Keys.TestResourceKey, $Keys.TestResourceKey, $Keys.DeviceDetection

Write-Output $ExtraArgs
./java/run-unit-tests.ps1 -RepoName $RepoName -ProjectDir $ProjectDir -Name $Name -ExtraArgs $ExtraArgs

exit $LASTEXITCODE
