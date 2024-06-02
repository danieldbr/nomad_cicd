# CI/CD for Nomad
This repository contains a simple Python Flask web server and a CI/CD pipeline using GitHub Actions to build a Docker image and deploy the application to a HashiCorp Nomad cluster.

# Project Overview
This project focuses on developing a CI/CD pipeline that creates ephemeral namespaces and provides external access to a "Hello World" HTTP application.

## Status
- **Simple CI/CD:** Completed ✅
- **Ephemeral Namespaces Creation via CI/CD Pipeline:** Pending ⏳
- **Enabling External Access to HTTP Application:** Pending ⏳

## Project Structure
- `app.py`: The Flask application file.
- `Dockerfile`: The Dockerfile to build the Flask application image.
- `flask-webserver.nomad`: The Nomad job specification file.
- `requirements.txt`: Python dependencies file.
- `.github/workflows/ci-cd.yml`: GitHub Actions workflow for CI/CD.

## Prerequisites
Before you start, ensure you have the following:

- A Docker Hub account.
- A HashiCorp Nomad cluster.
- GitHub repository secrets set up (see below).

## Setup
1. **Clone the repository**:
    ```sh
    git clone https://github.com/your-username/flask-webserver.git
    cd flask-webserver
    ```

2. **Create a Docker Hub repository**:
    - Create a new repository on Docker Hub (e.g., `your-dockerhub-username/flask-webserver`).

3. **Set up GitHub Secrets**:
    - Go to your GitHub repository.
    - Click on **Settings** > **Secrets and variables** > **Actions** > **New repository secret**.
    - Add the following secrets:
        - `DOCKER_USERNAME`: Your Docker Hub username.
        - `DOCKER_PASSWORD`: Your Docker Hub password.
        - `NOMAD_ADDR`: The address of your Nomad server.
        - `NOMAD_TOKEN`: Your Nomad ACL token (if your Nomad server requires authentication).

## Flask Application
The Flask application is a simple web server that returns "Hello Kraken" when accessed.
