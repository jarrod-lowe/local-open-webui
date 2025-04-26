#!/bin/bash

# Set the AWS SSO session and profile
SSO_SESSION="jarrodl"
AWS_PROFILE="open-webui-access"

# Function to check if the SSO session is valid
is_sso_session_valid() {
  aws sts get-caller-identity --profile "$AWS_PROFILE" > /dev/null 2>&1
  return $?
}

# Check if the SSO session is valid
echo "Checking if AWS SSO session is valid..."
if is_sso_session_valid; then
  echo "Valid AWS SSO session found. Skipping login."
else
  echo "No valid AWS SSO session found. Logging in..."
  aws sso login --sso-session "$SSO_SESSION"

  if [ $? -ne 0 ]; then
    echo "AWS SSO login failed. Exiting."
    exit 1
  fi
fi

# Bring up the Docker containers
echo "Starting Docker containers..."
docker-compose up -d

if [ $? -eq 0 ]; then
  echo "Docker containers started successfully."
else
  echo "Failed to start Docker containers."
  exit 1
fi
