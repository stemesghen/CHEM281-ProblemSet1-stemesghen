FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
	build-essential \ 
	python3 \
	curl \
	wget \
	apt-get clean \  
	rm -rf /var/lib/apt/lists/*


# Set working directory for inputs
WORKDIR /input

# Copy and configure entrypoint script
COPY docker-entrypoint.sh /bin/docker-entrypoint.sh
RUN chmod +x /bin/docker-entrypoint.sh

# Set default command to the entrypoint script
ENTRYPOINT ["/bin/docker-entrypoint.sh"]
	
