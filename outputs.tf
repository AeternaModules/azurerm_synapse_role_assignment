output "synapse_role_assignments" {
  description = "All synapse_role_assignment resources"
  value       = azurerm_synapse_role_assignment.synapse_role_assignments
}
output "synapse_role_assignments_principal_id" {
  description = "List of principal_id values across all synapse_role_assignments"
  value       = [for k, v in azurerm_synapse_role_assignment.synapse_role_assignments : v.principal_id]
}
output "synapse_role_assignments_principal_type" {
  description = "List of principal_type values across all synapse_role_assignments"
  value       = [for k, v in azurerm_synapse_role_assignment.synapse_role_assignments : v.principal_type]
}
output "synapse_role_assignments_role_name" {
  description = "List of role_name values across all synapse_role_assignments"
  value       = [for k, v in azurerm_synapse_role_assignment.synapse_role_assignments : v.role_name]
}
output "synapse_role_assignments_synapse_spark_pool_id" {
  description = "List of synapse_spark_pool_id values across all synapse_role_assignments"
  value       = [for k, v in azurerm_synapse_role_assignment.synapse_role_assignments : v.synapse_spark_pool_id]
}
output "synapse_role_assignments_synapse_workspace_id" {
  description = "List of synapse_workspace_id values across all synapse_role_assignments"
  value       = [for k, v in azurerm_synapse_role_assignment.synapse_role_assignments : v.synapse_workspace_id]
}

