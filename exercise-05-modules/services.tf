# ---------------------------------------------------------------------------------------------------------------------
# DEPLOY THE SERVICES
# ---------------------------------------------------------------------------------------------------------------------

module "shopping_cart" {
  source = "../ec2_instance_module"
  # ... add your params
}


module "checkout" {
  source = "../ec2_instance_module"
  # ... add your params
}