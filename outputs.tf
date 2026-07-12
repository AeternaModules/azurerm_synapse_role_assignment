output "synapse_role_assignments_principal_id" {
  description = "Map of principal_id values across all synapse_role_assignments, keyed the same as var.synapse_role_assignments"
  value       = { for k, v in azurerm_synapse_role_assignment.synapse_role_assignments : k => v.principal_id }
}
output "synapse_role_assignments_principal_type" {
  description = "Map of principal_type values across all synapse_role_assignments, keyed the same as var.synapse_role_assignments"
  value       = { for k, v in azurerm_synapse_role_assignment.synapse_role_assignments : k => v.principal_type }
}
output "synapse_role_assignments_role_name" {
  description = "Map of role_name values across all synapse_role_assignments, keyed the same as var.synapse_role_assignments"
  value       = { for k, v in azurerm_synapse_role_assignment.synapse_role_assignments : k => v.role_name }
}
output "synapse_role_assignments_synapse_spark_pool_id" {
  description = "Map of synapse_spark_pool_id values across all synapse_role_assignments, keyed the same as var.synapse_role_assignments"
  value       = { for k, v in azurerm_synapse_role_assignment.synapse_role_assignments : k => v.synapse_spark_pool_id }
}
output "synapse_role_assignments_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_role_assignments, keyed the same as var.synapse_role_assignments"
  value       = { for k, v in azurerm_synapse_role_assignment.synapse_role_assignments : k => v.synapse_workspace_id }
}

