DOCKER_REPO=kernsuite/base:7

.PHONY: build clean

all: build

build:
	docker build --pull -t ${DOCKER_REPO} .

clean:
	docker rmi ${DOCKER_REPO}

upload: build
	docker push ${DOCKER_REPO}

example: build
	docker build -f example.dockerfile .
