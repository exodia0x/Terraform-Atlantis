##########################
# Providers
##########################

variable "tenant_id" {
  description = "ID of tenant where this spoke reside in."
  type        = string
}

variable "subscription_id" {
  description = "ID of subscription where this spoke reside in."
  type        = string
}

variable "client_id" {
  description = "ID of service principal used for provisioning resources in this spoke."
  type        = string
  default     = null
}

variable "client_secret" {
  description = "Password of service principal used for provisioning resources in this spoke."
  type        = string
  default     = null
}

variable "use_oidc" {
  description = "Specify whether to use OIDC."
  type        = bool
  default     = false
}

variable "oidc_request_token" {
  description = "Client ID of the service principal"
  type        = string
  default     = null
  ephemeral   = true
}

variable "oidc_request_url" {
  description = "Client ID of the service principal"
  type        = string
  default     = null
  ephemeral   = true
}

# #
# # Hub
# #

# variable "hub_tenant_id" {
#   description = "ID of tenant where the hub reside in."
#   type        = string
#   default     = ""
# }

# variable "hub_subscription_id" {
#   description = "ID of subscription where the hub reside in."
#   type        = string
#   default     = ""
# }

# variable "hub_client_id" {
#   description = "ID of service principal used for provisioning resources in the hub."
#   type        = string
#   default     = null
# }

# variable "hub_client_secret" {
#   description = "Password of service principal used for provisioning resources in the hub."
#   type        = string
#   default     = null
# }

# #
# # Hub DNS
# #

# variable "hub_dns_tenant_id" {
#   description = "ID of tenant where the dns (`az.intra.ais`, `cloud.ais.th`, `cdc.ais.th`) reside in."
#   type        = string
#   default     = ""
# }

# variable "hub_dns_subscription_id" {
#   description = "ID of subscription where the dns (`az.intra.ais`, `cloud.ais.th`, `cdc.ais.th`) reside in."
#   type        = string
#   default     = ""
# }

# variable "hub_dns_client_id" {
#   description = "ID of service principal used for provisioning resources in the dns (`az.intra.ais`, `cloud.ais.th`, `cdc.ais.th`)."
#   type        = string
#   default     = null
# }

# variable "hub_dns_client_secret" {
#   description = "Password of service principal used for provisioning resources in the dns (`az.intra.ais`, `cloud.ais.th`, `cdc.ais.th`)."
#   type        = string
#   default     = null
# }