# 🚀 Full-Stack Observability on AWS with Terraform, Docker, Prometheus, Grafana & Loki

This project demonstrates a complete **end-to-end DevOps / SRE observability setup** on AWS using **Infrastructure as Code (Terraform)** and a **containerized monitoring stack**. It provides real-time metrics and log visualization for a Python application running on **EC2** in **Frankfurt (eu-central-1)**.

---

## 🧱 Architecture Overview

**Terraform provisions:**
- EC2 instance in **eu-central-1**
- Security Groups (SSH, Grafana, Prometheus, Loki, Python App)
- User Data script (`userdata.sh`) to install **Docker & Docker Compose**

**On EC2 boot:**
- Docker and Docker Compose installed automatically
- Docker Compose launches:
  - **Grafana** → dashboards & visualization
  - **Prometheus** → metrics collection
  - **Loki** → log aggregation
  - **Promtail** → log shipping
  - **Python App** → sample workload

**Load generation:**
- Produces CPU & application metrics
- Generates logs
- Visualized in Grafana dashboards

---

## 🛠️ Tech Stack

| Layer        | Technology                          |
|-------------|-------------------------------------|
| Cloud        | AWS EC2 (eu-central-1 / Frankfurt) |
| IaC          | Terraform                           |
| OS           | Ubuntu (EC2)                        |
| Containers   | Docker, Docker Compose              |
| Monitoring   | Prometheus                          |
| Visualization| Grafana                             |
| Logging      | Loki, Promtail                      |
| Application  | Python (containerized)              |

---

## 📸 Screenshots

The project includes screenshots for:
- Terraform `init`, `plan`, and `apply`
- EC2 instance running in AWS
- Security Groups and opened ports
- SSH access to EC2
- Docker & Docker Compose installation
- Docker Compose build & running containers
- Prometheus, Grafana, Loki, and Promtail dashboards
- Real-time metrics and logs in Grafana

*(Place your images in the*

