resource "azurerm_synapse_role_assignment" "synapse_role_assignments" {
  for_each = var.synapse_role_assignments

  principal_id          = each.value.principal_id
  role_name             = each.value.role_name
  principal_type        = each.value.principal_type
  synapse_spark_pool_id = each.value.synapse_spark_pool_id
  synapse_workspace_id  = each.value.synapse_workspace_id
}

