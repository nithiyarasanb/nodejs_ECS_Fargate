locals {
  bucket_name = "tf-state-nithi"
  table_name  = "tfstate"

  ecr_repo_name = "nodejs-app-ecr-repo"

  nodejs_app_cluster_name        = "nodejs-app-cluster"
  availability_zones           = ["us-east-1a", "us-east-1b", "us-east-1c"]
  nodejs_app_task_famliy         = "nodejs-app-task"
  container_port               = 3000
  nodejs_app_task_name           = "nodejs-app-task"
  ecs_task_execution_role_name = "nodejs-app-task-execution-role"

  application_load_balancer_name = "nodejs-app-alb"
  target_group_name              = "nodejs-alb-tg"

  nodejs_app_service_name = "nodejs-app-service"
}