# Terraform + Azure — Lab de Infraestructura como Código

Laboratorio de la Semana 15 de mi plan de transición a SRE: provisión de
infraestructura Azure 100% declarativa con Terraform.

## Qué construye

- Resource Group en `brazilsouth`
- Storage Account con nombre único global (sufijo aleatorio vía provider `random`)

## Conceptos aplicados

- Ciclo completo IaC: `init` → `plan` → `apply` → `destroy`
- Variables y outputs en archivos separados (patrón código/secretos:
  `tfvars` y `tfstate` excluidos vía .gitignore)
- Dependencias implícitas: el grafo ordena creación y destrucción
- Infraestructura efímera: el ambiente se destruye al cierre de cada
  sesión y se regenera con un comando (FinOps: costo del lab ≈ $0)

## Uso

​```bash
az login --use-device-code
terraform init
terraform plan
terraform apply   # crea terraform.tfvars con tu subscription_id primero
terraform destroy # al terminar: nada queda facturando
​```
