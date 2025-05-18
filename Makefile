.PHONY: default
default: run

.PHONY: build
build:
	@docker build -t setempler/debug-ninja .

.PHONY: run
run:
	@docker run --rm -it --name ninja setempler/debug-ninja

.PHONY: all
all: build run
