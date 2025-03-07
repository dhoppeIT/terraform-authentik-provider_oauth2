resource "authentik_provider_oauth2" "this" {
  authorization_flow = var.authorization_flow
  client_id          = var.client_id
  invalidation_flow  = var.invalidation_flow
  name               = var.name

  access_code_validity       = var.access_code_validity
  access_token_validity      = var.access_token_validity
  allowed_redirect_uris      = var.allowed_redirect_uris
  authentication_flow        = var.authentication_flow
  client_secret              = var.client_secret
  client_type                = var.client_type
  encryption_key             = var.encryption_key
  include_claims_in_id_token = var.include_claims_in_id_token
  issuer_mode                = var.issuer_mode
  jwt_federation_providers   = var.jwt_federation_providers
  jwt_federation_sources     = var.jwt_federation_sources
  property_mappings          = var.property_mappings
  refresh_token_validity     = var.refresh_token_validity
  signing_key                = var.signing_key
  sub_mode                   = var.sub_mode
}
