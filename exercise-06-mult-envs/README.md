# Exercise 05
## Quick start


Create multiple workspaces. In this example

DEV lives in us-east-1
PROD lives in us-east-2

1. Create your workspaces

`terraform workspace new dev`
`terraform workspace new prod`

2. Set up your regions in the `variables.tf` file. 
Create a map that matches your workspace name.
Note the way our provider finds our region.

3. Change workspaces and apply in each.

`terraform workspace select dev`