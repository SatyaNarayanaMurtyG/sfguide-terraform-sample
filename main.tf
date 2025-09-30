terraform {
  required_providers {
    snowflake = {
      source = "snowflakedb/snowflake"
    }
  }
}

provider "snowflake" {
  organization_name = SNOWFLAKE_ORGANIZATION_NAME
  account_name      = SNOWFLAKE_ACCOUNT_NAME
  user              = SNOWFLAKE_USER
  authenticator     = "PROGRAMMATIC_ACCESS_TOKEN"
  token             = var.token
}

variable "token" {
  type      = string
  sensitive = true
}

resource "snowflake_database" "demo_db1" {
  name    = "DEMO_DB1"
  comment = "Database for Snowflake Terraform demo"
}