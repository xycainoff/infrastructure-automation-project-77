# Makefile
up: # Create infrastructure
	tofu init -backend-config=backend.hcl
	tofu apply -target=aws_route53_record.lb -target=aws_acm_certificate.cert
	tofu apply
	terraform-inventory -inventory > ../ansible/hosts.ini

down: # Destroy infrastructure
	tofu destroy
