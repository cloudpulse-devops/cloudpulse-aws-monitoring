resource "aws_iam_role" "lambda_exec" {
  name = "cloudpulse-lambda-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Effect = "Allow",
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_policy" "stop_ec2_policy" {
  name        = "StopEC2Policy"
  description = "Allows Lambda to stop EC2 instances"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect = "Allow",
      Action = "ec2:StopInstances",
      Resource = "*"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "lambda_ec2" {
  role       = aws_iam_role.lambda_exec.name
  policy_arn = aws_iam_policy.stop_ec2_policy.arn
}
resource "aws_lambda_function" "stop_ec2" {
  function_name    = "cloudpulse-stop-ec2"
  role             = aws_iam_role.lambda_exec.arn
  handler          = "stop_ec2.lambda_handler"
  runtime          = "python3.9"

  filename         = "lambda/stop_ec2.zip"
  source_code_hash = filebase64sha256("lambda/stop_ec2.zip")
}

