#!/bin/bash

SRCDIR=$(cd $(dirname $0); pwd)
cd ${SRCDIR}

for patch in $(ls patches/*.patch); do
    echo "Applying patch ${patch}"
    git apply ${patch}
done
