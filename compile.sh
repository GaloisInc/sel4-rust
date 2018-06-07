#!/bin/sh

export TGT=x86_64-sel4-robigalia
export RUST_TARGET_PATH=`pwd`/targets

./x.py build --target=$TGT
