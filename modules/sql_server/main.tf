resource "azurerm_mssql_server" "example" {
  name                         = var.sqlservername
  resource_group_name          = var.resource_group_name
  location                     = var.sqlserverlocation
  version                      = "12.0"
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
}
