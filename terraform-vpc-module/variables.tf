#### project ###
variable "project_name" {
    type = string
}

variable "environment" {
    type = string
    default = "dev"
}

variable "common_tags" {
    type = map
}

#### VPC ####

variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
    type = bool
    default = "true"
}

variable "vpc_tags" {
    type = map
    default ={}  
}

####IGW####

variable "igw_tags" {
  type = map
  default = {}
}

###public_subnet###

variable "public_subnet_tags" {
  type = map
  default = {}
}

variable "public_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.public_subnet_cidrs) == 2
    error_message = "please provide 2 valid subnet_cidrs"
  }
}

###private_subnet###

variable "private_subnet_tags" {
  type = map
  default = {}
}

variable "private_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.private_subnet_cidrs) == 2
    error_message = "please provide 2 valid subnet_cidrs"
  }
}


###database_subnet###

variable "database_subnet_tags" {
  type = map
  default = {}
}

variable "database_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.database_subnet_cidrs) == 2
    error_message = "please provide 2 valid subnet_cidrs"
  }
}

variable "database_subnet_group_tags" {
  default = {}
  
}
#### NAT Tags ####
variable "nat_gateway_tags" {
  type = map
  default = {}
}


#### route table Tags ####
variable "route_table_public_tags" {
  type = map
  default = {}
}

variable "route_table_private_tags" {
  type = map
  default = {}
}

variable "route_table_database_tags" {
  type = map
  default = {}
}

#### Peering ####

variable "is_peering_connection_required" {
  type = bool
  default = false
}

variable "acceptor_vpc_id" {
  type = string
  default = ""
}

variable "peering_tags" {
  type = map
  default = {}
}