param(
    [Switch]$Fail, 
    [Switch]$ExitCode, 
    $Parameter1
)

if ($Fail) {
    throw "This script fails!"
}

if ($ExitCode) {
    exit 5
}

$Env:MyVariable
$Parameter1
$PSVersionTable

"echo file" | Out-File fileyoujustcreated.txt

git add fileyoujustcreated.txt
git commit -m "updating file"
git push