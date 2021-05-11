terraform {

    required_version = ">=0.14.9"

    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = ">= 2.26"
        }
    }
}

provider "azurerm" {
    skip_provider_registration = false
    features {}
}

resource "azurerm_resource_group" "atv_kubernet" {
  name     = "rs_atv_kubernet"
  location = "eastus"
}

resource "azurerm_kubernetes_cluster" "cluster_kubernetes" {
  name                = "atividade_kubernentes"
  location            = azurerm_resource_group.atv_kubernet.location
  resource_group_name = azurerm_resource_group.atv_kubernet.name
  dns_prefix          = "kubecluster"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Test"
  }
}

output "client_certificate" {
  value = azurerm_kubernetes_cluster.cluster_kubernetes.kube_config.0.client_certificate
}
