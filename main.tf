terraform {
  required_providers {
    snowflake = {
      source = "snowflakedb/snowflake"
    }
  }

  backend "remote" {
    organization = "Satya_Tiger_Org"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "snowflake" {
}

resource "snowflake_warehouse" "wh_ref_us_0003" {
  name                 = "WH_REF_US-0003"
  warehouse_size       = "SMALL"
  auto_suspend         = 3
  auto_resume          = true
  initially_suspended  = true
}