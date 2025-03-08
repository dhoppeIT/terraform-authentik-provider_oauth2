terraform {
  required_providers {
    authentik = {
      source  = "goauthentik/authentik"
      version = "~> 2024.12"
    }

    # tflint-ignore: terraform_unused_required_providers
    random = {
      source  = "hashicorp/random"
      version = "~> 3.7"
    }
  }

  required_version = ">= 1.0"
}
