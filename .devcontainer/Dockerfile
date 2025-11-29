FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

# Install Python and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv python3-requests && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Default command (optional)
CMD ["python3", "--version"]
