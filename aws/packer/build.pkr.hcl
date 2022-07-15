build {
  sources = [
    "source.amazon-ebs.template"
  ]

  provisioner "ansible" {
    playbook_file = "../ansible/playbook-nginx.yml"

    extra_arguments = [
      "--extra-vars", "ami_name=${var.ami_name}",
      "--extra-vars", "ami_version=${var.ami_version}"
    ]
  }
}
