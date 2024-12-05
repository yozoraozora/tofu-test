run "test" {
  variables {
    test_numbers = [ 1,2,3 ]
  }

  assert {
    condition     = length(module.test_child_module) == 3
    error_message = "Wrong length"
  }
}

run "test_2" {
  variables {
    test_numbers = [ 4,5,6 ]
  }

  assert {
    condition     = length(module.test_child_module) == 3
    error_message = "Wrong length"
  }
}
