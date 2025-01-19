#Makefile
deploy: #deploy app to target hosts
	(cd ../terraform && terraform-inventory -inventory > ../ansible/hosts.ini)
	ansible-playbook playbook.yml
