output "security_labels_id" {
  description = "Map of id values across all security_labels, keyed the same as var.security_labels"
  value       = { for k, v in postgresql_security_label.security_labels : k => v.id }
}
output "security_labels_label" {
  description = "Map of label values across all security_labels, keyed the same as var.security_labels"
  value       = { for k, v in postgresql_security_label.security_labels : k => v.label }
}
output "security_labels_label_provider" {
  description = "Map of label_provider values across all security_labels, keyed the same as var.security_labels"
  value       = { for k, v in postgresql_security_label.security_labels : k => v.label_provider }
}
output "security_labels_object_name" {
  description = "Map of object_name values across all security_labels, keyed the same as var.security_labels"
  value       = { for k, v in postgresql_security_label.security_labels : k => v.object_name }
}
output "security_labels_object_type" {
  description = "Map of object_type values across all security_labels, keyed the same as var.security_labels"
  value       = { for k, v in postgresql_security_label.security_labels : k => v.object_type }
}

