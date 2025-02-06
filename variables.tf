# Azure Service Principal credentials used for authentication in the provider
variable "client_id" {
  description = "The client ID of the Azure Service Principal."
}

variable "client_secret" {
  description = "The client secret of the Azure Service Principal."
}

variable "subscription_id" {
  description = "The Azure Subscription ID to be used for the resources."
}

variable "tenant_id" {
  description = "The Azure Tenant ID that the service principal belongs to."
}

# Subscription details
variable "subscription_name" {
  description = "The name of the Azure subscription to be used for the resources."
}
