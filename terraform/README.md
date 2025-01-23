It is more convenient to define variables in 'terraform.tfvars' file.
Providers defined in "provider.tf" file. This project uses AWS. 
Backend defined in "backend.hcl" file and contain settings for "S3" storage in AWS cloud (for storing "state" file) and DynameDB in AWS cloud for storing "lock" status. Replace all values accordingly.
All infrastructure defined in single "main.tf" file, including pair of VMs, load balancer and managed database service.
Deploing database needs defining username and password and have to be specified in terraform variables. All DB related info to be used further by Ansible will be saved as json file in '../ansible/' directory.
This project assumes you already have DNS zone defined in AWS Route53 service. "aws" subdomain will be created for deployed web app. Root domain name has to be specified in terraform variables.
Load balancer listener uses HTTPS, so it needs certificate. For that purpose this project uses AWS ACM service. It needs to verify domain ownership first to issue a certificate, by publishing special records in DNS for domain. Because of that we need to create corresponding DNS record first and only after that apply all other steps. Makefile define all neccesery steps in correct order so it is better to use "make up" command to bring all infrastrucrure up.
Besides AWS infrastructure, 'main.tf' creates monitor at "datadoghq.eu". We need to define Datadog "api_key" and "app_key" in terraform variables. But this monitor will work only after deploying ansible configuration. cd to 'ansible' directory and read README.md.
Running 'make up' will also generate 'hosts.ini' file in '../ansible' directory to be used by Ansible in next step.
