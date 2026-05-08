# Electricity Bill Analyzer

A cloud-native electricity billing analysis platform built using HTML, CSS, JavaScript, Docker, AWS, and Terraform.

The project analyzes electricity consumption and explains how different billing components such as subsidies, free units, slab rates, demand charges, and fixed charges contribute to the final electricity bill.

---

# Project Overview

Electricity bills are often difficult for consumers to understand because they include:

* Subsidized units
* Free units
* Demand charges
* Fixed charges
* Government subsidies
* Slab-based pricing

This project simplifies the process by providing a transparent breakdown of electricity bill calculations.

The application was also designed as a cloud-native deployment project to demonstrate:

* Docker containerization
* AWS cloud deployment
* Terraform Infrastructure as Code
* CI/CD automation
* Production-style deployment architecture

---

# Features

## Electricity Bill Analysis

The application calculates:

* Units consumed
* Free units
* Subsidized units
* State subsidy
* Demand charge
* Fixed charge
* Final payable amount

---

## Detailed Billing Explanation

The platform explains:

* How free units are applied
* How slab rates work
* How subsidies are calculated
* Why demand charges are included
* Difference between subsidized and non-subsidized units

This improves billing transparency and user understanding.

---

# Tech Stack

| Category               | Technologies          |
| ---------------------- | --------------------- |
| Frontend               | HTML , JavaScript |
| Containerization       | Docker                |
| Cloud Platform         | AWS EC2               |
| Infrastructure as Code | Terraform             |
| Web Server             | Nginx                 |
| CI/CD                  | GitHub Actions        |

---

# Architecture

```txt
User Browser
      ↓
Nginx Web Server
      ↓
Docker Container
      ↓
AWS EC2 Instance
      ↓
Provisioned using Terraform
```

---

# Docker Implementation

The application is containerized using Docker to ensure:

* Consistent deployment environments
* Simplified application setup
* Better scalability
* Portable deployment workflow

## Docker Responsibilities

* Package application
* Serve static files through Nginx
* Standardize runtime environment

---

# AWS Deployment

The application is deployed on AWS infrastructure.

## AWS Services Used

* EC2 for compute hosting
* Security Groups for network access control
* Elastic IP for public accessibility

## Why AWS

* Scalable cloud infrastructure
* Production-ready deployment
* Industry-standard cloud platform

---

# Terraform Infrastructure

Infrastructure provisioning is fully automated using Terraform.

## Terraform Responsibilities

* Create EC2 instance
* Configure security groups
* Manage networking rules
* Automate infrastructure provisioning

## Benefits

* Infrastructure as Code
* Reproducible environments
* Version-controlled infrastructure
* Automated cloud provisioning

---

# CI/CD Pipeline

GitHub Actions is used to automate deployment workflows.

## Pipeline Tasks

* Validate Terraform configuration
* Build Docker image
* Deploy application updates
* Automate infrastructure deployment

This demonstrates modern DevOps automation practices.

---

# Repository Structure

```txt
Electricity-Bill-Analyzer/
│
├── app/
│   ├── index.html
│   ├── result.html
├── docker/
│   └── Dockerfile
├── terraform/
│   └── main.tf
└──  README.md
```

---

# Local Setup

## Clone Repository

```bash
git clone <https://github.com/SaurabhKr88/Electric_bill_analyser.git>
cd Electricity-Bill-Analyzer
```

---

# Run with Docker

## Build Docker Image

```bash
docker build -t electricity-bill-analyzer .
```

## Run Container

```bash
docker run -d -p 8080:80 electricity-bill-analyzer
```

The application will be available at:

```txt
http://localhost:8080
```

---

# Terraform Deployment

## Initialize Terraform

```bash
terraform init
```

## Apply Infrastructure

```bash
terraform apply
```

Terraform provisions AWS infrastructure automatically.

---

# Engineering Highlights

## Cloud-Native Design

The application is designed for cloud deployment rather than only local execution.

---

## Infrastructure as Code

All cloud resources are managed using Terraform instead of manual AWS configuration.

---

## Containerized Deployment

Docker ensures consistent behavior across:

* Local development
* Testing
* Production deployment

---

## Real-World Utility Domain Logic

The platform models actual electricity billing concepts such as:

* Slab-based pricing
* Subsidy handling
* Demand charges
* Government billing policies

---

# Skills Demonstrated

| Domain                    | Skills                   |
| ------------------------- | ------------------------ |
| Frontend Development      | HTML, JavaScript    |
| Cloud Engineering         | AWS EC2                  |
| DevOps                    | Docker, GitHub Actions   |
| Infrastructure Automation | Terraform                |
| Deployment Architecture   | Nginx, Cloud Deployment  |
| Problem Solving           | Utility billing analysis |

---

# Future Improvements

Potential future enhancements:

* Backend integration using Node.js and Express
* Database integration using PostgreSQL or DynamoDB
* User authentication
* Bill history analytics
* HTTPS with Load Balancer and ACM
* Monitoring with CloudWatch and Grafana

---

# Portfolio Positioning

This project demonstrates the ability to:

* Build cloud-native applications
* Containerize applications using Docker
* Provision infrastructure using Terraform
* Deploy applications on AWS
* Implement CI/CD workflows
* Design scalable deployment architecture

---

# Author

Saurabh Kumar
