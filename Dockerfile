# Base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the project files
COPY . .

# Expose port (change if your app uses a different port)
EXPOSE 8000

# Start your app (change to your app's start command if needed)
CMD ["python", "main.py"]
