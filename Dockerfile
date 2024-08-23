# Dockerfile for book_catalog microservice

# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Root Directory
WORKDIR /book_catalog

# Copies the source code for this microservice into the image
COPY ./book_catalog .

# Set Environment Variable
ENV DATABASE_URL=postgresql://cloud_native_devops_project_aa20_user:Dj1wmYOXsb0iUA5GOFPt4CrOWzssoQDx@dpg-cr42bs3v2p9s73ckfs5g-a.oregon-postgres.render.com/cloud_native_devops_project_aa20

# Build Command
RUN pip install -r requirements.txt

# Start command
CMD uvicorn main:app --host 0.0.0.0 --port $PORT