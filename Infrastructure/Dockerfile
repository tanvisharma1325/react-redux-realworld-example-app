# Start from a base image with Terraform installed
FROM hashicorp/terraform:latest

# Install TFLint
RUN apk add --no-cache curl unzip && \
    curl -sLO https://github.com/terraform-linters/tflint/releases/download/v0.20.3/tflint_linux_amd64.zip && \
    unzip tflint_linux_amd64.zip && \
    install tflint /usr/local/bin && \
    rm -f tflint_linux_amd64.zip

# Set the working directory
WORKDIR /app

# Copy your Terraform scripts into the Docker image
COPY ./terraform .

# Initialize Terraform
RUN terraform init

# Check Terraform scripts using TFLint
RUN tflint
