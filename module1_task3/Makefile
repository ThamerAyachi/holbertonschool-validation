POST_TITLE ?= "New blog post"
POST_NAME ?= "new-blog-post"

.PHONY: build clean post

build: ##buid dist files
	hugo

clean: ##clean the dist directory
	rm -rf dist/*

post: ##make a new post with title and file name passed in the commandline
	hugo new posts/$(POST_NAME).md
	sed -i -e 's/^title:.*$$/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

help: ## Help lines on how to use this module
		@echo "To use this website template"
		@awk -F ':.*?##' '/^[a-zA-Z_-]+:.*?##/ { printf "\033[36m%-20s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)
