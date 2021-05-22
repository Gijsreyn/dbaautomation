# Specify the data for container
$Data = @{
    sqlServerName = 'sqlestate'
    sqlDatabaseName = 'estate'
    sqlAdministrator = 'SqlAdministrator'
    sqlPassword = 'My@VeryStrongPassword!1'
    procedureName = 'AddInventoryRecords'
}

# Create container
$container = New-PesterContainer -Path .\tests\ -Data $data

# Invoke pester tests
Invoke-Pester -Container $Container