
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
        python3 \
        curl \
        wget \
        vim && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /output

# Copy the entrypoint script
COPY docker-entrypoint.sh /bin/docker-entrypoint.sh
RUN chmod +x /bin/docker-entrypoint.sh

# Set default command
ENTRYPOINT ["/bin/docker-entrypoint.sh"]

