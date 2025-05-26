# Terraform Project 11 - Using Terraform Workspaces

This project demonstrates how to use **Terraform Workspaces** to manage multiple environments (e.g., dev, staging, prod) within the same Terraform configuration.

---

## What are Terraform Workspaces?

Terraform Workspaces allow you to use the same Terraform configuration to manage multiple distinct state files. This is useful for managing multiple environments with the same infrastructure code without duplicating the configuration.

---

## How to use Terraform Workspaces in this project

### 1. Initialize Terraform

Before using workspaces, initialize Terraform in your project directory:

```bash
terraform init
```
### 2. List all workspace
```
terraform workspace list
```
### 3. Create a new workspace

for example, dev:
```
terraform workspace new dev
```
### 4. Switch to an existing workspace

for example, prod:
```
terraform workspace select prod
```
### 4. Show the current workspace
```
terraform workspace show
```
### 4. Delete workspace
```
terraform workspace delete
```

## Workflow Example
**Initialize Terraform in your project directory**
```
terraform init
```
**Create and switch to the 'dev' workspace, then apply the configuration**
```terraform workspace new dev
terraform apply
```
**Create and switch to the 'prod' workspace, then apply the configuration**
```terraform workspace new prod
terraform apply
```
**Switch back to the 'dev' workspace, then destroy resources in it**
```terraform workspace select dev
terraform destroy
```


