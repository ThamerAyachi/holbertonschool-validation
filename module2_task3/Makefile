# Variables
BINARY_NAME := awesome-api
LOG_FILE := $(BINARY_NAME).log
PORT := 9999


help: ## Print a list of all the goals with descriptions

help:	
		@awk 'BEGIN {FS = ":.*##"; } /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
		
build: lint ## Build the binary
	go build -o awesome-api

run: build ## Run the application
	./$(BINARY_NAME) > $(LOG_FILE) 2>&1 &

stop: ## Stop the application
	kill "$(shell pgrep $(BINARY_NAME))"


clean: ## Stop the application, delete binary and log files
	-kill "$(shell pgrep $(BINARY_NAME))"
	rm -f $(BINARY_NAME)
	rm -f $(LOG_FILE)


test: ## Test the application
	@echo "Testing / endpoint:"
	curl -s http://localhost:$(PORT)
	@echo
	@echo "Testing /health endpoint:"
	curl -s http://localhost:$(PORT)/health
	@echo

lint: ## Perform static analysis on the source code
	@golangci-lint run ./...

unit-tests: ## 
	@go test -v -short -coverprofile=coverage-units.out 

integration-tests: ##test
	@go test -v -tags=integration -coverprofile=coverage-integrations.out ./...

