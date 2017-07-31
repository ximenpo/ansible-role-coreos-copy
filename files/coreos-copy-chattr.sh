#! /bin/bash

set -e

X_FILE=$1
X_MODE=$2
X_OWNER=$3
X_FROUP=$4

if [[ -n "${X_MODE}" ]]; then
    chmod "${X_MODE}" "${X_FILE}"
fi

if [[ -n "${X_OWNER}" ]]; then
    chown "${X_OWNER}" "${X_FILE}"
fi

if [[ -n "${X_FROUP}" ]]; then
    chgrp "${X_FROUP}" "${X_FILE}"
fi
