variable "folder_permissions" {
  description = <<EOT
Map of folder_permissions, attributes below
Required:
    - folder_uid
Optional:
    - org_id
    - permissions (block):
        - permission (required)
        - role (optional)
        - team_id (optional)
        - user_id (optional)
EOT

  type = map(object({
    folder_uid = string
    org_id     = optional(string)
    permissions = optional(list(object({
      permission = string
      role       = optional(string)
      team_id    = optional(string)
      user_id    = optional(string)
    })))
  }))
}

