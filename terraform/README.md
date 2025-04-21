# CloudPulse – AWS Monitoring & Alerting System

## 📘 Project Overview
CloudPulse is a hands-on AWS project designed to simulate real-world infrastructure monitoring and alerting using modern DevOps tools. It uses **Terraform** to provision infrastructure, **CloudWatch** to monitor resource metrics, and **SNS** (coming in Day 3) to notify the team when usage thresholds are crossed.

---

## 📅 Project Timeline
| Day | Task |
|-----|------|
| Day 1 | Infrastructure Provisioning with Terraform (EC2, IAM, Security Group) |
| Day 2 | Install & configure CloudWatch Agent on EC2 for metrics collection |
| Day 3 | (Coming up) Set alarms & SNS email notifications for CPU, memory, and disk |

---

## ☁️ Tech Stack & Tools
- **Terraform** – Infrastructure as Code
- **Amazon EC2** – Cloud server (Amazon Linux 2)
- **AWS IAM** – Instance Role for CloudWatch access
- **Amazon CloudWatch** – Metrics collection and visualisation
- **AWS SNS** – Email alerts (configured in Day 3)
- **GitHub** – Version control & collaboration

---

## 📂 Directory Structure
```
cloudpulse-aws-monitoring/
│
├── terraform/
│   ├── main.tf                # AWS resource definitions (EC2, SG, IAM)
│   ├── providers.tf           # AWS provider setup
│   ├── variables.tf           # Input variables
│   ├── outputs.tf             # Terraform outputs (e.g., EC2 public IP)
│   ├── locals.tf              # Global tags for grouping resources
│   └── terraform.tfvars       # custom variable overrides
```

---

## ✅ Progress Summary
- [x] Terraform config structured and modular
- [x] EC2 deployed with IAM, SG, and tags
- [x] SSH access verified
- [x] CloudWatch agent installed & running
- [x] CPU, Memory, and Disk metrics visible in CloudWatch
- [ ] Alarm configuration and SNS setup (coming next)

---

## 👥 Team Collaboration
- GitHub Branch: `eazy140420`
- Commits represent each day's milestone
- Communication via slack

---

## 📈 Metrics Collected
- `cpu_usage_user`
- `cpu_usage_idle`
- `cpu_usage_system`
- `mem_used_percent`
- `disk_used_percent`

---

## 📬 Next Steps (Day 3)
- Create CPU usage alarm (e.g., >70%)
- Create SNS Topic
- Subscribe team emails
- Send alerts when thresholds are crossed
- (Optional) Auto-remediation via Lambda

---

Let's keep building 🚀