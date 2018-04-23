FROM debian:stretch

MAINTAINER Carlos Rodríguez <nidr0x@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y \
        python python-yaml sudo curl python-pip \
        python-dev libffi-dev libssl-dev build-essential python-wheel && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/share/doc && rm -rf /usr/share/man && \
    apt-get clean && \
    pip install ansible pywinrm cryptography && \
    mkdir -p /etc/ansible && \
    echo 'localhost' > /etc/ansible/hosts
    

