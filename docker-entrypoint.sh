#!/bin/bash

BASE_URL="https://www.basissetexchange.org"

# Accept input arguments from Docker command
basis="$1"
format="$2"
elements="$3"

# Construct the BSE API URL
download_url="${BASE_URL}/api/basis/${basis}/format/${format}/?elements=${elements}"

#download into readme
curl -s "$download_url" > "/README.md"

echo "Downloaded ${basis}.${format} and saved to README.md"

# Print a confirmation message
echo "Downloaded ${basis}.${format} to /output/"


