# 🚀 DevOps Intern Assignment: NGINX Reverse Proxy + Docker Compose

This project sets up a reverse proxy system using **NGINX**, **Docker**, and **Docker Compose**. It includes two backend services:

- A Golang-based web service
- A Python Flask-based web service

All services are containerized and routed via an NGINX reverse proxy running on a single port (`8080`).

---

## 🛠️ Setup Instructions

### 1. Clone the Repository

git clone https://github.com/Dhavalpr0310/Devops-Internship-Assignment.git
cd Devops-Internship-Assignment

### 2. Build and Start the System
docker compose up --build -d
