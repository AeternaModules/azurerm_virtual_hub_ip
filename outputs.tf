output "virtual_hub_ips" {
  description = "All virtual_hub_ip resources"
  value       = azurerm_virtual_hub_ip.virtual_hub_ips
}
output "virtual_hub_ips_name" {
  description = "List of name values across all virtual_hub_ips"
  value       = [for k, v in azurerm_virtual_hub_ip.virtual_hub_ips : v.name]
}
output "virtual_hub_ips_private_ip_address" {
  description = "List of private_ip_address values across all virtual_hub_ips"
  value       = [for k, v in azurerm_virtual_hub_ip.virtual_hub_ips : v.private_ip_address]
}
output "virtual_hub_ips_private_ip_allocation_method" {
  description = "List of private_ip_allocation_method values across all virtual_hub_ips"
  value       = [for k, v in azurerm_virtual_hub_ip.virtual_hub_ips : v.private_ip_allocation_method]
}
output "virtual_hub_ips_public_ip_address_id" {
  description = "List of public_ip_address_id values across all virtual_hub_ips"
  value       = [for k, v in azurerm_virtual_hub_ip.virtual_hub_ips : v.public_ip_address_id]
}
output "virtual_hub_ips_subnet_id" {
  description = "List of subnet_id values across all virtual_hub_ips"
  value       = [for k, v in azurerm_virtual_hub_ip.virtual_hub_ips : v.subnet_id]
}
output "virtual_hub_ips_virtual_hub_id" {
  description = "List of virtual_hub_id values across all virtual_hub_ips"
  value       = [for k, v in azurerm_virtual_hub_ip.virtual_hub_ips : v.virtual_hub_id]
}

