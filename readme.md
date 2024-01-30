# Terraform Makefile README

This repository contains a Makefile to simplify the usage of Terraform for infrastructure provisioning. The Makefile includes three main targets:

### tf_init

This target initializes Terraform for the project. It performs the following actions:

- Formats Terraform configuration files recursively using `terraform fmt`.
- Initializes the Terraform working directory using `terraform init`.

**Usage:**

```bash
make tf_init
