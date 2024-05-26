## Description

This document outlines the steps to build and deploy a Python application using Docker containers.

## Execution Steps

1. **Create an EC2 instance with ubuntu machine**: Install docker and docker compose in that instance.

1. **Clone the Repository**: Clone the repository containing the python application and Docker configuration files. Change directory into it.

2. **Building the Docker Image**: Run the following command to build the Docker image:
   ```sh
   docker build -t flask-app .
3. **Deploying the containers**: Run the following command to deploy the containers:
   ```sh
   docker-compose up -d
4. **Accessing the application**: Once the containers are deployed, access the application using the public IP address of your EC2 instance. Use the following endpoints to test the application:
   ```sh
   / - Hello world endpoint
   /status - Status endpoint
   /palindrom/<text> - Endpoint to check if text is a palindrome
   /admin - Admin area
   /redis-hits - Endpoint to test Redis connection

## Testing Steps

You can Access the Hello World Endpoint like:
```sh
http://public-ip-address-of-instance:5000/

You can Access the Status Endpoint like:
```sh
http://public-ip-address-of-instance:5000/status
