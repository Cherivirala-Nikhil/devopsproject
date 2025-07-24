# Use official Nginx image as base
FROM nginx:alpine

# Clean default web files
RUN rm -rf /usr/share/nginx/html/*

# Copy website files to Nginx web directory
COPY . /usr/share/nginx/html

# Expose port 80 for browser access
EXPOSE 80
