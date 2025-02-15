#!/bin/bash

BASE_URL="https://www.basissetexchange.org"

#input arguments
basis="$1"
format="$2"
elements="$3"

#url Bse api

download_url="${BASE_URL}/api/basis/${basis}/format/${format}/?elements=${elements}"

# output directory in container
mkdir -p /output

# Download and save the file
curl -s "$download_url" -o "/output/${basis}.${format}"

# Print output completed
echo "Downloaded ${basis}.${format} to /output/"


