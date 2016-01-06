#!/bin/bash -x

go get -v github.com/tools/godep

cd /go/src/github.com/hongweiyi/archetype-golang-docker

# https://blog.codeship.com/building-minimal-docker-containers-for-go-applications/
CGO_ENABLED=0 godep go build -a -installsuffix cgo -ldflags '-s' -o helloworld 
