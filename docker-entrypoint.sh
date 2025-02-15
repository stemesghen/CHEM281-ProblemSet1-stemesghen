#!/bin/bash

BASE_URL="https://www.basissetexchange.org"

# Accept input arguments from Docker command
basis="$1"
format="$2"
elements="$3"

# Construct the BSE API URL
download_url="${BASE_URL}/api/basis/${basis}/format/${format}/?elements=${elements}"

# Create output directory
mkdir -p /output

# Download the file directly without error checking
curl -s "$download_url" -o "/output/${basis}.${format}"

# Print a confirmation message
echo "Downloaded ${basis}.${format} to /output/"




