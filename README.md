# Electric_bill_analyser
A cloud-native electricity bill analysis platform that explains subsidy calculations, free units, demand charges, and billing structure.
Problem Statement

Electricity bills are often difficult for consumers to understand because they include:

Subsidized units
Free units
Demand charges
Fixed charges
Government subsidies
Slab-based pricing

This project simplifies the process by providing a transparent breakdown of how the final bill amount is calculated.

Core Features
Bill Analysis

Users can enter meter readings and billing information to calculate:

Units consumed
Free units
Subsidized units
State subsidy
Demand charge
Fixed charge
Final payable amount
Detailed Calculation Explanation

The application explains:

How free units are applied
How slab rates work
How government subsidy is calculated
Why demand charges are added
Difference between subsidized and non-subsidized consumption

This improves transparency and user understanding.

Technical Architecture
User Browser
      ↓
Nginx Web Server
      ↓
Docker Container
      ↓
AWS EC2 Instance
      ↓
Provisioned using Terraform
Technologies Used
Frontend
HTML
CSS
JavaScript

The frontend provides an interactive interface for bill analysis and calculation visualization.

Docker

The application is containerized using Docker to ensure:

Consistent deployment
Environment portability
Simplified infrastructure management
Faster application setup
Docker Responsibilities
Package application
Serve static files through Nginx
Standardize runtime environment
AWS

The application is deployed on AWS infrastructure.

AWS Services Used
EC2 for compute hosting
Security Groups for network access control
Elastic IP for public accessibility
Why AWS
Scalable infrastructure
Industry-standard cloud platform
Production-style deployment workflow
Terraform

Infrastructure provisioning is fully automated using Terraform.

Terraform Responsibilities
Create EC2 instance
Configure networking
Manage security groups
Automate infrastructure setup
Benefits
Infrastructure as Code
Reproducible environments
Version-controlled infrastructure
Automated provisioning
CI/CD with GitHub Actions

A CI/CD pipeline automates deployment workflows.

Pipeline Tasks
Validate Terraform configuration
Build Docker image
Push deployment updates
Automate infrastructure deployment

This demonstrates DevOps automation practices.

Engineering Highlights
Cloud-Native Design

The application is designed with cloud deployment principles in mind rather than being only a local web application.

Infrastructure as Code

All cloud resources are managed through Terraform instead of manual AWS configuration.

This improves:

Reliability
Repeatability
Scalability
Containerized Deployment

Docker ensures the application behaves consistently across:

Local development
Testing
Production deployment
Real-World Utility Domain Logic

The project models real electricity billing concepts such as:

Subsidy handling
Slab-based pricing
Demand charges
Government billing policies
Why This Project Is Valuable

This project demonstrates skills across multiple domains:

Area	Skills Demonstrated
Frontend	HTML, CSS, JavaScript
DevOps	Docker, CI/CD
Cloud	AWS EC2 deployment
Infrastructure	Terraform
System Design	Deployment architecture
Problem Solving	Utility billing analysis
