output "rg_id" {
  description = "ID completo del Resource Group creado"
  value       = azurerm_resource_group.lab.id
}

output "rg_location" {
  description = "Region donde quedo el Resource Group"
  value       = azurerm_resource_group.lab.location
}

output "storage_account_name" {
  description = "Globally unique storage account name (random suffix)"
  value       = azurerm_storage_account.lab.name
}
