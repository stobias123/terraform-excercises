# ---------------------------------------------------------------------------------------------------------------------
# DEPLOY THE SERVICES
# ---------------------------------------------------------------------------------------------------------------------

 module "shopping_cart" {
  source = "../ec2_instance_module"
  # ... add your params
  name = "toby-excercise-9-shopping-cart"
  key_name = "toby-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCuRvi5oHM1wdfFkmkaIHPWBmo9OxoWaKAm238I0RdlZdXhU3dTcmlaCu2dK30CquyPZUweKludcZDzMIfRaZHg+6C5WwHwh+1Fosg901ZV4MtDzAlCMfuba99PTJ7pjhIPYfyO3n+iQHQe0cijryKYlCyPmJW9T7u5x6txYVmD6X7R1I2r9vOQ4uiwB+bN+R/uYLpz32xGQmjNxbO32PxbTfAIJGdrBusCSOTxDoZVcBHvHvNqBV7AlKZ0Q4iPrxea6taYt7Y3jWBvEHgzSh69LW2Tff/IFhxuN9me78ciFHzGVJcbZ2akwMx8hzA2AJSErtxuk+P55F3trZ/kJKnP steventobias@stobias-red8-macbook.local"

}


module "checkout" {
  source = "../ec2_instance_module"
  # ... add your params
  name = "toby-excercise-9-checkout"
  key_name = "toby-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCuRvi5oHM1wdfFkmkaIHPWBmo9OxoWaKAm238I0RdlZdXhU3dTcmlaCu2dK30CquyPZUweKludcZDzMIfRaZHg+6C5WwHwh+1Fosg901ZV4MtDzAlCMfuba99PTJ7pjhIPYfyO3n+iQHQe0cijryKYlCyPmJW9T7u5x6txYVmD6X7R1I2r9vOQ4uiwB+bN+R/uYLpz32xGQmjNxbO32PxbTfAIJGdrBusCSOTxDoZVcBHvHvNqBV7AlKZ0Q4iPrxea6taYt7Y3jWBvEHgzSh69LW2Tff/IFhxuN9me78ciFHzGVJcbZ2akwMx8hzA2AJSErtxuk+P55F3trZ/kJKnP steventobias@stobias-red8-macbook.local"
}