# Local OpenWebUI Instance

This project sets up a multi-container application using Docker Compose. It includes the following components:

- **open-webui**: A web user interface for interacting with the application.
- **bedrock-gateway**: An openai to bedrock gateway.

## Project Structure

```plain
local-open-webui
├── docker-compose.yml
├── open-webui
│   └── Dockerfile
├── bedrock-gateway
│   └── Dockerfile
│   start.sh
└── README.md
```

## Getting Started

### Prerequisites

- Docker
- Docker Compose

### Setup

1. Navigate to the project directory:

   ```sh
   cd docker-compose-project
   ```

1. Build and start the containers:

   ```sh
   docker-compose up --build
   ```

### Accessing the Application

- The **open-webui** will be accessible at `http://localhost:8080`.
- The **bedrock-gateway** will be accessible at `http://localhost:8000`.

### AWS Access

Ensure that you are logged into AWS.
