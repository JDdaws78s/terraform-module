# output "zones" {
#   value = data.aws_availability_zones.available.names
# }

output "subnet_ids" {
    value = local.merged_tuple
}