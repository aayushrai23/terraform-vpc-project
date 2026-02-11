🚀 Terraform AWS Secure VPC Architecture
📌 Project Overview

This project provisions a secure AWS network architecture using Terraform.

The infrastructure includes:

Custom VPC

Public Subnet

Private Subnet

Internet Gateway

NAT Gateway

Route Tables

Security Groups (HTTP allowed)

EC2 instance inside Private Subnet

The EC2 instance is deployed securely in a private subnet and accesses the internet through a NAT Gateway.

🏗️ Architecture Design
Internet
    │
Internet Gateway
    │
Public Subnet
    │
NAT Gateway
    │
Private Subnet
    │
EC2 Instance (No Public IP)

🛠️ Technologies Used

Terraform

AWS Provider

AWS VPC

EC2

S3 (if remote backend used)

DynamoDB (for state locking)

📂 Project Structure
terraform-vpc-project/
│
├── main.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
├── .terraform.lock.hcl
├── .gitignore
└── README.md

⚙️ Prerequisites

Ensure the following are installed:

Terraform

AWS CLI

IAM user with programmatic access

Verify:

terraform -v
aws --version

🔐 AWS Configuration

Configure credentials:

aws configure


Provide:

AWS Access Key

AWS Secret Access Key

Region (e.g., ap-south-1)

Output format (json)

🚀 How to Deploy
1️⃣ Initialize Terraform
terraform init

2️⃣ Validate Configuration
terraform validate

3️⃣ Preview Changes
terraform plan

4️⃣ Apply Infrastructure
terraform apply


Type yes to confirm.

5️⃣ Destroy Infrastructure
terraform destroy

🔒 Security Design

EC2 is deployed inside Private Subnet

No public IP assigned

HTTP (Port 80) allowed in Security Group

Internet access via NAT Gateway

No direct inbound internet access to EC2

🧠 Key Concepts Implemented

Infrastructure as Code (IaC)

Declarative configuration

VPC networking

Public vs Private subnet architecture

NAT vs Internet Gateway

Route table management

Security Groups

Terraform state management

Provider version locking

🎯 Learning Outcomes

After completing this project, you understand:

How VPC networking works in AWS

Why private subnets are used for backend services

How NAT enables outbound-only internet access

How route tables control traffic

Terraform lifecycle (init → plan → apply → destroy)
