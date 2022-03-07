#!/bin/bash

set -e

if [ ! -f "/pki/openssl-easyrsa.cnf" ]; then
    echo "No OpensslConfig for EasyRsa Found. Copying the default"
    cp /usr/share/easy-rsa/openssl-easyrsa.cnf /pki/openssl-easyrsa.cnf
    cp -R /usr/share/easy-rsa/x509-types /pki/x509-types
fi

exec /usr/bin/easyrsa $@
