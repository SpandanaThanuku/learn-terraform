#variable "ami" {
#  default = "ami-0b4f379183e5706b9"
#}

variable "instance_type" {
  default = "t3.micro"
}

variable "vpc_security_group_ids" {
  default = ["sg-0b405afb2fb9773d9"]
}

variable "zone_id" {
  default = "Z10004612WLGZAG3UBPGB"
}

variable "components" {
  default = {
    frontend = {
      name = "frontend"
      instance_type = "t3.micro"
    }

    backend = {
      name = "backend"
      instance_type = "t3.micro"
    }

    mysql = {
      name = "mysql"
      instance_type = "t3.small"
    }
  }
}