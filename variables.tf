variable "org_groups" {
  description = <<EOT
Map of org_groups, attributes below
Required:
    - name
EOT

  type = map(object({
    name = string
  }))
}

