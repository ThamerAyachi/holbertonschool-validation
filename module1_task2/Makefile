POST_TITLE ?= "New blog post"
POST_NAME ?= "new-blog-post"

.PHONY: build clean post

build:
	hugo --destination dist

clean:
	rm -rf dist/*

post:
	hugo new posts/$(POST_NAME).md
	sed -i -e 's/^title:.*$$/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

help: 
		@echo "To use this website template"
		@awk -F ':.*?##' '/^[a-zA-Z_-]+:.*?##/ { printf "\033[36m%-20s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)
