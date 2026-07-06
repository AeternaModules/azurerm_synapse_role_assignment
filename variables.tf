variable "synapse_role_assignments" {
  description = <<EOT
Map of synapse_role_assignments, attributes below
Required:
    - principal_id
    - role_name
Optional:
    - principal_type
    - synapse_spark_pool_id
    - synapse_workspace_id
EOT

  type = map(object({
    principal_id          = string
    role_name             = string
    principal_type        = optional(string)
    synapse_spark_pool_id = optional(string)
    synapse_workspace_id  = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.synapse_role_assignments : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.principal_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_role_assignments : (
        v.principal_type == null || (contains(["User", "Group", "ServicePrincipal"], v.principal_type))
      )
    ])
    error_message = "must be one of: User, Group, ServicePrincipal"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_role_assignments : (
        contains(["Apache Spark Administrator", "Synapse Administrator", "Synapse Artifact Publisher", "Synapse Artifact User", "Synapse Compute Operator", "Synapse Contributor", "Synapse Credential User", "Synapse Linked Data Manager", "Synapse Monitoring Operator", "Synapse SQL Administrator", "Synapse User"], v.role_name)
      )
    ])
    error_message = "must be one of: Apache Spark Administrator, Synapse Administrator, Synapse Artifact Publisher, Synapse Artifact User, Synapse Compute Operator, Synapse Contributor, Synapse Credential User, Synapse Linked Data Manager, Synapse Monitoring Operator, Synapse SQL Administrator, Synapse User"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_synapse_role_assignment's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] !ok
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] err != nil
  # path: synapse_spark_pool_id
  #   source:    [from validate.SparkPoolID] !ok
  # path: synapse_spark_pool_id
  #   source:    [from validate.SparkPoolID] err != nil
}

