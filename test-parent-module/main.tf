module "test_child_module" {
  source = "../test-child-module"
  for_each = {for num in var.test_numbers : num => "${num}"}

  length = each.key
}
