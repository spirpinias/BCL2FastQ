# hash:sha256:b8f1a0769bc766b4790cbd7b84860e5ad9381f94f1ca9c3c3717416c860b242e
FROM registry.apps.codeocean.com/codeocean/mambaforge3:22.11.1-4-ubuntu22.04

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

RUN mamba install -y --channel=bih-cubi \
        bcl2fastq2==2.20.0.422 \
    && mamba clean -ya
