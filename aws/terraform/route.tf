resource "aws_route_table" "learn-rtb-public" {
  vpc_id = aws_vpc.learn.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.learn.id
  }

  tags = {
    Name = "learn-rtb-public"
  }
}

resource "aws_route_table_association" "public1-sa-east-1a" {
  subnet_id      = aws_subnet.public1-sa-east-1a.id
  route_table_id = aws_route_table.learn-rtb-public.id
}
resource "aws_route_table_association" "public2-sa-east-1b" {
  subnet_id      = aws_subnet.public2-sa-east-1b.id
  route_table_id = aws_route_table.learn-rtb-public.id
}
resource "aws_route_table_association" "public3-sa-east-1c" {
  subnet_id      = aws_subnet.public3-sa-east-1c.id
  route_table_id = aws_route_table.learn-rtb-public.id
}
