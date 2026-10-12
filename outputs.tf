output "security_labels_id" {
  description = "Map of id values across all security_labels, keyed the same as var.security_labels except keys with no id are omitted"
  value       = { for k, v in postgresql_security_label.security_labels : k => v.id if v.id != null && length(v.id) > 0 }
}
output "security_labels_label" {
  description = "Map of label values across all security_labels, keyed the same as var.security_labels except keys with no label are omitted"
  value       = { for k, v in postgresql_security_label.security_labels : k => v.label if v.label != null && length(v.label) > 0 }
}
output "security_labels_label_provider" {
  description = "Map of label_provider values across all security_labels, keyed the same as var.security_labels except keys with no label_provider are omitted"
  value       = { for k, v in postgresql_security_label.security_labels : k => v.label_provider if v.label_provider != null && length(v.label_provider) > 0 }
}
output "security_labels_object_name" {
  description = "Map of object_name values across all security_labels, keyed the same as var.security_labels except keys with no object_name are omitted"
  value       = { for k, v in postgresql_security_label.security_labels : k => v.object_name if v.object_name != null && length(v.object_name) > 0 }
}
output "security_labels_object_type" {
  description = "Map of object_type values across all security_labels, keyed the same as var.security_labels except keys with no object_type are omitted"
  value       = { for k, v in postgresql_security_label.security_labels : k => v.object_type if v.object_type != null && length(v.object_type) > 0 }
}

