FROM python:3.11-slim

WORKDIR /app

# Install git to clone the repository
RUN apt-get update && apt-get install -y git && apt-get clean

# Clone the repository
RUN git clone https://github.com/aws-samples/bedrock-access-gateway.git .

WORKDIR /app/src
ENV PYTHONPATH=/app/src

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set the default command to run the application
CMD ["uvicorn", "api.app:app", "--host", "0.0.0.0", "--port", "8000"]