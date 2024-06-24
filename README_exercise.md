# **Task 1 Dockerizing the application - Write a Dockerfile to containerize the React application.**

This document details the necessary steps to deploy this application within a Docker container. 

## **Deployment Steps**

The dockerizing process involves the following sequence of actions:

1. **Fetching the most recent Node.js application**
2. **Installing all necessary dependencies**
3. **Initiating the application**

## **Running the Application**

Please follow the instructions below to run the application:

1. **Ensure Docker is installed on your machine.**
2. **Navigate to the project directory using the `cd\<project-folder>` command.**
3. **Build the Docker image using the command:** `docker build -t <image-name> .`
4. **Start the application within the Docker container using the command:** `docker run -p <host-port>:<container:port> <image-name>`
5. **Access the application by inputting `localhost:<port-name>/` into your web browser.**

Please follow these instructions carefully to successfully deploy and run the application using Docker.

# **Task 2: Infrastructure Provisioning with Terraform**
Uses Terraform for setting up the required cloud infrastructure, such as AWS.

## **Infrastructure Deployment with Terraform**
The Terraform scripts for setting up the infrastructure can be found in the `infrastructure` folder of the project directory. These scripts are organized into several modules, each representing an AWS service required for deployment on AWS. The AWS services provisioned through these scripts include ECS, Load Balancer, IAM roles, Route53 for DNS, ACM for TLS certificate creation, CloudWatch for application monitoring, and alarms for notifications.

## **Executing the Terraform Scripts**
Follow the instructions below to run the application:

1. **Ensure Docker is installed on your machine.**
2. **Navigate to the project directory by using the `cd <project-folder>\Infrastructure` command.**
3. **Build the Docker image with the command:** `docker build -t <terraform-image-name> .`
4. **As I don't have AWS Credentials, validation of the Terraform scripts can be done by running the 'validate' command:** `docker run -p <image-name> validate`
5. **The above steps will result in a success or an error message, indicating the validity of the Terraform scripts.**

# **Task 3: CICD with Jenkins**
Used Jenkins for CICD . For this tasks I have created another folder CICD pipeline. I have created a dummy pipeline with all stages to demonstrate how I will build CICD pipeline for this project. You can run the Jenkins in a the container just for demo purposes.


## **Executing the Jenkins Scripts**
Follow the instructions below to run the application:

1. **Ensure Docker is installed on your machine.**
2. **Navigate to the project directory by using the `cd <project-folder>\CICD` command.**
3. **Build the Docker image with the command:** `docker build -t <jenkins-image-name> -v <home-directory>:/var/jenkins_home/ .`

# **Task 4: Monitoring and Logging:**
Monitoring for this application is done through cloudwatch and cloudwatch alarm. In this case I have set up the cloudwatch alarms
which will trigger if the number of 4xx errors or 5xx errors are more than the defined threshold. Also If the CPU and Memory utilization 
greater than defined threshold.

# **Task 5: Secret Management:**
Secrets are stored in the Jenkins credentials and then move securely in the AWS Secret Manager through Jenkins stage that can be made available to
Application running. 
