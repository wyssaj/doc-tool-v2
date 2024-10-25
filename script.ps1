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

& git config --local user.email "wyssaj@gmail.com"
& git config --local user.name "Adam Wyss"

git add fileyoujustcreated.txt
git commit -m "updating file"
git push origin HEAD:main
