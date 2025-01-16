# Makefile
up: # Create infrastructure
	tofu init -backend-config=backend.hcl
	tofu apply

down: # Destroy infrastructure
	tofu destroy
