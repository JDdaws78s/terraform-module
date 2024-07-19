locals {
  resource_name = "${var.project_name}-${var.environment}"
  availability_zone = slice(data.aws_availability_zones.available.names, 0, 2)

}
locals {
  merged_tuple = [
    aws_subnet.public[*].id,
    aws_subnet.private[*].id,
    aws_subnet.database[*].id,
  ]
}