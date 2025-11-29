resource "aws_cloudwatch_dashboard" "eks_dashboard" {
  dashboard_name = "${terraform.workspace}-eks-metrics"

  dashboard_body = jsonencode({
    widgets = [
      
      {
        type   = "metric"
        x      = 0
        y      = 0
        width  = 12
        height = 6

        properties = {
          metrics = [
            ["ContainerInsights", "pod_cpu_utilization", "ClusterName", aws_eks_cluster.eks_cluster.name, { "label": "CPU Usage (%)", "color": "#ff7f0e" }],
            [".", "pod_memory_utilization", ".", ".", { "label": "Memory Usage (%)", "color": "#1f77b4" }],
            [".", "node_cpu_utilization", ".", ".", { "label": "Node CPU (%)", "color": "#d62728" }],
            [".", "node_memory_utilization", ".", ".", { "label": "Node Memory (%)", "color": "#2ca02c" }]
          ]
          view    = "timeSeries"
          stacked = false
          region  = "us-east-1"
          title   = "CPU & Memory Utilization - EKS Cluster"
          period  = 300
          stat    = "Average"
          yAxis = {
            left = {
              min = 0
              max = 100
              showUnits = false
            }
          }
        }
      },

    
      {
        type   = "metric"
        x      = 0
        y      = 6
        width  = 12
        height = 6

        properties = {
          metrics = [
            ["AWS/EKS", "scheduler_pending_pods", "ClusterName", aws_eks_cluster.eks_cluster.name, { "label": "Pending Pods", "color": "#ff9900" }],
            ["ContainerInsights", "node_filesystem_utilization", "ClusterName", aws_eks_cluster.eks_cluster.name, { "label": "Disk Usage (%)", "color": "#9467bd" }],
            ["AWS/EKS", "cluster_failed_node_count", "ClusterName", aws_eks_cluster.eks_cluster.name, { "label": "Failed Nodes", "color": "#e377c2" }],
            [".", "number_of_running_pods", ".", ".", { "label": "Running Pods", "color": "#17becf" }]
          ]
          view    = "timeSeries"
          stacked = false
          region  = "us-east-1"
          title   = "Pods & Nodes Status"
          period  = 300
        }
      },

  
      {
        type   = "metric"
        x      = 0
        y      = 12
        width  = 12
        height = 6

        properties = {
          metrics = [
            ["AWS/EKS", "apiserver_request_total_5XX", "ClusterName", aws_eks_cluster.eks_cluster.name, { "label": "5XX Errors", "color": "#d62728" }],
            [".", "apiserver_request_total_4XX", ".", ".", { "label": "4XX Errors", "color": "#ff7f0e" }],
            [".", "apiserver_current_inflight_requests_READONLY", ".", ".", { "label": "Inflight Requests", "color": "#1f77b4" }],
            [".", "apiserver_request_duration_seconds_P99", ".", ".", { "label": "P99 Latency (s)", "color": "#2ca02c" }]
          ]
          view    = "timeSeries"
          stacked = false
          region  = "us-east-1"
          title   = "API Server Performance"
          period  = 300
          stat    = "Sum"
        }
      },

      
      {
        type   = "metric"
        x      = 0
        y      = 18
        width  = 12
        height = 6

        properties = {
          metrics = [
            ["ContainerInsights", "node_network_total_bytes", "ClusterName", aws_eks_cluster.eks_cluster.name, { "label": "Network Bytes", "color": "#8c564b" }],
            [".", "pod_network_rx_bytes", ".", ".", { "label": "Network RX", "color": "#c49c94" }],
            [".", "pod_network_tx_bytes", ".", ".", { "label": "Network TX", "color": "#f7b6d2" }],
            [".", "node_network_total_bytes", ".", ".", { "label": "Total Network", "color": "#c5b0d5" }]
          ]
          view    = "timeSeries"
          stacked = false
          region  = "us-east-1"
          title   = "Network & Storage"
          period  = 300
        }
      },

   
    ]
  })
}