variable "rg_name" {
    description = "Name of the resource group"
    type        = string
  
}

variable "location" {
    description = "Location of the resources"
    type        = string
}

variable "vm_name" {
    description = "Name of the virtual machine"
    type        = string
}

variable "vm_size" {
    description = "Size of the virtual machine"
    type        = string
}

variable "nsg_name" {
    description = "Name of the network security group"
    type        = string
}

variable "vnet_name" {
    description = "Name of the virtual network"
    type        = string
}

variable "subnet_name" {
    description = "Name of the subnet"
    type        = string
}

variable "address_space" {
    description = "Address space for the virtual network"
    type        = list(string)
}

variable "subnet_address_prefixes" {
    description = "Address prefixes for the subnet"
    type        = list(string)
}

variable "nic_name" {
    description = "Name of the network interface        "
    type        = string
}

variable "pip_name" {
    description = "Name of the public IP"
    type        = string        
}

