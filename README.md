# terraform-module-certbot

Terraform module which installs certbot.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_system"></a> [system](#requirement\_system) | >= 0.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_system"></a> [system](#provider\_system) | >= 0.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [system_packages_apt.certbot](https://registry.terraform.io/providers/neuspaces/system/latest/docs/resources/packages_apt) | resource |
| [system_packages_apt.python_3_pip](https://registry.terraform.io/providers/neuspaces/system/latest/docs/resources/packages_apt) | resource |
| [system_packages_apt.software_properties_common](https://registry.terraform.io/providers/neuspaces/system/latest/docs/resources/packages_apt) | resource |
| [system_command.pip3_install_certbot_dns_hetzner](https://registry.terraform.io/providers/neuspaces/system/latest/docs/data-sources/command) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_certbot_dns_hetzner"></a> [certbot\_dns\_hetzner](#input\_certbot\_dns\_hetzner) | if Hetzner DNS Authenticator certbot plugin (certbot-dns-hetzner) should be installed | `boolean` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_certbot_dns_hetzner"></a> [certbot\_dns\_hetzner](#output\_certbot\_dns\_hetzner) | n/a |
<!-- END_TF_DOCS -->
