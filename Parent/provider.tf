terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.0.0"

  backend "azurerm" {
    resource_group_name = "rg-terraformstate2607"
    storage_account_name = "stgaccnt26072025"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate26072025"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "test.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {

  features {}

  subscription_id = "8620618b-e18e-453b-abb0-ee127f4295c8"
}


