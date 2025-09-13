# Define variables for our iac


# ProjectID
variable "project_id" {
  type = string
}


# VPC Name
variable "vpc_name" {
  type = string
}


# Subnets for our VPC
variable "subnets" {
  description = "The list of subnets to be created"
  type = list(object({
    name = string
    ip_cidr_range = string
    subnet_region = string
  }))
}