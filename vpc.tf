resource "aws_vpc" "my-vpc" {
  cidr_block = var.cidr

  tags = {
    Name = "my-vpc"
  }
}

resource "aws_subnet" "my-subnets" {
  for_each =  var.azs_subnets
  vpc_id     = aws_vpc.my-vpc.id
  availability_zone = each.key
  cidr_block = each.value

/*  tags = {
    Name = format("subnet%01d", range(1, length(var.azs_subnets +1)))
    }*/
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.my-vpc.id

  tags = {
    Name = "my-internet-gw"
  }
}