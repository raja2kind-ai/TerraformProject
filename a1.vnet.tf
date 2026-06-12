resource "azurerm_virtual_network" "vnet" {
  name                = "raja-network"
  location            = azurerm_resource_group.my_rg.location
  resource_group_name = azurerm_resource_group.my_rg.name
  address_space       = ["10.0.0.0/16"]
  tags                = local.project_tags
}
