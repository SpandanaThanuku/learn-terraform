resource "null_resource" "test" {
  count = 10
}

#output "test" {
#  value = null_resource.test[0].id
#}

output "test" {
  value = null_resource.test.*.id
}
