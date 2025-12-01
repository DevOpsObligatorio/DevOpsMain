resource "aws_sns_topic" "eks_alerts" {
  name = "${terraform.workspace}-eks-alerts"
}
resource "aws_sns_topic_subscription" "lambda_sub" {
  topic_arn = aws_sns_topic.eks_alerts.arn
  protocol  = "lambda"
  endpoint  = aws_lambda_function.pipeline_notify.arn
}
resource "aws_lambda_permission" "sns_invoke" {
  statement_id  = "AllowSNSInvoke"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.pipeline_notify.function_name
  principal     = "sns.amazonaws.com"
  source_arn    = aws_sns_topic.eks_alerts.arn
}
resource "aws_cloudwatch_metric_alarm" "eks_high_cpu" {
  alarm_name          = "${terraform.workspace}-eks-high-cpu"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "pod_cpu_utilization"
  namespace           = "ContainerInsights"
  period              = "300"
  statistic           = "Average"
  threshold           = "2"  
  alarm_description   = "Alerta cuando el uso de CPU supera 2%"
  alarm_actions       = [aws_sns_topic.eks_alerts.arn]

  dimensions = {
    ClusterName = aws_eks_cluster.eks_cluster.name
  }
}
resource "aws_cloudwatch_metric_alarm" "eks_high_memory" {
  alarm_name          = "${terraform.workspace}-eks-high-memory"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "pod_memory_utilization"
  namespace           = "ContainerInsights"
  period              = "300"
  statistic           = "Average"
  threshold           = "2" 
  alarm_description   = "Alerta cuando el uso de memoria supera 2%"
  alarm_actions       = [aws_sns_topic.eks_alerts.arn]

  dimensions = {
    ClusterName = aws_eks_cluster.eks_cluster.name
  }
}


resource "aws_eks_addon" "cloudwatch_observability" {
  cluster_name = aws_eks_cluster.eks_cluster.name
  addon_name   = "amazon-cloudwatch-observability"
}