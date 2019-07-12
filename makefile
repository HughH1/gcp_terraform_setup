SHELL:= /bin/bash
VAR_DIR = "variables"
TERRAFORM_APPLY = "terraform apply -auto-approve -var-file="
TERRAFORM_DESTROY = "terraform destroy -auto-approve -var-file="

terraform-init:
    @terraform init

mean-apply:
    @"${applyTERRAFORM_APPLY}${VAR_DIR}"/mean.tfvars

mean-destroy:
    @"${TERRAFORM_DESTORY}${VAR_DIR}"/mean.tfvars

.PHONY = terraform-init mean-apply mean-destroy
