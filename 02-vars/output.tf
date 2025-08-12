output "v1" {
  value = var.v1
}

output "first_value_in_List" {
  value = var.v2[0]
}

output "second_value_in_List" {
  value = var.v2[1]
}

output "value_in_Map" {
   value = var.v3["abc"]
}