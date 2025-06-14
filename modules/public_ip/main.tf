resource "azurerm_public_ip" "publicIp" {
  name                = var.publicIp_name
  resource_group_name = var.vnet_resource_group
  location            = var.location
    allocation_method   = var.allocation_method
}