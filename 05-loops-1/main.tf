resource "null_resource" "test" {
  count = 10
}

#output "test" {
#  value = null_resource.test[0].id
#}

output "test" {
  value = null_resource.test.*.id
}

#resource "aws_instance" "test" {
 # count                  = 3
 # ami                    = "ami-0b4f379183e5706b9"
 # instance_type          = "t3.micro"
 # vpc_security_group_ids = ["sg-0b405afb2fb9773d9"]

 # tags = {
 #   Name = "test-${count.index}"
 # }
#}

variable "components" {
  default = ["frontend", "backend", "mysql"]
}

resource "aws_instance" "test" {
  count                  = length(var.components)
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0b405afb2fb9773d9"]

  tags = {
    Name = element(var.components, count.index)
  }
}