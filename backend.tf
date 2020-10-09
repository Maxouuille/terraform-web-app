terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-cours"
    storage_account_name = "saterraformistin"
    container_name       = "terraformesgi"
    key                  = "mloHmKplNEHi6aCnZokvHIdcxxaVJfyB6wvaP3e+64U4HrGekyUt/fFo1Gw783qetp0lgHuVliRFxTcTzEK9bw=="
  }
}