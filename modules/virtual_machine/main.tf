data "template_file" "cloudinitdata" {
  template = file("deploynginx.sh")
}
resource "azurerm_network_interface" "example" {
  name                = var.network_interface_name
  location            = var.location
  resource_group_name = var.resource_group_name
  

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = var.public_ip_id
  }
}

resource "azurerm_linux_virtual_machine" "example" {
  name                = var.virtual_machine_name
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = "Standard_F2"
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  disable_password_authentication = false
  custom_data = base64encode(data.template_file.cloudinitdata.rendered)

  network_interface_ids = [
    azurerm_network_interface.example.id,
  ]
 

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}