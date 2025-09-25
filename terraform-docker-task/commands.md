# Terraform Commands for Task 3

1. **Initialize Terraform**
```bash
terraform init | tee logs/init.log

terraform plan | tee logs/plan.log

terraform apply -auto-approve | tee logs/apply.log

terraform state list | tee logs/state_list.log

terraform destroy -auto-approve | tee logs/destroy.log


---

