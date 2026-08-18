# Terraform + Azure — Infrastructure as Code lab

Week 15 lab from my transition-to-SRE plan: 100% declarative Azure
infrastructure provisioning with Terraform.

## What it builds

- Resource Group in `brazilsouth`
- Storage Account with a globally unique name (random suffix via the
  `random` provider)

## Concepts applied

- Full IaC cycle: `init` → `plan` → `apply` → `destroy`
- Variables and outputs in separate files (code/secrets pattern:
  `tfvars` and `tfstate` excluded via .gitignore)
- Implicit dependencies: the graph orders creation and destruction
- Ephemeral infrastructure: the environment is destroyed at the end of
  each session and regenerated with a single command (FinOps: lab
  cost ≈ $0)

## Usage

​```bash
az login --use-device-code
terraform init
terraform plan
terraform apply   # creates terraform.tfvars with your subscription_id first
terraform destroy # when done: nothing keeps billing
​```
