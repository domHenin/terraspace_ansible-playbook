data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = var.owner_ami

  filter {
    name   = "name"
    values = ["zs9-ubuntu14-dev-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "container" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.int_type
  count         = var.int_count


  provisioner "local-exec" {
    command = ""
  }

  tags = {
    Name = var.int_tag
  }
}

//resource "aws_instance" "container2" {
//  ami           = data.aws_ami.ubuntu.id
//  instance_type = var.int_type
//
//  tags = {
//    Name = var.int_tag
//  }
//}

resource "aws_key_pair" "iterator" {
  public_key = var.pub_key
  key_name   = var.key_name
}


//https://alex.dzyoba.com/blog/terraform-ansible/