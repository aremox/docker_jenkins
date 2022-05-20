#!/bin/sh

for key in rsa ecdsa ed25519; do
    test -e /etc/ssh/ssh_host_${key}_key || ssh-keygen -t ${key} -N "" -f /etc/ssh/ssh_host_${key}_key -q
done

if [ -n "${SSH_USER}" ]; then
    adduser -D ${SSH_USER}
    echo "${SSH_USER}:${SSH_PASSWORD}" | chpasswd
fi

exec /usr/sbin/sshd -D -e