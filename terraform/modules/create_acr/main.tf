resource "azurerm_container_registry" "acr" {
  name                = lower(replace("${var.PracticeName}acrregistry", "-", ""))
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  sku                 = "Basic"
  admin_enabled       = true
  
}

resource "azurerm_user_assigned_identity" "acr_identity" {
  name                = "${var.PracticeName}-acr-identity"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  
}

