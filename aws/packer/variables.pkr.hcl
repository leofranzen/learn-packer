variable "map_ami_name" {
  type = map(string)
  default = {
    "debian-11"    = "debian-11-amd64-*-*"
    "rhel-8"       = "RHEL-8.*_HVM-*-x86_64-*-Hourly2-GP2"
    "rhel-9"       = "RHEL-9.*_HVM-*-x86_64-*-Hourly2-GP2"
    "ubuntu-20.04" = "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"
    "ubuntu-22.04" = "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"
  }
}
variable "map_ami_owner" {
  type = map(string)
  default = {
    "debian-11"    = "136693071363" # ref https://wiki.debian.org/Cloud/AmazonEC2Image/Bullseye
    "rhel-8"       = "309956199498" # ref https://access.redhat.com/solutions/15356
    "rhel-9"       = "309956199498" # ref https://access.redhat.com/solutions/15356
    "ubuntu-20.04" = "099720109477" # ref https://ubuntu.com/server/docs/cloud-images/amazon-ec2
    "ubuntu-22.04" = "099720109477" # ref https://ubuntu.com/server/docs/cloud-images/amazon-ec2
  }
}
variable "map_ssh_username" {
  type = map(string)
  default = {
    "debian-11"    = "admin"
    "rhel-8"       = "ec2-user"
    "rhel-9"       = "ec2-user"
    "ubuntu-20.04" = "ubuntu"
    "ubuntu-22.04" = "ubuntu"
  }
}

variable "region" {
  type        = string
  description = "region build to ami"
}

variable "environment" {
  type        = string
  description = "environment prefix"
}
variable "ami_name" {
  type        = string
  description = "name of ami"
}
variable "ami_version" {
  type        = string
  description = "version of ami"
}
variable "ami_description" {
  type = string
}
variable "source_ami" {
  type        = string
  description = "operational system"
}
variable "instance_type" {
  type        = string
  description = "instance family type"
}

variable "vpc_name" {
  type        = string
  description = "vpc that the ami will be built"
}
variable "subnet_name" {
  type        = string
  description = "subnet that the ami will be built"
}
