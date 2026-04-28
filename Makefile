TF ?= terraform
AWS ?= aws
TFVARS ?= terraform.tfvars

.PHONY: init fmt validate plan apply destroy kubeconfig

init:
	$(TF) init

fmt:
	$(TF) fmt -recursive

validate:
	$(TF) validate

plan:
	$(TF) plan -var-file=$(TFVARS)

apply:
	$(TF) apply -var-file=$(TFVARS)

destroy:
	$(TF) destroy -var-file=$(TFVARS)

kubeconfig:
	$(AWS) eks update-kubeconfig --region $$(awk -F ' *= *' '/^aws_region/ {print $$2}' $(TFVARS) | tr -d '"') --name $$(awk -F ' *= *' '/^cluster_name/ {print $$2}' $(TFVARS) | tr -d '"')
