variable "nsg_name" {
    description = "Name of the network security group"
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

variable "subnet_id" {
    description = "ID of the subnet to associate the network security group with"
    type        = string
}

