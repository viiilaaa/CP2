
resource "azurerm_linux_virtual_machine" "vm" {
    name                = "${var.prefix}-vm"
    resource_group_name = var.resource_group_name
    location            = var.resource_group_location
    size                = "Standard_B2s_v2"
    zone                = "2"
    admin_username      = "azureuser"
    network_interface_ids = [
        azurerm_network_interface.nic.id,
    ]
    admin_ssh_key {
        username   = "azureuser"
        public_key = file("~/.ssh/mi_clave_azure.pub")
    }

    os_disk {
        name                 = "${var.prefix}-osdisk"
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }

    source_image_reference {
        publisher = "Canonical"
        offer     = "ubuntu-24_04-lts"
        sku       = "server"
        version   = "latest"
    }
    
    tags = var.nametags
  
}