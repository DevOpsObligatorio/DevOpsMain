
output "lambda_function_name" {
  description = "Nombre de la función Lambda"
  value       = aws_lambda_function.pipeline_notify.function_name
}

output "eks_cluster_name" {
  description = "Nombre del clúster EKS creado por este módulo"
  value       = aws_eks_cluster.eks_cluster.name
}

output "eks_node_group_name" {
  description = "Nombre del Node Group asociado al clúster EKS"
  value       = aws_eks_node_group.node_group.node_group_name
}


output "ecr_repositories_urls" {
  value = {
    for repo, data in aws_ecr_repository.repos :
    repo => data.repository_url
  }
}

output "eks_dashboard_name" {
  description = "Nombre del dashboard de métricas EKS"
  value       = aws_cloudwatch_dashboard.eks_dashboard.dashboard_name
}

output "eks_high_cpu_alarm_name" {
  description = "Nombre de la alarma de CPU alta"
  value       = aws_cloudwatch_metric_alarm.eks_high_cpu.alarm_name
}


output "eks_high_memory_alarm_name" {
  description = "Nombre de la alarma de memoria alta"
  value       = aws_cloudwatch_metric_alarm.eks_high_memory.alarm_name
}
