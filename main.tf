terraform {
  required_providers {
    snowflake = {
      source = "snowflakedb/snowflake"
    }
  }
}

provider "snowflake" {
  organization_name = var.SNOWFLAKE_ORGANIZATION_NAME
  account_name      = var.SNOWFLAKE_ACCOUNT_NAME
  user              = var.SNOWFLAKE_USER
  authenticator     = "PROGRAMMATIC_ACCESS_TOKEN"
  token             = var.token
}

variable "SNOWFLAKE_ORGANIZATION_NAME" {

}
variable "SNOWFLAKE_ACCOUNT_NAME" {}
variable "SNOWFLAKE_USER" {}

variable "token" {
  type      = string
  sensitive = true
}

resource "snowflake_database" "demo_db1" {
  name    = "DEMO_DB1"
  comment = "Database for Snowflake Terraform demo"
}