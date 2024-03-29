FROM alpine:latest
MAINTAINER Bastian de Byl <bastian@bdebyl.net>

RUN apk -U add \
    git \
    github-cli \
    less \
    openssh \
    && rm -rf /var/cache/apk/*

VOLUME ["/git"]
WORKDIR /git

ENTRYPOINT ["git"]
CMD ["--version"]
