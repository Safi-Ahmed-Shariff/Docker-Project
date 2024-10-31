# Using the official Python image from Docker Hub
FROM python:3.9-slim

# Seting the working directory in the container
WORKDIR /app

# Copying requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copying the rest of the application code
COPY . .

# Exposing the application port
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
