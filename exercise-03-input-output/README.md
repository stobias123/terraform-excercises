# Exercise 03

Let's set up remote state. Use the following info.

Data references take the form
`data.NAME.ATTRIBUTE`

Resource references take the form

`RESOURCE_TYPE.NAME.ATTRIBUTE`

Variable references take the form

`var.NAME`


## Variables.
Use a variable in the security group block.

Create new variables for the following.
1. Allowed IP address. (security group)
2. Machine name
3. Business unit tag.

Put values for your variables in a file called `terraform.tfvars`

## Resource Reference.

Create an EC2 instance.

```
resource "aws_instance" "web_server" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"

  key_name               = "YOU_TODO"

  # To keep this example simple, we run a web server as a User Data script. In real-world usage, you would typically
  # install the web server and its dependencies in the AMI.
  user_data = <<-EOF
              #!/bin/bash
              echo "${var.server_text}" > index.html
              nohup busybox httpd -f -p "${var.http_port}" &
              EOF

  tags {
    Name = "YOU_TODO"
    Business_Unit = "YOU_TODO"
  }
}
```