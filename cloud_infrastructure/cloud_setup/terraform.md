# Deployment steps
cd cloud_infrastructure/cloud_setup

rm -rf .terraform

rm terraform.lock.hcl

terraform init -backend-config=backend.hcl

terraform workspace select {work_spacename}

terraform plan --var-file="tfvars/dev.tfvars" -lock=false
