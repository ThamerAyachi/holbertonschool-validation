lint: ## lint
	golangci-lint run ./main.go

build: check ## Build awesome-api
	go build -o awesome-api
	hugo -d dist/

run: ## Run awesome-api application
	./awesome-api >./awesome-api.log 2>&1 &

stop: ## Stop awesome-api application
	pkill awesome-api || true

clean: stop ## Clean awesome-api application and log
	rm -f awesome-api awesome-api.log coverage-units.out coverage-integrations.out
	rm -rf ./dist
post: ## Create a new blog post
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

test: ## Test current connection
	make unit-tests
	make integration-tests

unit-tests: ## Run tests to check for HelloHandler coverage
	go test -v -short -coverprofile=coverage-units.out

integration-tests: ## Run tests to check integrations coverage
	go test -v -coverprofile=coverage-integrations.out
check: ## Check markdown files
	markdownlint ./content/posts/*.md
	markdown-link-check ./content/posts/*.md

validate: ## Validate HTML with W3C Validator
	make build
	python3 /opt/W3C-Validator/w3c_validator.py dist/index.html
.SILENT:
help: ## Display what each command does
	cat Makefile | grep '##' | tr -d '##' | head -n -1

