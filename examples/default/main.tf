module "authentik_provider_oauth2" {
  source = "../../"

  name               = "example-provider-oauth2"
  client_id          = "vke8qUguq8J8eCXJOR5UuOWbJfuob1PoGOH9oo0n"
  authorization_flow = data.authentik_flow.authorization_flow.id
  invalidation_flow  = data.authentik_flow.invalidation_flow.id
}
