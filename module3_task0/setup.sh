#!/bin/bash

# Update the package lists
apt-get update

# Install required packages
apt-get install -y curl make

# Download and install Hugo
HUGO_VERSION="0.88.1"
HUGO_BINARY="/usr/local/bin/hugo"
if [ ! -f "$HUGO_BINARY" ]; then
  curl -L "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz" | tar -xz
  mv hugo "$HUGO_BINARY"
fi

# Verify if the installation was successful
if command -v hugo >/dev/null 2>&1 && command -v make >/dev/null 2>&1; then
  echo "SETUPOK"
else
  echo "SETUPERROR"
  exit 1
fi

# Run the build command
make build

# Verify if the website was generated successfully
if [ -f "dist/index.html" ]; then
  echo "GENERATIONOK"
else
  echo "GENERATIONERROR"
  exit 1
fi
