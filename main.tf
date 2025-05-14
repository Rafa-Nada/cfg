provider "azurerm" {
  features {}
  subscription_id = "a327a41f-a5e9-458f-b5bb-0dc87483eb85"
}

resource "azurerm_resource_group" "example" {
  name     = "appgw-rg"
  location = "East US"
}

# Create an Azure Storage Account
resource "azurerm_storage_account" "example" {
  name                     = "harnesseaccount" # Storage account name (must be globally unique)
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_kind             = "StorageV2" # Or "BlobStorage", "FileStorage", etc.
  account_tier             = "Standard"
  account_replication_type = "LRS"  # Or "GRS", "ZRS", etc.
  }
