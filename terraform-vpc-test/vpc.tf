module "vpc" {
    #source = "../terraform-vpc-module"
    source = "git::https://github.com/JDdaws78s/terraform-module.git"
    project_name = var.project_name
    environment = var.environment
    common_tags = var.common_tags
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs
    is_peering_connection_required = var.is_peering_connection_required
    acceptor_vpc_id = var.acceptor_vpc_id
}