# 🥷 Debug Ninja

## 🔎 Scope and Purpose

A ninja to help you debug your docker networking, scripting and file handling.

## 📖 Usage

```sh
# Run the plain tool:
docker run --rm -it setempler/debug-ninja

# As part of an existing network:
docker run --rm -it setempler/debug-ninja \
    --network my-network

# Including files from existing volume:
docker run --rm -it setempler/debug-ninja \
    --volume my-volume:/media/my-volume
```

* Read about [Docker networking](https://docs.docker.com/engine/network/).
* Read about [Docker storage](https://docs.docker.com/engine/storage/) like volumes, bind mounts, etc.

## 📋 Specifications

**General**

A docker image specified in `Dockerfile`.  
Based on Ubuntu LTS.  
Starts a *zsh* shell in folder `/media` (hint: mount volumes there).  
Contains additional tools (incomplete list with respective package source and name in brackets):

**File handling**

* find (*native*)
* tar (*native*)
* zcat (*native*)
* gunzip (*native*)
* gzip (*native*)
* vim (apt:vim)
* nano (apt:nano)
* file (apt:file)
* less (apt:less)
* tree (apt:tree)

**Networking**

* ip (apt:iproute2)
* ss (apt:iproute2)
* ping (apt:iputils-ping)
* netstat (apt:et-tools)
* traceroute (apt:traceroute or apt:inetutils-traceroute)
* tcpdump (apt:tcpdump)
* dig (apt:dnsutils)
* nslookup (apt:dnsutils)
* nmap (apt:nmap)
* arp (apt:net-tools)
* host (apt:dnsutils)
* route (apt:net-tools)
* mtr (apt:mtr-tiny)
* curl (apt:curl)
* wget (apt:wget)
* ifconfig (apt:net-tools?)
* tcpick (apt:tcpick)
* netcat, nc (apt:netcat-traditional)
* lynx (apt:lynx)
* mycli (apt:mycli)

**Scripting**

* bash (*native*)
* zsh (apt:zsh)
* oh my zsh (*external*)
* python3 (*native*)
* pip (apt:python3-pip)
* pyyaml (apt:python3-yaml)
* requests (apt:python3-requests)
* beautifulsoup4 (apt:python3-bs4)
* jq (apt:jq)
* yq (apt:yq)

**Monitoring**

* bpytop (apt:bpytop)
* htop (apt:htop)

## 🧑‍💻 Develop

Source code on github at [setempler/debug-ninja](https://github.com/setempler/debug-ninja).

Please be invited to fork, clone, edit and improve this tool for your own needs.

```sh
### Build and try it out:
make all

### Build only:
docker build -t setempler/debug-ninja .
# or
make build

### Run only:
docker run --rm -it --name ninja setempler/debug-ninja
# or
make run
# or
make
```

## ℹ️ Legal

See file `LICENSE`.
