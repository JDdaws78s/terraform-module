# output "azs" {
#   value = module.vpc.zones
# }

output "subnet_ids" {
    value = module.vpc.subnet_ids
}

output "public_subnet_ids" {
    value = module.vpc.public_subnet_ids
}