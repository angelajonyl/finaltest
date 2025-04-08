# Use a lightweight official Python image
FROM python:3.13-slim

# Set the working directory inside the container
WORKDIR /app

# Install Flask and Gunicorn directly
RUN pip install --no-cache-dir flask gunicorn

# Copy your application code into the container
COPY . .

# Expose the port that Flask uses (default is 5000)
EXPOSE 5000

# Run Gunicorn to serve the Flask application
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
