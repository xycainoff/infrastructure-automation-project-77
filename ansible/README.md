This project deploys simple and dumb web app on infrastructure created by Terraform. 
First we need to prepare inventory file with VMs addresses. 
Terraform config has defined "VMs_addresses" output, so it can be called by 'terraform output VMs_addresses'.
But it easier to use 'terraform-inventory' utility. It can be installed from 'https://github.com/adammck/terraform-inventory'.
'make deploy' includes 'terraform-inventory' command to generate inventory from Terraform state file and then run ansible playbook.
