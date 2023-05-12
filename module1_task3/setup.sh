#!/bin/bash

# Update the package list
apt-get update

# Instale the required packages
apt-get install -y hugo make

# Run the build command
make build
