# Variables
BINARY_NAME := awesome-api
LOG_FILE := $(BINARY_NAME).log
PORT := 9999

.PHONY: help build run stop clean test integration-tests

help: ## Print a list of all the goals with descriptions
	@awk 'BEGIN {FS = ":.*##"; } /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

build: ## Build the binary
	go build -o $(BINARY_NAME)

run: build ## Run the application
	./$(BINARY_NAME) > $(LOG_FILE) 2>&1 &

stop: ## Stop the application
	kill "$(shell pgrep $(BINARY_NAME))"

clean: ## Clean up generated files and artifacts
	rm -f coverage-units.out coverage-integrations.out

test: unit-tests integration-tests ## Run both unit tests and integration tests

integration-tests: ## Run integration tests
	go test -coverprofile=coverage-integrations.out -tags=integration ./... -v
