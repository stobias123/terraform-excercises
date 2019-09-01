# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY

# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "aws_region" {
  description = "The AWS region to deploy into (e.g. us-east-1)."
  default     = "us-east-2"
}

variable "name" {
  description = "The name for the EC2 Instance and all other resources in this module."
  default     = "stobias-excercise-6-web-server"
}

variable "key_name" {
  description = "The name of the EC2 Key Pair that can be used to SSH to the EC2 Instance. Leave blank to not associate a Key Pair with the Instance."
  default     = "toby-lab-account"
}

variable "public_key" {
  description = "Your ssh public key."
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCuRvi5oHM1wdfFkmkaIHPWBmo9OxoWaKAm238I0RdlZdXhU3dTcmlaCu2dK30CquyPZUweKludcZDzMIfRaZHg+6C5WwHwh+1Fosg901ZV4MtDzAlCMfuba99PTJ7pjhIPYfyO3n+iQHQe0cijryKYlCyPmJW9T7u5x6txYVmD6X7R1I2r9vOQ4uiwB+bN+R/uYLpz32xGQmjNxbO32PxbTfAIJGdrBusCSOTxDoZVcBHvHvNqBV7AlKZ0Q4iPrxea6taYt7Y3jWBvEHgzSh69LW2Tff/IFhxuN9me78ciFHzGVJcbZ2akwMx8hzA2AJSErtxuk+P55F3trZ/kJKnP steventobias@stobias-red8-macbook.local"
}

variable "http_port" {
  description = "The port the EC2 Instance should listen on for HTTP requests"
  default     = 8080
}

variable "server_text" {
  description = "The text the server should return for HTTP requests"
  default     = "Hello, World"
}
