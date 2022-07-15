resource "aws_subnet" "public1-sa-east-1a" {
  vpc_id     = aws_vpc.learn.id
  cidr_block = "10.0.1.0/24"

  availability_zone       = "sa-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "learn-subnet-public1-sa-east-1a"
  }
}
resource "aws_subnet" "public2-sa-east-1b" {
  vpc_id     = aws_vpc.learn.id
  cidr_block = "10.0.2.0/24"

  availability_zone       = "sa-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "learn-subnet-public2-sa-east-1b"
  }
}
resource "aws_subnet" "public3-sa-east-1c" {
  vpc_id     = aws_vpc.learn.id
  cidr_block = "10.0.3.0/24"

  availability_zone       = "sa-east-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "learn-subnet-public3-sa-east-1c"
  }
}
