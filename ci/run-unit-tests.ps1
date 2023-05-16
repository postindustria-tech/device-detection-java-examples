
param(
    [string]$ProjectDir = ".",
    [string]$Name,    
    [hashtable]$Keys,
    [Parameter(Mandatory=$true)]
    [string]$RepoName
)


Write-Output "Entering '$RepoPath'"

Push-Location $RepoPath
try {

     mvn clean test "-DTestResourceKey=$($Keys.TestResourceKey)" "-DSuperResourceKey=$($Keys.TestResourceKey)" "-DLicenseKey=$($Keys.DeviceDetection)"

}
finally{
   Write-Output "Leaving '$RepoPath'"
   Pop-Location
}
exit $LASTEXITCODE
