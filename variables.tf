variable "pki_secret_backend_config_cas" {
  description = <<EOT
Map of pki_secret_backend_config_cas, attributes below
Required:
    - backend
    - pem_bundle
Optional:
    - namespace
EOT

  type = map(object({
    backend    = string
    pem_bundle = string
    namespace  = optional(string)
  }))
}

