[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)]
    [string]$CsvPath
)

$clients = Import-Csv -Path $CsvPath

foreach ($client in $clients) {
    New-NpsRadiusClient -Address $client.Address `
                       -Name $client.Name `
                       -SharedSecret $client.SharedSecret `
                       -VendorName ($client.VendorName ? $client.VendorName : "RADIUS Standard") `
                       -AuthAttributeRequired ([bool]$client.AuthAttributeRequired)
}