
variable "discord_webhook_url" {
  description = "Webhook de Discord para enviar alertas"
  type        = string
}


variable "role_arn" {
  description = "ARN del rol IAM existente para el clúster EKS"
  type        = string
}


variable "instance_types" {
  description = "Lista de tipos de instancia para los nodos de EKS"
  type        = list(string)
  default     = ["t2.small"]   
}
variable "ecr_repos" {
  description = "Lista de repositorios ECR a crear"
  type        = list(string)
  default     = ["product-service", "inventory-service", "api-gateway"]
}
