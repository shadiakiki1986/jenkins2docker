#!/bin/sh

apk --update add openjdk7-jre openssh git > /dev/null && \
    rm -rf /var/cache/apk/* 

/usr/bin/java -version

addgroup jenkins && \
    adduser -D jenkins -s /bin/sh -G jenkins && \
    chown -R jenkins:jenkins /home/jenkins && \
    echo "jenkins:jenkins" | chpasswd

ssh-keygen -A

set -x && \
    echo "UsePrivilegeSeparation no" >> /etc/ssh/sshd_config && \
    echo "PermitRootLogin no" >> /etc/ssh/sshd_config && \
    echo "AllowGroups jenkins" >> /etc/ssh/sshd_config

# Comment these lines to disable sudo
apk --update add sudo > /dev/null && \
    rm -rf /var/cache/apk/* && \
    echo "%jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
