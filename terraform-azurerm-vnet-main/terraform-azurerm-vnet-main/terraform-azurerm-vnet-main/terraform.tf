terraform {
    required_providers {
        
        azuredevops = {
          source  = "microsoft/azuredevops"
          version = ">=0.1.0"
        }

        azurerm = {
            source = "hashicorp/azurerm"
            version = "~> 3.0"
        }

        azuread = {
          source = "hashicorp/azuread"
          version = "~> 1.0"
        }
    
        modtm = {
          source  = "Azure/modtm"
          version = "0.3.2"
        }
      }    
    
    backend "azurerm" {
        use_azuread_auth = true
        key = "app.terraform.tfstate"
    }
}
provider "azurerm" {
  features {}
}