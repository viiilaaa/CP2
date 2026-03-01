locals {
  tags = {
    environment = "casopractico2"
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-terraform"
  location = var.ubicacion_recursos
  tags     = local.tags
}

module "vm-create" {
  source = "./modules/create_vm"
  PracticeName = "CP2"
  resource_group_name = azurerm_resource_group.rg.name
  resource_group_location = azurerm_resource_group.rg.location
  nametags = local.tags
}

module "acr-create" {
  source = "./modules/create_acr"
  PracticeName = "CP2"
  resource_group_name = azurerm_resource_group.rg.name
  resource_group_location = azurerm_resource_group.rg.location
  nametags = local.tags
}

module "aks-create" {
  source = "./modules/create_aks"
  PracticeName = "CP2"
  resource_group_name = azurerm_resource_group.rg.name
  resource_group_location = azurerm_resource_group.rg.location
  acr_id = module.acr-create.acr_id
  nametags = local.tags

  depends_on = [ module.acr-create ]
  
}