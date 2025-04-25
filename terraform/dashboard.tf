resource "aws_cloudwatch_dashboard" "cloudpulse_dashboard" {
  dashboard_name = "CloudPulse-Monitoring"

  dashboard_body = jsonencode({
    widgets = [
      {
        type = "metric"
        x = 0
        y = 0
        width = 12
        height = 6
        properties = {
          title = "EC2 CPU Utilization"
          view = "timeSeries"
          stacked = false
          metrics = [
            [ "AWS/EC2", "CPUUtilization", "InstanceId", aws_instance.cloudpulse_ec2.id ]
          ]
          period = 300
          stat = "Average"
          region = var.region
        }
      },
      {
        type = "alarm"
        x = 12
        y = 0
        width = 12
        height = 6
        properties = {
          title = "High CPU Alarm"
          alarms = [ aws_cloudwatch_metric_alarm.high_cpu.arn ]
        }
      }
    ]
  })
}

