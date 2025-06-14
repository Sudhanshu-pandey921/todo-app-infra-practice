variable "resource_group_name" {
  description = "The name of the resource group in which the virtual machine will be created."
  type        = string
}




variable "network_interface_name" {
  description = "The name of the network interface for the virtual machine."
  type        = string
}

variable "virtual_machine_name" {
  description = "The name of the virtual machine."
  type        = string
}
variable "location" {
  description = "The Azure region where the virtual machine will be created."
  type        = string
}


variable "admin_username" {
  description = "The admin username for the virtual machine."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet in which the virtual machine will be created."
  type        = string
}

variable "admin_password" {
  description = "The admin password for the virtual machine."
  type        = string
}

variable "public_ip_id" {
  description = "The ID of the public IP address associated with the virtual machine."
  type        = string
}