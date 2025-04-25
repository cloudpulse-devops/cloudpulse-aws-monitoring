variable "region" {
  description = "AWS region to deploy resources and dashboards"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "alert_email" {
  description = "List of emails to receive alerts"
  type        = list(string)
}