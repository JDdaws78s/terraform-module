variable "project_name" {
    type = string
    default = "expense"
}

variable "common_tags" {
    type = map
    default ={
        Project = "Expense"
        Terraform = "true"
        Environment = "dev"
    }  
}

variable "environment" {
    type = string
    default = "dev"
}

variable "public_subnet_cidrs" {
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
    default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "database_subnet_cidrs" {
    default = ["10.0.21.0/24", "10.0.22.0/24"]
}

variable "is_peering_connection_required" {
  type = bool
  default = true
}

variable "acceptor_vpc_id" {
  type = string
  default = ""
}