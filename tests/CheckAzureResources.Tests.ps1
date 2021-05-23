$resourcegroup = 'rg-dbaautomation'
$resources = Get-AzResource -ResourceGroupName $resourcegroup

Describe 'Azure Resources' {
    foreach ($resource in $resources) {       
        $location = $resource.Location
        It "$($resource.Location) is westeurope" {
            $location | Should -Be 'westeurope'       
        }
    }
}