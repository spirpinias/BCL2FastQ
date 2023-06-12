# hash:sha256:b0bc39a8bc36cc08853cacd31253d6a9550024d867c1c6258b6c56a89313d1b0
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
        subversion \
        wget=1.21.2-2ubuntu1 \
    && rm -rf /var/lib/apt/lists/*
