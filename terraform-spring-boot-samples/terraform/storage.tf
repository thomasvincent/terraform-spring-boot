resource "azurerm_resource_group" "rg" {
  name     = "tfclienttestrg"
  location = "westus2"
}

resource "azurerm_storage_account" "testsa" {
  name                          = "tfclienttestsa"
  resource_group_name           = azurerm_resource_group.rg.name
  location                      = azurerm_resource_group.rg.location
  account_tier                  = "Standard"
  account_replication_type      = "GRS"
  min_tls_version               = "TLS1_2"
  public_network_access_enabled = false

  network_rules {
    default_action = "Deny"
  }

  blob_properties {
    delete_retention_policy {
      days = 7
    }
  }
}
