resource "aws_vpc_peering_connection" "peering" {
  count = var.is_peering_connection_required ? 1: 0
  peer_vpc_id   = var.acceptor_vpc_id == "" ? data.aws_vpc.default.id : var.acceptor_vpc_id
  vpc_id        = aws_vpc.main.id
  auto_accept   = var.is_peering_connection_required == true && var.acceptor_vpc_id == "" ? true : false

  tags = merge(
    var.common_tags,
    var.peering_tags,
    {
        Name = "${local.resource_name}"   #
    }
  )
}

# count is useful to control when resource is required
resource "aws_route" "public_peering" {
  count = var.is_peering_connection_required == true && var.acceptor_vpc_id == "" ? 1 : 0
  route_table_id = aws_route_table.public.id
  destination_cidr_block = data.aws_vpc.default.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.peering[count.index].id
}

resource "aws_route" "private_peering" {
  count = var.is_peering_connection_required == true && var.acceptor_vpc_id == "" ? 1 : 0
  route_table_id = aws_route_table.private.id
  destination_cidr_block = data.aws_vpc.default.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.peering[count.index].id
}

resource "aws_route" "database_peering" {
  count = var.is_peering_connection_required == true && var.acceptor_vpc_id == "" ? 1 : 0
  route_table_id = aws_route_table.database.id
  destination_cidr_block = data.aws_vpc.default.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.peering[count.index].id
}

resource "aws_route" "default" {
  count = var.is_peering_connection_required == true && var.acceptor_vpc_id == "" ? 1 : 0
  route_table_id = data.aws_route_table.main.id
  destination_cidr_block = aws_vpc.main.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.peering[count.index].id
}