# ---------------------------------------------------------------------------------------------------------------------
# DEPLOY THE SERVICES
# ---------------------------------------------------------------------------------------------------------------------

module "shopping_cart" {
  source = "../ec2_instance_module"
  name = "stobias-shopping-cart-service9"
  key_name = "stobias-shopping-cart-key9"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDeMRsZc/B2poz/fqEYOXuYKiM1dRP9usGUGMc6WanOs10c/YlDUKyc/Wq8gC9KEWep+1dCM2i2DvMlc3D8Q58TS09jieiX9YrCBGuLO49uW8accT3EGAIZHrO9AmpLYFnezUdkZKST+rYVlugWehZzyjBhsp3kTrsaR+qHPvv5lBzr7h7k1Coz5AyEkQayvCJ42M0aF2w7+tQbOgLBWLMrRHGWyXJohIO9xcaaQ6xMFWM9vgfMccy/H1hCCOJk4zEDO8w4VdPRr9/oqm6gddNQzJbTYV0o2AQhyK8LvHeJ6kFOBzvbJe3RI17BnsWvHs0GHZpCINyO8tT87ehgptdP steventobias@StevenTobias-MBP-MV0114.local"
  # ... add your params
}


module "checkout" {
  source = "../ec2_instance_module"
  name = "stobias-checkout-service9"
  key_name = "stobias-checkout-key9"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDeMRsZc/B2poz/fqEYOXuYKiM1dRP9usGUGMc6WanOs10c/YlDUKyc/Wq8gC9KEWep+1dCM2i2DvMlc3D8Q58TS09jieiX9YrCBGuLO49uW8accT3EGAIZHrO9AmpLYFnezUdkZKST+rYVlugWehZzyjBhsp3kTrsaR+qHPvv5lBzr7h7k1Coz5AyEkQayvCJ42M0aF2w7+tQbOgLBWLMrRHGWyXJohIO9xcaaQ6xMFWM9vgfMccy/H1hCCOJk4zEDO8w4VdPRr9/oqm6gddNQzJbTYV0o2AQhyK8LvHeJ6kFOBzvbJe3RI17BnsWvHs0GHZpCINyO8tT87ehgptdP steventobias@StevenTobias-MBP-MV0114.local"
  # ... add your params
}