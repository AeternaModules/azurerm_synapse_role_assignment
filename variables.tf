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
}

