
locals {
  common_labels = {
    environment = "demo"
    owner       = "terraform"
  }
}

/*
locals in Terraform provide a way to define named expressions or intermediate values that can be reused throughout your configuration without repeating complex expressions or hardcoding values multiple times.

Benefits of using locals:

Improves readability: Instead of writing long or complex expressions multiple times, you can define them once as a local variable with a meaningful name.

Reduces duplication: Prevents repeating the same value or logic in multiple places, making your code DRY (Don't Repeat Yourself).

Simplifies maintenance: If you need to update a value or expression, you only change it in one place.

Better organization: Groups related values and calculations logically within the configuration.

Supports complex computations: You can use locals to compute values dynamically based on other variables or resource attributes.
*/
