# Makefile for Terraform with .env support and module targeting

SHELL := /bin/bash
ENV_FILE := .env

# Load .env variables
ifneq ("$(wildcard $(ENV_FILE))","")
  include $(ENV_FILE)
  export $(shell sed 's/=.*//' $(ENV_FILE))
endif

.PHONY: init plan apply destroy format apply-ec2 apply-dns destroy-ec2 destroy-dns debug

init:
	terraform init

plan:
	terraform plan

apply:
	terraform apply -auto-approve

destroy:
	terraform destroy -auto-approve

format:
	terraform fmt

debug:
	terraform console

# Module-specific targets
apply-ec2:
	terraform apply -auto-approve -target=module.ec2

apply-dns:
	terraform apply -auto-approve -target=module.dns

destroy-ec2:
	terraform destroy -auto-approve -target=module.ec2

destroy-dns:
	terraform destroy -auto-approve -target=module.dns
