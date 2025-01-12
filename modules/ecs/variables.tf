variable "aws_region" {
  description = "AWS Region for the resources"
  type        = string
  default     = "us-east-1"
}

variable "nodejs_app_cluster_name" {
  description = "ECS Cluster Name"
  type        = string
}

variable "availability_zones" {
  description = "us-east-1 avalablitiy zone"
  type        = list(string)
}

variable "nodejs_app_task_famliy" {
  description = "ECS Task Family"
  type        = string
}

variable "ecr_repo_url" {
  description = "ECR Repo URL"
  type        = string
}

variable "container_port" {
  description = "Container Port"
  type        = number
}

variable "nodejs_app_task_name" {
  description = "ECS Task Name"
  type        = string
}

variable "ecs_task_execution_role_name" {
  description = "ECS Task Execution Role Name"
  type        = string
}

variable "application_load_balancer_name" {
  description = "ALB Name"
  type        = string
}

variable "target_group_name" {
  description = "ALB Target Group Name"
  type        = string
}

variable "nodejs_app_service_name" {
  description = "ECS Service Name"
  type        = string
}

variable "desired_count" {
  description = "Desired count of ECS service tasks"
  type        = number
  default     = 1
}

variable "health_check_path" {
  description = "Path for ALB health check"
  type        = string
  default     = "/health"
}

variable "scaling_max_capacity" {
  description = "Maximum capacity for auto-scaling"
  type        = number
  default     = 5
}

variable "scaling_min_capacity" {
  description = "Minimum capacity for auto-scaling"
  type        = number
  default     = 1
}

variable "cpu_scaling_target_value" {
  description = "Target CPU utilization percentage for scaling"
  type        = number
  default     = 70
}
