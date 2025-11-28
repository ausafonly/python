# Use the latest Ubuntu image
FROM ubuntu:latest

# Build arguments for Artifactory credentials
ARG ART_USER
ARG ART_PASS
ARG ART_URL

# Install prerequisites
RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    gnupg \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Configure Artifactory as APT repository with authentication
RUN echo "deb [trusted=yes] https://${ART_USER}:${ART_PASS}@${ART_URL} $(lsb_release -cs) main" \
    > /etc/apt/sources.list.d/artifa
