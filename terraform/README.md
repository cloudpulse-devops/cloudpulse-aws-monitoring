Here’s your updated and **final README** for the completed **CloudPulse – AWS Monitoring & Alerting System** project, including SNS, alarms, Lambda auto-remediation, and the CloudWatch dashboard:

---

# 🌩️ CloudPulse – AWS Monitoring & Auto-Remediation System

## 📘 Project Overview
**CloudPulse** is a complete, real-world AWS monitoring and alerting solution built using **Terraform**. It provisions infrastructure, collects EC2 metrics using **CloudWatch Agent**, sets up **CloudWatch Alarms**, and delivers notifications via **SNS**. Additionally, it includes **Lambda auto-remediation** to automatically stop instances when critical thresholds are crossed. A custom **CloudWatch Dashboard** provides centralized visibility.

---

## ☁️ Tech Stack & Tools

- **Terraform** – Infrastructure as Code  
- **AWS EC2** – Compute instance (Amazon Linux 2)  
- **CloudWatch** – Monitoring and metric alarms  
- **SNS** – Notifications via email and Lambda  
- **AWS Lambda** – Auto-remediation logic (stops EC2)  
- **IAM** – Role-based access for EC2 and Lambda  
- **GitHub** – Version control and collaboration  
- **Draw.io** – Architecture diagram  

---

## 📂 Project Structure

```
cloudpulse-aws-monitoring/
│
├── terraform/
│   ├── main.tf              # Infrastructure resources
│   ├── alarms.tf            # CloudWatch alarm definitions
│   ├── sns.tf               # SNS topic, subscriptions, and Lambda trigger
│   ├── lambda.tf            # IAM role + Lambda setup for EC2 stop
│   ├── dashboard.tf         # CloudWatch dashboard setup
│   ├── providers.tf         # AWS provider config
│   ├── variables.tf         # All variables used
│   ├── outputs.tf           # Output values (e.g., EC2 IP)
│   ├── locals.tf            # Resource tagging
│   ├── terraform.tfvars     # Custom variable values
│   └── lambda/stop_ec2.py   # Python function to stop EC2
```

---

## ✅ Features & Completed Tasks

- [x] Terraform IAC setup and modular structure  
- [x] EC2 instance with IAM Role + Security Group  
- [x] CloudWatch Agent installed + metrics visible  
- [x] CloudWatch Alarm for CPU > 70%  
- [x] SNS Topic + Email alert subscription  
- [x] Lambda triggered by SNS for EC2 shutdown  
- [x] IAM permissions for Lambda to stop EC2  
- [x] Custom CloudWatch dashboard for live monitoring  

---

## 📈 CloudWatch Metrics Collected

- `cpu_usage_user`  
- `cpu_usage_idle`  
- `cpu_usage_system`  
- `mem_used_percent`  
- `disk_used_percent`

---

## 🚨 Alerting & Automation Logic

- **CloudWatch Alarm:** Triggers when CPU > 70% for 5 mins  
- **SNS Topic:** Sends alerts to subscribed email addresses  
- **Lambda (Auto-Remediation):** Subscribed to SNS; stops EC2 automatically  

---

## 📊 Dashboard Widgets

- **EC2 CPU Utilization Graph**  
- **High CPU Alarm Status Panel**

---

## 🔐 IAM Roles & Security

- **EC2 Role:** Grants permission to publish metrics to CloudWatch  
- **Lambda Role:** Grants `ec2:StopInstances` action for remediation  

---

## 🧑‍💻 Collaboration
- Daily commits reflect progress stages  
- Architecture diagram built with Draw.io  
- Slack used for team updates and reviews  

---

## 📸 Architecture Diagram

![CloudPulse Architecture](./assets/cloudpulse_architecture.png) <!-- (Replace with your final diagram path) -->

---

## 🔚 Final Thoughts

CloudPulse is a fully functional AWS monitoring solution with alerting and automated recovery. It simulates real DevOps monitoring and incident response workflows — great for portfolio, job interviews, and production scenarios.

Let’s keep building 🚀

---

Would you like me to save this as a downloadable `README.md` file for you?