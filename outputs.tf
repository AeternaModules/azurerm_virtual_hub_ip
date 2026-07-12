output "virtual_hub_ips_name" {
  description = "Map of name values across all virtual_hub_ips, keyed the same as var.virtual_hub_ips"
  value       = { for k, v in azurerm_virtual_hub_ip.virtual_hub_ips : k => v.name }
}
output "virtual_hub_ips_private_ip_address" {
  description = "Map of private_ip_address values across all virtual_hub_ips, keyed the same as var.virtual_hub_ips"
  value       = { for k, v in azurerm_virtual_hub_ip.virtual_hub_ips : k => v.private_ip_address }
}
output "virtual_hub_ips_private_ip_allocation_method" {
  description = "Map of private_ip_allocation_method values across all virtual_hub_ips, keyed the same as var.virtual_hub_ips"
  value       = { for k, v in azurerm_virtual_hub_ip.virtual_hub_ips : k => v.private_ip_allocation_method }
}
output "virtual_hub_ips_public_ip_address_id" {
  description = "Map of public_ip_address_id values across all virtual_hub_ips, keyed the same as var.virtual_hub_ips"
  value       = { for k, v in azurerm_virtual_hub_ip.virtual_hub_ips : k => v.public_ip_address_id }
}
output "virtual_hub_ips_subnet_id" {
  description = "Map of subnet_id values across all virtual_hub_ips, keyed the same as var.virtual_hub_ips"
  value       = { for k, v in azurerm_virtual_hub_ip.virtual_hub_ips : k => v.subnet_id }
}
output "virtual_hub_ips_virtual_hub_id" {
  description = "Map of virtual_hub_id values across all virtual_hub_ips, keyed the same as var.virtual_hub_ips"
  value       = { for k, v in azurerm_virtual_hub_ip.virtual_hub_ips : k => v.virtual_hub_id }
}

