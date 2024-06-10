# CI/CD for Nomad
This repository contains a simple Python Flask web server and a CI/CD pipeline using GitHub Actions to build a Docker image and deploy the application to a HashiCorp Nomad cluster.

# Project Overview
This project focuses on developing a CI/CD pipeline that creates ephemeral namespaces and provides external access to a "Hello World" HTTP application.
<br>
<br>
Ephemeral namespaces provide a convenient solution for development and testing by offering isolated environments that automatically clean up resources upon completion, ensuring optimal resource utilization, and simplified management.

## Status
- **Simple CI/CD:** Completed ✅
- **Ephemeral Namespaces Creation via CI/CD Pipeline:** Pending ⏳
- **Enabling External Access to HTTP Application:** Pending ⏳

## Project Structure
- `app.py`: The Flask application file.
- `Dockerfile`: The Dockerfile to build the Flask application image.
- `flask-webserver.nomad`: The Nomad job specification file.
- `requirements.txt`: Python dependencies file.
- `.github/workflows/cicd.yml`: GitHub Actions workflow for CI/CD.
