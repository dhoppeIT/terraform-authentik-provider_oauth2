# terraform-authentik-provider_oauth2

Terraform module to manage the following Twingate resources:

* authentik_provider_oauth2

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "authentik_provider_oauth2" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-authentik-provider-oauth2/local"
  version = "1.1.0"

  name               = "example-provider-oauth2"
  authorization_flow = "8dd2dda7-5624-4f42-8984-04139ce50236"
  invalidation_flow  = "742a8bb5-3981-44ab-949f-dada3e92daf9"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_authentik"></a> [authentik](#requirement\_authentik) | ~> 2025.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.7 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_authentik"></a> [authentik](#provider\_authentik) | ~> 2025.0 |
| <a name="provider_random"></a> [random](#provider\_random) | ~> 3.7 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [authentik_provider_oauth2.this](https://registry.terraform.io/providers/goauthentik/authentik/latest/docs/resources/provider_oauth2) | resource |
| [random_string.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_code_validity"></a> [access\_code\_validity](#input\_access\_code\_validity) | How long access codes are valid for | `string` | `"minutes=1"` | no |
| <a name="input_access_token_validity"></a> [access\_token\_validity](#input\_access\_token\_validity) | How long access tokens are valid for | `string` | `"minutes=10"` | no |
| <a name="input_allowed_redirect_uris"></a> [allowed\_redirect\_uris](#input\_allowed\_redirect\_uris) | The list of valid redirect URIs after a successful authorization flow | `list(map(string))` | `null` | no |
| <a name="input_authentication_flow"></a> [authentication\_flow](#input\_authentication\_flow) | Flow used for authentication when the associated application is accessed by an un-authenticated user | `string` | `null` | no |
| <a name="input_authorization_flow"></a> [authorization\_flow](#input\_authorization\_flow) | Flow used when authorizing this provider | `string` | n/a | yes |
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | Client ID of the provider | `string` | `null` | no |
| <a name="input_client_secret"></a> [client\_secret](#input\_client\_secret) | Client secret of the provider | `string` | `null` | no |
| <a name="input_client_type"></a> [client\_type](#input\_client\_type) | Client type of the provider | `string` | `"confidential"` | no |
| <a name="input_encryption_key"></a> [encryption\_key](#input\_encryption\_key) | Key used to encrypt the tokens | `string` | `null` | no |
| <a name="input_include_claims_in_id_token"></a> [include\_claims\_in\_id\_token](#input\_include\_claims\_in\_id\_token) | Include User claims from scopes in the id\_token, for applications that don't access the userinfo endpoint | `bool` | `true` | no |
| <a name="input_invalidation_flow"></a> [invalidation\_flow](#input\_invalidation\_flow) | Flow used ending the session from a provider | `string` | n/a | yes |
| <a name="input_issuer_mode"></a> [issuer\_mode](#input\_issuer\_mode) | Configure how the issuer field of the ID Token should be filled | `string` | `"per_provider"` | no |
| <a name="input_jwt_federation_providers"></a> [jwt\_federation\_providers](#input\_jwt\_federation\_providers) | JWTs issued by any of the configured providers can be used to authenticate on behalf of this provider | `list(number)` | `[]` | no |
| <a name="input_jwt_federation_sources"></a> [jwt\_federation\_sources](#input\_jwt\_federation\_sources) | JWTs issued by keys configured in any of the selected sources can be used to authenticate on behalf of this provider | `list(string)` | `[]` | no |
| <a name="input_logout_method"></a> [logout\_method](#input\_logout\_method) | Logout method of the provider | `string` | `"backchannel"` | no |
| <a name="input_logout_uri"></a> [logout\_uri](#input\_logout\_uri) | URI to send logout notifications to when users log out | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the provider | `string` | n/a | yes |
| <a name="input_property_mappings"></a> [property\_mappings](#input\_property\_mappings) | List of properties to pass information to external applications | `list(string)` | `[]` | no |
| <a name="input_refresh_token_threshold"></a> [refresh\_token\_threshold](#input\_refresh\_token\_threshold) | Renew refresh token whithin this threshold | `string` | `"seconds=0"` | no |
| <a name="input_refresh_token_validity"></a> [refresh\_token\_validity](#input\_refresh\_token\_validity) | How long refresh tokens are valid for | `string` | `"days=30"` | no |
| <a name="input_signing_key"></a> [signing\_key](#input\_signing\_key) | Key used to sign the tokens | `string` | `null` | no |
| <a name="input_sub_mode"></a> [sub\_mode](#input\_sub\_mode) | Configure what data should be used as unique User identifier | `string` | `"hashed_user_id"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
