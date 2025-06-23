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

### 3. Verify Services
Visit the following in your browser or use curl:

 - http://localhost:8080/service1/ → Go service

 - http://localhost:8080/service2/ → Python service

To check health:

 - http://localhost:8080/service1/health

 - http://localhost:8080/service2/health

### 4. How Routing Works
The NGINX container acts as a reverse proxy and listens on port 8080.

 - Requests to /service1/ are forwarded to the Go service on port 8001

 - Requests to /service2/ are forwarded to the Python service on port 8002

| Route        | Target Container | Internal Port |
| ------------ | ---------------- | ------------- |
| `/service1/` | `service1`       | `8001`        |
| `/service2/` | `service2`       | `8002`        |

NGINX strips the path prefix using the rewrite directive, so backend services only need to handle / and /health.


### Project Structure
.
├── docker-compose.yml
├── nginx/
│   ├── nginx.conf
│   └── Dockerfile
├── service_1/
│   ├── main.go
│   └── Dockerfile
├── service_2/
│   ├── app.py
│   └── Dockerfile
└── README.md

### Features & Bonuses Implemented
✅ Dockerized reverse proxy using NGINX

✅ Docker Compose setup to build and run all services

✅ Clean URL path-based routing via NGINX (/service1, /service2)

✅ Health checks for both services using /health endpoints

✅ Access logs with timestamp and request path in custom format:

 - log_format custom '$time_local | $remote_addr | $request';
 
