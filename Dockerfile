# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Python script to the container
COPY script/generate_file.py /app/generate_file.py

# Install cron
RUN apt-get update && apt-get install -y cron

# Add the cron job
RUN echo "* * * * * python /app/generate_file.py && cp /app/timestamped_file.txt /app/copied_file.txt" > /etc/cron.d/my-cron-job

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/my-cron-job

# Apply cron job
RUN crontab /etc/cron.d/my-cron-job

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

# Run the command on container startup
CMD cron && tail -f /var/log/cron.log
