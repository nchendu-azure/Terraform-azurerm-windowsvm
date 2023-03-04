terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"

    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "b2aec48f-6dad-4d57-ad25-dad521fe74a4"
  tenant_id       = "0d7cc8e9-be54-45cc-b2e3-041a9b45aa57"

}

# Random String Resource
/*resource "random_string" "myrandom" {
  length = 6
  upper = false 
  special = false
  numeric = false 
}*/
