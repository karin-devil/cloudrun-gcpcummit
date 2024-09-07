FROM nginx:latest

# Install Python and pip
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip install --no-cache-dir -r requirements.txt

# Copy your Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf
