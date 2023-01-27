# Pull base image
FROM python:3.9

# Set env variables and work dir
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV APP_DIR = "/code"

WORKDIR $APP_DIR

# Allows docker to cache installed dependencies between builds
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Mounts the application code to the image
COPY . .
