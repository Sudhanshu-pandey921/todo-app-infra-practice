variable "publicIp_name" {
  description = "The name of the public IP address."
  type        = string
  
}

variable "vnet_resource_group" {
  description = "The resource group of the virtual network."
  type        = string
}

variable "location" {
  description = "The Azure region where the public IP address will be created."
  type        = string
}

variable "allocation_method" {
  description = "The allocation method for the public IP address."
  type        = string
  
}
