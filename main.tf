resource "grafana_folder_permission" "folder_permissions" {
  for_each = var.folder_permissions

  folder_uid = each.value.folder_uid
  org_id     = each.value.org_id

  dynamic "permissions" {
    for_each = each.value.permissions != null ? each.value.permissions : []
    content {
      permission = permissions.value.permission
      role       = permissions.value.role
      team_id    = permissions.value.team_id
      user_id    = permissions.value.user_id
    }
  }
}

