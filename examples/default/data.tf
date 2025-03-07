data "authentik_flow" "authorization_flow" {
  slug = "default-provider-authorization-implicit-consent"
}

data "authentik_flow" "invalidation_flow" {
  slug = "default-provider-invalidation-flow"
}
