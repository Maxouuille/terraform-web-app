provider "azurerm" {
  version = "~>1.34"
}

resource "azurerm_resource_group" "rg" {
  name     = var.ressource_group_name
  location = var.ressource_group_location
}

resource "azurerm_app_service" "webapp" {
  name                = var.app_service_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.app_service_plan.id
  https_only          = var.https_only
  site_config {
    php_version = var.app_service_php_version
    always_on   = var.always_on
    ftps_state  = var.ftps_state
  }
}

resource "azurerm_app_service_plan" "app_service_plan" {
  name                = var.plan_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  kind                = var.kind
  sku {
    tier     = var.sku_tier
    size     = var.sku_size
    capacity = var.sku_capacity
  }
}