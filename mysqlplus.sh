#!/bin/bash
#A script to execute sqlplus via remote server

address=115.159.212.157
port=1521
sid=ORA11G

echo "connecting to ${address}:${port}/${sid}"

if [[ $# == 2 ]]; then
    rlwrap sqlplus $1/$2@//${address}:${port}/${sid}
else
    echo "username: "
    read name
    echo "password"
    read password
    rlwrap sqlplus ${name}/${password}@//${address}:${port}/${sid}
fi
