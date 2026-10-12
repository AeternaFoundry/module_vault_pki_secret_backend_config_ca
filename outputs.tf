output "pki_secret_backend_config_cas_id" {
  description = "Map of id values across all pki_secret_backend_config_cas, keyed the same as var.pki_secret_backend_config_cas except keys with no id are omitted"
  value       = { for k, v in vault_pki_secret_backend_config_ca.pki_secret_backend_config_cas : k => v.id if v.id != null && length(v.id) > 0 }
}
output "pki_secret_backend_config_cas_backend" {
  description = "Map of backend values across all pki_secret_backend_config_cas, keyed the same as var.pki_secret_backend_config_cas except keys with no backend are omitted"
  value       = { for k, v in vault_pki_secret_backend_config_ca.pki_secret_backend_config_cas : k => v.backend if v.backend != null && length(v.backend) > 0 }
}
output "pki_secret_backend_config_cas_namespace" {
  description = "Map of namespace values across all pki_secret_backend_config_cas, keyed the same as var.pki_secret_backend_config_cas except keys with no namespace are omitted"
  value       = { for k, v in vault_pki_secret_backend_config_ca.pki_secret_backend_config_cas : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "pki_secret_backend_config_cas_pem_bundle" {
  description = "Map of pem_bundle values across all pki_secret_backend_config_cas, keyed the same as var.pki_secret_backend_config_cas except keys with no pem_bundle are omitted"
  value       = { for k, v in vault_pki_secret_backend_config_ca.pki_secret_backend_config_cas : k => v.pem_bundle if v.pem_bundle != null && length(v.pem_bundle) > 0 }
  sensitive   = true
}

