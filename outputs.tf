output "folder_permissions_id" {
  description = "Map of id values across all folder_permissions, keyed the same as var.folder_permissions except keys with no id are omitted"
  value       = { for k, v in grafana_folder_permission.folder_permissions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "folder_permissions_folder_uid" {
  description = "Map of folder_uid values across all folder_permissions, keyed the same as var.folder_permissions except keys with no folder_uid are omitted"
  value       = { for k, v in grafana_folder_permission.folder_permissions : k => v.folder_uid if v.folder_uid != null && length(v.folder_uid) > 0 }
}
output "folder_permissions_org_id" {
  description = "Map of org_id values across all folder_permissions, keyed the same as var.folder_permissions except keys with no org_id are omitted"
  value       = { for k, v in grafana_folder_permission.folder_permissions : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "folder_permissions_permissions" {
  description = "Map of permissions values across all folder_permissions, keyed the same as var.folder_permissions except keys with no permissions are omitted"
  value       = { for k, v in grafana_folder_permission.folder_permissions : k => v.permissions if v.permissions != null && length(v.permissions) > 0 }
}

