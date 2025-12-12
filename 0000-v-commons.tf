##########################
# Project Prefix
##########################

variable "project_prefix" {
  description = "Prefix of the project"
  type        = string
}

##########################
# Hub Private DNS
##########################

# variable "hub_privatedns_rg" {
#   description = "Resource group name of Private DNS Zone at Hub."
#   type = object({
#     dev = string
#     prd = string
#   })
#   default = {
#     dev = "rg-hubdnsforwarder-az-asse-dev-001"
#     prd = "rg-hubdnsforwarder-az-asse-prd-001"
#   }
# }

##########################
# Hub Firewall IP
##########################

# variable "firewall_ip" {
#   description = "Private IP address of hub firewall to set default route to."
#   type = object({
#     dev = string
#     prd = string
#   })
#   default = {
#     dev = "10.84.1.4"
#     prd = "10.85.1.4"
#   }
# }

##########################
# Tagging
##########################

variable "environment" {
  description = "Environment of the project ==> dev|sit|uat|prd"
  type        = string
  default     = "dev"

  validation {
    condition     = can(regex("^(dev|sit|uat|prd)$", var.environment))
    error_message = "The environment value must be in 3-charater format as follows => dev, sit, uat, prd."
  }
}

variable "region" {
  description = "Name of Azure Regions"
  type        = string
  default     = "southeastasia"
}

variable "system_name" {
  description = "System name of the project"
  type        = string
  default     = "Dummy System"
}

variable "commercial_name" {
  description = "Comercial name of the project"
  type        = string
  default     = "Dummy Commercial Name"
}

variable "data_classification" {
  description = "Cost Center Number"
  type        = string
  default     = "Public"

  validation {
    condition     = can(regex("^(Highly Confidential|Restricted|Internal|Public)$", var.data_classification))
    error_message = "The data_classification value must be as follows => Highly Confidential, Restricted, Internal, Public."
  }
}

variable "business_criticality" {
  description = "How critical this system contribute to business"
  type        = string
  default     = "Low"

  validation {
    condition     = can(regex("^(High|Medium|Low)$", var.business_criticality))
    error_message = "The data_classification value must beexit as follows => High, Medium, Low."
  }
}

variable "cost_center" {
  description = "Cost Center Number"
  type        = string
  default     = "00000"
}

variable "cluster_number" {
  description = "Number of cluster"
  type        = number
  default     = 1
}

variable "businessOwner_department" {
  description = "Department of business owner"
  type        = string
  default     = "TBA"
}

variable "businessOwner_section" {
  description = "Section of business owner"
  type        = string
  default     = "N/A"
}

variable "businessOwner_unit" {
  description = "Unit of business owner"
  type        = string
  default     = "TBA"
}

variable "businessOwner_name" {
  description = "Name of business owner"
  type        = string
  default     = "TBA"
}

variable "developer_department" {
  description = "Department of developer owner"
  type        = string
  default     = "TBA"
}

variable "developer_section" {
  description = "Section of developer owner"
  type        = string
  default     = "N/A"
}

variable "developer_unit" {
  description = "Unit of developer owner"
  type        = string
  default     = "TBA"
}

variable "developer_name" {
  description = "Name of developer owner"
  type        = string
  default     = "TBA"
}

variable "operation_department" {
  description = "Department of operation owner"
  type        = string
  default     = "TBA"
}

variable "operation_section" {
  description = "Section of operation owner"
  type        = string
  default     = "N/A"
}

variable "operation_unit" {
  description = "Unit of operation owner"
  type        = string
  default     = "TBA"
}

variable "operation_name" {
  description = "Name of operation owner"
  type        = string
  default     = "TBA"
}