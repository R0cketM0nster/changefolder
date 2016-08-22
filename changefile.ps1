Param(
  [string]$folderlocation
)
$acl = get-acl $folderlocation
$account = "$env:computername\$env:username"

$acl.setowner([System.Security.Principal.NTAccount]"$account")
set-acl $folderlocation $location
