
resource "azurerm_linux_virtual_machine" "vm" {
    name                = "${var.prefix}-vm"
    resource_group_name = var.resource_group_name
    location            = var.resource_group_location
    size                = var.vm_size
    zone                = "2"
    admin_username      = var.admin_username
    network_interface_ids = [
        azurerm_network_interface.nic.id,
    ]
    admin_ssh_key {
        username   = var.admin_username
        public_key = file("~/.ssh/mi_clave_azure.pub")
    }

    os_disk {
        name                 = "${var.prefix}-osdisk"
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }

    source_image_reference {
        publisher = var.image_reference.publisher
        offer     = var.image_reference.offer
        sku       = var.image_reference.sku
        version   = var.image_reference.version
    }
    
    tags = var.nametags

    depends_on = [ azurerm_network_interface.nic ]
  
}