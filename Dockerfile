# Use official Python image
FROM python:3.10

# Set working directory
WORKDIR /app

# Copy requirements first (better cache)
COPY requirements.txt .

RUN apt update -y && apt install awscli -y

# Install dependencies
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 unzip -y && pip install -r requirements.txt

# Copy the entire project
COPY . .

# Expose application port
EXPOSE 5000

# Command to run Flask app
CMD ["python", "application.py"] 

