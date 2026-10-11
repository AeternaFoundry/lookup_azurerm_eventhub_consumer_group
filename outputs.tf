output "eventhub_consumer_group_lookup_id" {
  description = "Map of id values across all eventhub_consumer_group_lookup, keyed the same as var.eventhub_consumer_group_lookup"
  value       = { for k, v in data.azurerm_eventhub_consumer_group.eventhub_consumer_group_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "eventhub_consumer_group_lookup_eventhub_name" {
  description = "Map of eventhub_name values across all eventhub_consumer_group_lookup, keyed the same as var.eventhub_consumer_group_lookup"
  value       = { for k, v in data.azurerm_eventhub_consumer_group.eventhub_consumer_group_lookup : k => v.eventhub_name if v.eventhub_name != null && length(v.eventhub_name) > 0 }
}
output "eventhub_consumer_group_lookup_name" {
  description = "Map of name values across all eventhub_consumer_group_lookup, keyed the same as var.eventhub_consumer_group_lookup"
  value       = { for k, v in data.azurerm_eventhub_consumer_group.eventhub_consumer_group_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "eventhub_consumer_group_lookup_namespace_name" {
  description = "Map of namespace_name values across all eventhub_consumer_group_lookup, keyed the same as var.eventhub_consumer_group_lookup"
  value       = { for k, v in data.azurerm_eventhub_consumer_group.eventhub_consumer_group_lookup : k => v.namespace_name if v.namespace_name != null && length(v.namespace_name) > 0 }
}
output "eventhub_consumer_group_lookup_resource_group_name" {
  description = "Map of resource_group_name values across all eventhub_consumer_group_lookup, keyed the same as var.eventhub_consumer_group_lookup"
  value       = { for k, v in data.azurerm_eventhub_consumer_group.eventhub_consumer_group_lookup : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "eventhub_consumer_group_lookup_user_metadata" {
  description = "Map of user_metadata values across all eventhub_consumer_group_lookup, keyed the same as var.eventhub_consumer_group_lookup"
  value       = { for k, v in data.azurerm_eventhub_consumer_group.eventhub_consumer_group_lookup : k => v.user_metadata if v.user_metadata != null && length(v.user_metadata) > 0 }
}

