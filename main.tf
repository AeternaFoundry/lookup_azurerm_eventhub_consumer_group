data "azurerm_eventhub_consumer_group" "eventhub_consumer_group_lookup" {
  for_each = var.eventhub_consumer_group_lookup

  eventhub_name       = each.value.eventhub_name
  name                = each.value.name
  namespace_name      = each.value.namespace_name
  resource_group_name = each.value.resource_group_name
}

