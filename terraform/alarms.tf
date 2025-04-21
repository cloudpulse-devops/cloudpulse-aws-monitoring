resource "aws_cloudwatch_metric_alarm" "high_cpu" {
  alarm_name          = "HighCPUUsage"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300            # 5 minutes
  statistic           = "Average"
  threshold           = 70
  alarm_description   = "This alarm triggers when CPU > 70% for 5 minutes"
  dimensions = {
    InstanceId = aws_instance.cloudpulse_ec2.id
  }

  alarm_actions = [aws_sns_topic.cloudpulse_alerts.arn]
}
