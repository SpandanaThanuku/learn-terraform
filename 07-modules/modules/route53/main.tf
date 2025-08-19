resource "aws_route53_record" "record" {
  zone_id = "Z10004612WLGZAG3UBPGB"
  name    = "test"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}

variable "private_ip" {}