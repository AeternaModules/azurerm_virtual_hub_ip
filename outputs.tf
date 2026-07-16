output "virtual_hub_ips_id" {
  description = "Map of id values across all virtual_hub_ips, keyed the same as var.virtual_hub_ips"
  value       = { for k, v in azurerm_virtual_hub_ip.virtual_hub_ips : k => v.id if v.id != null && length(v.id) > 0 }
}
output "virtual_hub_ips_name" {
  description = "Map of name values across all virtual_hub_ips, keyed the same as var.virtual_hub_ips"
  value       = { for k, v in azurerm_virtual_hub_ip.virtual_hub_ips : k => v.name if v.name != null && length(v.name) > 0 }
}
output "virtual_hub_ips_private_ip_address" {
  description = "Map of private_ip_address values across all virtual_hub_ips, keyed the same as var.virtual_hub_ips"
  value       = { for k, v in azurerm_virtual_hub_ip.virtual_hub_ips : k => v.private_ip_address if v.private_ip_address != null && length(v.private_ip_address) > 0 }
}
output "virtual_hub_ips_private_ip_allocation_method" {
  description = "Map of private_ip_allocation_method values across all virtual_hub_ips, keyed the same as var.virtual_hub_ips"
  value       = { for k, v in azurerm_virtual_hub_ip.virtual_hub_ips : k => v.private_ip_allocation_method if v.private_ip_allocation_method != null && length(v.private_ip_allocation_method) > 0 }
}
output "virtual_hub_ips_public_ip_address_id" {
  description = "Map of public_ip_address_id values across all virtual_hub_ips, keyed the same as var.virtual_hub_ips"
  value       = { for k, v in azurerm_virtual_hub_ip.virtual_hub_ips : k => v.public_ip_address_id if v.public_ip_address_id != null && length(v.public_ip_address_id) > 0 }
}
output "virtual_hub_ips_subnet_id" {
  description = "Map of subnet_id values across all virtual_hub_ips, keyed the same as var.virtual_hub_ips"
  value       = { for k, v in azurerm_virtual_hub_ip.virtual_hub_ips : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}
output "virtual_hub_ips_virtual_hub_id" {
  description = "Map of virtual_hub_id values across all virtual_hub_ips, keyed the same as var.virtual_hub_ips"
  value       = { for k, v in azurerm_virtual_hub_ip.virtual_hub_ips : k => v.virtual_hub_id if v.virtual_hub_id != null && length(v.virtual_hub_id) > 0 }
}

