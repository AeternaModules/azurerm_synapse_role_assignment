output "synapse_role_assignments_id" {
  description = "Map of id values across all synapse_role_assignments, keyed the same as var.synapse_role_assignments"
  value       = { for k, v in azurerm_synapse_role_assignment.synapse_role_assignments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "synapse_role_assignments_principal_id" {
  description = "Map of principal_id values across all synapse_role_assignments, keyed the same as var.synapse_role_assignments"
  value       = { for k, v in azurerm_synapse_role_assignment.synapse_role_assignments : k => v.principal_id if v.principal_id != null && length(v.principal_id) > 0 }
}
output "synapse_role_assignments_principal_type" {
  description = "Map of principal_type values across all synapse_role_assignments, keyed the same as var.synapse_role_assignments"
  value       = { for k, v in azurerm_synapse_role_assignment.synapse_role_assignments : k => v.principal_type if v.principal_type != null && length(v.principal_type) > 0 }
}
output "synapse_role_assignments_role_name" {
  description = "Map of role_name values across all synapse_role_assignments, keyed the same as var.synapse_role_assignments"
  value       = { for k, v in azurerm_synapse_role_assignment.synapse_role_assignments : k => v.role_name if v.role_name != null && length(v.role_name) > 0 }
}
output "synapse_role_assignments_synapse_spark_pool_id" {
  description = "Map of synapse_spark_pool_id values across all synapse_role_assignments, keyed the same as var.synapse_role_assignments"
  value       = { for k, v in azurerm_synapse_role_assignment.synapse_role_assignments : k => v.synapse_spark_pool_id if v.synapse_spark_pool_id != null && length(v.synapse_spark_pool_id) > 0 }
}
output "synapse_role_assignments_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_role_assignments, keyed the same as var.synapse_role_assignments"
  value       = { for k, v in azurerm_synapse_role_assignment.synapse_role_assignments : k => v.synapse_workspace_id if v.synapse_workspace_id != null && length(v.synapse_workspace_id) > 0 }
}

