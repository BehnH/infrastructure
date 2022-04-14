# Ansible playbooks/Puppet stuff for my infrastructure

## Requirements
- Ansible
- Hashicorp Terraform
- HashiCorp Vault (for credentials)

## Installation

1. Clone `tf/terraform.auto.tfvars.example` to `tf/terraform.auto.tfvars` and fill it in
2. Change to the `tf` directory
3. Run `terraform plan` and check the plan is fine
4. Run `terraform apply` and wait for the plan to apply