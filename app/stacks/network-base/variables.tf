variable "cidr_block" {
  description = "CIDR range for instance"
  type        = string
}

variable "subnet_tag" {
  description = "Tag name for subnet"
  type        = string
}

variable "vpc_tag" {
  description = "Tag name for VPC"
  type        = string
}

variable "sg_name" {
  description = "name for security group"
  type        = string
}

variable "sg_description" {
  description = "security group description"
  type        = string
}

variable "iterator" {
  description = "iterator used in for loop"
  type        = string
}

variable "ingress_rules" {
  description = "rules used for ingress"
  type        = list(number)
}

variable "egress_rules" {
  description = "rules used for egress"
  type        = list(number)
}

variable "protocol" {
  description = "protocol used for ingress rule"
  type        = string
}