terraform {
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
    }
  }
}

provider "snowflake" {
  organization_name = var.organization_name
  account_name      = var.account_name
  host              = var.host
  user              = var.user
  password          = var.password
  role              = var.role
  warehouse         = var.warehouse
}
