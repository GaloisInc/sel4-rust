#!/bin/sh
export TGT=x86_64-sel4-none
export RUST_TARGET_PATH=`pwd`/targets

./x.py build --target=$TGT
