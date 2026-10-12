variable "security_labels" {
  description = <<EOT
Map of security_labels, attributes below
Required:
    - label
    - label_provider
    - object_name
    - object_type
EOT

  type = map(object({
    label          = string
    label_provider = string
    object_name    = string
    object_type    = string
  }))
}

