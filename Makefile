DOCKER_REPO=kernsuite/base:dev

.PHONY: build clean

all: build

build:
		docker build --pull -t ${DOCKER_REPO} .

clean:
	docker rmi ${DOCKER_REPO}

upload: build
	docker push ${DOCKER_REPO}
