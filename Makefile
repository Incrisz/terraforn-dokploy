# Makefile for Terraform with .env support

# Load .env into shell
include .env
export

# Default Terraform vars
TF_VAR_aws_region=$(AWS_DEFAULT_REGION)

.PHONY: init plan apply destroy format

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
