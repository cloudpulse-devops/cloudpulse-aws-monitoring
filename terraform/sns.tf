resource "aws_sns_topic" "cloudpulse_alerts" {
  name = "cloudpulse-ec2-alerts"
}

resource "aws_sns_topic_subscription" "email_alert" {
  topic_arn = aws_sns_topic.cloudpulse_alerts.arn
  protocol  = "email"
  endpoint  = var.alert_email  # <-- Email address
}
