data "vault_generic_secret" "creds" {
  path = "secret/passwords/user123"
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE EC2 INSTANCE
# EDIT THE USER DATA TO SET OUR USER PASSWORD
# ---------------------------------------------------------------------------------------------------------------------

resource "aws_instance" "web_server" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"

  key_name               = "${aws_key_pair.deployer.key_name}"
  vpc_security_group_ids = ["${aws_security_group.web_server.id}"]

  # To keep this example simple, we run a web server as a User Data script. In real-world usage, you would typically
  # install the web server and its dependencies in the AMI.
  user_data = <<-EOF
              #!/bin/bash
              useradd linuxuser
              ## YOUR WORK HERE
              echo ${data.vault_generic_secret.creds.data["password"]} | passwd --stdin linuxuser
              nohup busybox httpd -f -p "${var.http_port}" &
              EOF

  tags {
    Name = "${var.name}"
  }
}