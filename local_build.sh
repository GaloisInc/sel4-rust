#!/bin/bash
# set proper target
if grep -e CentOS </etc/os-release >/dev/null 2>&1; then
    COMPILER=rust-centos-x86-64.tar.gz
else
    COMPILER=rust-ubuntu-x86-64.tar.gz
fi

mkdir targets
cd targets
curl -O https://raw.githubusercontent.com/GaloisInc/rs_seL4_tools/master/common-tool/x86_64-sel4-robigalia.json
curl -O https://raw.githubusercontent.com/GaloisInc/rs_seL4_tools/master/common-tool/i686-sel4-robigalia.json
curl -O https://raw.githubusercontent.com/GaloisInc/rs_seL4_tools/master/common-tool/arm-sel4-robigalia.json

TGT=x86_64-sel4-robigalia
RUST_TARGET_PATH=targets

# build the compiler
./x.py build --target=$TGT

# create a tarball
tar -cf $COMPILER.tar.gz stage2
