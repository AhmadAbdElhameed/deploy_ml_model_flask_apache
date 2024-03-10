# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define environment variable for verbose logging, if desired
# ENV GUNICORN_CMD_ARGS="--log-level debug"

# Run app.py when the container launches using gunicorn and the WSGI entry point
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "predict_flask_api:app"]
