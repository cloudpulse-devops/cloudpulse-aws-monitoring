resource "aws_sns_topic" "cloudpulse_alerts" {
  name = "cloudpulse-ec2-alerts"
}

resource "aws_sns_topic_subscription" "email_alerts" {
  count     = length(var.alert_email)
  topic_arn = aws_sns_topic.cloudpulse_alerts.arn
  protocol  = "email"
  endpoint  = var.alert_email[count.index]
}

resource "aws_sns_topic_subscription" "lambda_sub" {
  topic_arn = aws_sns_topic.cloudpulse_alerts.arn
  protocol  = "lambda"
  endpoint  = aws_lambda_function.stop_ec2.arn
}

resource "aws_lambda_permission" "allow_sns" {
  statement_id  = "AllowExecutionFromSNS"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.stop_ec2.function_name
  principal     = "sns.amazonaws.com"
  source_arn    = aws_sns_topic.cloudpulse_alerts.arn
}

