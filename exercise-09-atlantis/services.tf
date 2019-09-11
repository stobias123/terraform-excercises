# ---------------------------------------------------------------------------------------------------------------------
# DEPLOY THE SERVICES
# ---------------------------------------------------------------------------------------------------------------------

module "shopping_cart" {
  source = "../ec2_instance_module"
  name = "stobias-testing33"
  key_name = "toby-testing33"
  public_key = ""
  # ... add your params
}


module "checkout" {
  source = "../ec2_instance_module"
  name = "stobias-testing3"
  key_name = "toby-testing3"
  public_key = ""
  # ... add your params
} */