
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

