# nodejs_ECS_Fargate

Deploying Node.js Microservice on AWS ECS Fargate

### Overview
This project demonstrates the deployment of a Node.js microservice using AWS ECS Fargate. The solution includes:

A /health endpoint implemented in Node.js.
Infrastructure as Code (IaC) using Terraform.
CI/CD automation using GitHub Actions.
Auto-scaling policies based on CPU utilization.
Integration with Amazon CloudWatch for logging and monitoring.

### Prerequisites
Before proceeding, ensure you have the following:

Tools:

Terraform (v1.3 or later)
Docker
AWS CLI
Node.js (v16 or later)
AWS Services:

ECS Fargate
Application Load Balancer (ALB)
Amazon ECR
IAM Roles and Policies
CloudWatch
Credentials:

AWS access key and secret key.
Sufficient permissions for creating resources in AWS.

### Architecture

The architecture includes:

Node.js Application: A microservice exposing a /health endpoint.
ECS Fargate: To run the application as a containerized service.
ALB: To expose the service to the internet.
Terraform: For creating and managing infrastructure.
GitHub Actions: To automate Docker builds and deployments.
CloudWatch: For logging and monitoring.

### Setup and Deployment
Clone the Repository:

bash
git clone https://github.com/nithiyarasanb/nodejs_ECS_Fargate.git
cd nodejs_ECS_Fargate
Configure Environment Variables: Update the Terraform variables and GitHub secrets (AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, ECR_REPO_NAME, etc.).

Initialize and Apply Terraform:

bash
terraform init
terraform plan
terraform apply
Verify Deployment:

Access the application via the ALB DNS name provided in the Terraform outputs.
Check the /health endpoint to confirm the service is up.

### CI/CD Pipeline

The pipeline includes the following stages:
Build the Docker image.
Push the image to Amazon ECR.
Deploy the updated task definition to ECS Fargate.

GitHub Actions Workflow:

The YAML file for the pipeline is located in .github/workflows/deploy.yml

### Scaling and Monitoring

Auto-scaling:

Configured to scale up when CPU utilization exceeds 70%.
Monitoring:

Logs are available in CloudWatch under the ECS log group.
Alerts can be set up for high CPU/memory usage.

### Security Practices

IAM Roles: Tasks and services use least privilege roles.
Secret Management: Sensitive information is managed using GitHub secrets.
Security Groups: ALB and ECS services are restricted to specific ports and IPs.

### Troubleshooting

Unhealthy ALB Target:

Check the container logs in CloudWatch.
Verify the /health endpoint is functioning.

Failed CI/CD:

Confirm Dockerfile and Terraform files are in the root directory.
Ensure GitHub secrets are configured correctly.

