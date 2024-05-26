# Use a Python runtime as base image
FROM python:3.9

# Set environment variables
ENV APP_HOME /app
ENV FLASK_ENV=development

# Set working directory in the container
WORKDIR $APP_HOME

# Copy the application files to the container
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Expose port 5000
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
