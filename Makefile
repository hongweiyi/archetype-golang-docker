.PHONY: build

workdir = /go/src/github.com/hongweiyi/archetype-golang-docker

build-local:
	godep go build .

build-linux:
	GOOS=linux godep go build -o helloworld .

build:
	docker run --rm -v $(shell pwd):${workdir} -w ${workdir} golang:1.5.1 scripts/build.sh

image: build
	docker build -t docker.io/hongweiyi/helloworld:latest .

