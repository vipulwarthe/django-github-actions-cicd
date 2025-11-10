# Use official Python image
FROM python:3.10

# Set working directory
WORKDIR /app

# Copy requirements first (better cache)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project
COPY . .

# Expose application port
EXPOSE 5000

# Command to run Flask app
CMD ["python", "application.py"]

