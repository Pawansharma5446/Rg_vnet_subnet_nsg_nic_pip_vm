
variable "pip_name" {
  description = "Name of the public IP address"
  type        = string
}

variable "rg_name" {
  description = "Name of the resource group"
  type        = string
}
variable "location" {
  description = "Azure region where the resources will be created"
  type        = string
}

