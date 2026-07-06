variable "virtual_hub_ips" {
  description = <<EOT
Map of virtual_hub_ips, attributes below
Required:
    - name
    - public_ip_address_id
    - subnet_id
    - virtual_hub_id
Optional:
    - private_ip_address
    - private_ip_allocation_method
EOT

  type = map(object({
    name                         = string
    public_ip_address_id         = string
    subnet_id                    = string
    virtual_hub_id               = string
    private_ip_address           = optional(string)
    private_ip_allocation_method = optional(string) # Default: "Dynamic"
  }))
  validation {
    condition = alltrue([
      for k, v in var.virtual_hub_ips : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_virtual_hub_ip's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: virtual_hub_id
  #   source:    [from virtualwans.ValidateVirtualHubID] !ok
  # path: virtual_hub_id
  #   source:    [from virtualwans.ValidateVirtualHubID] err != nil
  # path: public_ip_address_id
  #   source:    [from commonids.ValidatePublicIPAddressID] !ok
  # path: public_ip_address_id
  #   source:    [from commonids.ValidatePublicIPAddressID] err != nil
  # path: subnet_id
  #   source:    [from commonids.ValidateSubnetID] !ok
  # path: subnet_id
  #   source:    [from commonids.ValidateSubnetID] err != nil
  # path: private_ip_address
  #   source:    validation.IsIPv4Address(...) - no translation rule yet, add one
  # path: private_ip_allocation_method
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

