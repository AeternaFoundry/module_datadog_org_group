output "org_groups_id" {
  description = "Map of id values across all org_groups, keyed the same as var.org_groups except keys with no id are omitted"
  value       = { for k, v in datadog_org_group.org_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "org_groups_name" {
  description = "Map of name values across all org_groups, keyed the same as var.org_groups except keys with no name are omitted"
  value       = { for k, v in datadog_org_group.org_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "org_groups_owner_org_site" {
  description = "Map of owner_org_site values across all org_groups, keyed the same as var.org_groups except keys with no owner_org_site are omitted"
  value       = { for k, v in datadog_org_group.org_groups : k => v.owner_org_site if v.owner_org_site != null && length(v.owner_org_site) > 0 }
}
output "org_groups_owner_org_uuid" {
  description = "Map of owner_org_uuid values across all org_groups, keyed the same as var.org_groups except keys with no owner_org_uuid are omitted"
  value       = { for k, v in datadog_org_group.org_groups : k => v.owner_org_uuid if v.owner_org_uuid != null && length(v.owner_org_uuid) > 0 }
}

