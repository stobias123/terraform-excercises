# Exercise 01

This code deploys a simple web server in AWS. The web server always returns "Hello, World" on port 8080.

## Quick start

### Console login
https://red8-hybrid-hub.signin.aws.amazon.com/console

### Configure your credentials

1. `vim ~/.aws/credentials`
2. Enter the credentials provided.
```
[default]
aws_access_key_id = <ACCESS_KEY>
aws_secret_access_key = <SECRET_KEY>
```
3. Set our default region.
us-east-2

### Create a key pair
```
ssh-keygen
```


To deploy this module:

1. Install [Terraform](https://www.terraform.io/)

1. Open up `vars.tf`, set the environment variables specified at the top of the file, and fill in `default` values for 
   any variables in the "REQUIRED PARAMETERS" section.

1. Run `terraform init`

1. Run `terraform plan`

1. If the plan looks good, run `terraform apply`  


### View results
https://console.aws.amazon.com/ec2/v2/home


### New ami filter.
```
ubuntu/images/hvm-ssd/ubuntu-*18*-amd64-server-*
```