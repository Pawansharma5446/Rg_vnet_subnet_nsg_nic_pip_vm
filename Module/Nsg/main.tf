resource "azurerm_network_security_group" "name" {
    name = var.nsg_name
    location = var.location
    resource_group_name = var.rg_name

    security_rule {
        name = "SSH"
        priority = 1001
        direction = "Inbound"
        access = "Allow"
        protocol = "Tcp"
        source_port_range = "*"
        destination_port_range = "22"
        source_address_prefix = "*"
        destination_address_prefix = "*"
    }
tags = {
    environment = "Terraform Demo"
    project = "Terraform Demo"  
}

}

resource "azurerm_subnet_network_security_group_association" "example" {
  subnet_id                 = var.subnet_id
  network_security_group_id = azurerm_network_security_group.name.id
}

