# Team4-tf
This repository contains Terraform configurations for provisioning and managing the cloud infrastructure used in the demo.

## Project linting
### 1️. Install dependencies
```bash
make install
```
### 2. Create pre-commit hooks
```bash
make hooks
```
### 3. Run hooks
```bash
make run
```
### 4. Clean generated files
```bash
make clean
```

## Running Terraform

Follow these steps to initialize, validate, plan, and apply your Terraform infrastructure.

### 1. Initialize Terraform

Downloads required providers and prepares the working directory.

```bash
terraform init
```

### 2. Validate the Configuration

Ensures all .tf files are syntactically correct.

```bash
terraform validate
```

### 3. Preview Infrastructure Changes

Shows what Terraform will create, modify, or destroy.

```bash
terraform plan
```

### 4. Apply Changes

Provisions the infrastructure in your cloud environment.

```bash
terraform apply
```
