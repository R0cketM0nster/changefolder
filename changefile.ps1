Param(
  [string]$folderlocation
)
$folder = get-acl $folderlocation
$account = $env:account

$folder.setowner([System.Security.Principal.NTAccount]"")
