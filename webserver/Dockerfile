FROM nginx:latest

# Install Python and pip
RUN apt-get update && apt-get install -y python3 python3-pip

# Copy your Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf
