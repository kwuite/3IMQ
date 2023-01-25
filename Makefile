CURRENT_GIT_BRANCH := $(shell git rev-parse --abbrev-ref HEAD)

install:
	poetry install

lint-fix:
	poetry run black --skip-string-normalization core

git-push:
	git push origin $(CURRENT_GIT_BRANCH)

test:
	poetry run pytest -v -s
