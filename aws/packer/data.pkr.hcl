data "amazon-ami" "ami" {
  region = "${var.region}"

  filters = {
    virtualization-type = "hvm"
    name                = "${lookup(var.map_ami_name, var.source_ami, "0")}"
    root-device-type    = "ebs"
  }
  owners      = ["${lookup(var.map_ami_owner, var.source_ami, "0")}"]
  most_recent = true
}
