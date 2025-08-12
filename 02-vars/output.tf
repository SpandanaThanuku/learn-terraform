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

output "value_in_Map1" {
   value = lookup(var.v3, "abc1", "none")
}

output "second_value_in_list" {
   value = element(var.v2, 5)
}

output "fruitdetails" {
  value = "Fruit Name - Apple , quantity - ${var.fruits["apple"]["quantity"]}"
}

output "fruitdetails1" {
  value = "Fruit Name - Apple , quantity"
}