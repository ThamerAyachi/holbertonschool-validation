## Prerequisites

- Go installed on your local machine
- Port 9999 available for running the server

## Lifecycle

This project follows the following life-cycle stages:

- `make build`: Compiles the source code of the application to a binary.
- `run`: Runs the application in the background and writes logs to a file.
- `make stop`: Stops the running application.
- `make clean`: Stops the application, deletes the binary and log files.
- `make help`: Tests the application by sending HTTP requests.
- `make lint`: Tests the application by sending HTTP requests.
- `make unit-tests`: Tests the application by sending HTTP requests.

Please refer to the Makefile for more details on each stage.

## Makefile Targets

- `make help`: Print a list of all the goals with descriptions.
- `make build`: Compile the source code of the application to a binary.
- `make clean`: Stop the application, delete binary and log files.
- `make run`: Run the application in the background and write logs to a file.
- `make stop`: Stop the running application.
- `make test`: Test the application by sending HTTP requests.
