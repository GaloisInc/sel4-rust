#!/bin/sh

export TGT=x86_64-sel4-robigalia
export RUST_TARGET_PATH=`pwd`/targets

# fetch the rlibs needed to assemble the sysroots into a single tarball
cd ./build/x86_64-unknown-linux-gnu/stage2
tar -cf ../../../x86_64-sel4-sysroot.tar.gz lib/rustlib/$TGT/lib/*.rlib

# and grab the compiler needed
tar -cf ../../../rust-ubuntu-x86_64.tar.gz bin/* lib/*.so lib/rustlib/x86_64-unknown-linux-gnu/codegen-backends/*.so
