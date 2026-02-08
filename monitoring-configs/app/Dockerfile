FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Install dependencies
RUN pip install --no-cache-dir flask prometheus_client

# Copy app.py file into the container
COPY app.py .

# Expose the port your Flask app runs on
EXPOSE 8080

# Command to run the application
CMD ["python", "app.py"]

