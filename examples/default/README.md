# Example

The configuration in this directory creates:

* authentik_provider_oauth2

## Usage

To run this example, you need to execute the following commands:

```shell
terraform init
terraform plan
terraform apply
```

:warning: This example may create resources that cost money. Execute the
command `terraform destroy` when the resources are no longer needed.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_authentik"></a> [authentik](#requirement\_authentik) | ~> 2024.12 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_authentik"></a> [authentik](#provider\_authentik) | ~> 2024.12 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_authentik_provider_oauth2"></a> [authentik\_provider\_oauth2](#module\_authentik\_provider\_oauth2) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [authentik_flow.authorization_flow](https://registry.terraform.io/providers/goauthentik/authentik/latest/docs/data-sources/flow) | data source |
| [authentik_flow.invalidation_flow](https://registry.terraform.io/providers/goauthentik/authentik/latest/docs/data-sources/flow) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_headers"></a> [headers](#input\_headers) | Optional HTTP headers sent with every request | `map(string)` | `{}` | no |
| <a name="input_insecure"></a> [insecure](#input\_insecure) | Whether to skip TLS verification, can optionally be passed as AUTHENTIK\_INSECURE environmental variable | `bool` | `false` | no |
| <a name="input_token"></a> [token](#input\_token) | The authentik API token, can optionally be passed as AUTHENTIK\_TOKEN environmental variable | `string` | n/a | yes |
| <a name="input_url"></a> [url](#input\_url) | The authentik API endpoint, can optionally be passed as AUTHENTIK\_URL environmental variable | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource |
<!-- END_TF_DOCS -->
