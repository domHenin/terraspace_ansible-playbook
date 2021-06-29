resource "aws_subnet" "main" {
  cidr_block = var.cidr_block
  vpc_id     = aws_vpc.main.id

  tags = {
    Name = var.subnet_tag
  }
}

resource "aws_vpc" "main" {
  cidr_block = var.cidr_block

  tags = {
    Name = var.vpc_tag
  }
}

resource "aws_security_group" "allow" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = aws_vpc.main.id

  dynamic "ingress" {
    iterator = var.iterator
    for_each = var.ingress_rules
    content {
      from_port = var.iterator.value
      protocol  = var.protocol
      to_port   = var.iterator.value
    }
  }

  dynamic "egress" {
    iterator = var.iterator
    for_each = var.egress_rules
    content {
      from_port = var.iterator.value
      protocol  = var.protocol
      to_port   = var.iterator.value
    }
  }
}