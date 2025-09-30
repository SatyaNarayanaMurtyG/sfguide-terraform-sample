terraform {
  required_providers {
    snowflake = {
      source = "snowflakedb/snowflake"
    }
  }
}

provider "snowflake" {
}

resource "snowflake_database" "demo_db1" {
  name    = "DEMO_DB1"
  comment = "Database for Snowflake Terraform demo"
}