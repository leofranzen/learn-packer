resource "aws_internet_gateway" "learn" {
  vpc_id = aws_vpc.learn.id

  tags = {
    Name = "learn-igw"
  }
}
