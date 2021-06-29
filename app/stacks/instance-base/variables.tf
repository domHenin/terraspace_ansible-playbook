variable "owner_ami" {
  description = "owner of used ami"
  type        = string
}

variable "int_ami" {
  description = "ami for the instance"
  type        = string
}

variable "int_type" {
  description = "instance type"
  type        = string
}

variable "int_count" {
  description = "number of desired instances"
  type = number
}

variable "int_tag" {
  description = "tag for instance"
  type        = string
}

variable "pub_key" {
  description = "public key for key pair"
  type        = string
}

variable "key_name" {
  description = "name of key pair"
  type        = string
}