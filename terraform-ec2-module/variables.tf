variable "ami_id" {
    type = string
    default = "ami-041e2ea9402c46c36"
  
}

variable "vpc_security_group_ids" {
    default = ["sg-077813c2ed72c0749"]
  
}

variable "instance_name" {
    default = "dev"
}

variable "instance_type" {
    default = "t2.micro"
}