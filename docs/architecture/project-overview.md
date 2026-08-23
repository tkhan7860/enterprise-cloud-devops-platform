# Enterprise Cloud DevOps Platform

## Business Scenario

The platform represents an enterprise transaction-processing
environment for a financial services organization.

## Application Platform

The application will consist of containerized services deployed
to Kubernetes platforms.

Primary Kubernetes platforms:

- Azure Kubernetes Service (AKS)
- Red Hat OpenShift

## Data Platform

Application transaction data will be stored in Azure Data Lake
Storage Gen2 and processed using Azure Databricks.

Data layers:

- Raw
- Bronze
- Silver
- Gold

## Infrastructure

Azure infrastructure will be provisioned using Terraform.

## CI/CD

Two CI/CD paths will be implemented:

1. Azure DevOps → AKS
2. GitHub Actions → OpenShift

## Security

The project will demonstrate:

- Microsoft Entra ID
- Azure RBAC
- Managed identities
- Kubernetes workload identity
- Azure Key Vault
- OpenShift security controls

## Operations

The platform will include:

- Monitoring
- Logging
- Health checks
- Bash automation
- Incident troubleshooting
- Deployment rollback
- Operational runbooks
