variable "sqlservername" {
  description = "The name of the SQL Server instance."
  type        = string
  
}

variable "sqlserverlocation" {
  description = "The location of the SQL Server instance."
  type        = string
}

variable "administrator_login" {
  description = "The administrator login for the SQL Server instance."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the SQL Server instance will be created."
  type        = string
}

variable "administrator_login_password" {
  description = "The administrator login password for the SQL Server instance."
  type        = string
}
