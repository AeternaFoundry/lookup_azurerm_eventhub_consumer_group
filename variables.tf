variable "eventhub_consumer_group_lookup" {
  description = <<EOT
Map of eventhub_consumer_group_lookup, attributes below
Required:
    - eventhub_name
    - name
    - namespace_name
    - resource_group_name
EOT

  type = map(object({
    eventhub_name       = string
    name                = string
    namespace_name      = string
    resource_group_name = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.eventhub_consumer_group_lookup : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventhub_consumer_group_lookup : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventhub_consumer_group_lookup : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

