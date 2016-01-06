## Archetype of golang in docker

### Usage

* build binary

`make build`

* build image

`make image`

* run

`./helloworld` or `docker run docker.io/hongweiyi/helloworld:latest`

### Merits

* Small docker image size, only 2.742 MB.
* Use busybox as base image, it has common tools to support daily operation.
