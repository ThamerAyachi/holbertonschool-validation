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
