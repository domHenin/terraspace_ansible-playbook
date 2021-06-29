cidr_block = "10.0.0.0/16"

subnet_tag = "Subnet"

vpc_tag = "VPC"

sg_name = "allow tls"

sg_description = "opening needed ports for communication"

iterator = "port"

ingress_rules = [80, 443]

egress_rules = [80, 443]

protocol = "TCP"