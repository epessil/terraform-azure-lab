output "rg_id" {
  description = "ID completo del Resource Group creado"
  value       = azurerm_resource_group.lab.id
}

output "rg_location" {
  description = "Region donde quedo el Resource Group"
  value       = azurerm_resource_group.lab.location
}
