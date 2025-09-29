terraform {
  required_providers {
    snowflake = {
      source = "snowflakedb/snowflake"
    }
  }
}

provider "snowflake" {
  organization_name = var.SNOWFLAKE_ORG_NAME # required if not using profile. Can also be set via SNOWFLAKE_ORGANIZATION_NAME env var
  account_name      = var.SNOWFLAKE_ACC_NAME # required if not using profile. Can also be set via SNOWFLAKE_ACCOUNT_NAME env var
  user              = var.SNOWFLAKE_USER     # required if not using profile or token. Can also be set via SNOWFLAKE_USER env var
  password          = var.SNOWFLAKE_PASSWORD
}

resource "snowflake_database" "demo_db1" {
  name    = "DEMO_DB1"
  comment = "Database for Snowflake Terraform demo"
}