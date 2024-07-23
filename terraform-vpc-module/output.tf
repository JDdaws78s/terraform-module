# output "zones" {
#   value = data.aws_availability_zones.available.names
# }

output "vpc_id" {
    value = aws_vpc.main.id
}

output "subnet_ids" {
    value = local.merged_tuple
}

output "public_subnet_ids" {
    value = aws_subnet.public.id
}

output "private_subnet_ids" {
    value = aws_subnet.private.id
}

output "db_subnet_ids" {
    value = aws_subnet.database.id
}

output "db_subnet_group_id" {
    value = aws_db_subnet_group.default.id
}

output "db_subnet_group_name" {
    value = aws_db_subnet_group.default.name
}

output "nat_id" {
    value = aws_nat_gateway.nat.id
}