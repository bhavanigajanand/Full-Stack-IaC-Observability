🚀 Full-Stack IaC Observability on AWS with Terraform, Docker, Prometheus, Grafana & Loki

This project demonstrates a complete end-to-end DevOps / SRE observability setup using Infrastructure as Code (Terraform) and a containerized monitoring stack on AWS EC2 (Frankfurt / eu-central-1).

It covers:

Automated EC2 provisioning with Terraform

Bootstrapping EC2 with User Data (Docker & Docker Compose install)

Running a Python application in Docker

Collecting metrics with Prometheus

Visualizing dashboards with Grafana

Aggregating logs with Loki + Promtail

Verifying everything using stress/load testing

End-to-end validation with real running containers and dashboards

🧱 High-Level Architecture

Terraform provisions:

EC2 instance in eu-central-1

Security Groups (ports for SSH, Grafana, Prometheus, Loki, App)

User Data script (userdata.sh) to install Docker & Docker Compose

On EC2 boot:

Docker and Docker Compose are installed automatically

Using Docker Compose, the following services are started:

Grafana (Dashboards & Visualization)

Prometheus (Metrics)

Loki (Logs)

Promtail (Log shipper)

Python App (Sample workload)

Load is generated to:

Produce CPU & application metrics

Generate logs

Visualize everything in Grafana dashboards

🛠️ Tech Stack

Cloud: AWS EC2 (eu-central-1 / Frankfurt)

IaC: Terraform

OS: Ubuntu on EC2

Containers: Docker, Docker Compose

Monitoring: Prometheus

Visualization: Grafana

Logging: Loki, Promtail

Application: Python (containerized)

📸 Screenshots

This project includes real screenshots showing:

Terraform init, plan, and apply output

EC2 instance running in AWS (Frankfurt region)

Security Groups with opened ports

SSH access to the EC2 instance

Docker and Docker Compose versions installed

Docker Compose build and containers running

Prometheus, Grafana, Loki, and Promtail containers

Grafana dashboards with metrics

Loki logs visible in Grafana

(You can place your images in the repository and reference them here, for example: screenshots/terraform-apply.png, screenshots/grafana-dashboard.png, etc.)

📊 Observability Features

Metrics scraping with Prometheus

Dashboards in Grafana

Log aggregation with Loki

Log shipping with Promtail

Real containers running on EC2

Real-time monitoring of a live workload

🎯 What This Project Demonstrates

Infrastructure provisioning with Terraform

Automated bootstrapping using EC2 User Data

Running a full observability stack with Docker Compose

Monitoring applications and system metrics

Centralized logging with Loki

Cloud + Containers + Observability integration

📌 Future Improvements

Add Alertmanager for alerts

Add Auto Scaling Group + Load Balancer

Add HTTPS with Nginx / Traefik

Add CI/CD (GitHub Actions)

Use S3 + DynamoDB for Terraform remote state

Add authentication to Grafana

Add more advanced dashboards

👤 Author

Bhavani Gajanand
GitHub: https://github.com/bhavanigajanand
