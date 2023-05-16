
param(
    [string]$ProjectDir = ".",
    [string]$Name,    
    [hashtable]$Keys,
    [Parameter(Mandatory=$true)]
    [string]$RepoName
)

$RepoPath = [IO.Path]::Combine($pwd, $RepoName, $ProjectDir)

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
