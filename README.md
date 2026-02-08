# Full-Stack IaC & Observability Suite

A DevOps project focused on automated infrastructure provisioning and a complete observability pipeline (**Prometheus, Grafana, Loki**) on AWS.

## 🚀 Project Overview
This project demonstrates how to provision an AWS EC2 instance in the Frankfurt region (`eu-central-1`) using **Terraform** and automatically prepare it for containerized workloads. By using **EC2 User Data**, the system arrives pre-configured with Docker and Docker Compose, ready to host a full monitoring stack.

### Key Features
* **Infrastructure as Code:** Provisioning a t3.micro instance and custom Security Groups via Terraform.
* **Automated Bootstrapping:** Used User Data scripts to install Docker (v29.2.1) and Docker Compose (v5.0.2) upon launch.
* **Full-Stack Monitoring:** Integrated Prometheus for metrics collection and Grafana Loki for log aggregation.
* **Stress Analysis:** Tested the system under load to validate real-time alerting and dashboard accuracy.

---

## 🛠️ Tech Stack
* **Cloud:** AWS (EC2, Security Groups)
* **IaC:** Terraform
* **Containerization:** Docker & Docker Compose
* **Observability:** Prometheus, Loki, Promtail, and Grafana

---

## ⚙️ Infrastructure & Security
The Terraform configuration automates the creation of the instance and a Security Group with the following ingress rules to allow monitoring traffic:

| Service | Port | Description |
| :--- | :--- | :--- |
| **SSH** | 22 | Remote Management |
| **Web App** | 8080 | Flask Application UI |
| **Grafana** | 3000 | Visualization Dashboards |
| **Prometheus**| 9090 | Metrics Time-Series DB |
| **Loki** | 3100 | Log Aggregation Engine |

---

## 📊 Observability in Action

After launching the stack, I performed a stress test to see how the monitoring tools reacted. 

* **Baseline:** The app started at ~45 requests per minute.
* **Stress Performance:** Under load, traffic spiked to **245 requests per minute**, visualized instantly on the Grafana dashboard.
* **Log Correlation:** Used Loki and Promtail to verify that application logs were being ingested correctly during the traffic surge.

### Metrics & Dashboards
![Baseline Metrics](05Dashboards.jpg)
*Visualizing the transition from baseline to stress performance.*

---

### 📝 Note on the Application
The Python Flask application used in this project was sourced online to serve as a generator for metrics and logs. The primary focus of this project is the **IaC automation** and the **configuration of the observability stack** (Prometheus/Loki/Grafana) rather than the application development itself.

---
**Developed by:** Bhavani Gajanand
