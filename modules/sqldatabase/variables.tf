variable "dbname" {
  description = "The name of the SQL Database."
  type        = string
  
}

variable "server_id" {
  description = "The ID of the SQL Server where the database will be created."
  type        = string
}

variable "collation" {
  description = "The collation of the SQL Database."
  type        = string
}

variable "license_type" {
  description = "The license type of the SQL Database."
  type        = string
}

variable "max_size_gb" {
  description = "The maximum size of the SQL Database in GB."
  type        = number
}

variable "sku_name" {
  description = "The SKU name of the SQL Database."
  type        = string
}

variable "enclave_type" {
  description = "The enclave type of the SQL Database."
  type        = string
}
