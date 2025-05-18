FROM ubuntu:24.04

RUN yes | unminimize

RUN apt install -y --no-install-recommends \
    man \
    file \
    git \
    iproute2 \
    iputils-ping \
    net-tools \
    traceroute \
    tcpdump \
    dnsutils \
    nmap \
    mtr-tiny \
    curl \
    wget \
    tcpick \
    netcat-traditional \
    bpytop \
    htop \
    python3-pip \
    python3-yaml \
    python3-requests \
    python3-bs4 \
    jq \
    yq \
    zsh \
    mycli \
    tmux \
    less \
    tree \
    nano \
    vim

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

WORKDIR /media

CMD ["zsh"]