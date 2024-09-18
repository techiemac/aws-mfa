# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy all files from the current directory into the container at /app
COPY . /app

# Install any necessary dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make the aws-mfa.py script executable (if necessary)
RUN chmod +x aws-mfa

# Run aws-mfa.py when the container launches
CMD ["python", "./aws-mfa"]

