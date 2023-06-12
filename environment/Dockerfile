# hash:sha256:d12edb1e7ed67137ea13e6b184ad8f4cc854d11d58f57bc1d5c8d8b1ec9f9c57
FROM registry.apps.codeocean.com/codeocean/mambaforge3:22.11.1-4-ubuntu22.04

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        cpio=2.13+dfsg-7 \
        gzip=1.10-4ubuntu4.1 \
        rpm2cpio=4.17.0+dfsg1-4build1 \
        subversion=1.14.1-3ubuntu0.22.04.1 \
        wget=1.21.2-2ubuntu1 \
    && rm -rf /var/lib/apt/lists/*
