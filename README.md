# AWS Telemetry Infrastructure (Terraform)

An Infrastructure as Code (IaC) project leveraging Terraform to provision a secure, scalable, and modular AWS environment designed to ingest, store, and process high-throughput telematics and sensor stream data.

## 🏛 Architecture Overview
- **Networking:** Dedicated Multi-AZ VPC with Public & Private Subnets, Internet Gateway, and NAT Gateways.
- **Compute:** AWS ECS (Elastic Container Service) with Fargate launch type for serverless container deployment.
- **Storage:** Amazon S3 bucket configured with lifecycle rules and SSE-S3 encryption for continuous telemetry storage.
- **Security & IAM:** Least-privilege IAM execution roles, CloudWatch logging, and security groups restricting traffic to container ports.

## 🛠 Tech Stack
- **IaC:** Terraform v1.5+
- **Cloud Provider:** AWS (VPC, ECS, Fargate, S3, IAM, CloudWatch)
- **Container Registry:** AWS ECR

---

## 🚀 Usage

### Prerequisites
- AWS CLI configured with appropriate credentials.
- Terraform installed (`terraform -v`).

### Deployment Steps

```bash
# Initialize working directory and download providers
terraform init

# Validate configuration syntax
terraform validate

# Review execution plan
terraform plan

# Apply infrastructure changes
terraform apply
