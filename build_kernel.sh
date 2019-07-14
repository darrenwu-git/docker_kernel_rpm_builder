#!/bin/bash

. common.sh

docker run --rm -ti --name=aarch64-kernel-build -w /root/rpmbuild \
-v $PWD/rpmbuild:/root/rpmbuild \
$DOCKER_IMG \
bash -c " rpmbuild -bb --with cross --target=aarch64 --without debug --without doc --without perf --without tools --without kabichk --without kdump --without bootwrapper --without cross_headers --nocheck --noclean --noprep SPECS/kernel.spec 2> build-err.log | tee build-out.log "

