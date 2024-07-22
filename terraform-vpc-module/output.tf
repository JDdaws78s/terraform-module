# output "zones" {
#   value = data.aws_availability_zones.available.names
# }

output "vpc_id" {
    value = aws_vpc.main.id
}

output "subnet_ids" {
    value = local.merged_tuple
}