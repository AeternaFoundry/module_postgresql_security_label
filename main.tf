resource "postgresql_security_label" "security_labels" {
  for_each = var.security_labels

  label          = each.value.label
  label_provider = each.value.label_provider
  object_name    = each.value.object_name
  object_type    = each.value.object_type
}

