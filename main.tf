resource "system_packages_apt" "software_properties_common" {
  package {
    name = "software-properties-common"
  }
}

resource "system_packages_apt" "certbot" {
  depends_on = [
    resource.system_packages_apt.software_properties_common
  ]
  package {
    name = "certbot"
  }
}

resource "system_packages_apt" "python_3_pip" {
  count = var.certbot_dns_hetzner ? 1 : 0
  package {
    name = "python3-pip"
  }
}

data "system_command" "pip3_install_certbot_dns_hetzner" {
  depends_on = [
    resource.system_packages_apt.python_3_pip
  ]
  count   = var.certbot_dns_hetzner ? 1 : 0
  command = "pip3 install certbot-dns-hetzner"
}
