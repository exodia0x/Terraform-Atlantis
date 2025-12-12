locals {
  common_tags = {
    "Operation.Department"     = var.operation_department
    "Operation.Section"        = var.operation_section
    "Operation.Unit"           = var.operation_unit
    "Operation.Name"           = var.operation_name
    "Developer.Department"     = var.developer_department
    "Developer.Section"        = var.developer_section
    "Developer.Unit"           = var.developer_unit
    "Developer.Name"           = var.developer_name
    "BusinessOwner.Department" = var.businessOwner_department
    "BusinessOwner.Section"    = var.businessOwner_section
    "BusinessOwner.Unit"       = var.businessOwner_unit
    "BusinessOwner.Name"       = var.businessOwner_name
    "Environment"              = var.environment
    "ClusterNumber"            = var.cluster_number
    "CostCenter"               = var.cost_center
    "Region"                   = var.region
    "SystemName"               = var.system_name
    "CommercialName"           = var.commercial_name
    "DataClassification"       = var.data_classification
    "BusinessCriticality"      = var.business_criticality
  }
  common_tags_15 = {
    SystemName                 = var.system_name
    CommercialName             = var.commercial_name
    DataClassification         = var.data_classification
    BusinessCriticality        = var.business_criticality
    CostCenter                 = var.cost_center
    Environment                = var.environment
    ClusterNumber              = var.cluster_number
    Region                     = var.region
    "BusinessOwner.Department" = var.businessOwner_department
    "BusinessOwner.Name"       = var.businessOwner_name
    "Developer.Department"     = var.developer_department
    "Developer.Name"           = var.developer_name
    "Operation.Department"     = var.operation_department
    "Operation.Name"           = var.operation_name
  }
}