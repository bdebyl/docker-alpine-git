# Docker: bdebyl/alpine-git

[![Build Status](https://ci.bdebyl.net/api/badges/bdebyl/docker-alpine-git/status.svg)](https://ci.bdebyl.net/bdebyl/docker-alpine-git)

A simple Alpine based image containing `git` and it's required dependencies.

Inspired by [alpine-docker/git](https://github.com/alpine-docker/git)

## Usage

### Docker Run
The default `ENTRYPOINT` for the container is `git`, so base any following
container commands off of that.

```
docker run --rm -it bdebyl/alpine-docker:latest diff
```

### Drone CI (or similar)

```
---
kind: pipeline
name: default

...

steps:
  # Only proceed if merged changes include Dockerfile changes
  - name: gate
    image: bdebyl/alpine-git
    commands:
      - git fetch origin +refs/heads/master
      - git show-ref
      - git diff --name-only $(git merge-base refs/remotes/origin/master HEAD)..HEAD | grep Dockerfile || exit 78
```
