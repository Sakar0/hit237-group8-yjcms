$cred = @"
protocol=https
host=github.com

"@;
$cred | git credential-manager erase 2>&1 | Out-String
