variable "organization_name" {
  type        = string
  description = "Your Snowflake organization name"
}

variable "account_name" {
  type        = string
  description = "Snowflake account name"
}

variable "host" {
  type        = string
  description = "Snowflake hostname (e.g., myacct.region.snowflakecomputing.com)"
}

variable "role" {
  type        = string
  description = "Role to use in Snowflake"
  default     = "ACCOUNTADMIN"
}

variable "warehouse" {
  type        = string
  description = "Warehouse to use"
}

variable "user" {
  type        = string
  description = "user to use"
}

variable "password" {
  type        = string
  description = "password to use"
}