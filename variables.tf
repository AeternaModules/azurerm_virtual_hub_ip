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
    private_ip_allocation_method = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.virtual_hub_ips : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

