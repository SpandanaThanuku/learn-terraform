variable "v1" {
  default = "Helloworld"
}

variable "v2" {
  default = [ "helloworld", 100, true]
}

variable "v3" {
  default = {
    abc = "100"
    xyz = "hai"
  }
}