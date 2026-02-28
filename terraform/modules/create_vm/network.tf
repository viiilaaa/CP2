resource "azurerm_virtual_network" "red-virtual" {
  name                = "${var.PracticeName}-net"
  address_space       = ["10.0.0.0/16"]
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  
}

resource "azurerm_subnet" "subnet" {
  name                 = "${var.PracticeName}-subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.red-virtual.name
  address_prefixes     = ["10.0.1.0/24"]
  
}

resource "azurerm_network_interface" "nic" {
  name                = "${var.PracticeName}-nic"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "ipconfig"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.public_ip.id
  }
} 

resource "azurerm_public_ip" "public_ip" {
  name                = "${var.PracticeName}-public-ip"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  
}