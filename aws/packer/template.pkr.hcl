source "amazon-ebs" "template" {
  region = "${var.region}"

  ami_name        = "${var.environment}-${var.ami_name}-${var.ami_version}-${var.source_ami}-${formatdate("YYYY-MM-DD-hhmmss", timestamp())}"
  ami_description = "${var.ami_description}"
  source_ami      = data.amazon-ami.ami.id
  instance_type   = "${var.instance_type}"

  ssh_port                = 22
  ssh_timeout             = "3m"
  ssh_username            = "${lookup(var.map_ssh_username, var.source_ami, "0")}"
  temporary_key_pair_type = "ed25519"
  temporary_key_pair_name = "${var.environment}-tmp-${var.ami_name}-${var.ami_version}-{{ timestamp }}"

  force_delete_snapshot = true

  associate_public_ip_address = true
  vpc_filter {
    filters = {
      "tag:Name" : "${var.vpc_name}",
      "isDefault" : "false"
    }
  }
  subnet_filter {
    filters = {
      "tag:Name" : "${var.subnet_name}"
    }
  }

  run_tags = {
    Name           = "${var.environment}-building-${var.ami_name}-${var.ami_version}"
    Environment    = "${var.environment}"
    BuildBy        = "packer"
    Project        = "${var.ami_name}"
    ProjectVersion = "${var.ami_version}"
  }
  run_volume_tags = {
    Name           = "${var.environment}-building-${var.ami_name}-${var.ami_version}"
    Environment    = "${var.environment}"
    BuildBy        = "packer"
    Project        = "${var.ami_name}"
    ProjectVersion = "${var.ami_version}"
  }
  tags = {
    Name           = "${var.environment}-${var.ami_name}-${var.ami_version}"
    Environment    = "${var.environment}"
    BuildBy        = "packer"
    Project        = "${var.ami_name}"
    ProjectVersion = "${var.ami_version}"
    OS             = "${var.source_ami}"
  }
}
