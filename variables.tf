variable "authorization_flow" {
  type        = string
  description = "Flow used when authorizing this provider"
}

variable "client_id" {
  type        = string
  default     = null
  description = "Client ID of the provider"
}

variable "invalidation_flow" {
  type        = string
  description = "Flow used ending the session from a provider"
}

variable "name" {
  type        = string
  description = "Name of the provider"
}

variable "access_code_validity" {
  type        = string
  default     = "minutes=1"
  description = "How long access codes are valid for"
}

variable "access_token_validity" {
  type        = string
  default     = "minutes=10"
  description = "How long access tokens are valid for"
}

variable "allowed_redirect_uris" {
  type        = list(map(string))
  default     = null
  description = "The list of valid redirect URIs after a successful authorization flow"
}

variable "authentication_flow" {
  type        = string
  default     = null
  description = "Flow used for authentication when the associated application is accessed by an un-authenticated user"
}

variable "client_secret" {
  type        = string
  sensitive   = true
  default     = null
  description = "Client secret of the provider"
}

variable "client_type" {
  type        = string
  default     = "confidential"
  description = "Client type of the provider"

  validation {
    condition     = contains(["confidential", "public"], var.client_type)
    error_message = "Valid values are confidential, public"
  }
}

variable "encryption_key" {
  type        = string
  default     = null
  description = "Key used to encrypt the tokens"
}

variable "include_claims_in_id_token" {
  type        = bool
  default     = true
  description = "Include User claims from scopes in the id_token, for applications that don't access the userinfo endpoint"
}

variable "issuer_mode" {
  type        = string
  default     = "per_provider"
  description = "Configure how the issuer field of the ID Token should be filled"

  validation {
    condition     = contains(["global", "per_provider"], var.issuer_mode)
    error_message = "Valid values are global, per_provider"
  }
}

variable "jwt_federation_providers" {
  type        = list(number)
  default     = []
  description = "JWTs issued by any of the configured providers can be used to authenticate on behalf of this provider"
}

variable "jwt_federation_sources" {
  type        = list(string)
  default     = []
  description = "JWTs issued by keys configured in any of the selected sources can be used to authenticate on behalf of this provider"
}

variable "property_mappings" {
  type        = list(string)
  default     = []
  description = "List of properties to pass information to external applications"
}

variable "refresh_token_validity" {
  type        = string
  default     = "days=30"
  description = "How long refresh tokens are valid for"
}

variable "signing_key" {
  type        = string
  default     = null
  description = "Key used to sign the tokens"
}

variable "sub_mode" {
  type        = string
  default     = "hashed_user_id"
  description = "Configure what data should be used as unique User identifier"

  validation {
    condition     = contains(["hashed_user_id", "user_id", "user_uuid", "user_username", "user_email", "user_upn"], var.sub_mode)
    error_message = "Valid values are hashed_user_id, user_id, user_uuid, user_username, user_email, user_upn"
  }
}
