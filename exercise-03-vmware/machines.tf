/*
 * @Author Steven Tobias -- github.com/stobias123
 * @Date 7-10-2018
 */

resource "vsphere_virtual_machine" "vm" {
  name                        = "${var.machine_name}"
  resource_pool_id            = "${data.vsphere_resource_pool.pool.id}"
  datastore_id                = "${data.vsphere_datastore.datastore.id}"
  folder                      = ""
  num_cpus                    = "${var.number_cpus}"
  memory                      = "${var.memory_mb}"
  guest_id                    = "${data.vsphere_virtual_machine.template.guest_id}"
  scsi_type                   = "${data.vsphere_virtual_machine.template.scsi_type}"
  wait_for_guest_net_routable = false

  network_interface {
    network_id   = "${data.vsphere_network.network.id}"
    adapter_type = "${data.vsphere_virtual_machine.template.network_interface_types[0]}"
  }

/*   disk {
    label            = "disk0"
    size             = "${var.disk_size}"
    eagerly_scrub    = "${data.vsphere_virtual_machine.template.disks.0.eagerly_scrub}"
    thin_provisioned = "${data.vsphere_virtual_machine.template.disks.0.thin_provisioned}"
  }
 */
  clone {
    template_uuid = "${data.vsphere_virtual_machine.template.id}"

    customize {
      linux_options {
        host_name = "${var.machine_name}"
        domain    = "${var.domain_name}"
      }

      network_interface {}

      dns_server_list = ["${var.dns_server}"]
      ipv4_gateway    = "${var.ipv4_gateway}"
    }
  }
}