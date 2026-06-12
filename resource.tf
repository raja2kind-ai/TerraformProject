resource "azurerm_resource_group" "my_rg" {
  name     = "${var.rg_name}-${local.resource_name_prefix}" #change it to your name
  location = "eastus"
}
