/*
*
* This file is intended to contain the base layer of information
* needed in order to provision to your desired vmware infra.
*
*/

data "vsphere_datacenter" "dc" {
  name = "DATACENTER_NAME"
}

data "vsphere_datastore" "datastore" {
  name          = "DATASTORE"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_network" "network" {
  name          = "<YOUR_NETWORK_HERE>"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_resource_pool" "pool" {
  name          = "<RESOURCE_POOL>"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_virtual_machine" "template" {
  name          = "${var.vm_template}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
