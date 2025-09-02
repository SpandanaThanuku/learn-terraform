resource "aws_instance" "test" {
  ami = var.ami
  instance_type = var.instance_type == null ? "t3.micro" : var.instance_type
}

variable "instance_type" {
  value = null
}

variable "ami" {
  ami = "ami-0b4f379183e5706b9"
}