FROM rocker/r-base:4.5.2

LABEL maintainer="Prasun Dutta"
LABEL description="Software environment for gene variant extraction pipeline"

# Install bioinformatics tools
RUN apt-get update && apt-get install -y \
    bash \
    coreutils \
    findutils \
    grep \
    sed \
    gawk \
    tar \
    gzip \
    bzip2 \
    xz-utils \
    less \
    vim \
    wget \
    curl \
    git \
    procps \
    ca-certificates \
    build-essential \
    bcftools \
    bedtools \
    samtools \
    tabix \
    wget \
    curl \
    git \
    && apt-get clean

# Install R packages
RUN R -e "install.packages(c('tidyverse','argparse','duckdb','duckplyr'), repos='https://cloud.r-project.org')"

WORKDIR /workspace

CMD ["/bin/bash"]
