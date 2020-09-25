# Docker: bdebyl/alpine-git

[![Build Status](https://ci.bdebyl.net/api/badges/bdebyl/docker-alpine-git/status.svg)](https://ci.bdebyl.net/bdebyl/docker-alpine-git)

A simple Alpine based image containing `git` and it's required dependencies.

Inspired by [alpine-docker/git](https://github.com/alpine-docker/git)

## Usage

The default `ENTRYPOINT` for the container is `git`, so base any following
container commands off of that.

```
docker run --rm -it bdebyl/alpine-docker:latest diff
```
