📦 What is .terraform.lock.hcl?

.terraform.lock.hcl is a dependency lock file.

It locks the exact versions of providers Terraform uses.

Think of it like:

package-lock.json (Node.js)

requirements.txt lock (Python)

🧠 Why It Exists?

When you run:

terraform init


Terraform downloads provider plugins like:

hashicorp/aws v6.31.0


Without a lock file:

Next time someone runs terraform init

Terraform may download a newer version (e.g., v6.32.0)

That might break your infrastructure

So Terraform creates:

.terraform.lock.hcl


To ensure everyone uses the same provider version.

🔎 What’s Inside It?

Open it:

cat .terraform.lock.hcl


You’ll see something like:

provider "registry.terraform.io/hashicorp/aws" {
  version     = "6.31.0"
  constraints = ">= 6.0.0"
  hashes = [
    "h1:abcxyz...",
  ]
}


It stores:

Provider name

Exact version

Checksum (security validation)

🔐 Why Hashes Are Important?

Hashes ensure:

Provider plugin is authentic

No tampering

Secure download

Terraform verifies integrity.

🚀 Should You Commit This File?

✅ YES — always commit .terraform.lock.hcl to Git.

Why?

Ensures consistent provider versions

Avoids "works on my machine" issues

Stable CI/CD pipelines

Reproducible builds

❌ Should You Commit .terraform/ Folder?

No.

Add to .gitignore:

.terraform/


But DO commit:

.terraform.lock.hcl

🔄 What If You Want to Upgrade Provider?

Run:

terraform init -upgrade


Terraform will:

Download newer provider

Update .terraform.lock.hcl

Then commit the updated file.

🎯 Interview Answer

The .terraform.lock.hcl file locks provider versions and their checksums to ensure consistent and secure Terraform runs across different environments and team members.

🔥 One-Line Summary

.terraform.lock.hcl ensures Terraform uses the exact same provider versions every time.

You now understand:

Providers

State

Lock file

Init lifecycle

You’re building strong fundamentals 🔥

Next level:
Do you want to build full VPC project now or move into modules properly? 🚀

readme.md

Perfect 🔥
Now let’s create a professional README.md for your Terraform VPC project (Custom VPC + Public/Private Subnet + NAT + Private EC2).

You can copy this directly into your repo.

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
