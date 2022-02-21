# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.209.6/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version (use hirsuite or bionic on local arm64/Apple Silicon): hirsute, focal, bionic
ARG VARIANT="hirsute"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

RUN apt-get update -y
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
     && apt-get -y install --no-install-recommends bison flex cpio lzop bc build-essential fakeroot lzma gettext libmpc-dev u-boot-tools \
     python3.8 python3-pip atftp pkg-config libncurses5-dev:amd64 libssl-dev:amd64 \
     sed make binutils gcc g++ bash patch \
     gzip bzip2 perl tar cpio python unzip rsync wget libncurses-dev file
RUN pip install future

