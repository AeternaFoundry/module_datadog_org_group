resource "datadog_org_group" "org_groups" {
  for_each = var.org_groups

  name = each.value.name
}

