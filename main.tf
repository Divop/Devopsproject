resource "aws_vpc" "myvpc" {
    cidr_block = "192.168.0.0/16"

  tags = {
    Name = "Web_VPC"
  }
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.myvpc.id

}
resource "aws_route_table" "main_route" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  route {
    ipv6_cidr_block        = "::/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "Route1"
  }
}
resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "192.168.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Subnet1"
  }
}
  resource "aws_route_table_association" "main" {
  subnet_id      = aws_subnet.subnet-1.id
  route_table_id = aws_route_table.main_route.id
}

