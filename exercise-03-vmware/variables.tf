# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------
variable "vsphere_user" {
    type = "string"
    description = "Username for vsphere"
    default = "PUT YOUR USERNAME HERE"
}
variable "vsphere_password" {
    type = "string"
    description = "Password for vsphere"
}
variable "vsphere_server" {
    type = "string"
    description = "Server URL."
    default = "https://vcenter"
}

variable "machine_name" {
  type = "string"
  #default = "ENTER YOUR MACHINE NAME"
}

variable "dns_server" {
  type = "string"
  #default = "ENTER YOUR MACHINE NAME"
}
variable "ipv4_gateway" {
  type = "string"
  #default = "ENTER YOUR MACHINE NAME"
}
variable "vm_template" {
  type = "string"
  #default = "ENTER YOUR MACHINE NAME"
}
variable "domain_name" {
  type = "string"
  #default = "ENTER YOUR MACHINE NAME"
}
# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------
variable "disk_size" {
  default = "10"
}
variable "memory_mb" {
  default = "4196"
}
variable "number_cpus" {
  default = "2"
}