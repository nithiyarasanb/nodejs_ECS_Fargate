# Node.js Microservice Deployment on AWS ECS Fargate

This project demonstrates the deployment of a **Node.js microservice** using **AWS ECS Fargate**. It includes CI/CD automation, infrastructure as code, auto-scaling, and monitoring.

---

## Features

- **Node.js Microservice**: Exposes a `/health` endpoint.
- **Infrastructure as Code (IaC)**: Managed with **Terraform**.
- **CI/CD Automation**: Powered by **GitHub Actions**.
- **Auto-Scaling**: Configured based on CPU utilization.
- **Monitoring**: Logs and metrics integrated with **Amazon CloudWatch**.

---

## Architecture

The solution includes the following components:

- **Node.js Application**: A microservice exposing a `/health` endpoint.
- **ECS Fargate**: Runs the containerized application.
- **Application Load Balancer (ALB)**: Exposes the service to the internet.
- **Amazon ECR**: Stores Docker images.
- **CloudWatch**: Provides logging and monitoring.
- **GitHub Actions**: Automates builds and deployments.
- **Terraform**: Provisions and manages AWS resources.

---

## Prerequisites

### Tools
- **Terraform** 
- **Docker**
- **AWS CLI**
- **Node.js** 

### AWS Services
- ECS Fargate
- Application Load Balancer (ALB)
- Amazon ECR
- IAM Roles and Policies
- CloudWatch

### Credentials
- AWS Access Key and Secret Key
- Sufficient permissions to create AWS resources

---

## Setup and Deployment

###  Clone the Repository
```bash
git clone https://github.com/nithiyarasanb/nodejs_ECS_Fargate.git
cd nodejs_ECS_Fargate
```

###  Initialize and Apply Terraform:
```bash
terraform init
terraform plan
terraform apply
```

- **Verify Deployment**

- Access the application via the ALB DNS name provided in the Terraform outputs.
- Check the /health endpoint to confirm the service is up.

###  CI/CD Pipeline

- **The pipeline includes the following stages**
- Build the Docker image.
- Push the image to Amazon ECR.
- Deploy the updated task definition to ECS Fargate.

- **GitHub Actions Workflow**

- The YAML file for the pipeline is located in .github/workflows/deploy.yml

### Scaling and Monitoring

- **Auto-scaling**
- Configured to scale up when CPU utilization exceeds 70%.
- **Monitoring**
- Logs are available in CloudWatch under the ECS log group.
- Alerts can be set up for high CPU/memory usage.

### Security Practices

- **IAM Roles**: Tasks and services use least privilege roles.
- **Secret Management**: Sensitive information is managed using GitHub secrets.
- **Security Groups**: ALB and ECS services are restricted to specific ports and IPs.

### Troubleshooting

- **Unhealthy ALB Target**
- Check the container logs in CloudWatch.
- Verify the /health endpoint is functioning.

- **Failed CI/CD**
- Confirm Dockerfile and Terraform files are in the root directory.
- Ensure GitHub secrets are configured correctly.

