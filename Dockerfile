FROM ubuntu:22.04 as base

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get -y update && apt-get upgrade -y

RUN apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    git \
    kitty \
    less \
    neovim \
    python3.10 \
    python3.10-dev \
    python3.10-venv \
    python3-pip \
    python3-tk \
    python-is-python3 \
    rofi

COPY xpra.asc /usr/share/keyrings/
COPY xpra.sources /etc/apt/sources.list.d/

RUN apt-get update -y && apt-get install -y xpra-html5 xpra

EXPOSE 10000

WORKDIR /root

COPY start.sh /
CMD /start.sh
