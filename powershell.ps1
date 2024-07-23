# Login to Azure
Connect-AzAccount

# Set variables
$resourceGroupName = "example-resources"
$location = "West US"
$storageAccountName = "yourstorageaccountname" # Replace with your storage account name
$storageAccountType = "Standard_LRS"

# Create a resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a storage account
New-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName -Location $location -SkuName $storageAccountType