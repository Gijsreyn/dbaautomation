$resourcegroup = 'rg-dbaautomation'
$resources = Get-AzResource -ResourceGroupName $resourcegroup

Describe 'Azure Resources' {
    foreach ($resource in $resources) {       
        
        It "$($resource.Location) is westeurope" {
            $resource.Location | Should -Be 'westeurope'            
        }
    }
}