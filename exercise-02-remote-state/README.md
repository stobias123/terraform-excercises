# Exercise 02

## Part 1

Let's set up remote state in your `main.tf` file. Use the following info.

bucket name = usana-workshop
key = 'terraform-state/YOURNAME/excercise-02-remote-state'

Heres an example s3 remote state block.

```
terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "us-east-2"
    dynamo_db_table = "usana-workshop-locks"
  }
}
```
