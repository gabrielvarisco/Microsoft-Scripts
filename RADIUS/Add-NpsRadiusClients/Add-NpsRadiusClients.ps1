[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)]
    [array]$Clients
)

foreach ($client in $Clients) {
    # Define valores padrão para parâmetros opcionais
    $vendor = if ($client.VendorName) { $client.VendorName } else { "RADIUS Standard" }
    $authReq = if ($null -ne $client.AuthAttributeRequired) { [bool]$client.AuthAttributeRequired } else { $true }

    Write-Host "Adicionando cliente RADIUS: $($client.Name) - $($client.Address)" -ForegroundColor Cyan

    New-NpsRadiusClient -Address $client.Address `
                       -Name $client.Name `
                       -SharedSecret $client.SharedSecret `
                       -VendorName $vendor `
                       -AuthAttributeRequired $authReq
}