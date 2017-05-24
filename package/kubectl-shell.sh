#!/bin/bash
set -e

token=$1

if [ -z "${token}" ]; then
    echo No token provided
    exit 1
fi

unshare --fork --pid --mount-proc --mount shell-setup.sh ${token}