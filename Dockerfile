# Pull base image
FROM python:3.10.4-slim-bullseye

# Set work directory
WORKDIR /python-web-framework

# Install dependencies
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Copy project
COPY . .

# Gunicorn
CMD ["gunicorn"  , "-b", "0.0.0.0:8000", "app:app"]