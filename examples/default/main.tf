module "authentik_provider_oauth2" {
  source = "../../"

  name               = "example-provider-oauth2"
  authorization_flow = data.authentik_flow.authorization_flow.id
  invalidation_flow  = data.authentik_flow.invalidation_flow.id
}
