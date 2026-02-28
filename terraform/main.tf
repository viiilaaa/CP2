resource "azurerm_resource_group" "rg" {
  name     = "rg-terraform"
  location = var.ubicacion_recursos
}

module "vm-create" {
  source = "./modules/create_vm"
  PracticeName = "CP2"
  resource_group_name = azurerm_resource_group.rg.name
  resource_group_location = azurerm_resource_group.rg.location
}

module "acr-create" {
  source = "./modules/create_acr"
  PracticeName = "CP2"
  resource_group_name = azurerm_resource_group.rg.name
  resource_group_location = azurerm_resource_group.rg.location
}