## Description

This document outlines the steps to build and deploy a Python application using Docker containers.

## Execution Steps

1. **Create an EC2 instance with ubuntu machine**: Install docker and docker compose in that instance.

1. **Clone the Repository**: Clone the repository containing the python application and Docker configuration files. Change directory into it.

2. **Building and start the containers**: Run the following command to build and run the containers:
   ```sh
   docker-compose up --build -d

3. **Initialize the Database**: Open a new terminal and run:
   ```sh
   docker-compose exec app python create_db.py
   
4. **Accessing the application**: Once the containers are deployed, access the application using the public IP address of your EC2 instance. Use the following endpoints to test the application:
   ```sh
   / - Hello world endpoint
   /status - Status endpoint
   /palindrom/<text> - Endpoint to check if text is a palindrome
   /admin - Admin area
   /redis-hits - Endpoint to test Redis connection

## Testing Steps

1. **You can Access the Hello World Endpoint like**:
   ```sh
   http://public-ip-address-of-instance:5000/

2. **You can Access the Status Endpoint like**:
   ```sh
   http://public-ip-address-of-instance:5000/status

You can test the other endpoints as I've mentioned the endpoints in the 4th step of execution section.
