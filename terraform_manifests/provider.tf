terraform {
    required_version = ">1.0.0"
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = ">3.0.0"
        }
        random = {
            source = "hashicorp/random"
            version = ">3.0.0"
        }
    }
    cloud {
    organization = "DevOps_project"

    workspaces {
      name = "Azure-Infrastructure"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "random_string" "random01" {
  length = 5 
  upper = false 
  special = false
}