module "pip" {
    source         = "../../Module/pip"
    pip_name       = var.pip_name
    rg_name        = var.rg_name
    location       = var.location
}

module "nic" {
    source         = "../../Module/Nic"
    nic_name       = var.nic_name
    subnet_id      = module.vnet.subnet_id
    pip_address_id = module.pip.pip_id
    rg_name        = var.rg_name
    location       = var.location
}

module "rg" {
 source = "../../Module/Rg"
    rg_name = var.rg_name 
    location = var.location
}

module "nsg" {
    source = "../../Module/Nsg"
    nsg_name = var.nsg_name
    rg_name = var.rg_name
    location = var.location
    subnet_id = module.vnet.subnet_id
}

module "vm" {
    source = "../../Module/Vm"
    vm_name = var.vm_name
    vm_size = var.vm_size
    rg_name = var.rg_name
    location = var.location
    nic = module.nic.nic_id
}

module "vnet" {
 source = "../../Module/Vnet"
    vnet_name = var.vnet_name 
    subnet_name = var.subnet_name
    rg_name = var.rg_name
    location = var.location
    address_space = var.address_space
    subnet_address_prefixes = var.subnet_address_prefixes
}

