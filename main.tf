resource "vault_pki_secret_backend_config_ca" "pki_secret_backend_config_cas" {
  for_each = var.pki_secret_backend_config_cas

  backend    = each.value.backend
  pem_bundle = each.value.pem_bundle
  namespace  = each.value.namespace
}

