# Base image
FROM golang:1.15.8-buster

# Install the required tools
RUN apt-get update && \
    apt-get install -y hugo && \
    go get -u github.com/golangci/golangci-lint/cmd/golangci-lint@v1.33.0

# Set the working directory in the container
WORKDIR /usr/src/myapp
